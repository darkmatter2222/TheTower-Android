package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.util.Arrays;
import java.util.List;
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
public final class CP extends AbstractC2608ik<CL> {
    public static byte[] A09;
    public final SparseBooleanArray A00;
    public final C2410fT A01;
    public final C1618Hi A02;
    public final InterfaceC2884nG A03;
    public final C3077qT A04;
    public final C2199c2 A05;
    public final String A06;
    public final List<C2938oA> A07;
    public final InterfaceC12200l<String, Integer, Integer, AnonymousClass22> A08;

    static {
        A04();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CP(C1618Hi c1618Hi, List<C2938oA> list, InterfaceC2884nG interfaceC2884nG, C2199c2 c2199c2, C3077qT c3077qT, String str, C2410fT c2410fT, InterfaceC12200l<? super String, ? super Integer, ? super Integer, AnonymousClass22> interfaceC12200l) {
        C1h.A09(c1618Hi, A01(25, 7, 120));
        C1h.A09(list, A01(82, 8, 4));
        C1h.A09(interfaceC2884nG, A01(0, 14, 22));
        C1h.A09(c2199c2, A01(58, 24, 14));
        C1h.A09(c3077qT, A01(90, 17, 75));
        C1h.A09(str, A01(14, 11, 127));
        C1h.A09(interfaceC12200l, A01(38, 14, 88));
        this.A02 = c1618Hi;
        this.A07 = list;
        this.A03 = interfaceC2884nG;
        this.A05 = c2199c2;
        this.A04 = c3077qT;
        this.A06 = str;
        this.A01 = c2410fT;
        this.A08 = interfaceC12200l;
        this.A00 = new SparseBooleanArray();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final CL A0F(ViewGroup viewGroup, int i) {
        C1h.A09(viewGroup, A01(52, 6, 105));
        return new CL(new C2940oC(this.A02), this.A00, this.A05, this.A02, this.A03, this.A04, this.A06, this.A01);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 13);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A09 = new byte[]{-124, -121, 104, -103, -120, -111, -105, 112, -124, -111, -124, -118, -120, -107, -17, -8, -11, -15, -6, 0, -32, -5, -9, -15, -6, -24, -12, -13, -7, -22, -3, -7, 123, -126, 127, 119, 120, -123, -44, -45, -75, -41, -44, -55, -38, -56, -39, -88, -47, -50, -56, -48, -26, -41, -24, -37, -28, -22, -117, 124, -115, -128, -119, -113, 113, -124, -128, -110, 124, 125, -124, -121, -124, -113, -108, 94, -125, -128, 126, -122, -128, -115, -127, -125, -128, 117, -122, 116, -123, -124, -52, -57, -51, -69, -64, -100, -71, -52, -71, -86, -67, -69, -57, -54, -68, -67, -54};
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
    /* JADX INFO: renamed from: A05, reason: merged with bridge method [inline-methods] */
    public final void A0M(CL cl, int i) {
        C1h.A09(cl, A01(32, 6, 6));
        C2938oA c2938oA = this.A07.get(i);
        cl.A0w(c2938oA, i, this.A07.size(), new C12793p(this, c2938oA, i));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
    public final int A0B() {
        return this.A07.size();
    }
}
