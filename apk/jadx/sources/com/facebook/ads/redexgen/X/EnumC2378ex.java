package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ex, reason: case insensitive filesystem */
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
public enum EnumC2378ex {
    A07(101),
    A0A(102),
    A0B(103),
    A08(104),
    A09(105),
    A06(kotlin.fh.g1),
    A05(kotlin.fh.h1),
    A04(108);

    public static byte[] A01;
    public static final /* synthetic */ InterfaceC12240p A02;
    public final int A00;

    static {
        A01();
        A02 = C1q.A01(A03);
    }

    EnumC2378ex(int i) {
        this.A00 = i;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 79);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{9, Ascii.RS, 1, Ascii.DC2, 5, Ascii.DC4, Ascii.SI, Ascii.US, 4, 9, Ascii.DC2, 2, 3, Ascii.DC2, 9, 8, Ascii.RS, Ascii.EM, Ascii.US, 2, Ascii.DC4, 8, Ascii.US, 0, 19, 4, Ascii.NAK, Ascii.SO, Ascii.RS, 5, 8, 19, Ascii.US, 7, 5, Ascii.FS, 38, 53, 44, 44, 51, 35, 50, 37, 37, 46, 63, 54, 41, 36, 37, 47, 63, 54, 41, 37, 55, 63, 47, 46, 63, 36, 37, 51, 52, 50, 47, 57, 89, 94, 68, 85, 66, 67, 68, 89, 68, 89, 81, 92, 79, 70, 89, 84, 85, 95, 79, 70, 89, 85, 71, 79, 84, 85, 67, 68, 66, 95, 73, Ascii.ETB, Ascii.FS, Ascii.SO, 6, Ascii.SI, Ascii.DLE, Ascii.GS, Ascii.FS, Ascii.SYN, 6, Ascii.DLE, Ascii.ETB, Ascii.CR, Ascii.FS, Ascii.VT, 10, Ascii.CR, Ascii.DLE, Ascii.CR, Ascii.DLE, Ascii.CAN, Ascii.NAK, 6, Ascii.ETB, Ascii.RS, Ascii.CR, 6, Ascii.ESC, Ascii.FF, Ascii.CR, Ascii.CR, Ascii.SYN, Ascii.ETB, 80, 91, 73, 65, 72, 87, 90, 91, 81, 65, 87, 80, 74, 91, 76, 77, 74, 87, 74, 87, 95, 82, 65, 74, 81, 81, 82, 92, 95, 76, 65, 93, 82, 81, 77, 91, 65, 93, 82, 87, 93, 85, 91, 90, 86, 65, 83, 69, 86, SignedBytes.MAX_POWER_OF_TWO, 65, SignedBytes.MAX_POWER_OF_TWO, 91, 82, 77, SignedBytes.MAX_POWER_OF_TWO, 65, 75, 91, 80, 75, 75, 72, 70, 69, 86, 91, 71, 72, 75, 87, 65, 91, 71, 72, 77, 71, 79, 65, SignedBytes.MAX_POWER_OF_TWO, 40, 48, 50, 43, 36, 43, 55, 46, 60, 50, 53};
    }

    public final int A03() {
        return this.A00;
    }
}
