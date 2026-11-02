package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.lang.ref.WeakReference;
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
public final class C6 implements InterfaceC3277th {
    public static byte[] A01;
    public final WeakReference<AbstractC13235h> A00;

    static {
        A01();
    }

    public C6(AbstractC13235h abstractC13235h) {
        C1h.A09(abstractC13235h, A00(0, 10, 22));
        this.A00 = new WeakReference<>(abstractC13235h);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 118);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{3, 1, Ascii.DC2, 4, 44, 1, Ascii.EM, Ascii.SI, Ascii.NAK, Ascii.DC4, Ascii.DC4, 3, Ascii.NAK, 19, 10, Ascii.DC2};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3277th
    public final void AFA(C3276tg c3276tg) {
        C1h.A09(c3276tg, A00(10, 6, 16));
        AbstractC13235h abstractC13235h = this.A00.get();
        if (abstractC13235h != null) {
            abstractC13235h.A1r();
        }
    }
}
