package com.facebook.ads.redexgen.X;

import com.google.android.gms.nearby.uwb.RangingPosition;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.jvm.JvmStatic;

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
public final class XL {
    public static byte[] A00;
    public static String[] A01 = {"0jExEk3vUyUPDq2mXs9i7CjDAbMzMZ1V", "N2n5XiOjQGU5khKoAGptGx4mwB0u8DRu", "resp06pXrpgrV6CIpEQDGv5j1qPgZGdx", "NMJj0cg3gGeCUywRgatE5qc85hbhTF7H", "WmMiqOFk", "tPnLiNRq1Ash1dzEMf1RNf7rxIM2vZlD", "a2DU8xzS9MiI9kTeMeBg6CGRquwdJWvb", "qCwF4vW7JFuDlchxEU53PHpfD0dNOWKs"};
    public static final XL A02;
    public static final Map<XQ, Boolean> A03;
    public static final Map<XP, Integer> A04;
    public static final Map<XO, Long> A05;

    static {
        A02();
        A02 = new XL();
        A03 = new EnumMap(XQ.class);
        A04 = new EnumMap(XP.class);
        A05 = new EnumMap(XO.class);
        for (XQ xq : XQ.values()) {
            A03.put(xq, false);
        }
        for (XP xp : XP.values()) {
            A04.put(xp, -1);
        }
        for (XO xo : XO.values()) {
            A05.put(xo, -1L);
        }
        A03.put(XQ.A0f, true);
        A03.put(XQ.A0V, true);
        A03.put(XQ.A2M, true);
        A03.put(XQ.A1a, true);
        A04.put(XP.A06, 100);
    }

    @JvmStatic
    public static final int A00(XP xp) {
        C1h.A09(xp, A01(24, 17, 49));
        Integer num = A04.get(xp);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException(A01(0, 24, 34).toString());
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A01[4].length() != 8) {
                throw new RuntimeException();
            }
            A01[0] = "Wxb8869CUA3PW7Pka76CxSNnrhCrgYel";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            int i5 = (bArrCopyOfRange[i4] - i3) + RangingPosition.RSSI_MIN;
            String[] strArr = A01;
            if (strArr[7].charAt(29) == strArr[5].charAt(29)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[1] = "NXEgAqXZpHN6WJo4cWO5I5jR2jnCkkNq";
            strArr2[3] = "N52oFcNKMlMo0DuF5mHkzzMPiX7VPgn1";
            bArrCopyOfRange[i4] = (byte) i5;
            i4++;
        }
    }

    public static void A02() {
        byte[] bArr = {-13, 6, Ascii.DC2, Ascii.SYN, 10, 19, 6, 5, -63, Ascii.ETB, 2, Ascii.CR, Ascii.SYN, 6, -63, Ascii.CAN, 2, Ascii.DC4, -63, Ascii.SI, Ascii.SYN, Ascii.CR, Ascii.CR, -49, 37, 32, Ascii.ETB, 34, 17, Ascii.DC4, Ascii.NAK, -7, Ascii.DC4, Ascii.NAK, Ascii.RS, 36, Ascii.EM, Ascii.SYN, Ascii.EM, Ascii.NAK, 34};
        String[] strArr = A01;
        if (strArr[1].charAt(0) != strArr[3].charAt(0)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[1] = "NmsikXUzAO8QGJXdreecvw5A7J7m0GR9";
        strArr2[3] = "NdfzphoOqiw5xnhYShAlCS4F0fmh1hmh";
        A00 = bArr;
    }

    @JvmStatic
    public static final boolean A03(XQ xq) {
        C1h.A09(xq, A01(24, 17, 49));
        return C1h.A0C(true, A03.get(xq));
    }
}
