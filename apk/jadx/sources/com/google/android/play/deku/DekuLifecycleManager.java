package com.google.android.play.deku;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.UriMatcher;
import android.database.Cursor;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.Window;
import com.google.android.play.deku.config.DekuFeatureFlags;

/* JADX INFO: loaded from: classes.dex */
public class DekuLifecycleManager implements Application.ActivityLifecycleCallbacks, DisplayManager.DisplayListener {
    public static final String AUTHORITY_SUFFIX = ".gpdeku.contentprovider0";
    private static final int EXPERIMENT_INFO_URI = 1;
    private static final int MAX_BIND_ATTEMPTS = 5;
    public static final String PATH_EXPERIMENT_DATA = "sidekickexperimentdata";
    private static final String TAG = "DekuLifecycleManager";
    private static final UriMatcher URI_MATCHER = new UriMatcher(-1);
    private static final long WINDOW_SIZE_CHANGE_DEBOUNCE_MS = 200;
    private Activity activity;
    private boolean activityInForeground;
    private final Application application;
    private int bindAttempts;
    private boolean connected;
    private int currentDensityDpi;
    private Activity currentResumedActivity;
    private Rect currentWindowBounds;
    private final ServiceConnection dekuConnection;
    private final i dekuControllerCallback;
    private int dekuPlayVersion;
    private final DisplayManager displayManager;
    private l gameStateManager;
    private o iDekuBrokerService;
    private s iDekuControllerService;
    private boolean isBound;
    private String lastResumedActivityName;
    private final View.OnLayoutChangeListener layoutChangeListener;
    private Handler mainThreadHandler;
    private com.google.android.play.deku.screencapture.f screenCaptureManager;
    private final k sidekickExperimentInfoManager;
    private final Runnable windowBoundsChangedRunnable;
    private IBinder windowToken;

    DekuLifecycleManager(Application application) {
        this.dekuControllerCallback = new i(this);
        this.dekuConnection = new j(this);
        this.windowToken = null;
        this.activity = null;
        this.currentResumedActivity = null;
        this.lastResumedActivityName = null;
        this.activityInForeground = false;
        this.iDekuBrokerService = null;
        this.iDekuControllerService = null;
        this.isBound = false;
        this.connected = false;
        this.bindAttempts = 0;
        this.dekuPlayVersion = -1;
        this.currentWindowBounds = null;
        this.currentDensityDpi = -1;
        this.application = application;
        this.mainThreadHandler = new Handler(Looper.getMainLooper());
        this.displayManager = (DisplayManager) application.getSystemService("display");
        this.sidekickExperimentInfoManager = new k(application);
        this.windowBoundsChangedRunnable = new e(this, 1, null);
        this.layoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.google.android.play.deku.f
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                this.a.lambda$new$0(view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        };
    }

    public DekuLifecycleManager(Context context) {
        this((Application) context.getApplicationContext());
    }

