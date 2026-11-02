package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
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
public final class C8 extends AbstractC2608ik<C1479By> {
    public static byte[] A0D;
    public static String[] A0E = {"k6cHZ7604wjbhDEYD5MdusasX9sOXfoM", "0sXgoIKJNOLx2z187n7CG2XY0s4sqF47", "5AfmrS0VZUAsAQKwThoKCBIibwrNIto6", "dqVnYtIDxoE9CploHQLuI77aKxh", "6dsFE0rzMoUSrDagqc2bJjIJoLAgd6Qg", "oAKxNdEkoYTXnHeNOIiIx6y95Uf", "0t48Shzg157wzMuIEqDOLP5BIRYBa", "AWDgmrC85u04qXYnCvzn1NXU1su9k"};
    public int A00;
    public final int A01;
    public final SparseBooleanArray A02;
    public final C2410fT A03;
    public final C1618Hi A04;
    public final InterfaceC2884nG A05;
    public final C3077qT A06;
    public final C2199c2 A07;
    public final String A08;
    public final List<C2622iy> A09;
    public final InterfaceC12210m<Map<String, String>, AnonymousClass22> A0A;
    public final InterfaceC12210m<Integer, AnonymousClass22> A0B;
    public final boolean A0C;

    static {
        A03();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C8(C1618Hi c1618Hi, List<C2622iy> list, int i, InterfaceC2884nG interfaceC2884nG, C3077qT c3077qT, String str, C2199c2 c2199c2, C2410fT c2410fT, InterfaceC12210m<? super Map<String, String>, AnonymousClass22> interfaceC12210m, SparseBooleanArray sparseBooleanArray, boolean z, InterfaceC12210m<? super Integer, AnonymousClass22> interfaceC12210m2) {
        C1h.A09(c1618Hi, A01(53, 7, kotlin.fh.g1));
        C1h.A09(list, A01(14, 12, 96));
        C1h.A09(interfaceC2884nG, A01(0, 14, 35));
        C1h.A09(c3077qT, A01(115, 17, 105));
        C1h.A09(str, A01(42, 11, 121));
        C1h.A09(c2199c2, A01(91, 24, 105));
        C1h.A09(sparseBooleanArray, A01(26, 16, 4));
        C1h.A09(interfaceC12210m2, A01(66, 19, 126));
        this.A04 = c1618Hi;
        this.A09 = list;
        this.A01 = i;
        this.A05 = interfaceC2884nG;
        this.A06 = c3077qT;
        this.A08 = str;
        this.A07 = c2199c2;
        this.A03 = c2410fT;
        this.A0A = interfaceC12210m;
        this.A02 = sparseBooleanArray;
        this.A0C = z;
        this.A0B = interfaceC12210m2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final C1479By A0F(ViewGroup viewGroup, int i) {
        C1h.A09(viewGroup, A01(85, 6, 13));
        return new C1479By(C2642jI.A01.A02(this.A04, this.A01), this.A04, this.A02, this.A07, this.A05, this.A06, this.A08, this.A03, this.A0A, this.A0C);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] ^ i3) ^ 4;
            String[] strArr = A0E;
            if (strArr[3].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0E;
            strArr2[4] = "H20f57dINpAno3t2qzp6nmpcelIvKL0c";
            strArr2[1] = "VtI1UnE2FIuLoGOpG15KSyY05wvTfba1";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0D = new byte[]{70, 67, 98, 81, 66, 73, 83, 106, 70, 73, 70, SignedBytes.MAX_POWER_OF_TWO, 66, 85, 7, 5, Ascii.SYN, 0, 45, 10, 2, Ascii.VT, 40, Ascii.CR, Ascii.ETB, Ascii.DLE, 99, 97, 114, 100, 115, 73, 109, 112, 114, 101, 115, 115, 105, 111, 110, 115, Ascii.RS, 17, Ascii.DC4, Ascii.CAN, 19, 9, 41, Ascii.DC2, Ascii.SYN, Ascii.CAN, 19, Ascii.CR, 1, 0, Ascii.SUB, Ascii.VT, Ascii.SYN, Ascii.SUB, 76, 75, 72, SignedBytes.MAX_POWER_OF_TWO, 65, 86, Ascii.NAK, Ascii.DC4, 46, Ascii.DC2, Ascii.SI, Ascii.ETB, Ascii.CAN, Ascii.DC4, Ascii.ESC, 19, Ascii.SYN, 41, Ascii.US, Ascii.SYN, Ascii.US, Ascii.EM, Ascii.SO, Ascii.US, Ascii.RS, 121, 104, 123, 108, 103, 125, Ascii.GS, Ascii.FF, Ascii.US, 8, 3, Ascii.EM, 59, 4, 8, Ascii.SUB, Ascii.FF, Ascii.SI, 4, 1, 4, Ascii.EM, Ascii.DC4, 46, 5, 8, Ascii.SO, 6, 8, Ascii.US, Ascii.EM, 2, Ascii.CAN, Ascii.SO, 5, 41, Ascii.FF, Ascii.EM, Ascii.FF, 63, 8, Ascii.SO, 2, Ascii.US, 9, 8, Ascii.US};
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
    /* JADX INFO: renamed from: A04, reason: merged with bridge method [inline-methods] */
    public final void A0K(C1479By c1479By) {
        C1h.A09(c1479By, A01(60, 6, 32));
        super.A0K(c1479By);
        c1479By.A0w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
    /* JADX INFO: renamed from: A05, reason: merged with bridge method [inline-methods] */
    public final void A0M(C1479By c1479By, int i) {
        C1h.A09(c1479By, A01(60, 6, 32));
        c1479By.A0x(this.A09.get(i), i == this.A00, new C12753l(c1479By, this));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
    public final int A0B() {
        return this.A09.size();
    }

    public final void A0Q(int i) {
        int i2 = this.A00;
        this.A00 = i;
        if (i2 >= 0 && i2 != i) {
            A0H(i2);
        }
        A0H(i);
        String[] strArr = A0E;
        if (strArr[4].charAt(31) == strArr[1].charAt(31)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0E;
        strArr2[3] = "oG1K6D75HeczGWdVhXSgQlaUIbG";
        strArr2[5] = "UNNMTfVsOQa6qPOOX3RGrDRsLJx";
    }
}
