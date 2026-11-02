package com.unity3d.player;

import android.content.Context;
import com.unity3d.player.a.AbstractC4095k;
import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: classes5.dex */
public final class N0 implements Runnable {
    public final /* synthetic */ UnityPlayerForActivityOrService a;
    public final /* synthetic */ String b;
    public final /* synthetic */ int c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ boolean f;
    public final /* synthetic */ boolean g;
    public final /* synthetic */ String h;
    public final /* synthetic */ int i;
    public final /* synthetic */ boolean j;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ Semaphore l;
    public final /* synthetic */ UnityPlayerForActivityOrService m;

    public N0(UnityPlayerForActivityOrService unityPlayerForActivityOrService, UnityPlayerForActivityOrService unityPlayerForActivityOrService2, String str, int i, boolean z, boolean z2, boolean z3, boolean z4, String str2, int i2, boolean z5, boolean z6, Semaphore semaphore) {
        this.m = unityPlayerForActivityOrService;
        this.a = unityPlayerForActivityOrService2;
        this.b = str;
        this.c = i;
        this.d = z;
        this.e = z2;
        this.f = z3;
        this.g = z4;
        this.h = str2;
        this.i = i2;
        this.j = z5;
        this.k = z6;
        this.l = semaphore;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.unity3d.player.a.r b;
        try {
            try {
                UnityPlayerForActivityOrService unityPlayerForActivityOrService = this.m;
                if (unityPlayerForActivityOrService.mSoftInput != null) {
                    unityPlayerForActivityOrService.dismissSoftInput();
                }
                UnityPlayerForActivityOrService unityPlayerForActivityOrService2 = this.m;
                int iA = SoftInputProvider.a();
                Context context = this.m.mContext;
                UnityPlayerForActivityOrService unityPlayerForActivityOrService3 = this.a;
                int iA2 = AbstractC4095k.a(iA);
                if (iA2 == 2) {
                    b = new B(context, unityPlayerForActivityOrService3);
                } else if (iA2 != 3) {
                    b = new D(context, unityPlayerForActivityOrService3);
                } else {
                    com.unity3d.player.a.t.Log(6, "When using URS, all soft input events are forwarded to the client. This code path should not be used.");
                    b = null;
                }
                unityPlayerForActivityOrService2.mSoftInput = b;
                this.m.mSoftInput.a(this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k);
                this.m.mSoftInput.a(new M0(this));
                this.m.mSoftInput.a();
                this.m.nativeReportKeyboardConfigChanged();
            } catch (Exception e) {
                com.unity3d.player.a.t.Log(6, "Exception when opening Softinput " + e);
            }
        } finally {
            this.l.release();
        }
    }
}
