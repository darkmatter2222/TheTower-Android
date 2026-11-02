package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.io.encoding.Base64;
import p005kotlin.jvm.JvmStatic;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2M, reason: invalid class name */
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
public final class C2M {
    public static byte[] A00;

    static {
        A02();
    }

    public C2M() {
    }

    public /* synthetic */ C2M(AbstractC12411i abstractC12411i) {
        this();
    }

    private final AnonymousClass30 A00(int i) {
        if (0 != 0) {
            throw new NullPointerException(A01(0, 6, 25));
        }
        return null;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ InterfaceC3669k1.d.b.j);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{10, Ascii.ESC, Ascii.FF, 8, Ascii.GS, Ascii.FF, 95, 75, 109, 65, SignedBytes.MAX_POWER_OF_TWO, 72, 71, 73, 69, 82, 83, 66, 84, 82, 69, 36, 59, 55, 37, 34, Base64.padSymbol, 59, 60, 38, 17, Base64.padSymbol, 60, 38, 51, 59, 60, 55, 32, 6, Ascii.EM, Ascii.NAK, 7, 0, Ascii.US, Ascii.EM, Ascii.RS, 4, 60, Ascii.EM, Ascii.SYN, Ascii.NAK, 19, 9, 19, Ascii.FS, Ascii.NAK, 51, Ascii.US, Ascii.RS, 4, 2, Ascii.US, Ascii.FS, Ascii.FS, Ascii.NAK, 2};
    }

    @JvmStatic
    public final C2L A03(AnonymousClass13 anonymousClass13, C2j c2j, InterfaceC12542o interfaceC12542o, AnonymousClass12 anonymousClass12, InterfaceC12552p interfaceC12552p, AnonymousClass30 anonymousClass30) {
        AnonymousClass30 anonymousClass30A00 = anonymousClass30;
        C1h.A09(anonymousClass13, A01(6, 8, 94));
        C1h.A09(c2j, A01(39, 28, 0));
        C1h.A09(interfaceC12542o, A01(21, 18, 34));
        C1h.A09(anonymousClass12, A01(14, 7, 71));
        C2L c2l = C2L.A05;
        if (c2l != null) {
            return c2l;
        }
        C12492e c12492e = new C12492e(anonymousClass13);
        AC ac = AC.A00;
        Handler handler = new Handler(Looper.getMainLooper());
        if (anonymousClass30A00 == null) {
            anonymousClass30A00 = A00(100);
        }
        return new C2L(anonymousClass13, c2j, new C12482b(anonymousClass13, interfaceC12542o, ac, anonymousClass12, c12492e, interfaceC12552p, handler, anonymousClass30A00, 0, 256, null), c12492e, null);
    }
}