    private void attachLayoutChangeListenerIfNeeded(Window window) {
        if (Build.VERSION.SDK_INT < 30 || !DekuFeatureFlags.isFeatureEnabled("enableSdkEnhancedWindowBoundsTracking", false)) {
            return;
        }
        try {
            window.getDecorView().removeOnLayoutChangeListener(this.layoutChangeListener);
            window.getDecorView().addOnLayoutChangeListener(this.layoutChangeListener);
            this.currentWindowBounds = getWindowBounds();
            this.currentDensityDpi = getDensityDpi();
        } catch (Throwable th) {
            Log.w(TAG, "Failed to attach layout change listener.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void bind() {
        try {
            this.bindAttempts++;
            Intent intent = new Intent("com.google.android.play.deku.action.BIND_DEKU_BROKER_SERVICE");
            intent.setPackage("com.android.vending");
            this.application.bindService(intent, this.dekuConnection, 1);
        } catch (Throwable th) {
            Log.w(TAG, "bind failed.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized int getDensityDpi() {
        Display display;
        try {
            if (this.activity != null && Build.VERSION.SDK_INT >= 30 && (display = this.activity.getDisplay()) != null) {
                return this.activity.createDisplayContext(display).getResources().getDisplayMetrics().densityDpi;
            }
        } catch (Throwable th) {
            Log.w(TAG, "getDensityDpi failed.", th);
        }
        return -1;
    }

    private synchronized int getDisplayId() {
        try {
            Activity activity = this.activity;
            if (activity != null && activity.getWindow() != null) {
                return this.activity.getWindow().getDecorView().getDisplay().getDisplayId();
            }
        } catch (Throwable th) {
            Log.w(TAG, "getDisplayId failed.", th);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized Rect getWindowBounds() {
        try {
            if (this.activity != null && Build.VERSION.SDK_INT >= 30) {
                return this.activity.getWindowManager().getCurrentWindowMetrics().getBounds();
            }
        } catch (Throwable th) {
            Log.w(TAG, "getWindowBounds failed.", th);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isScreenCaptureSupported() {
        return Build.VERSION.SDK_INT >= 33;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i == i5 && i2 == i6 && i3 == i7 && i4 == i8) {
            return;
        }
        this.mainThreadHandler.removeCallbacks(this.windowBoundsChangedRunnable);
        this.mainThreadHandler.postDelayed(this.windowBoundsChangedRunnable, WINDOW_SIZE_CHANGE_DEBOUNCE_MS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityResumed$0(Activity activity, Window window) {
        synchronized (this) {
            try {
                try {
                    if (activity == this.currentResumedActivity && this.activityInForeground) {
                        this.activity = activity;
                        this.windowToken = window.getDecorView().getWindowToken();
                        sendActivityResumed();
                        if (this.activityInForeground) {
                            attachLayoutChangeListenerIfNeeded(window);
                        }
                        try {
                            View rootView = window.getDecorView().getRootView();
                            com.google.android.play.deku.screencapture.f fVar = this.screenCaptureManager;
                            if (fVar != null && isScreenCaptureSupported()) {
                                fVar.i(rootView);
                            }
                        } catch (Throwable th) {
                            Log.w(TAG, "setRootView failed.", th);
                            logToServer(11, th);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            } catch (Throwable th3) {
                Log.w(TAG, "getDecorView failed.", th3);
                logToServer(1, th3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$tryRegisterEnhancedLayoutChangeListener$0() {
        Activity activity;
        Window window;
        synchronized (this) {
            if (this.activityInForeground && (activity = this.activity) != null && this.currentResumedActivity == activity && (window = activity.getWindow()) != null) {
                attachLayoutChangeListenerIfNeeded(window);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void resetConnection() {
        try {
            this.isBound = false;
            this.connected = false;
            this.iDekuBrokerService = null;
            this.iDekuControllerService = null;
            DekuFeatureFlags.setFeatureFlagsBundle(null);
        } catch (Throwable th) {
            Log.w(TAG, "resetConnection failed.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void sendActivityResumed() {
        IBinder iBinder;
        IBinder iBinder2;
        try {
            if (this.connected && this.iDekuControllerService != null && this.windowToken != null && this.activityInForeground) {
                Rect windowBounds = getWindowBounds();
                int densityDpi = getDensityDpi();
                if (this.dekuPlayVersion > 0) {
                    Bundle bundle = new Bundle();
                    if (windowBounds != null) {
                        bundle.putParcelable("windowBounds", windowBounds);
                    }
                    if (densityDpi != -1) {
                        bundle.putInt("densityDpi", densityDpi);
                    }
                    s sVar = this.iDekuControllerService;
                    if (sVar != null && (iBinder2 = this.windowToken) != null) {
                        String str = this.lastResumedActivityName;
                        if (str == null) {
                            str = "";
                        }
                        sVar.g(str, iBinder2, bundle);
                    }
                } else {
                    Bundle bundle2 = new Bundle();
                    String str2 = this.lastResumedActivityName;
                    if (str2 != null) {
                        bundle2.putString("activityName", str2);
                    }
                    if (windowBounds != null) {
                        bundle2.putParcelable("windowBounds", windowBounds);
                    }
                    if (densityDpi != -1) {
                        bundle2.putInt("densityDpi", densityDpi);
                    }
                    s sVar2 = this.iDekuControllerService;
                    if (sVar2 != null && (iBinder = this.windowToken) != null) {
                        sVar2.k(iBinder, bundle2);
                    }
                }
            }
        } catch (Throwable th) {
            if (this.dekuPlayVersion > 0) {
                Log.w(TAG, "onActivityResumed failed.", th);
                logToServer(3, th);
            } else {
                Log.w(TAG, "onWindowUpdated failed.", th);
                logToServer(2, th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void tryRegisterEnhancedLayoutChangeListener() {
        if (!this.activityInForeground || this.activity == null) {
            return;
        }
        this.mainThreadHandler.post(new e(this, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void unbind() {
        try {
            if (this.isBound) {
                resetConnection();
                this.application.unbindService(this.dekuConnection);
            }
        } catch (Throwable th) {
            Log.w(TAG, "unbind failed.", th);
        }
    }

    public boolean getActivityInForeground() {
        return this.activityInForeground;
    }

    protected int getBinderAttempts() {
        return this.bindAttempts;
    }

    p getDekuControllerCallbackForTesting() {
        return this.dekuControllerCallback;
    }

    public synchronized Cursor getExperimentDataCursor(Uri uri, String[] strArr) {
        try {
            if (URI_MATCHER.match(uri) == 1) {
                return this.sidekickExperimentInfoManager.a(strArr);
            }
            Log.w(TAG, "Unsupported URI: " + String.valueOf(uri));
            return null;
        } catch (Throwable th) {
            Log.e(TAG, "Failed to query experiment info", th);
            return null;
        }
    }

    public String getLastResumedActivityName() {
        return this.lastResumedActivityName;
    }

    public IBinder getWindowToken() {
        return this.windowToken;
    }

    public void initialize() {
        try {
            this.application.registerActivityLifecycleCallbacks(this);
            if (isScreenCaptureSupported()) {
                this.screenCaptureManager = new com.google.android.play.deku.screencapture.f(this.application);
            }
            this.gameStateManager = new l(this.application);
            this.displayManager.registerDisplayListener(this, this.mainThreadHandler);
            URI_MATCHER.addURI(this.application.getPackageName() + AUTHORITY_SUFFIX, PATH_EXPERIMENT_DATA, 1);
        } catch (Throwable th) {
            Log.w(TAG, "initialize failed.", th);
        }
    }

    protected void logToServer(int i, Throwable th) {
        s sVar = this.iDekuControllerService;
        if (sVar != null) {
            try {
                sVar.c(i, th.getClass().getName(), Log.getStackTraceString(th), Bundle.EMPTY);
            } catch (Throwable th2) {
                Log.w(TAG, "Failed to log to server: ".concat(String.valueOf(th2.getMessage())));
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityCreated(Activity activity, Bundle bundle) {
        try {
            String name = activity.getClass().getName();
            s sVar = this.iDekuControllerService;
            if (sVar == null) {
                return;
            }
            sVar.d(name, Bundle.EMPTY);
        } catch (Throwable th) {
            Log.w(TAG, "onActivityCreated failed.", th);
            logToServer(5, th);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityDestroyed(Activity activity) {
        try {
            String name = activity.getClass().getName();
            if (name.equals(this.lastResumedActivityName)) {
                this.activityInForeground = false;
            }
            s sVar = this.iDekuControllerService;
            if (sVar == null) {
                return;
            }
            sVar.e(name, Bundle.EMPTY);
        } catch (Throwable th) {
            Log.w(TAG, "onActivityDestroyed failed.", th);
            logToServer(8, th);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityPaused(Activity activity) {
        try {
            if (activity == this.currentResumedActivity) {
                this.currentResumedActivity = null;
            }
            String name = activity.getClass().getName();
            if (name.equals(this.lastResumedActivityName)) {
                this.activityInForeground = false;
            }
            try {
                Window window = activity.getWindow();
                if (window != null) {
                    window.getDecorView().removeOnLayoutChangeListener(this.layoutChangeListener);
                }
            } catch (Throwable th) {
                Log.w(TAG, "Failed to remove layout change listener.", th);
            }
            this.mainThreadHandler.removeCallbacks(this.windowBoundsChangedRunnable);
            s sVar = this.iDekuControllerService;
            if (sVar != null) {
                sVar.f(name, Bundle.EMPTY);
                l lVar = this.gameStateManager;
                if (lVar != null) {
                    lVar.b();
                }
            }
        } catch (Throwable th2) {
            Log.w(TAG, "onActivityPaused failed.", th2);
            logToServer(6, th2);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityResumed(final Activity activity) {
        try {
            final Window window = activity.getWindow();
            if (window == null) {
                return;
            }
            this.currentResumedActivity = activity;
            this.lastResumedActivityName = activity.getClass().getName();
            this.activityInForeground = true;
            if (this.bindAttempts == 0) {
                bind();
            }
            window.getDecorView().post(new Runnable() { // from class: com.google.android.play.deku.g
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.lambda$onActivityResumed$0(activity, window);
                }
            });
        } catch (Throwable th) {
            Log.w(TAG, "onActivityResumed failed.", th);
            logToServer(3, th);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityStarted(Activity activity) {
        try {
            String name = activity.getClass().getName();
            s sVar = this.iDekuControllerService;
            if (sVar == null) {
                return;
            }
            sVar.h(name, Bundle.EMPTY);
        } catch (Throwable th) {
            Log.w(TAG, "onActivityStarted failed.", th);
            logToServer(4, th);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityStopped(Activity activity) {
        try {
            if (this.activity == activity) {
                this.activity = null;
                if (this.screenCaptureManager != null && isScreenCaptureSupported() && DekuFeatureFlags.isFeatureEnabled("enableScreenCaptureDetachedViewFix", false)) {
                    this.screenCaptureManager.i(null);
                }
            }
            String name = activity.getClass().getName();
            if (name.equals(this.lastResumedActivityName)) {
                this.activityInForeground = false;
            }
            s sVar = this.iDekuControllerService;
            if (sVar == null) {
                return;
            }
            sVar.i(name, Bundle.EMPTY);
        } catch (Throwable th) {
            Log.w(TAG, "onActivityStopped failed.", th);
            logToServer(7, th);
        }
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public void onDisplayAdded(int i) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public synchronized void onDisplayChanged(int i) {
        s sVar;
        try {
            Rect windowBounds = getWindowBounds();
            int densityDpi = getDensityDpi();
            if (this.iDekuControllerService != null && windowBounds != null && densityDpi != -1 && i == getDisplayId() && (sVar = this.iDekuControllerService) != null) {
                sVar.j(windowBounds, densityDpi, Bundle.EMPTY);
            }
        } catch (Throwable th) {
            Log.w(TAG, "onDisplayChanged failed.", th);
            logToServer(12, th);
        }
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public void onDisplayRemoved(int i) {
    }

    void setGameStateManagerForTesting(l lVar) {
        this.gameStateManager = lVar;
    }

    void setScreenCaptureManagerForTesting(com.google.android.play.deku.screencapture.f fVar) {
        this.screenCaptureManager = fVar;
    }
}
