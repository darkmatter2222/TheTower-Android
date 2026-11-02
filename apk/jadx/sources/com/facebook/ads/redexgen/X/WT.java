package com.facebook.ads.redexgen.X;

import com.facebook.ads.redexgen.X.WT;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class WT<T extends WT<T>> {
    public final int A00;
    public final int A01;
    public final VC A02;
    public final U8 A03;

    public WT(int i, U8 u8, int i2) {
        this.A00 = i;
        this.A03 = u8;
        this.A01 = i2;
        this.A02 = u8.A08(i2);
    }

    public abstract int A08();

    public abstract boolean A09(T t);
}
