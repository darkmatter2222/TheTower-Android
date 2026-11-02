package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import p005kotlin.Metadata;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:68)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:31)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@Metadata
public final class CC extends AbstractC2625j1 {
    public static byte[] A01;
    public final /* synthetic */ C2801lu A00;

    static {
        A01();
    }

    public CC(C2801lu c2801lu) {
        this.A00 = c2801lu;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 98);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{82, 69, 67, 89, 67, 76, 69, 82, 54, 73, 69, 87};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2625j1
    public final void A0Q(C7O c7o, int i, int i2) {
        AbstractC2608ik adapter;
        int iA0B;
        int iComputeHorizontalScrollRange;
        C1h.A09(c7o, A00(0, 12, 126));
        if (i != 0 && (adapter = c7o.getAdapter()) != null && (iA0B = adapter.A0B()) > 1 && (iComputeHorizontalScrollRange = c7o.computeHorizontalScrollRange() - c7o.computeHorizontalScrollExtent()) > 0) {
            int iA00 = AbstractC12180j.A00((c7o.computeHorizontalScrollOffset() / iComputeHorizontalScrollRange) * (iA0B - 1));
            C3308uC c3308uC = this.A00.A0B;
            if (c3308uC != null) {
                c3308uC.setCurrentPosition(iA00);
            }
        }
    }
}
