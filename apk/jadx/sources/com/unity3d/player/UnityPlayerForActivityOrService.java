package com.unity3d.player;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.view.Surface;
import android.view.View;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.unity3d.player.a.C4088d;
import com.unity3d.player.a.C4091g;
import com.unity3d.player.a.C4100p;
import com.unity3d.player.a.EnumC4099o;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class UnityPlayerForActivityOrService extends UnityPlayer {
    private boolean mMainDisplayOverride;
    private com.unity3d.player.a.y mOnHandleFocusListener;
    private boolean mProcessKillRequested;
    private com.unity3d.player.a.r mSoftInput;
    private long mSoftInputTimeoutMilliSeconds;
    private int m_IsNoWindowMode;
    private X m_MainThread;

    public enum MemoryUsage {
        Low(1),
        Medium(2),
        High(3),
        Critical(4);

        public final int value;

        MemoryUsage(int i) {
            this.value = i;
        }
    }

    public enum SynchronizationTimeout {
        Pause(0),
        SurfaceDetach(1),
        Destroy(2);

        private int m_TimeoutMilliseconds = 2000;
        final int value;

        SynchronizationTimeout(int i) {
            this.value = i;
        }

        public static void setTimeoutForAll(int i) {
            for (SynchronizationTimeout synchronizationTimeout : (SynchronizationTimeout[]) SynchronizationTimeout.class.getEnumConstants()) {
                synchronizationTimeout.setTimeout(i);
            }
        }

        public int getTimeout() {
            return this.m_TimeoutMilliseconds;
        }

        public void setTimeout(int i) {
            this.m_TimeoutMilliseconds = i;
        }
    }

    public UnityPlayerForActivityOrService(Context context) {
        this(context, null, "", new C4088d());
    }

    public UnityPlayerForActivityOrService(Context context, IUnityPlayerLifecycleEvents iUnityPlayerLifecycleEvents) {
        this(context, iUnityPlayerLifecycleEvents, "", new C4088d());
    }

    public UnityPlayerForActivityOrService(Context context, IUnityPlayerLifecycleEvents iUnityPlayerLifecycleEvents, String str) {
        this(context, iUnityPlayerLifecycleEvents, str, new C4088d());
    }

    UnityPlayerForActivityOrService(Context context, IUnityPlayerLifecycleEvents iUnityPlayerLifecycleEvents, String str, C4088d c4088d) {
        super(context, EnumC4099o.b, iUnityPlayerLifecycleEvents);
        X x = new X(this);
        this.m_MainThread = x;
        this.mMainDisplayOverride = false;
        C4100p c4100p = null;
        this.mSoftInput = null;
        this.m_IsNoWindowMode = -1;
        this.mProcessKillRequested = true;
        this.mSoftInputTimeoutMilliSeconds = 1000L;
        x.start();
        if (c4088d.a) {
            c4100p = new C4100p(context, this);
            c4100p.setOnApplyWindowInsetsListener(new C0(this));
        }
        initialize(c4100p, str);
        X x2 = this.m_MainThread;
        x2.getClass();
        try {
            x2.b.await();
        } catch (InterruptedException e) {
            com.unity3d.player.a.t.Log(6, "UnityMainThread was interrupted:" + e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissSoftInput() {
        com.unity3d.player.a.r rVar = this.mSoftInput;
        if (rVar != null) {
            rVar.hide();
            nativeReportKeyboardConfigChanged();
        }
    }

    private long getSoftInputTimeout() {
        return Math.round(this.mSoftInputTimeoutMilliSeconds * ((double) Math.max(1.0f, Settings.System.getFloat(this.mContext.getContentResolver(), "animator_duration_scale", 0.0f))));
    }

    private boolean isMainWindow(int i) {
        return i == nativeGetMainWindowIndex();
    }

    private final native boolean nativeDone();

    private final native boolean nativeGetNoWindowMode();

    private final native void nativeMemoryUsageChanged(int i);

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeOnApplyWindowInsets(WindowInsets windowInsets);

    /* JADX INFO: Access modifiers changed from: private */
    public final native boolean nativePause();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeRecreateGfxState(int i, Surface surface);

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeReportKeyboardConfigChanged();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeResume();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSendSurfaceChangedEvent();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSetInputArea(int i, int i2, int i3, int i4);

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSetInputSelection(int i, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSetInputString(String str);

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSetKeyboardIsVisible(boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSoftInputCanceled();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSoftInputClosed();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSoftInputLostFocus();

    /* JADX INFO: Access modifiers changed from: private */
    public void queueDestroy() {
        com.unity3d.player.a.t.Log(4, "Queue Destroy");
        runOnUiThread(new B0(this));
    }

    private void raiseFocusListener(boolean z) {
        com.unity3d.player.a.y yVar = this.mOnHandleFocusListener;
        if (yVar != null) {
            RunnableC4139s0 runnableC4139s0 = ((C4135q0) yVar).a;
            runnableC4139s0.b = true;
            if (runnableC4139s0.a) {
                runnableC4139s0.c.release();
            }
        }
    }

    private boolean updateDisplayInternal(int i, Surface surface) {
        if (!isNativeInitialized()) {
            return false;
        }
        Semaphore semaphore = new Semaphore(0);
        H0 h0 = new H0(this, i, surface, semaphore);
        boolean zIsMainWindow = isMainWindow(i);
        if (!zIsMainWindow) {
            h0.run();
        } else if (surface == null) {
            X x = this.m_MainThread;
            Message.obtain(x.c, 2269, W.d).sendToTarget();
            Message.obtain(x.c, h0).sendToTarget();
        } else {
            X x2 = this.m_MainThread;
            Message.obtain(x2.c, h0).sendToTarget();
            Message.obtain(x2.c, 2269, W.e).sendToTarget();
        }
        if (!zIsMainWindow || surface != null) {
            return true;
        }
        try {
            SynchronizationTimeout synchronizationTimeout = SynchronizationTimeout.SurfaceDetach;
            if (semaphore.tryAcquire(synchronizationTimeout.getTimeout(), TimeUnit.MILLISECONDS)) {
                return true;
            }
            com.unity3d.player.a.t.Log(5, "Timeout (" + synchronizationTimeout.getTimeout() + " ms) while trying detaching primary window.");
            return true;
        } catch (InterruptedException unused) {
            com.unity3d.player.a.t.Log(5, "UI thread got interrupted while trying to detach the primary window from the Unity Engine.");
            return true;
        }
    }

    @Override // com.unity3d.player.UnityPlayer
    void cleanupResourcesForDestroy() {
        Message.obtain(this.m_MainThread.c, 2269, W.c).sendToTarget();
        try {
            this.m_MainThread.join(SynchronizationTimeout.Destroy.getTimeout());
        } catch (InterruptedException unused) {
            this.m_MainThread.interrupt();
        }
        if (com.unity3d.player.a.S.e && getFrameLayout() != null) {
            getFrameLayout().removeAllViews();
        }
        if (this.mProcessKillRequested) {
            this.m_UnityPlayerLifecycleEvents.onUnityPlayerQuitted();
            kill();
        }
    }

    @Override // com.unity3d.player.UnityPlayer
    public void configurationChanged(Configuration configuration) {
        super.configurationChanged(configuration);
        if (isNativeInitialized()) {
            invokeOnMainThread(new F0(this, new Configuration(configuration)));
        }
    }

    public boolean displayChanged(int i, Surface surface) {
        if (isMainWindow(i) && getFrameLayout() != null) {
            this.mMainDisplayOverride = surface != null;
            runOnUiThread(new I0(this));
        }
        return updateDisplayInternal(i, surface);
    }

    boolean getHaveAndroidWindowSupport() {
        if (this.m_IsNoWindowMode == -1) {
            this.m_IsNoWindowMode = nativeGetNoWindowMode() ? 1 : 0;
        }
        return this.m_IsNoWindowMode == 1;
    }

    @Override // com.unity3d.player.UnityPlayer
    public C4091g getSurfaceView() {
        U view = getView();
        if (view == null) {
            return null;
        }
        return view.a;
    }

    @Override // com.unity3d.player.UnityPlayer
    public U getView() {
        FrameLayout frameLayout = getFrameLayout();
        if (frameLayout == null) {
            return null;
        }
        return ((C4100p) frameLayout).b;
    }

    @Override // com.unity3d.player.UnityPlayer
    View getViewForPadding() {
        U view = getView();
        C4091g c4091g = view.a;
        return (c4091g == null || c4091g.a <= 0.0f) ? getFrameLayout() : view;
    }

    @Override // com.unity3d.player.UnityPlayer
    boolean handleFocus(boolean z) {
        com.unity3d.player.a.r rVar;
        X x;
        W w;
        if (!this.mState.d || ((rVar = this.mSoftInput) != null && !rVar.isConsumeOutsideTouchesEnabled())) {
            raiseFocusListener(z);
            return false;
        }
        if (z) {
            x = this.m_MainThread;
            w = W.g;
        } else {
            x = this.m_MainThread;
            w = W.f;
        }
        Message.obtain(x.c, 2269, w).sendToTarget();
        raiseFocusListener(z);
        return true;
    }

    @Override // com.unity3d.player.UnityPlayer
    void hidePreservedContent() {
        if (getFrameLayout() == null) {
            return;
        }
        runOnUiThread(new K0(this));
    }

    protected void hideSoftInput() {
        if (this.mSoftInput == null) {
            return;
        }
        reportSoftInputArea(new Rect());
        reportSoftInputIsVisible(false);
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            dismissSoftInput();
            resetSoftInput();
            return;
        }
        Semaphore semaphore = new Semaphore(0);
        postOnUiThread(new RunnableC4139s0(this, semaphore, this));
        try {
            if (!semaphore.tryAcquire(getSoftInputTimeout(), TimeUnit.MILLISECONDS)) {
                com.unity3d.player.a.t.Log(6, "Timeout (" + getSoftInputTimeout() + " ms) while waiting softinput hiding operation.");
            }
        } catch (InterruptedException unused) {
            com.unity3d.player.a.t.Log(6, "UI thread got interrupted while waiting softinput hiding operation.");
        } finally {
            this.mSoftInput = null;
        }
    }

    final native void nativeConfigurationChanged(Configuration configuration);

    final native void nativeFocusChanged(boolean z);

    final native void nativeOrientationChanged(int i, int i2);

    final native boolean nativeRender();

    @Override // com.unity3d.player.UnityPlayer
    void onOrientationChanged(int i, int i2) {
        X x = this.m_MainThread;
        x.h = this.mNaturalOrientation;
        x.i = i2;
        Message.obtain(x.c, 2269, W.i).sendToTarget();
    }

    public void onTrimMemory(MemoryUsage memoryUsage) {
        if (com.unity3d.player.a.S.e) {
            nativeMemoryUsageChanged(memoryUsage.value);
        }
    }

    @Override // com.unity3d.player.UnityPlayer
    void pauseUnity() {
        super.pauseUnity();
        reportSoftInputStr(null, 1, true);
        com.unity3d.player.a.S s = this.mState;
        s.b = false;
        s.c = true;
        if (com.unity3d.player.a.S.e) {
            Semaphore semaphore = new Semaphore(0);
            Runnable d0 = isFinishing() ? new D0(this, semaphore) : new E0(this, semaphore);
            X x = this.m_MainThread;
            Message.obtain(x.c, 2269, W.a).sendToTarget();
            Message.obtain(x.c, d0).sendToTarget();
            try {
                SynchronizationTimeout synchronizationTimeout = SynchronizationTimeout.Pause;
                if (!semaphore.tryAcquire(synchronizationTimeout.getTimeout(), TimeUnit.MILLISECONDS)) {
                    com.unity3d.player.a.t.Log(5, "Timeout (" + synchronizationTimeout.getTimeout() + " ms) while trying to pause the Unity Engine.");
                }
            } catch (InterruptedException unused) {
                com.unity3d.player.a.t.Log(5, "UI thread got interrupted while trying to pause the Unity Engine.");
            }
        }
        if (this.m_AddPhoneCallListener) {
            this.m_TelephonyManager.listen(this.m_PhoneCallListener, 0);
        }
    }

    protected void reportSoftInputArea(Rect rect) {
        invokeOnMainThread((Runnable) new C4153z0(this, rect));
    }

    protected void reportSoftInputIsVisible(boolean z) {
        invokeOnMainThread((Runnable) new A0(this, z));
    }

    protected void reportSoftInputSelection(int i, int i2) {
        invokeOnMainThread((Runnable) new C4151y0(this, i, i2));
    }

    protected void reportSoftInputStr(String str, int i, boolean z) {
        if (i == 1) {
            hideSoftInput();
        }
        invokeOnMainThread((Runnable) new C4149x0(this, z, str, i));
    }

    protected void resetSoftInput() {
        this.mSoftInput = null;
    }

    @Override // com.unity3d.player.UnityPlayer
    void resumeUnity() {
        super.resumeUnity();
        invokeOnMainThread(new J0(this));
        X x = this.m_MainThread;
        Message.obtain(x.c, 2269, W.b).sendToTarget();
    }

    @Override // com.unity3d.player.UnityPlayer
    public boolean runningOnMainThread() {
        return Thread.currentThread() == this.m_MainThread;
    }

    void sendSurfaceChangedEvent() {
        if (isNativeInitialized()) {
            Message.obtain(this.m_MainThread.c, new G0(this)).sendToTarget();
        }
    }

    protected void setCharacterLimit(int i) {
        runOnUiThread(new RunnableC4143u0(this, i));
    }

    protected void setHideInputField(boolean z) {
        runOnUiThread(new RunnableC4145v0(this, z));
    }

    @Override // com.unity3d.player.UnityPlayer
    public void setMainSurfaceViewAspectRatio(float f) {
        if (getFrameLayout() == null) {
            return;
        }
        runOnUiThread(new L0(this, f));
    }

    public void setOnHandleFocusListener(com.unity3d.player.a.y yVar) {
        this.mOnHandleFocusListener = yVar;
    }

    protected void setSelection(int i, int i2) {
        runOnUiThread(new RunnableC4147w0(this, i, i2));
    }

    protected void setSoftInputStr(String str) {
        runOnUiThread(new RunnableC4141t0(this, str));
    }

    protected void showSoftInput(String str, int i, boolean z, boolean z2, boolean z3, boolean z4, String str2, int i2, boolean z5, boolean z6) {
        Semaphore semaphore = new Semaphore(0);
        postOnUiThread(new N0(this, this, str, i, z, z2, z3, z4, str2, i2, z5, z6, semaphore));
        try {
            if (semaphore.tryAcquire(getSoftInputTimeout(), TimeUnit.MILLISECONDS)) {
                return;
            }
            com.unity3d.player.a.t.Log(6, "Timeout (" + getSoftInputTimeout() + " ms) while waiting softinput showing operation.");
        } catch (InterruptedException unused) {
            com.unity3d.player.a.t.Log(6, "UI thread got interrupted while waiting softinput showing operation.");
        }
    }

    @Override // com.unity3d.player.UnityPlayer
    void shutdown() {
        this.mProcessKillRequested = nativeDone();
        super.shutdown();
    }

    void updateGLDisplay(int i, Surface surface) {
        if (this.mMainDisplayOverride) {
            return;
        }
        updateDisplayInternal(i, surface);
    }
}
