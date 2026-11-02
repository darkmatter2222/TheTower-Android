package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2L, reason: invalid class name */
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
public final class C2L {
    public static byte[] A03;
    public static final C2M A04;
    public static final C2L A05 = null;
    public final AnonymousClass13 A00;
    public final C12492e A01;
    public final C12482b A02;

    static {
        A01();
        A04 = new C2M(null);
    }

    public C2L(AnonymousClass13 anonymousClass13, C2j c2j, C12482b c12482b, C12492e c12492e) {
        this.A00 = anonymousClass13;
        this.A02 = c12482b;
        this.A01 = c12492e;
        final C12482b c12482b2 = this.A02;
        c2j.A05(new InterfaceC12502k(c12482b2) { // from class: com.facebook.ads.redexgen.X.10
            public static byte[] A01;
            public final C12482b A00;

            static {
                A01();
            }

            {
                C1h.A09(c12482b2, A00(0, 17, 80));
                this.A00 = c12482b2;
            }

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 34);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A01() {
                A01 = new byte[]{-33, -56, -37, -41, -23, -30, -31, -37, -32, -26, -59, -43, -45, -32, -32, -41, -28};
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC12502k
            public final void onStart() {
                this.A00.A0G();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC12502k
            public final void onStop() {
                this.A00.A0F();
            }
        });
    }

    public /* synthetic */ C2L(AnonymousClass13 anonymousClass13, C2j c2j, C12482b c12482b, C12492e c12492e, AbstractC12411i abstractC12411i) {
        this(anonymousClass13, c2j, c12482b, c12492e);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 35);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{2, 3, -8, -7, -87, -103, -105, -92, -126, -97, -87, -86, -101, -92, -101, -88, Ascii.NAK, 8, 4, Ascii.SYN, Ascii.SI, Ascii.SO, 8, Ascii.CR, 19, -29, 0, 19, 0};
    }

    public static /* synthetic */ void A02(C2L c2l, C2K c2k, C12642y c12642y, int i, Object obj) {
        if ((i & 2) != 0) {
            c12642y = null;
        }
        c2l.A05(c2k, c12642y);
    }

    public final void A03(C2i c2i) {
        this.A02.A0H(c2i);
    }

    public final void A04(C2f c2f) {
        C1h.A09(c2f, A00(4, 12, 19));
        this.A02.A0I(c2f);
    }

    public final void A05(C2K c2k, C12642y c12642y) {
        C1h.A09(c2k, A00(0, 4, InterfaceC3669k1.d.b.k));
        if (!this.A00.A01 || c12642y == null) {
            this.A01.A07(c2k);
        } else {
            this.A01.A08(c2k, c12642y);
        }
    }

    public final void A06(C2K c2k, C12642y c12642y, C12512l<?, ?> c12512l) {
        C1h.A09(c2k, A00(0, 4, InterfaceC3669k1.d.b.k));
        C1h.A09(c12512l, A00(16, 13, 124));
        if (!this.A00.A01 || c12642y == null) {
            this.A01.A0A(c2k, c12512l);
        } else {
            this.A01.A09(c2k, c12642y, c12512l);
        }
    }

    public final void A07(C2K c2k, C12512l<?, ?> c12512l) {
        C1h.A09(c2k, A00(0, 4, InterfaceC3669k1.d.b.k));
        C1h.A09(c12512l, A00(16, 13, 124));
        A06(c2k, null, c12512l);
    }
}
