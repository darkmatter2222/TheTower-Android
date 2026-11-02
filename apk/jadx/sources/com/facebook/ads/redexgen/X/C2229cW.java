package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cW, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2229cW implements Comparable<C2229cW> {
    public final int A00;
    public final C2220cN A01;

    public C2229cW(int i, C2220cN c2220cN) {
        this.A00 = i;
        this.A01 = c2220cN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final int compareTo(C2229cW c2229cW) {
        return Integer.compare(this.A00, c2229cW.A00);
    }
}
