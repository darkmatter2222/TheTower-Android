package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.0i, reason: invalid class name and case insensitive filesystem */
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
public abstract class AbstractC12170i extends AbstractC12361b {
    public static byte[] A00;

    static {
        A02();
    }

    public static final long A00(long j, long j2, long j3) {
        if (j2 > j3) {
            throw new IllegalArgumentException(A01(22, 47, 24) + j3 + A01(0, 22, 3) + j2 + '.');
        }
        if (j < j2) {
            return j2;
        }
        return j > j3 ? j3 : j;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 26);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{Base64.padSymbol, -122, -112, Base64.padSymbol, -119, -126, -112, -112, Base64.padSymbol, -111, -123, 126, -117, Base64.padSymbol, -118, -122, -117, -122, -118, -110, -118, Base64.padSymbol, 117, -109, -96, -96, -95, -90, 82, -107, -95, -105, -92, -107, -105, 82, -88, -109, -98, -89, -105, 82, -90, -95, 82, -109, -96, 82, -105, -97, -94, -90, -85, 82, -92, -109, -96, -103, -105, 108, 82, -97, -109, -86, -101, -97, -89, -97, 82};
    }
}
