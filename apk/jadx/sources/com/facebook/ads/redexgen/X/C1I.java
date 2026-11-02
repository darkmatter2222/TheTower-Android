package com.facebook.ads.redexgen.X;

import android.util.Log;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.google.common.base.Ascii;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.1I, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1I {
    public static byte[] A00;
    public static String[] A01 = {"qzld4Qy39Azn7KYrj1sXbPZPr2qv6GgB", "1yyYiWnNu", "Zg1voNH89a01plQdKkVOTIE3hJJ00If9", "AO", "oO", "LhD7lTYtuMCYkgD1PnemOg5ERT23PX0", "YB3LukNHUN2DaV56yaS9yy46zwl6QYin", "pfYbPlfLNAe5pcAyURRpn9lPUi7k7Z7a"};
    public static final String A02;

    static {
        A04();
        A02 = C1I.class.getSimpleName();
    }

    public static WebResourceResponse A00(C1618Hi c1618Hi, C2746kz c2746kz, WebResourceRequest webResourceRequest, AnonymousClass26 anonymousClass26, boolean z) {
        String string = webResourceRequest.getUrl().toString();
        if (anonymousClass26.A05) {
            return null;
        }
        try {
            HashMap map = new HashMap();
            String strGuessContentTypeFromName = URLConnection.guessContentTypeFromName(string);
            if (anonymousClass26.A01.contains(string)) {
                String str = A03(108, 21, 15) + string;
                File fileA0P = c2746kz.A0P(string);
                if (fileA0P != null) {
                    if (!z || !string.equals(anonymousClass26.A00)) {
                        return A01(map, strGuessContentTypeFromName, fileA0P);
                    }
                    final C1617Hh c1617HhA02 = c1618Hi.A02();
                    final FileInputStream fileInputStream = new FileInputStream(fileA0P);
                    final C1525Ds c1525Ds = new C1525Ds(c1618Hi, string);
                    return A02(map, strGuessContentTypeFromName, new InputStream(c1617HhA02, fileInputStream, c1525Ds) { // from class: com.facebook.ads.redexgen.X.4E
                        public static byte[] A04;
                        public static String[] A05 = {"5FxkjmViipfuOEmeGZRh1rWuAhi58BIY", "P0uDFh8HOwAWvDVGkGeATzc", "FQ2HPVuJ9Fju5P7EfteSFhbDkCSiUGCr", "lMnDCDrcSzZtU6RMhKfYe1rO633Hkzz8", "BZaCeAJ4mpNw1z6aTzzGkvXJAvKgKDg7", "gl5vlYV0aCgrCc0s0sEnhviYHRKbo8Yg", "Tgc0UJMQxUN8PgOF6KJ9ZKrej2a3tpw", "OSPCme8ftb56UzOVrw2bgiBSvmZFYlRk"};
                        public MessageDigest A00;
                        public final C1617Hh A01;
                        public final C8s A02;
                        public final FileInputStream A03;

                        static {
                            A01();
                        }

                        {
                            this.A03 = fileInputStream;
                            this.A02 = c1525Ds;
                            this.A01 = c1617HhA02;
                            try {
                                this.A00 = MessageDigest.getInstance(A00(0, 3, 30));
                            } catch (NoSuchAlgorithmException unused) {
                                this.A00 = null;
                            }
                        }

                        public static String A00(int i, int i2, int i3) {
                            byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
                            int i4 = 0;
                            while (true) {
                                int length = bArrCopyOfRange.length;
                                if (A05[7].charAt(24) == 'i') {
                                    break;
                                }
                                A05[7] = "wkBtkBfOXubsKwfKzYpxBJzZI93GSJMw";
                                if (i4 >= length) {
                                    return new String(bArrCopyOfRange);
                                }
                                byte b = bArrCopyOfRange[i4];
                                String[] strArr = A05;
                                if (strArr[0].charAt(11) == strArr[3].charAt(11)) {
                                    break;
                                }
                                String[] strArr2 = A05;
                                strArr2[1] = "6MRboz4pfSS0DylRcsmX7nz";
                                strArr2[6] = "Z3yJOYkAPU5AGas9ZlGFYfEzislvm9u";
                                bArrCopyOfRange[i4] = (byte) ((b - i3) - 45);
                                i4++;
                            }
                            throw new RuntimeException();
                        }

                        public static void A01() {
                            A04 = new byte[]{-104, -113, -128, Ascii.VT, Ascii.SUB, 19};
                        }

                        @Override // java.io.InputStream
                        public final int available() throws IOException {
                            return this.A03.available();
                        }

                        @Override // java.io.InputStream
                        public final int read() throws IOException {
                            return read(new byte[1]);
                        }

                        @Override // java.io.InputStream
                        public final int read(byte[] bArr, int i, int i2) throws IOException {
                            int i3 = this.A03.read(bArr, i, i2);
                            if (this.A00 != null) {
                                if (A05[7].charAt(24) == 'i') {
                                    throw new RuntimeException();
                                }
                                A05[2] = "wFnf9K6AarqF2rYbRIkm3wGElU25UaCd";
                                try {
                                    if (i3 > 0) {
                                        this.A00.update(bArr, i, i3);
                                    } else if (i3 == -1) {
                                        this.A02.AAW(C3048q0.A05(this.A00.digest()));
                                        this.A00 = null;
                                    }
                                } catch (Exception e) {
                                    this.A00 = null;
                                    this.A01.A08().ACp(A00(3, 3, 122), AbstractC2786lf.A13, new C2787lg(e));
                                }
                            }
                            return i3;
                        }

                        @Override // java.io.InputStream
                        public final long skip(long j) throws IOException {
                            int i = (int) j;
                            byte[] bArr = new byte[1024];
                            long j2 = 0;
                            while (i > 0) {
                                int i2 = read(bArr, 0, Math.min(i, 1024));
                                if (i2 <= 0) {
                                    break;
                                }
                                i -= i2;
                                j2 += (long) i2;
                            }
                            return j2;
                        }
                    });
                }
                String str2 = A03(0, 25, 105) + string;
            }
            if (anonymousClass26.A02.contains(string)) {
                String str3 = A03(129, 22, 69) + string;
                File fileA0Q = c2746kz.A0Q(string);
                if (fileA0Q != null) {
                    return A01(map, strGuessContentTypeFromName, fileA0Q);
                }
                String str4 = A03(25, 26, 23) + string;
            }
            if (anonymousClass26.A03.contains(string)) {
                String str5 = A03(151, 22, 64) + string;
                return AbstractC2321e1.A00(c1618Hi, webResourceRequest, webResourceRequest.getUrl(), strGuessContentTypeFromName, map);
            }
        } catch (IOException e) {
            Log.e(A03(89, 17, 55), A03(54, 35, 36) + string, e);
        }
        return null;
    }

    public static WebResourceResponse A01(HashMap<String, String> map, String str, File file) throws FileNotFoundException {
        return A02(map, str, new FileInputStream(file));
    }

    public static WebResourceResponse A02(HashMap<String, String> map, String str, InputStream inputStream) {
        return new WebResourceResponse(str, null, 200, A03(kotlin.fh.g1, 2, 11), map, inputStream);
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 105);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        byte[] bArr = {Ascii.NAK, 51, 53, 58, 55, -14, 63, 59, 69, 69, -14, 56, 65, 68, -14, 56, 59, 62, 55, -14, 71, 68, 62, Ascii.FF, -14, -61, -31, -29, -24, -27, -96, -19, -23, -13, -13, -96, -26, -17, -14, -96, -23, -19, -31, -25, -27, -96, -11, -14, -20, -70, -96, 33, 37, 48, -46, -1, -1, -4, -1, -83, -4, -3, -14, -5, -10, -5, -12, -83, -16, -18, -16, -11, -14, -15, -83, -13, -10, -7, -14, -83, -13, -4, -1, -83, 2, -1, -7, -57, -83, -26, -30, -31, Ascii.NAK, 4, 9, 5, Ascii.SO, 3, 5, -18, 5, Ascii.DC4, Ascii.ETB, Ascii.SI, Ascii.DC2, Ascii.VT, -61, -65, -56, -22, -25, -37, -35, -21, -21, -31, -26, -33, -104, -34, -31, -28, -35, -104, -19, -22, -28, -78, -104, -2, 32, Ascii.GS, 17, 19, 33, 33, Ascii.ETB, Ascii.FS, Ascii.NAK, -50, Ascii.ETB, Ascii.ESC, Ascii.SI, Ascii.NAK, 19, -50, 35, 32, Ascii.SUB, -24, -50, -7, Ascii.ESC, Ascii.CAN, Ascii.FF, Ascii.SO, Ascii.FS, Ascii.FS, Ascii.DC2, Ascii.ETB, Ascii.DLE, -55, Ascii.US, Ascii.DC2, Ascii.CR, Ascii.SO, Ascii.CAN, -55, Ascii.RS, Ascii.ESC, Ascii.NAK, -29, -55, 73, 88, 81, -16, -5, -6, -9, -15};
        String[] strArr = A01;
        if (strArr[7].charAt(12) != strArr[2].charAt(12)) {
            throw new RuntimeException();
        }
        A01[1] = "7l6kM9ADseoG9RLfCJpKjz7J";
        A00 = bArr;
    }

    public static void A05(C2755lA c2755lA, String str, String str2) {
        C2787lg c2787lg = new C2787lg(A03(51, 3, 116));
        c2787lg.A05(1);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(A03(176, 2, 31), str);
            jSONObject.put(A03(178, 3, 28), str2);
            c2787lg.A07(jSONObject);
        } catch (JSONException unused) {
        }
        c2755lA.A08().AC0(A03(173, 3, 124), AbstractC2786lf.A12, c2787lg);
    }
}
