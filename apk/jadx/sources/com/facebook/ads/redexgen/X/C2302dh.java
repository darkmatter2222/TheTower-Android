package com.facebook.ads.redexgen.X;

import android.graphics.Paint;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.dh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2302dh extends Paint {
    public final /* synthetic */ C2299de A00;
    public final /* synthetic */ boolean A01;

    public C2302dh(C2299de c2299de, boolean z) {
        this.A00 = c2299de;
        this.A01 = z;
        setStyle(Paint.Style.FILL_AND_STROKE);
        setStrokeCap(Paint.Cap.ROUND);
        setStrokeWidth(3.0f);
        setAntiAlias(true);
        setColor(this.A01 ? -1 : -10066330);
    }
}
