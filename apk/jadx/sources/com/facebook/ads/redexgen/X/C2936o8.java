package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Iterator;
import p005kotlin.Metadata;
import p005kotlin.jvm.JvmStatic;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.o8, reason: case insensitive filesystem */
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
public final class C2936o8 {
    public static byte[] A00;
    public static String[] A01 = {"X6iKGO", "n1663jUEZ04NyjQefcVQngF0Ob3hl8Rp", "Hr7PNgYsonyIEiesPe0H0pY5f28sZsym", "EquNJ3fMIukET0WWVYWmlmL8mVBIg8TB", "9XOH4rvxrJMeZUJVoNuz92iI7LLv2Fha", "V771bSPGltSNqndo2D7BbAlD02Ozj", "0PsiwSnPCEmbhFHYllgT9XmoEJDjq4Md", "LkjwEGgp5KSgPmsnmzhe0sINYIzqe1QT"};

    static {
        A01();
    }

    public C2936o8() {
    }

    public /* synthetic */ C2936o8(AbstractC12411i abstractC12411i) {
        this();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 46);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        byte[] bArr = {Ascii.FF, Ascii.ESC, Ascii.SYN, Ascii.SI, Ascii.US};
        if (A01[0].length() != 6) {
            throw new RuntimeException();
        }
        A01[3] = "2seAYkeJuAtgm3YdolZcxfqfJEip2P9i";
        A00 = bArr;
    }

    @JvmStatic
    public final EnumC2935o7 A02(String str) {
        EnumC2935o7 next;
        C1h.A09(str, A00(0, 5, 84));
        Iterator<EnumC2935o7> it = EnumC2935o7.A02().iterator();
        while (it.hasNext()) {
            next = it.next();
            if (C1h.A0C(next.A05(), str)) {
                return next;
            }
        }
        next = null;
        return next;
    }
}
