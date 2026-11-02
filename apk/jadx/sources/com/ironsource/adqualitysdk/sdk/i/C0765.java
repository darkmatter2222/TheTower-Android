package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import com.ironsource.adqualitysdk.sdk.IronSourceAdQuality;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵞ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0765 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final Object f2829 = new Object();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public volatile C0227 f2830;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f2828 = StringFog.decrypt("x3UzSgYdFhnEcmFNA0AXTcYgNR1TTkYZx3AzQVdIQUnBIzUdAU4XTsRyYU9TG0QVlHQzSQBJS07C\nIzUaAkAWTcElMxoGTkUUwSM5G1NARE7DJzgZU0FDTcd5NRkKSxEVxidkGgROFhnCIGZMBhsXSMFy\nZR1QQRFIkXI1GQAZSx/Odw==\n", "90EAeDJ4cyw=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final C0765 f2827 = new C0765();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2265() {
        synchronized (this.f2829) {
            this.f2830 = null;
            C0685.f2608.m2222();
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2266(Context context, String str) {
        synchronized (this.f2829) {
            if (this.f2830 != null) {
                return;
            }
            C0227 c0227 = new C0227(new C0774(IronSourceAdQuality.getSDKVersion(), AbstractC0679.m2214(str)));
            c0227.f1155.f3326.put(1, C0952.m2332(f2828));
            c0227.m1977(context);
            this.f2830 = c0227;
        }
    }
}
