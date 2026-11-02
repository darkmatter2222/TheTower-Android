package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.base.Ascii;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class NI implements InterfaceC2272dD {
    public static byte[] A09;
    public static String[] A0A = {"2hmAfzTadn", "1uDqsMr9wv4o5ZghfCOZg4FuDp7sllqp", "nT1KYDstdBBAZ5nN", "UVqk4rMzzgqbiyaJgpoGMOUy0jQCoEBq", "ewXxsmpHr", "rT44HeCpkJQ", "C3kiv90mrVS0BL1BSM5Dfu9lHf0n3Csl", "grgxNBq6hb"};
    public static final String A0B;
    public final int A00;
    public final int A01;
    public final C2280dL A02;
    public final InterfaceC2293dY A04;
    public final C2755lA A05;
    public final boolean A08;
    public final Map<String, File> A06 = Collections.synchronizedMap(new HashMap());
    public final Map<String, Semaphore> A07 = new HashMap();
    public final C2282dN A03 = new C2282dN();

    static {
        A04();
        A0B = NI.class.getSimpleName();
    }

    public NI(C2755lA c2755lA, C2280dL c2280dL, InterfaceC2293dY interfaceC2293dY) {
        this.A05 = c2755lA;
        this.A08 = c2280dL.A02();
        this.A00 = c2280dL.A00();
        this.A04 = interfaceC2293dY;
        this.A01 = c2280dL.A01();
        this.A02 = c2280dL;
    }

    public static NG A00(Context context, String str) throws C2289dU {
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStreamOpen.read(bArr, 0, bArr.length);
                if (i == -1) {
                    return new NG(byteArrayOutputStream.toByteArray());
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
        } catch (IOException e) {
            throw new C2289dU(A03(131, 18, 33), e);
        }
    }

    public static File A01(Context context) {
        return new File(context.getCacheDir(), A03(TypedValues.AttributesType.TYPE_PIVOT_TARGET, 15, 10));
    }

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x0106: INVOKE 
  (r9v1 ?? I:com.facebook.ads.redexgen.X.dY)
  (r10 I:java.lang.String)
  (r11 I:int)
  (r12 I:java.lang.String)
  (r13 I:java.lang.Long)
  (r14 I:java.lang.Long)
  (r15 I:com.facebook.ads.redexgen.X.dJ)
 INTERFACE call: com.facebook.ads.redexgen.X.dY.AIh(java.lang.String, int, java.lang.String, java.lang.Long, java.lang.Long, com.facebook.ads.redexgen.X.dJ):void A[MD:(java.lang.String, int, java.lang.String, java.lang.Long, java.lang.Long, com.facebook.ads.redexgen.X.dJ):void (m)], block:B:40:0x00fb */
    /* JADX WARN: Not initialized variable reg: 10, insn: 0x0120: INVOKE 
  (r9v0 ?? I:com.facebook.ads.redexgen.X.dY)
  (r10 I:java.lang.String)
  (r11 I:int)
  (r12 I:java.lang.String)
  (r13 I:java.lang.Long)
  (r14 I:java.lang.Long)
  (r15 I:com.facebook.ads.redexgen.X.dJ)
 INTERFACE call: com.facebook.ads.redexgen.X.dY.AIh(java.lang.String, int, java.lang.String, java.lang.Long, java.lang.Long, com.facebook.ads.redexgen.X.dJ):void A[MD:(java.lang.String, int, java.lang.String, java.lang.Long, java.lang.Long, com.facebook.ads.redexgen.X.dJ):void (m)], block:B:46:0x0115 */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x0105: MOVE (r15 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:40:0x00fb */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x011f: MOVE (r15 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:46:0x0115 */
    private File A02(C2278dJ c2278dJ, String str, String str2, int i, C2281dM<?> c2281dM) throws Throwable {
        C2278dJ c2278dJ2;
        String strAIh;
        C2278dJ c2278dJ3;
        String strAIh2;
        NB nb;
        String strA03 = A03(222, 22, 68);
        try {
            String str3 = str;
            long jCurrentTimeMillis = System.currentTimeMillis();
            File file = new File(A01(this.A05), str2);
            final long jA0P = C2863mv.A0P(this.A05);
            NB nb2 = new NB(file, new NH(jA0P) { // from class: com.facebook.ads.redexgen.X.88
                public static byte[] A01;
                public static String[] A02 = {"rUhg5nWIULCK5t0gW05eAQLFFSPSWMvZ", "IWlot4Qxgt9kC5cL8sfJp7UuHzQVcIMi", "pyGO9NZUXO3VfNbPYY8A9lbBjy3aVFuI", "BR2eyutWjUUloqp0GJ1CKmWpDC9ci7iC", "R8", "7OIMX1dy42ob61A4JIfUI17XWGQLX3ws", "f7SraaJMsc9s0A0ZVYKOMxYCK6pogew2", "N778iUAZTctb3pJ5Cpi07oq2oMO9GnTO"};
                public final long A00;

                static {
                    A01();
                }

                {
                    if (jA0P <= 0) {
                        throw new IllegalArgumentException(A00(0, 33, 24));
                    }
                    this.A00 = jA0P;
                }

                public static String A00(int i2, int i3, int i4) {
                    byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i2, i2 + i3);
                    int i5 = 0;
                    while (true) {
                        int length = bArrCopyOfRange.length;
                        String[] strArr = A02;
                        if (strArr[1].charAt(11) == strArr[7].charAt(11)) {
                            throw new RuntimeException();
                        }
                        A02[2] = "gnOcZLWDvxdPQhFZXDuJbQjlKnJrGFNK";
                        if (i5 >= length) {
                            return new String(bArrCopyOfRange);
                        }
                        bArrCopyOfRange[i5] = (byte) ((bArrCopyOfRange[i5] - i4) - 84);
                        i5++;
                    }
                }

                public static void A01() {
                    A01 = new byte[]{-71, -51, -28, -116, -33, -43, -26, -47, -116, -39, -31, -33, -32, -116, -50, -47, -116, -36, -37, -33, -43, -32, -43, -30, -47, -116, -38, -31, -39, -50, -47, -34, -115};
                }

                @Override // com.facebook.ads.redexgen.X.NH
                public final boolean A08(File file2, long j, int i2) {
                    return j <= this.A00;
                }

                @Override // com.facebook.ads.redexgen.X.NH, com.facebook.ads.redexgen.X.InterfaceC2283dO
                public final /* bridge */ /* synthetic */ void ALl(File file2) throws IOException {
                    super.ALl(file2);
                }
            });
            if (nb2.A09()) {
                if (this.A08) {
                    String str4 = A03(49, 22, kotlin.fh.g1) + nb2.A00.getName();
                }
                this.A06.put(str3, file);
                nb2.A06();
                this.A04.AIi(str3, true, c2278dJ);
                return file;
            }
            if (this.A08) {
                String str5 = A03(71, 26, 117) + nb2.A00.getName();
            }
            if (!c2281dM.A04()) {
                return null;
            }
            this.A04.AIi(str3, false, c2278dJ);
            int i2 = 0;
            while (i2 < this.A00) {
                try {
                    str3 = str3;
                    nb = nb2;
                    try {
                        A05(this.A05, nb2, str3, i, i2, jCurrentTimeMillis);
                        int iA03 = nb.A03();
                        nb.A06();
                        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                        c2281dM.A00().A5m(file, this.A04);
                        this.A06.put(str3, file);
                        this.A04.AIh(str3, 2112, null, Long.valueOf(iA03), Long.valueOf(jCurrentTimeMillis2), c2278dJ);
                        return file;
                    } catch (C2289dU e) {
                        e = e;
                        if (i2 == this.A00 - 1) {
                            A06(nb);
                            if (e instanceof NE) {
                                throw ((NE) e);
                            }
                            if (e instanceof N8) {
                                throw ((N8) e);
                            }
                        }
                        i2++;
                        nb2 = nb;
                    }
                } catch (C2289dU e2) {
                    e = e2;
                    nb = nb2;
                }
            }
            nb = nb2;
            int iA04 = nb.A03();
            nb.A06();
            long jCurrentTimeMillis3 = System.currentTimeMillis() - jCurrentTimeMillis;
            c2281dM.A00().A5m(file, this.A04);
            this.A06.put(str3, file);
            this.A04.AIh(str3, 2112, null, Long.valueOf(iA04), Long.valueOf(jCurrentTimeMillis3), c2278dJ);
            return file;
        } catch (N8 e3) {
            this.A04.AIh(strAIh2, 2113, e3.toString(), null, null, c2278dJ3);
            if (!this.A08) {
                return null;
            }
            Log.e(A0B, strA03, e3);
            return null;
        } catch (NE e4) {
            this.A04.AIh(strAIh, 2119, e4.toString(), null, null, c2278dJ2);
            if (!this.A08) {
                return null;
            }
            Log.e(A0B, strA03, e4);
            return null;
        }
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] - i3;
            String[] strArr = A0A;
            if (strArr[5].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0A;
            strArr2[5] = "m9U6X0moZlc";
            strArr2[7] = "IfCNkNm6kG";
            bArrCopyOfRange[i4] = (byte) (i5 - 76);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A09 = new byte[]{-105, -33, -40, -22, -105, -39, -36, -36, -27, -105, -32, -27, -21, -36, -23, -23, -20, -25, -21, -36, -37, -91, -63, -75, -5, -2, 1, -6, -75, -8, 1, -6, -10, 3, -6, -7, -49, -75, -125, 117, -106, -55, -55, -70, -62, -59, -55, -113, 117, -7, Ascii.ETB, Ascii.EM, Ascii.RS, Ascii.US, 36, Ascii.GS, -42, Ascii.FS, Ascii.US, 34, Ascii.ESC, -42, Ascii.EM, 37, 35, 38, 34, Ascii.ESC, 42, Ascii.ESC, -42, 4, 34, 36, 41, 42, 47, 40, -31, 39, 42, 45, 38, -31, 47, 48, 53, -31, 36, 48, 46, 49, 45, 38, 53, 38, -31, -91, -61, -59, -54, -53, -48, -55, -126, -47, -56, -126, -32, -2, Ascii.VT, -60, 17, -67, 0, 9, Ascii.FF, Ascii.DLE, 2, -67, 0, -2, 0, 5, 2, -67, 3, 6, 9, 2, -53, -80, -50, -37, -108, -31, -115, -33, -46, -50, -47, -115, -50, -32, -32, -46, -31, -32, -101, -69, -39, -26, -97, -20, -104, -22, -35, -39, -36, -104, -28, -35, -26, -33, -20, -32, -104, -25, -34, -104, -72, -39, -32, -39, -24, -35, -30, -37, -108, -41, -43, -41, -36, -39, -108, -38, -35, -32, -39, -108, -43, -38, -24, -39, -26, -108, -39, -20, -41, -39, -39, -40, -35, -30, -37, -108, -26, -39, -24, -26, -19, -108, -43, -24, -24, -39, -31, -28, -24, -25, -82, -108, -43, 2, 2, -1, 2, -80, -13, -15, -13, -8, -7, -2, -9, -80, 4, -8, -11, -80, -10, -7, -4, -11, -54, -9, -9, -12, -9, -91, -24, -15, -22, -26, -13, -18, -13, -20, -91, -21, -18, -15, -22, -72, -27, -27, -30, -27, -109, -42, -33, -30, -26, -36, -31, -38, -109, -26, -30, -24, -27, -42, -40, -72, -35, -46, -34, -36, -33, -37, -44, -29, -44, -113, -31, -44, -30, -33, -34, -35, -30, -44, -99, -65, -35, -28, -44, -39, -46, -117, -33, -38, -117, -35, -48, -52, -49, -117, -73, -70, -60, -51, -125, -68, -65, -62, -69, -125, -71, -73, -71, -66, -69, -18, 0, 0, -14, 1, -57, -68, -68, -68, 5, 8, Ascii.VT, 4, -39, -50, -50, -50, 0, Ascii.CR, 3, 17, Ascii.SO, 8, 3, -2, 0, Ascii.DC2, Ascii.DC2, 4, 19, -50};
        String[] strArr = A0A;
        if (strArr[1].charAt(5) == strArr[3].charAt(5)) {
            throw new RuntimeException();
        }
        A0A[6] = "1YrvosXM8zHw8wsMUb3ulJ8Xgx5scBHO";
    }

    /* JADX WARN: Code duplicated, block: B:106:0x023c  */
    /* JADX WARN: Code duplicated, block: B:112:0x01a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:22:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:24:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:27:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:28:0x00bd A[Catch: all -> 0x0124, dU -> 0x016b, TRY_ENTER, TryCatch #14 {dU -> 0x016b, blocks: (B:12:0x007c, B:38:0x0109, B:44:0x011c, B:36:0x0103, B:28:0x00bd, B:30:0x00c5), top: B:115:0x007c }] */
    /* JADX WARN: Code duplicated, block: B:30:0x00c5 A[Catch: all -> 0x0124, dU -> 0x016b, TryCatch #14 {dU -> 0x016b, blocks: (B:12:0x007c, B:38:0x0109, B:44:0x011c, B:36:0x0103, B:28:0x00bd, B:30:0x00c5), top: B:115:0x007c }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00f5 A[Catch: all -> 0x0166, dU -> 0x0169, TRY_ENTER, TryCatch #11 {dU -> 0x0169, blocks: (B:9:0x0051, B:17:0x008c, B:42:0x0116, B:47:0x0127, B:39:0x010d, B:41:0x0113, B:33:0x00f5, B:34:0x00fc), top: B:121:0x0051 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0103 A[Catch: all -> 0x0124, dU -> 0x016b, LOOP:0: B:34:0x00fc->B:36:0x0103, LOOP_END, TRY_ENTER, TryCatch #14 {dU -> 0x016b, blocks: (B:12:0x007c, B:38:0x0109, B:44:0x011c, B:36:0x0103, B:28:0x00bd, B:30:0x00c5), top: B:115:0x007c }] */
    /* JADX WARN: Code duplicated, block: B:38:0x0109 A[ADDED_TO_REGION, Catch: all -> 0x0124, dU -> 0x016b, REMOVE, TRY_LEAVE, TryCatch #14 {dU -> 0x016b, blocks: (B:12:0x007c, B:38:0x0109, B:44:0x011c, B:36:0x0103, B:28:0x00bd, B:30:0x00c5), top: B:115:0x007c }] */
    /* JADX WARN: Code duplicated, block: B:39:0x010d A[Catch: all -> 0x0166, dU -> 0x0169, TRY_ENTER, TryCatch #11 {dU -> 0x0169, blocks: (B:9:0x0051, B:17:0x008c, B:42:0x0116, B:47:0x0127, B:39:0x010d, B:41:0x0113, B:33:0x00f5, B:34:0x00fc), top: B:121:0x0051 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x011c A[Catch: all -> 0x0124, dU -> 0x016b, TRY_ENTER, TRY_LEAVE, TryCatch #14 {dU -> 0x016b, blocks: (B:12:0x007c, B:38:0x0109, B:44:0x011c, B:36:0x0103, B:28:0x00bd, B:30:0x00c5), top: B:115:0x007c }] */
    /* JADX WARN: Code duplicated, block: B:70:0x017f  */
    /* JADX WARN: Code duplicated, block: B:73:0x019a  */
    /* JADX WARN: Code duplicated, block: B:86:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:87:0x01fe  */
    private void A05(Context context, NB nb, String str, int i, int i2, long j) throws Throwable {
        InterfaceC2292dX interfaceC2292dXA00;
        String[] strArr;
        String[] strArr2;
        String[] strArr3;
        int iA03;
        int length;
        boolean z;
        boolean zA07;
        byte[] bArr;
        int i3;
        String strA03 = A03(263, 20, 39);
        String strA04 = A03(342, 22, 83);
        if (str.startsWith(strA04)) {
            interfaceC2292dXA00 = A00(context, str.substring(strA04.length()));
        } else {
            String strA05 = A03(333, 9, 65);
            interfaceC2292dXA00 = str.startsWith(strA05) ? A00(context, str.substring(strA05.length())) : new N9(str, i);
        }
        try {
            if (!this.A08) {
                iA03 = nb.A03();
                length = interfaceC2292dXA00.length();
                if (A0A[2].length() != 16) {
                    throw new RuntimeException();
                }
                String[] strArr4 = A0A;
                strArr4[1] = "eTbeym3Ey2TfwhNFyBG6ZkfAKtzQxWab";
                strArr4[3] = "sd4JUTjhNLXLgefrlj4RQDt9w4Pjz5Uj";
                if (length < 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    zA07 = A07(nb);
                    if (this.A08) {
                        String str2 = A03(149, 21, 44) + str + A03(22, 16, 73) + zA07;
                    }
                }
                if (z) {
                    interfaceC2292dXA00.AHw(iA03);
                    bArr = new byte[8192];
                    while (true) {
                        i3 = interfaceC2292dXA00.read(bArr);
                        if (i3 == -1) {
                            break;
                        } else {
                            nb.A08(bArr, i3);
                        }
                    }
                    if (z) {
                        throw new NE(A03(283, 20, 35));
                    }
                    nb.A07();
                    this.A05.A08().ACc(j, System.currentTimeMillis() - j, nb.A03(), 0L, interfaceC2292dXA00 instanceof N9 ? ((N9) interfaceC2292dXA00).A06() : 0, null);
                    interfaceC2292dXA00.close();
                    return;
                }
                interfaceC2292dXA00.AHw(iA03);
                bArr = new byte[8192];
                while (true) {
                    i3 = interfaceC2292dXA00.read(bArr);
                    if (i3 == -1) {
                        break;
                    } else {
                        nb.A08(bArr, i3);
                    }
                }
                if (z) {
                    throw new NE(A03(283, 20, 35));
                }
                nb.A07();
                this.A05.A08().ACc(j, System.currentTimeMillis() - j, nb.A03(), 0L, interfaceC2292dXA00 instanceof N9 ? ((N9) interfaceC2292dXA00).A06() : 0, null);
                interfaceC2292dXA00.close();
                return;
                if (z) {
                    throw new NE(A03(283, 20, 35));
                }
                nb.A07();
                this.A05.A08().ACc(j, System.currentTimeMillis() - j, nb.A03(), 0L, interfaceC2292dXA00 instanceof N9 ? ((N9) interfaceC2292dXA00).A06() : 0, null);
                interfaceC2292dXA00.close();
                return;
                strArr = A0A;
                if (strArr[5].length() != strArr[7].length()) {
                    A0A[6] = "T9HhHUPHmRtDRYih6csTBmWckuigXZik";
                }
                int iA06 = interfaceC2292dXA00 instanceof N9 ? ((N9) interfaceC2292dXA00).A06() : 0;
                InterfaceC2785le interfaceC2785leA08 = this.A05.A08();
                long jCurrentTimeMillis = System.currentTimeMillis() - j;
                strArr2 = A0A;
                if (strArr2[0].length() != strArr2[4].length()) {
                    String[] strArr5 = A0A;
                    strArr5[0] = "1ebbv6sZsY";
                    strArr5[4] = "jsueFKzO4";
                } else {
                    A0A[6] = "KSAyepUp6Lv8t3ZYZ0KE3Pcqgz9Tryir";
                }
                interfaceC2785leA08.ACc(j, jCurrentTimeMillis, 0L, 0L, iA06, null);
                throw e;
            }
            try {
                try {
                    String str3 = A03(303, 15, 31) + str + A03(38, 11, 9) + i2;
                    iA03 = nb.A03();
                    length = interfaceC2292dXA00.length();
                    if (A0A[2].length() != 16) {
                        throw new RuntimeException();
                    }
                    String[] strArr6 = A0A;
                    strArr6[1] = "eTbeym3Ey2TfwhNFyBG6ZkfAKtzQxWab";
                    strArr6[3] = "sd4JUTjhNLXLgefrlj4RQDt9w4Pjz5Uj";
                    if (length < 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        zA07 = A07(nb);
                        if (this.A08) {
                            String str4 = A03(149, 21, 44) + str + A03(22, 16, 73) + zA07;
                        }
                    }
                    try {
                        try {
                            if (z || iA03 < length) {
                                interfaceC2292dXA00.AHw(iA03);
                                bArr = new byte[8192];
                                while (true) {
                                    i3 = interfaceC2292dXA00.read(bArr);
                                    if (i3 == -1) {
                                        break;
                                    } else {
                                        nb.A08(bArr, i3);
                                    }
                                }
                                if (z && nb.A03() != length) {
                                    throw new NE(A03(283, 20, 35));
                                }
                                nb.A07();
                                this.A05.A08().ACc(j, System.currentTimeMillis() - j, nb.A03(), 0L, interfaceC2292dXA00 instanceof N9 ? ((N9) interfaceC2292dXA00).A06() : 0, null);
                                interfaceC2292dXA00.close();
                                return;
                            }
                            interfaceC2292dXA00.close();
                            return;
                        } catch (C2289dU | IllegalArgumentException e) {
                            if (this.A08) {
                                Log.e(A0B, strA03, e);
                                return;
                            }
                            return;
                        }
                        if (z) {
                            throw new NE(A03(283, 20, 35));
                        }
                        nb.A07();
                        this.A05.A08().ACc(j, System.currentTimeMillis() - j, nb.A03(), 0L, interfaceC2292dXA00 instanceof N9 ? ((N9) interfaceC2292dXA00).A06() : 0, null);
                    } catch (C2289dU e2) {
                        e = e2;
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (C2289dU e3) {
                    e = e3;
                    strArr3 = A0A;
                    if (strArr3[1].charAt(5) != strArr3[3].charAt(5)) {
                        throw new RuntimeException();
                    }
                    A0A[2] = "FEvgLDxHgmJHNXql";
                }
            } catch (C2289dU e4) {
                e = e4;
                strArr3 = A0A;
                if (strArr3[1].charAt(5) != strArr3[3].charAt(5)) {
                    throw new RuntimeException();
                }
                A0A[2] = "FEvgLDxHgmJHNXql";
            } catch (Throwable th2) {
                th = th2;
            }
            strArr = A0A;
            if (strArr[5].length() != strArr[7].length()) {
                A0A[6] = "T9HhHUPHmRtDRYih6csTBmWckuigXZik";
            }
            try {
                if (interfaceC2292dXA00 instanceof N9) {
                    try {
                    } catch (Throwable th3) {
                        th = th3;
                        String[] strArr7 = A0A;
                        if (strArr7[0].length() == strArr7[4].length()) {
                            throw new RuntimeException();
                        }
                        A0A[6] = "ImVXE49sB20dM2EoLXCVvjDoDOKBzvDP";
                    }
                }
                InterfaceC2785le interfaceC2785leA09 = this.A05.A08();
                long jCurrentTimeMillis2 = System.currentTimeMillis() - j;
                strArr2 = A0A;
                if (strArr2[0].length() != strArr2[4].length()) {
                    String[] strArr8 = A0A;
                    strArr8[0] = "1ebbv6sZsY";
                    strArr8[4] = "jsueFKzO4";
                } else {
                    A0A[6] = "KSAyepUp6Lv8t3ZYZ0KE3Pcqgz9Tryir";
                }
                try {
                    interfaceC2785leA09.ACc(j, jCurrentTimeMillis2, 0L, 0L, iA06, null);
                    throw e;
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
                if (A0A[2].length() != 16) {
                    throw new RuntimeException();
                }
                String[] strArr9 = A0A;
                strArr9[1] = "6fSXCo91bn6LAd9tVoL5ppajSHGCeKrb";
                strArr9[3] = "7b6W6Np6OlCq8n45whdvZaRJ0dkqNrQI";
            }
        } catch (C2289dU e5) {
            e = e5;
        }
        try {
            interfaceC2292dXA00.close();
        } catch (C2289dU | IllegalArgumentException e6) {
            if (this.A08) {
                Log.e(A0B, strA03, e6);
            }
        }
        throw th;
    }

    private void A06(NB nb) {
        try {
            File fileA04 = nb.A04();
            if (fileA04.exists()) {
                nb.A06();
                boolean zDelete = fileA04.delete();
                if (this.A08) {
                    Log.i(A0B, A03(170, 52, 40) + zDelete);
                }
            }
        } catch (Exception e) {
            if (this.A08) {
                Log.e(A0B, A03(108, 23, 81), e);
            }
        }
    }

    private boolean A07(NB nb) {
        try {
            nb.A05();
            return true;
        } catch (N8 e) {
            boolean z = this.A08;
            if (A0A[6].charAt(7) == 'U') {
                throw new RuntimeException();
            }
            A0A[6] = "AEs2mSbxTVyMZvMH4XlDgcN9VznTkYzp";
            if (!z) {
                return false;
            }
            Log.e(A0B, A03(244, 19, 57), e);
            return false;
        }
    }

    public final <T> C2274dF<T> A08(C2278dJ c2278dJ, C2281dM<T> c2281dM) {
        Semaphore semaphore;
        if (c2281dM.A03()) {
            File file = this.A06.get(c2278dJ.A09);
            if (file != null) {
                this.A04.AIi(c2278dJ.A09, true, c2278dJ);
                return c2281dM.A00().A4N(file, this.A04);
            }
            this.A04.AIi(c2278dJ.A09, false, c2278dJ);
            return new C2274dF<>(false, null);
        }
        String str = c2278dJ.A09;
        String str2 = this.A03.A03(str) + c2278dJ.A04;
        synchronized (this.A07) {
            semaphore = this.A07.get(str2);
            if (semaphore == null) {
                semaphore = new Semaphore(1);
                this.A07.put(str2, semaphore);
            }
            try {
            } catch (Throwable th) {
                semaphore.release();
                synchronized (this.A07) {
                    this.A07.remove(str2);
                    throw th;
                }
            }
        }
        try {
            semaphore.acquire();
            File fileA02 = A02(c2278dJ, str, str2, this.A01, c2281dM);
            if (fileA02 != null) {
                C2274dF<T> c2274dFA4N = c2281dM.A00().A4N(fileA02, this.A04);
                semaphore.release();
                synchronized (this.A07) {
                    this.A07.remove(str2);
                }
                return c2274dFA4N;
            }
            C2274dF<T> c2274dF = new C2274dF<>(false, null);
            semaphore.release();
            synchronized (this.A07) {
                this.A07.remove(str2);
            }
            return c2274dF;
        } catch (InterruptedException unused) {
            if (this.A08) {
                String str3 = A03(97, 11, 22) + str + A03(0, 22, 43);
            }
            C2274dF<T> c2274dF2 = new C2274dF<>(false, null);
            semaphore.release();
            synchronized (this.A07) {
                this.A07.remove(str2);
                return c2274dF2;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2272dD
    public final C2274dF<Bitmap> AJw(C2278dJ c2278dJ, boolean z) {
        return A08(c2278dJ, new C2281dM(new NP(c2278dJ.A01, c2278dJ.A00, this.A02.A04(), this.A02.A03(), z)));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2272dD
    public final File AJx(C2278dJ c2278dJ) {
        C2281dM c2281dM = new C2281dM(new NO());
        c2281dM.A01(true);
        c2281dM.A02(false);
        return (File) A08(c2278dJ, c2281dM).A00();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2272dD
    public final String AJy(C2278dJ c2278dJ) {
        return (String) A08(c2278dJ, new C2281dM(new NJ())).A00();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2272dD
    public final String AJz(C2278dJ c2278dJ) {
        C2281dM c2281dM = new C2281dM(new NJ());
        c2281dM.A01(true);
        c2281dM.A02(false);
        return (String) A08(c2278dJ, c2281dM).A00();
    }
}
