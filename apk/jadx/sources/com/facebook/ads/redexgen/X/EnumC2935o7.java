package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.io.encoding.Base64;
import p005kotlin.jvm.JvmStatic;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.o7, reason: case insensitive filesystem */
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
public enum EnumC2935o7 {
    A07(A01(55, 10, 58)),
    A06(A01(52, 3, 63)),
    A05(A01(39, 13, 72)),
    A08(A01(65, 13, 37));

    public static byte[] A01;
    public static final C2936o8 A02;
    public static final /* synthetic */ InterfaceC12240p A03;
    public final String A00;

    static {
        A03();
        A03 = C1q.A01(A04);
        A02 = new C2936o8(null);
    }

    EnumC2935o7(String str) {
        this.A00 = str;
    }

    @JvmStatic
    public static final EnumC2935o7 A00(String str) {
        return A02.A02(str);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 22);
        }
        return new String(bArrCopyOfRange);
    }

    public static InterfaceC12240p<EnumC2935o7> A02() {
        return A03;
    }

    public static void A03() {
        A01 = new byte[]{69, 70, 84, 78, 68, 88, 70, 87, 87, 88, 70, 67, 84, 55, 35, 50, 125, 113, 109, 112, 126, 103, 96, 96, 119, 118, 9, Ascii.SO, Ascii.NAK, 8, Ascii.US, 5, Ascii.ESC, 10, 10, 5, Ascii.ESC, Ascii.RS, 9, 60, 63, 45, 55, Base64.padSymbol, 1, 63, 46, 46, 1, 63, 58, 45, 77, 89, 72, 67, 79, 115, 78, SignedBytes.MAX_POWER_OF_TWO, 89, 94, 94, 73, 72, SignedBytes.MAX_POWER_OF_TWO, 71, 92, 65, 86, 108, 82, 67, 67, 108, 82, 87, SignedBytes.MAX_POWER_OF_TWO};
    }

    public final String A05() {
        return this.A00;
    }
}
