package com.facebook.ads.redexgen.X;

import java.nio.ByteBuffer;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.90, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AnonymousClass90 extends SK {
    public int[] A00;
    public int[] A01;

    @Override // com.facebook.ads.redexgen.X.SK
    public final LX A09(LX lx) throws LY {
        int[] iArr = this.A01;
        if (iArr == null) {
            return LX.A06;
        }
        if (lx.A02 != 2) {
            throw new LY(lx);
        }
        boolean z = lx.A01 != iArr.length;
        int i = 0;
        while (i < iArr.length) {
            int i2 = iArr[i];
            if (i2 >= lx.A01) {
                throw new LY(lx);
            }
            z |= i2 != i;
            i++;
        }
        return z ? new LX(lx.A03, iArr.length, 2) : LX.A06;
    }

    @Override // com.facebook.ads.redexgen.X.SK
    public final void A0A() {
        this.A00 = this.A01;
    }

    public final void A0C(int[] iArr) {
        this.A01 = iArr;
    }

    @Override // com.facebook.ads.redexgen.X.LZ
    public final void AIU(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) AbstractC1722Ln.A01(this.A00);
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferA00 = A00(this.A06.A00 * ((iLimit - iPosition) / this.A05.A00));
        while (iPosition < iLimit) {
            for (int i : iArr) {
                byteBufferA00.putShort(byteBuffer.getShort((i * 2) + iPosition));
            }
            iPosition += this.A05.A00;
        }
        byteBuffer.position(iLimit);
        byteBufferA00.flip();
    }
}
