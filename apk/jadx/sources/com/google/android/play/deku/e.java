package com.google.android.play.deku;

import android.graphics.Rect;
import android.os.Bundle;
import android.util.Log;
import com.google.android.play.deku.j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {
    public final /* synthetic */ Object a;
    private final /* synthetic */ int b;

    e(DekuLifecycleManager dekuLifecycleManager, int i, byte[] bArr) {
        this.b = i;
        Objects.requireNonNull(dekuLifecycleManager);
        this.a = dekuLifecycleManager;
    }

    public /* synthetic */ e(Object obj, int i) {
        this.b = i;
        this.a = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        s sVar;
        int densityDpi;
        Throwable th;
        Rect windowBounds;
        int i = this.b;
        if (i == 0) {
            ((DekuLifecycleManager) this.a).lambda$tryRegisterEnhancedLayoutChangeListener$0();
            return;
        }
        Object obj = this.a;
        if (i != 1) {
            l.a((l) obj);
            return;
        }
        synchronized (obj) {
            sVar = null;
            try {
                windowBounds = ((DekuLifecycleManager) obj).getWindowBounds();
                try {
                    densityDpi = ((DekuLifecycleManager) obj).getDensityDpi();
                    try {
                        if (((DekuLifecycleManager) obj).iDekuControllerService != null && windowBounds != null && densityDpi != -1 && (!Objects.equals(windowBounds, ((DekuLifecycleManager) obj).currentWindowBounds) || densityDpi != ((DekuLifecycleManager) obj).currentDensityDpi)) {
                            ((DekuLifecycleManager) obj).currentWindowBounds = windowBounds;
                            ((DekuLifecycleManager) obj).currentDensityDpi = densityDpi;
                            sVar = ((DekuLifecycleManager) obj).iDekuControllerService;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        Log.w("DekuLifecycleManager", "SDK debounced onDisplayChanged failed to read state.", th);
                    }
                } catch (Throwable th3) {
                    densityDpi = -1;
                    th = th3;
                }
            } catch (Throwable th4) {
                densityDpi = -1;
                th = th4;
                windowBounds = null;
            }
        }
        if (sVar != null) {
            try {
                sVar.j(windowBounds, densityDpi, Bundle.EMPTY);
            } catch (Throwable th5) {
                Log.w("DekuLifecycleManager", "SDK debounced onDisplayChanged failed.", th5);
                Object obj2 = this.a;
                synchronized (obj2) {
                    ((DekuLifecycleManager) obj2).logToServer(12, th5);
                }
            }
        }
    }
}
