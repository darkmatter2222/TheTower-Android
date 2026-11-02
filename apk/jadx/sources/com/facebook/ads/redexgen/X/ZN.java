package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class ZN {
    public final int A00;
    public final int A01;
    public final int A02;
    public final byte[] A03;

    public ZN(int i, byte[] bArr, int i2, int i3) {
        this.A01 = i;
        this.A03 = bArr;
        this.A02 = i2;
        this.A00 = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ZN zn = (ZN) obj;
        return this.A01 == zn.A01 && this.A02 == zn.A02 && this.A00 == zn.A00 && Arrays.equals(this.A03, zn.A03);
    }

    public final int hashCode() {
        return (((((this.A01 * 31) + Arrays.hashCode(this.A03)) * 31) + this.A02) * 31) + this.A00;
    }
}
