package com.google.android.play.deku;

import android.os.Bundle;
import android.util.Log;
import com.google.android.play.deku.config.DekuFeatureFlags;
import com.google.android.play.deku.j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class i extends p {
    final /* synthetic */ DekuLifecycleManager a;

    /* synthetic */ i(DekuLifecycleManager dekuLifecycleManager) {
        Objects.requireNonNull(dekuLifecycleManager);
        this.a = dekuLifecycleManager;
    }

    @Override // com.google.android.play.deku.q
    public final void b(final Bundle bundle) {
        DekuLifecycleManager dekuLifecycleManager = this.a;
        synchronized (dekuLifecycleManager) {
            dekuLifecycleManager.mainThreadHandler.post(new Runnable() { // from class: com.google.android.play.deku.h
                @Override // java.lang.Runnable
                public final void run() {
                    i iVar = this.a;
                    Bundle bundle2 = bundle;
                    try {
                        DekuLifecycleManager dekuLifecycleManager2 = iVar.a;
                        if (dekuLifecycleManager2.screenCaptureManager == null || !DekuLifecycleManager.isScreenCaptureSupported()) {
                            return;
                        }
                        dekuLifecycleManager2.screenCaptureManager.g(bundle2);
                    } catch (Throwable th) {
                        Log.w("DekuLifecycleManager", "onConfigureCapture failed.", th);
                        iVar.a.logToServer(9, th);
                    }
                }
            });
        }
    }

    @Override // com.google.android.play.deku.q
    public final void c(s sVar, Bundle bundle) {
        DekuLifecycleManager dekuLifecycleManager = this.a;
        synchronized (dekuLifecycleManager) {
            try {
                dekuLifecycleManager.iDekuControllerService = sVar;
                dekuLifecycleManager.connected = true;
                if (bundle == null || bundle.isEmpty()) {
                    dekuLifecycleManager.dekuPlayVersion = -1;
                    DekuFeatureFlags.setFeatureFlagsBundle(null);
                } else {
                    dekuLifecycleManager.dekuPlayVersion = bundle.getInt("dekuPlayVersion", -1);
                    DekuFeatureFlags.setFeatureFlagsBundle(bundle.getBundle("dekuClientFeatureFlags"));
                }
                dekuLifecycleManager.sendActivityResumed();
                dekuLifecycleManager.tryRegisterEnhancedLayoutChangeListener();
                Log.i("DekuLifecycleManager", String.format("Controller connected (Client version: %d; Play version: %d)", 18, Integer.valueOf(dekuLifecycleManager.dekuPlayVersion)));
            } catch (Throwable th) {
                Log.w("DekuLifecycleManager", "onConnected failed.", th);
            }
        }
    }

    @Override // com.google.android.play.deku.q
    public final void d(Bundle bundle) {
        DekuLifecycleManager dekuLifecycleManager = this.a;
        synchronized (dekuLifecycleManager) {
            try {
                if (dekuLifecycleManager.screenCaptureManager != null && DekuLifecycleManager.isScreenCaptureSupported()) {
                    dekuLifecycleManager.screenCaptureManager.h(bundle);
                }
            } catch (Throwable th) {
                Log.w("DekuLifecycleManager", "onStopCapture failed.", th);
                this.a.logToServer(10, th);
            }
        }
    }

    @Override // com.google.android.play.deku.q
    public final void e(int i) {
        Log.w("DekuLifecycleManager", "Controller returned error " + i);
        this.a.unbind();
    }

    @Override // com.google.android.play.deku.q
    public final void f(int i) {
        DekuLifecycleManager dekuLifecycleManager = this.a;
        synchronized (dekuLifecycleManager) {
            Log.i("DekuLifecycleManager", "sendPlayTreatmentInfo() received");
            try {
                dekuLifecycleManager.sidekickExperimentInfoManager.b(i);
            } catch (Throwable th) {
                Log.w("DekuLifecycleManager", "sendPlayTreatmentInfo failed.", th);
            }
        }
    }

    @Override // com.google.android.play.deku.q
    public final void g(boolean z) {
        DekuLifecycleManager dekuLifecycleManager = this.a;
        synchronized (dekuLifecycleManager) {
            Log.i("DekuLifecycleManager", "sendSidekickRenderedInfo() received");
            try {
                dekuLifecycleManager.sidekickExperimentInfoManager.c(z);
            } catch (Throwable th) {
                Log.w("DekuLifecycleManager", "sendSidekickRenderedInfo failed.", th);
            }
        }
    }

    @Override // com.google.android.play.deku.q
    public final void h(t tVar, String str, Bundle bundle) {
        DekuLifecycleManager dekuLifecycleManager = this.a;
        synchronized (dekuLifecycleManager) {
            try {
                if (dekuLifecycleManager.gameStateManager != null && dekuLifecycleManager.activityInForeground) {
                    dekuLifecycleManager.gameStateManager.c(tVar, str, bundle);
                }
            } catch (Throwable th) {
                this.a.logToServer(13, th);
            }
        }
    }

    @Override // com.google.android.play.deku.q
    public final void i(t tVar, String str) {
        DekuLifecycleManager dekuLifecycleManager = this.a;
        synchronized (dekuLifecycleManager) {
            try {
                if (dekuLifecycleManager.gameStateManager != null) {
                    dekuLifecycleManager.gameStateManager.d(tVar, str);
                }
            } catch (Throwable th) {
                this.a.logToServer(14, th);
            }
        }
    }
}
