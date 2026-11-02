package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.l0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2747l0 {
    public static byte[] A03;
    public static String[] A04 = {"xEW9LSpkxtcMkiVkCjWXuTu5CJHPJiyq", "tTP", "A", "dhAFlm3SiPB0s9864OvgcmZEVzRtwwmX", "mnE9bSEHBlleLkXo6La2W5bpkmZqSUyN", "0jwmHWkFqK", "xBcWrb6s57BN1yke0uYkFqIHC7aAgPEb", "dL0KwaEpZdlIbw3ka3MpOkzONR5qkJY2"};
    public static final String A05;
    public static volatile C2747l0 A06;
    public final C1617Hh A00;
    public final Map<String, C2744kx> A02 = Collections.synchronizedMap(new HashMap());
    public final Map<String, Float> A01 = Collections.synchronizedMap(new HashMap());

    static {
        A09();
        A05 = C2747l0.class.getSimpleName();
    }

    public C2747l0(C1617Hh c1617Hh) {
        this.A00 = c1617Hh;
    }

    private int A00(String str, Bitmap bitmap) {
        String strA08 = A08(0, 2, 17);
        if (bitmap == null) {
            A0C(null);
            return 0;
        }
        File file = new File(A07(this.A00), str.hashCode() + A08(2, 4, 85));
        try {
            try {
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                    int size = byteArrayOutputStream.size();
                    if (size >= C2863mv.A0F(this.A00)) {
                        A0C(new Throwable(A08(35, 42, 1) + size));
                        A0A(byteArrayOutputStream);
                        A0A(null);
                        return 0;
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    byteArrayOutputStream.writeTo(fileOutputStream);
                    fileOutputStream.flush();
                    A0A(byteArrayOutputStream);
                    if (A04[7].charAt(22) != 'z') {
                        throw new RuntimeException();
                    }
                    A04[4] = "r6vsbyQxsbBUkJdqjFKv7NMRisOUwCFh";
                    A0A(fileOutputStream);
                    return size;
                } catch (OutOfMemoryError e) {
                    A0C(e);
                    Log.e(A05, A08(184, 39, 92), e);
                    A0A(null);
                    A0A(null);
                    return 0;
                }
            } catch (FileNotFoundException e2) {
                Log.e(A05, A08(6, 29, 95) + file.getPath() + strA08, e2);
                A0C(e2);
                A0A(null);
                A0A(null);
                return 0;
            } catch (IOException e3) {
                A0C(e3);
                Log.e(A05, A08(148, 36, 57) + str + strA08, e3);
                A0A(null);
                A0A(null);
                return 0;
            }
        } catch (Throwable th) {
            A0A(null);
            A0A(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x007b  */
    /* JADX WARN: Code duplicated, block: B:20:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:21:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:24:0x00b6 A[Catch: IOException -> 0x00cf, TryCatch #0 {IOException -> 0x00cf, blocks: (B:22:0x00b0, B:24:0x00b6, B:25:0x00c0, B:26:0x00c6), top: B:34:0x00b0 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x00c6 A[Catch: IOException -> 0x00cf, TRY_LEAVE, TryCatch #0 {IOException -> 0x00cf, blocks: (B:22:0x00b0, B:24:0x00b6, B:25:0x00c0, B:26:0x00c6), top: B:34:0x00b0 }] */
    private final Bitmap A01(C2755lA c2755lA, C2744kx c2744kx, int i, int i2, String str) throws Throwable {
        String str2;
        C2748l1 c2748l1;
        File file;
        Bitmap bitmapDecodeFile;
        Bitmap bitmapA02;
        if (C2749l2.A06(c2755lA) && A08(266, 4, 53).equals(str)) {
            Map<String, C2744kx> map = this.A02;
            if (A04[4].charAt(4) == 'b') {
                A04[1] = "FHlvPh";
                map.put(c2744kx.A08, c2744kx);
                str2 = c2744kx.A08;
                c2748l1 = new C2748l1(c2744kx.A06, c2744kx.A07, A08(261, 5, 43), str, str2);
                file = new File(A07(this.A00), str2.hashCode() + A08(2, 4, 85));
                if (file.exists()) {
                    C2749l2.A04(c2755lA, c2748l1, true);
                    if (A0D(i2, i)) {
                        bitmapDecodeFile = l4.A02(file.getCanonicalPath(), i2, i, this.A00);
                    } else {
                        bitmapDecodeFile = BitmapFactory.decodeFile(file.getCanonicalPath());
                    }
                    A0B(c2744kx.A08, bitmapDecodeFile);
                    return bitmapDecodeFile;
                }
                C2749l2.A04(c2755lA, c2748l1, false);
                if (str2.startsWith(A08(232, 7, 0))) {
                    bitmapA02 = A02(c2755lA, c2744kx, str);
                } else {
                    bitmapA02 = A02(c2755lA, c2744kx, str);
                }
                A0B(c2744kx.A08, bitmapA02);
                return bitmapA02;
            }
        } else {
            str2 = c2744kx.A08;
            c2748l1 = new C2748l1(c2744kx.A06, c2744kx.A07, A08(261, 5, 43), str, str2);
            file = new File(A07(this.A00), str2.hashCode() + A08(2, 4, 85));
            if (file.exists()) {
                C2749l2.A04(c2755lA, c2748l1, false);
                if (str2.startsWith(A08(232, 7, 0)) || str2.startsWith(A08(239, 22, 123))) {
                    bitmapA02 = A02(c2755lA, c2744kx, str);
                } else {
                    bitmapA02 = A04(str2, i2, i);
                }
                A0B(c2744kx.A08, bitmapA02);
                return bitmapA02;
            }
            C2749l2.A04(c2755lA, c2748l1, true);
            try {
                if (A0D(i2, i)) {
                    bitmapDecodeFile = l4.A02(file.getCanonicalPath(), i2, i, this.A00);
                } else {
                    bitmapDecodeFile = BitmapFactory.decodeFile(file.getCanonicalPath());
                }
                A0B(c2744kx.A08, bitmapDecodeFile);
                return bitmapDecodeFile;
            } catch (IOException e) {
                String[] strArr = A04;
                if (strArr[0].charAt(0) == strArr[6].charAt(0)) {
                    A04[4] = "JHNrbixw8b4VEvs1nQLt1yPzDdneYoqz";
                    A0C(e);
                    return null;
                }
            }
        }
        throw new RuntimeException();
    }

    private Bitmap A02(C2755lA c2755lA, C2744kx c2744kx, String str) throws Throwable {
        Bitmap bitmapA01;
        String str2 = c2744kx.A08;
        int i = c2744kx.A04;
        int i2 = c2744kx.A05;
        long jCurrentTimeMillis = System.currentTimeMillis();
        IOException e = null;
        String strA08 = A08(223, 9, 70);
        boolean zStartsWith = str2.startsWith(strA08);
        String strA09 = A08(239, 22, 123);
        if (zStartsWith || str2.startsWith(strA09)) {
            String strSubstring = str2.startsWith(strA08) ? str2.substring(strA08.length()) : str2.substring(strA09.length());
            InputStream inputStreamOpen = null;
            try {
                try {
                    inputStreamOpen = this.A00.getAssets().open(strSubstring);
                    if (A0D(i, i2)) {
                        try {
                            bitmapA01 = l4.A01(inputStreamOpen, i, i2);
                        } catch (IOException e2) {
                            e = e2;
                            A0C(e);
                            if (inputStreamOpen != null) {
                                A0A(inputStreamOpen);
                            }
                            return null;
                        } catch (OutOfMemoryError e3) {
                            e = e3;
                            A0C(e);
                            if (inputStreamOpen != null) {
                                A0A(inputStreamOpen);
                            }
                            return null;
                        } catch (Throwable th) {
                            th = th;
                            if (inputStreamOpen != null) {
                                A0A(inputStreamOpen);
                            }
                            throw th;
                        }
                    } else {
                        bitmapA01 = BitmapFactory.decodeStream(inputStreamOpen);
                    }
                    if (inputStreamOpen != null) {
                        A0A(inputStreamOpen);
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e4) {
                e = e4;
            } catch (OutOfMemoryError e5) {
                e = e5;
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            boolean zA0D = A0D(i, i2);
            if (A04[2].length() == 5) {
                throw new RuntimeException();
            }
            A04[3] = "EtuvklQgZLPMp8CYh3QQVMKsyyqrprqR";
            if (zA0D) {
                try {
                    bitmapA01 = A05(str2, i, i2);
                } catch (IOException e6) {
                    e = e6;
                    A0C(e);
                    bitmapA01 = A03(str2);
                }
            } else {
                bitmapA01 = A03(str2);
            }
        }
        String string = e != null ? e.toString() : null;
        if (bitmapA01 == null) {
            C2749l2.A03(c2755lA, c2744kx, str, C2749l2.A03, string, null, null);
            return null;
        }
        long jA00 = A00(str2, bitmapA01);
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        if (jA00 > 0) {
            C2749l2.A03(c2755lA, c2744kx, str, C2749l2.A02, string, Long.valueOf(jA00), Long.valueOf(jCurrentTimeMillis2));
            return bitmapA01;
        }
        C2749l2.A03(c2755lA, c2744kx, str, C2749l2.A01, string, null, null);
        if (C2863mv.A10(c2755lA)) {
            return null;
        }
        return bitmapA01;
    }

    private Bitmap A03(String str) {
        byte[] bArrA7c;
        InterfaceC2193bw interfaceC2193bwAI9 = C2114af.A00(this.A00).AI9(str, new C2134az());
        if (interfaceC2193bwAI9 == null || (bArrA7c = interfaceC2193bwAI9.A7c()) == null) {
            return null;
        }
        return BitmapFactory.decodeByteArray(bArrA7c, 0, bArrA7c.length);
    }

    private Bitmap A04(String str, int i, int i2) {
        try {
            boolean zA0D = A0D(i, i2);
            String strA08 = A08(232, 7, 0);
            Bitmap bitmapA02 = zA0D ? l4.A02(str.substring(strA08.length()), i, i2, this.A00) : BitmapFactory.decodeStream(new FileInputStream(str.substring(strA08.length())), null, null);
            int iA00 = A00(str, bitmapA02);
            if (!C2863mv.A10(this.A00) || iA00 > 0) {
                return bitmapA02;
            }
            return null;
        } catch (IOException e) {
            Log.e(A05, A08(105, 43, 38) + str + A08(0, 2, 17), e);
        }
    }

    private Bitmap A05(String str, int i, int i2) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setDoInput(true);
        httpURLConnection.connect();
        InputStream inputStream = httpURLConnection.getInputStream();
        Bitmap bitmapA01 = l4.A01(inputStream, i, i2);
        A0A(inputStream);
        return bitmapA01;
    }

    public static C2747l0 A06(C1617Hh c1617Hh) {
        if (A06 == null) {
            synchronized (C2747l0.class) {
                if (A06 == null) {
                    A06 = new C2747l0(c1617Hh);
                }
            }
        }
        return A06;
    }

    public static File A07(C2755lA c2755lA) {
        return c2755lA.getCacheDir();
    }

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 89);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A03 = new byte[]{97, 102, 34, 124, 98, 107, 68, 103, 98, 38, 105, 115, 114, 118, 115, 114, 38, 98, 99, 117, 114, 111, 104, 103, 114, 111, 105, 104, 38, 46, 96, 111, 106, 99, 59, Ascii.SUB, 49, 44, 53, 57, 40, 120, 43, 49, 34, Base64.padSymbol, 120, Base64.padSymbol, 32, 59, Base64.padSymbol, Base64.padSymbol, 60, 43, 120, 53, 57, 32, 120, 43, 49, 34, Base64.padSymbol, 120, 62, 55, 42, 120, 43, 44, 55, 42, 57, 63, Base64.padSymbol, 98, 120, 103, 69, 71, 76, 65, 4, 65, 86, 86, 75, 86, 10, 4, 102, 77, 80, 73, 69, 84, 4, 77, 87, 4, 74, 81, 72, 72, 10, 57, Ascii.RS, Ascii.SYN, 19, Ascii.SUB, Ascii.ESC, 95, Ascii.VT, Ascii.DLE, 95, Ascii.FS, Ascii.DLE, Ascii.SI, 6, 95, 19, Ascii.DLE, Ascii.FS, Ascii.RS, 19, 95, Ascii.SYN, Ascii.DC2, Ascii.RS, Ascii.CAN, Ascii.SUB, 95, Ascii.SYN, 17, Ascii.VT, Ascii.DLE, 95, Ascii.FS, Ascii.RS, Ascii.FS, Ascii.ETB, Ascii.SUB, 95, 87, 10, Ascii.CR, 19, 66, 53, Ascii.SO, 1, 2, Ascii.FF, 5, SignedBytes.MAX_POWER_OF_TWO, Ascii.DC4, Ascii.SI, SignedBytes.MAX_POWER_OF_TWO, Ascii.ETB, Ascii.DC2, 9, Ascii.DC4, 5, SignedBytes.MAX_POWER_OF_TWO, 2, 9, Ascii.DC4, Ascii.CR, 1, Ascii.DLE, SignedBytes.MAX_POWER_OF_TWO, Ascii.DC4, Ascii.SI, SignedBytes.MAX_POWER_OF_TWO, 6, 9, Ascii.FF, 5, SignedBytes.MAX_POWER_OF_TWO, 72, Ascii.NAK, Ascii.DC2, Ascii.FF, 93, 80, 107, 100, 103, 105, 96, 37, 113, 106, 37, 114, 119, 108, 113, 96, 37, 103, 108, 113, 104, 100, 117, 37, 113, 106, 37, 106, 112, 113, 117, 112, 113, 37, 118, 113, 119, 96, 100, 104, 126, 108, 108, 122, 107, 37, 48, 48, 48, 63, 48, 53, 60, 99, 118, 118, 68, 75, 78, 71, Ascii.CAN, Ascii.CR, Ascii.CR, Ascii.CR, 67, 76, 70, 80, 77, 75, 70, 125, 67, 81, 81, 71, 86, Ascii.CR, Ascii.ESC, Ascii.US, 19, Ascii.NAK, Ascii.ETB, 0, 3, Ascii.CR, 8, 77, 86, 83, 86, 87, 79, 86};
    }

    public static void A0A(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    private void A0B(String str, Bitmap bitmap) {
        if (this.A01.containsKey(str) || bitmap == null) {
            return;
        }
        int height = bitmap.getHeight();
        if (A04[4].charAt(4) != 'b') {
            throw new RuntimeException();
        }
        A04[4] = "qfl2bCyZc6lQfvv9FA8lTEHN4kC31cws";
        if (height > 0) {
            float width = bitmap.getWidth() / bitmap.getHeight();
            if (width > 0.0f) {
                this.A01.put(str, Float.valueOf(width));
            }
        }
    }

    private void A0C(Throwable th) {
        String strA08 = A08(261, 5, 43);
        if (th != null) {
            this.A00.A08().ABz(strA08, AbstractC2786lf.A1f, new C2787lg(th));
        } else {
            this.A00.A08().ABz(strA08, AbstractC2786lf.A1f, new C2787lg(A08(77, 28, 125)));
        }
    }

    private boolean A0D(int i, int i2) {
        return i > 0 && i2 > 0;
    }

    public final float A0E(String str) {
        if (this.A01.containsKey(str) && this.A01.get(str) != null) {
            return this.A01.get(str).floatValue();
        }
        if (A04[5].length() == 20) {
            throw new RuntimeException();
        }
        String[] strArr = A04;
        strArr[0] = "xniGTfNSaA3pfEJ7fw8VC3YxeaZM5RdM";
        strArr[6] = "xksMfprcd85FcUawgyhsBf5m2wfmTO40";
        return -1.0f;
    }

    public final Bitmap A0F(C2744kx c2744kx) {
        return A01(this.A00, c2744kx, c2744kx.A05, c2744kx.A04, c2744kx.A02);
    }

    public final Bitmap A0G(C2755lA c2755lA, String str, int i, int i2, String str2) {
        C2744kx c2744kx = this.A02.get(str);
        return (!C2749l2.A06(c2755lA) || c2744kx == null) ? A01(c2755lA, new C2744kx(str, i, i2, A08(270, 7, 97), A08(270, 7, 97)), i2, i, str2) : A01(c2755lA, c2744kx, i2, i, str2);
    }

    public final File A0H(String str) {
        File file = new File(A07(this.A00), str.hashCode() + A08(2, 4, 85));
        if (file.exists()) {
            return file;
        }
        return null;
    }

    public final String A0I(String str) {
        File file = new File(A07(this.A00), str.hashCode() + A08(2, 4, 85));
        return file.exists() ? file.getPath() : str;
    }
}
