package com.unity3d.player;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes5.dex */
public final class V implements Handler.Callback {
    public final /* synthetic */ X a;

    public V(X x) {
        this.a = x;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00c4  */
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 2269) {
            return false;
        }
        W w = (W) message.obj;
        W w2 = W.h;
        if (w == w2) {
            X x = this.a;
            x.g--;
            x.a.executeMainThreadJobs();
            X x2 = this.a;
            if (!x2.d) {
                return true;
            }
            if (x2.a.getHaveAndroidWindowSupport() && !this.a.e) {
                return true;
            }
            X x3 = this.a;
            int i = x3.j;
            if (i >= 0) {
                if (i == 0) {
                    if (x3.a.getSplashEnabled()) {
                        this.a.a.disableStaticSplashScreen();
                    }
                    if (this.a.a.shouldReportFullyDrawn()) {
                        this.a.a.reportFullyDrawn();
                    }
                }
                this.a.j--;
            }
            if (!this.a.a.isFinishing() && !this.a.a.nativeRender()) {
                this.a.a.finish();
            }
        } else if (w == W.c) {
            Looper.myLooper().quit();
        } else if (w == W.b) {
            this.a.d = true;
        } else if (w == W.a) {
            this.a.d = false;
        } else if (w == W.d) {
            this.a.e = false;
        } else if (w == W.e) {
            X x4 = this.a;
            x4.e = true;
            if (x4.f == 3 && (!x4.a.getHaveAndroidWindowSupport() || this.a.e)) {
                this.a.a.nativeFocusChanged(true);
                this.a.f = 1;
            }
        } else if (w == W.f) {
            X x5 = this.a;
            if (x5.f == 1) {
                x5.a.nativeFocusChanged(false);
            }
            this.a.f = 2;
        } else if (w == W.g) {
            X x6 = this.a;
            x6.f = 3;
            if (!x6.a.getHaveAndroidWindowSupport() || this.a.e) {
                this.a.a.nativeFocusChanged(true);
                this.a.f = 1;
            }
        } else if (w == W.i) {
            X x7 = this.a;
            x7.a.nativeOrientationChanged(x7.h, x7.i);
        }
        X x8 = this.a;
        if (x8.d && x8.g <= 0) {
            Message.obtain(x8.c, 2269, w2).sendToTarget();
            this.a.g++;
        }
        return true;
    }
}
