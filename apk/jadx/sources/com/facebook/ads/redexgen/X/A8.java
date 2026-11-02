package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.io.encoding.Base64;

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
public final class A8 extends AbstractC2005Xg {
    public static byte[] A00;
    public static final XK A01;
    public static final A8 A02;

    static {
        A01();
        A01 = new XK(null);
        A02 = new A8();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 95);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{49, Base64.padSymbol, 54, 55, 49, Ascii.FS, 51, 63, 55, Ascii.FF, Ascii.GS, 10, Ascii.SO, Ascii.ESC, 6, 1, 8, 42, Ascii.EM, 10, 1, Ascii.ESC, Ascii.EM, 5, Ascii.US, Ascii.CAN, 9, Ascii.SI};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2005Xg
    public final void A06(C2007Xi c2007Xi, int i) {
        C1h.A09(c2007Xi, A00(9, 13, 48));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2005Xg
    public final void A07(EnumC2006Xh enumC2006Xh, int i) {
        C1h.A09(enumC2006Xh, A00(22, 6, 53));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2005Xg
    public final void A08(EnumC2006Xh enumC2006Xh, int i) {
        C1h.A09(enumC2006Xh, A00(22, 6, 53));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2005Xg
    public final void A09(EnumC2006Xh enumC2006Xh, int i) {
        C1h.A09(enumC2006Xh, A00(22, 6, 53));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2005Xg
    public final void A0A(boolean z, String str, EnumC2006Xh enumC2006Xh, int i) {
        C1h.A09(str, A00(0, 9, 13));
        C1h.A09(enumC2006Xh, A00(22, 6, 53));
    }
}
