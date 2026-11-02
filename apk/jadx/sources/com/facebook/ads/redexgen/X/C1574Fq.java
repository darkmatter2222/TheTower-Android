package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fq, reason: case insensitive filesystem */
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
public final class C1574Fq extends IX {
    public static byte[] A01;
    public final /* synthetic */ C1572Fo A00;

    static {
        A01();
    }

    public C1574Fq(C1572Fo c1572Fo) {
        this.A00 = c1572Fo;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 14);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{41, 47, 57, 46, 3, 62, 41, 58, 58, 57, 46, 57, 56, 3, 63, 48, 53, 63, 55, 3, 53, Base64.padSymbol, 62, 3, 50, Base64.padSymbol, 42, 53, 59, Base64.padSymbol, 40, 53, 51, 50};
    }

    @Override // com.facebook.ads.redexgen.X.IX
    public final void A0A(int i, Bundle bundle) {
        if (i == 1) {
            this.A00.A00++;
            if (this.A00.A00 > 1) {
                this.A00.A0D(A00(0, 34, 82));
            }
        }
    }
}
