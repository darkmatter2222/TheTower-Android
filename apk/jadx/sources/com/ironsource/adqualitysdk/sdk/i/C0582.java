package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒹ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0582 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final InterfaceC0517 f2346;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public boolean f2347 = false;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final Handler f2345 = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public C0638 f2344 = new C0638(this);

    public C0582(InterfaceC0517 interfaceC0517) {
        this.f2346 = interfaceC0517;
        AbstractC1081 abstractC1081M2437 = AbstractC1081.m2437();
        C0638 c0638 = this.f2344;
        synchronized (abstractC1081M2437) {
            abstractC1081M2437.f3816.add(c0638);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2138() {
        this.f2345.removeCallbacksAndMessages(null);
        if (this.f2344 != null) {
            AbstractC1081 abstractC1081M2437 = AbstractC1081.m2437();
            C0638 c0638 = this.f2344;
            synchronized (abstractC1081M2437) {
                abstractC1081M2437.f3816.remove(c0638);
            }
            this.f2344 = null;
        }
    }
}
