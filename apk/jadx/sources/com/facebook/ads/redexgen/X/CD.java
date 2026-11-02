package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.view.View;
import com.google.common.base.Ascii;
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
public final class CD extends AbstractC2617it {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 127);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{33, 59, 58, Ascii.FS, 43, 45, 58, 74, 91, 72, 95, 84, 78, 56, 63, 42, 63, 46, 58, 37, 41, 59};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2617it
    public final void A02(Rect rect, View view, C7O c7o, C2635jB c2635jB) {
        C1h.A09(rect, A00(0, 7, 49));
        C1h.A09(view, A00(18, 4, 51));
        C1h.A09(c7o, A00(7, 6, 69));
        C1h.A09(c2635jB, A00(13, 5, 52));
        int iA1C = c7o.A1C(view);
        AbstractC2608ik adapter = c7o.getAdapter();
        int iA0B = adapter != null ? adapter.A0B() : 0;
        int i = AbstractC3043pv.A0K;
        if (iA1C != 0) {
            i /= 2;
        }
        rect.left = i;
        rect.right = iA1C == iA0B + (-1) ? AbstractC3043pv.A0K : AbstractC3043pv.A0K / 2;
    }
}
