package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Xg, reason: case insensitive filesystem */
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
public abstract class AbstractC2005Xg {
    public static byte[] A00;

    static {
        A04();
    }

    private final long A02() {
        return AA.A00().ADW();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 70);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{7, 19, 8, 9, 7, -14, 5, 17, 9, -44, -48, -42, -45, -60, -58};
    }

    public final C2007Xi A05(boolean z, String str, EnumC2006Xh enumC2006Xh) {
        C1h.A09(str, A03(0, 9, 94));
        C1h.A09(enumC2006Xh, A03(9, 6, 27));
        return new C2007Xi(A02(), z, str, enumC2006Xh);
    }

    public abstract void A06(C2007Xi c2007Xi, int i);

    public abstract void A07(EnumC2006Xh enumC2006Xh, int i);

    public abstract void A08(EnumC2006Xh enumC2006Xh, int i);

    public abstract void A09(EnumC2006Xh enumC2006Xh, int i);

    public abstract void A0A(boolean z, String str, EnumC2006Xh enumC2006Xh, int i);
}
