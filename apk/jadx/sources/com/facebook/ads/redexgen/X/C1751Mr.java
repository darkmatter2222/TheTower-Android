package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Mr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1751Mr<V> {
    public int A00;
    public int A01;
    public long[] A02;
    public V[] A03;

    public C1751Mr() {
        this(10);
    }

    public C1751Mr(int i) {
        this.A02 = new long[i];
        this.A03 = (V[]) A00(i);
    }

    public static <V> V[] A00(int i) {
        return (V[]) new Object[i];
    }

    public final synchronized void A01() {
        this.A00 = 0;
        this.A01 = 0;
        Arrays.fill(this.A03, (Object) null);
    }
}
