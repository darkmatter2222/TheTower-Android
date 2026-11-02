package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;
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
public final class CL extends AbstractC2638jE {
    public static byte[] A0A;
    public static final C2890nM A0B;
    public AbstractC2200c3 A00;
    public C2199c2 A01;
    public final SparseBooleanArray A02;
    public final C2410fT A03;
    public final C1618Hi A04;
    public final InterfaceC2884nG A05;
    public final C3077qT A06;
    public final C2940oC A07;
    public final C2199c2 A08;
    public final String A09;

    static {
        A09();
        A0B = new C2890nM(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CL(C2940oC c2940oC, SparseBooleanArray sparseBooleanArray, C2199c2 c2199c2, C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, C3077qT c3077qT, String str, C2410fT c2410fT) {
        super(c2940oC);
        C1h.A09(c2940oC, A07(30, 10, 46));
        C1h.A09(sparseBooleanArray, A07(54, 16, 11));
        C1h.A09(c2199c2, A07(94, 24, 124));
        C1h.A09(c1618Hi, A07(0, 16, 45));
        C1h.A09(interfaceC2884nG, A07(16, 14, 92));
        C1h.A09(c3077qT, A07(129, 17, 93));
        C1h.A09(str, A07(70, 11, 45));
        this.A07 = c2940oC;
        this.A02 = sparseBooleanArray;
        this.A08 = c2199c2;
        this.A04 = c1618Hi;
        this.A05 = interfaceC2884nG;
        this.A06 = c3077qT;
        this.A09 = str;
        this.A03 = c2410fT;
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 17);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A0A = new byte[]{93, 88, 127, 83, 82, 72, 89, 68, 72, 107, 78, 93, 76, 76, 89, 78, 44, 41, 8, 59, 40, 35, 57, 0, 44, 35, 44, 42, 40, 63, 92, 94, 77, 91, 115, 94, 70, 80, 74, 75, 103, 101, 118, 96, 103, 106, 112, 81, 83, SignedBytes.MAX_POWER_OF_TWO, 86, 91, 92, 86, 121, 123, 104, 126, 105, 83, 119, 106, 104, 127, 105, 105, 115, 117, 116, 105, 95, 80, 85, 89, 82, 72, 104, 83, 87, 89, 82, Ascii.FS, Ascii.GS, 48, Ascii.US, Ascii.SUB, Ascii.DLE, Ascii.CAN, 50, Ascii.DLE, 7, Ascii.SUB, Ascii.FS, Ascii.GS, Ascii.GS, Ascii.FF, Ascii.US, 8, 3, Ascii.EM, 59, 4, 8, Ascii.SUB, Ascii.FF, Ascii.SI, 4, 1, 4, Ascii.EM, Ascii.DC4, 46, 5, 8, Ascii.SO, 6, 8, Ascii.US, 66, SignedBytes.MAX_POWER_OF_TWO, 93, 86, 71, 81, 70, 123, 92, 84, 93, 56, 35, 57, 47, 36, 8, 45, 56, 45, Ascii.RS, 41, 47, 35, 62, 40, 41, 62};
    }

    private final void A0A(int i, int i2) {
        if (this.A02.get(i)) {
            return;
        }
        C2199c2 c2199c2 = this.A01;
        if (c2199c2 != null) {
            c2199c2.A0V();
        }
        this.A01 = null;
        HashMap map = new HashMap();
        map.put(A07(47, 7, 35), String.valueOf(i));
        map.put(A07(40, 7, 21), String.valueOf(i2));
        this.A00 = new CM(this, i, map);
        this.A01 = new C2199c2(this.A07, 10, new WeakReference(this.A00), this.A04);
        C2199c2 c2199c3 = this.A01;
        if (c2199c3 != null) {
            c2199c3.A0Y(false);
            c2199c3.A0W(100);
            c2199c3.A0X(100);
        }
    }

    public final void A0w(C2938oA c2938oA, int i, int i2, InterfaceC12220n<AnonymousClass22> interfaceC12220n) {
        C1h.A09(c2938oA, A07(118, 11, 35));
        C1h.A09(interfaceC12220n, A07(81, 13, 98));
        this.A07.A02(c2938oA, interfaceC12220n, new C12773n(i, this));
        A0A(i, i2);
    }
}
