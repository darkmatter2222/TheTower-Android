package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Nz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1785Nz extends AbstractC2036Yo {
    public C1785Nz(C1752Ms c1752Ms, long j, long j2) {
        super(new QK(), new O0(c1752Ms), j, 0L, j + 1, 0L, j2, 188L, 1000);
    }

    public static int A00(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8) | (bArr[i + 3] & 255);
    }
}
