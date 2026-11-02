package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Metadata;
import java.nio.ByteBuffer;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Pn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1818Pn implements InterfaceC2056Zi {
    public abstract Metadata A0R(C13968e c13968e, ByteBuffer byteBuffer);

    @Override // com.facebook.ads.redexgen.X.InterfaceC2056Zi
    public final Metadata A6N(C13968e c13968e) {
        ByteBuffer byteBuffer = (ByteBuffer) AbstractC1722Ln.A01(c13968e.A02);
        AbstractC1722Ln.A07(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        if (c13968e.A04()) {
            return null;
        }
        return A0R(c13968e, byteBuffer);
    }
}
