package com.facebook.ads.redexgen.X;

import android.net.TrafficStats;
import android.text.TextUtils;
import android.util.Log;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeoutException;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AT implements InterfaceC2189bs {
    public static byte[] A07;
    public static String[] A08 = {"Z3ZBH3trhaxMswGoeO0i3WMhBsCqcWgs", "P814sFImmOC", "INcscN3Z5kcfIuBeknVxelrdNm8ANoXs", "RvJjsajerkLdUat3TDI8NPR3DDSWtO", "ZLSXhw", "wxtWSqUF9a7Aw2d1StIocmcoa4QX", "58xAXbC3p", "Zj1UZNXOzFX"};
    public static final String A09;
    public InterfaceC2785le A00;
    public Executor A01;
    public boolean A02;
    public C2165bU A03;
    public final InterfaceC2151bG A04 = new AZ();
    public final InterfaceC2133ay A05;
    public final InterfaceC2129au A06;

    static {
        A0A();
        A09 = InterfaceC2189bs.class.getSimpleName();
    }

    public AT(C2165bU c2165bU, InterfaceC2785le interfaceC2785le, Executor executor) {
        A0B();
        this.A03 = c2165bU;
        this.A06 = new AS(c2165bU.A04());
        final InterfaceC2129au interfaceC2129au = this.A06;
        final boolean zA05 = c2165bU.A05();
        this.A05 = new AY(interfaceC2129au, zA05) { // from class: com.facebook.ads.redexgen.X.4u
        };
        this.A01 = executor;
        this.A00 = interfaceC2785le;
    }

    private final int A00(HttpURLConnection httpURLConnection, byte[] bArr) throws Exception {
        OutputStream outputStreamAI0 = null;
        try {
            outputStreamAI0 = this.A05.AI0(httpURLConnection);
            if (outputStreamAI0 != null) {
                this.A05.AMS(outputStreamAI0, bArr);
            }
            return httpURLConnection.getResponseCode();
        } finally {
            if (outputStreamAI0 != null) {
                try {
                    outputStreamAI0.close();
                } catch (Exception unused) {
                }
            }
        }
    }

    private final InterfaceC2193bw A01(AbstractC2140b5 abstractC2140b5) throws C2136b1 {
        String strA07 = A07(220, 7, 7);
        HttpURLConnection httpURLConnection = null;
        AU auA05 = null;
        boolean z = false;
        try {
            try {
                this.A02 = false;
                HttpURLConnection httpURLConnectionA08 = A08(abstractC2140b5.A07(), C3013pR.A04() ? A09() : null);
                A0H(httpURLConnectionA08, abstractC2140b5);
                A0G(httpURLConnectionA08, abstractC2140b5);
                if (this.A06.ABH()) {
                    this.A06.ACi(httpURLConnectionA08, abstractC2140b5.A08());
                }
                httpURLConnectionA08.connect();
                this.A02 = true;
                Set<String> setA01 = this.A03.A01();
                Set<String> setA02 = this.A03.A02();
                boolean z2 = (setA01 == null || setA01.isEmpty()) ? false : true;
                if (setA02 != null && !setA02.isEmpty()) {
                    z = true;
                }
                if ((httpURLConnectionA08 instanceof HttpsURLConnection) && (z2 || z)) {
                    try {
                        AbstractC2126ar.A03((HttpsURLConnection) httpURLConnectionA08, setA01, setA02);
                    } catch (CertificateException e) {
                        this.A00.ACp(strA07, AbstractC2786lf.A1z, new C2787lg(e));
                    } catch (Exception e2) {
                        this.A00.ACp(strA07, AbstractC2786lf.A1y, new C2787lg(e2));
                    }
                }
                if (httpURLConnectionA08.getDoOutput() && abstractC2140b5.A08() != null) {
                    A00(httpURLConnectionA08, abstractC2140b5.A08());
                }
                AU auA06 = httpURLConnectionA08.getDoInput() ? A06(httpURLConnectionA08) : new AU(httpURLConnectionA08, null);
                if (this.A06.ABH()) {
                    this.A06.ACj(auA06);
                }
                if (httpURLConnectionA08 != null) {
                    httpURLConnectionA08.disconnect();
                }
                return auA06;
            } catch (Exception e3) {
                try {
                    try {
                        auA05 = A05(null);
                        if (auA05 == null || auA05.A9p() <= 0) {
                            throw new C2136b1(e3, auA05);
                        }
                        if (this.A06.ABH()) {
                            this.A06.ACj(auA05);
                        }
                        if (0 != 0) {
                            httpURLConnection.disconnect();
                        }
                        return auA05;
                    } catch (Exception unused) {
                        Log.e(getClass().getSimpleName(), A07(117, 13, 53), e3);
                        if (auA05 == null || auA05.A9p() <= 0) {
                            throw new C2136b1(e3, auA05);
                        }
                        if (this.A06.ABH()) {
                            InterfaceC2129au interfaceC2129au = this.A06;
                            String[] strArr = A08;
                            if (strArr[0].charAt(28) == strArr[2].charAt(28)) {
                                throw new RuntimeException();
                            }
                            String[] strArr2 = A08;
                            strArr2[0] = "IlkFDbfWlXmKaUvETbHYmdNk6OEHYi1H";
                            strArr2[2] = "BN3YcSqfdOqAJI6hng3gZMbRThXyngdJ";
                            interfaceC2129au.ACj(auA05);
                        }
                        if (0 != 0) {
                            httpURLConnection.disconnect();
                        }
                        return auA05;
                    }
                } catch (Throwable unused2) {
                    if (auA05 == null || auA05.A9p() <= 0) {
                        throw new C2136b1(e3, auA05);
                    }
                    if (this.A06.ABH()) {
                        this.A06.ACj(auA05);
                    }
                    if (0 != 0) {
                        httpURLConnection.disconnect();
                    }
                    return auA05;
                }
            }
        } catch (Throwable th) {
            if (this.A06.ABH()) {
                this.A06.ACj(auA05);
            }
            if (0 != 0) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    private final InterfaceC2193bw A02(AbstractC2140b5 abstractC2140b5) {
        if (this.A03.A04()) {
            A0C(abstractC2140b5);
        }
        InterfaceC2193bw interfaceC2193bwA01 = null;
        try {
            interfaceC2193bwA01 = A01(abstractC2140b5);
            return interfaceC2193bwA01;
        } catch (C2136b1 e) {
            this.A05.AEu(e);
            return interfaceC2193bwA01;
        } catch (Exception e2) {
            this.A05.AEu(new C2136b1(e2, interfaceC2193bwA01));
            return interfaceC2193bwA01;
        }
    }

    private final InterfaceC2193bw A03(String str, C2134az c2134az, C2161bQ c2161bQ) {
        return A02(new AW(str, c2134az, c2161bQ));
    }

    private final InterfaceC2193bw A04(String str, String str2, byte[] bArr, C2161bQ c2161bQ) {
        return A02(new AV(str, null, str2, bArr, c2161bQ));
    }

    private final AU A05(HttpURLConnection httpURLConnection) throws Exception {
        InputStream errorStream = null;
        try {
            errorStream = httpURLConnection.getErrorStream();
            AU au = new AU(httpURLConnection, errorStream != null ? this.A05.AIg(errorStream) : null);
            if (errorStream != null) {
                try {
                    errorStream.close();
                } catch (Exception unused) {
                }
            }
            return au;
        } catch (Throwable th) {
            if (A08[5].length() != 28) {
                throw new RuntimeException();
            }
            A08[4] = "eS";
            if (errorStream != null) {
                try {
                    errorStream.close();
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
    }

    private final AU A06(HttpURLConnection httpURLConnection) throws Exception {
        InputStream inputStreamAHz = null;
        try {
            inputStreamAHz = this.A05.AHz(httpURLConnection);
            return new AU(httpURLConnection, inputStreamAHz != null ? this.A05.AIg(inputStreamAHz) : null);
        } finally {
            if (inputStreamAHz != null) {
                try {
                    inputStreamAHz.close();
                } catch (Exception unused) {
                }
            }
        }
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 93);
        }
        return new String(bArrCopyOfRange);
    }

    private final HttpURLConnection A08(String str, Proxy proxy) throws IOException {
        try {
            new URL(str);
            TrafficStats.setThreadStatsTag(61453);
            return this.A05.AHy(str, proxy);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(str + A07(18, 19, 115), e);
        }
    }

    public static Proxy A09() {
        Proxy proxy = Proxy.NO_PROXY;
        String property = System.getProperty(A07(192, 14, 45));
        String property2 = System.getProperty(A07(InterfaceC3669k1.c.b.g, 14, 74));
        int i = -1;
        if (property2 != null) {
            try {
                i = Integer.parseInt(property2);
            } catch (NumberFormatException unused) {
                return proxy;
            }
        }
        boolean zIsEmpty = TextUtils.isEmpty(property);
        String[] strArr = A08;
        if (strArr[0].charAt(28) == strArr[2].charAt(28)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A08;
        strArr2[3] = "UW2PAxLqNCWQ7bdKo0A7Pw4nSyNkIv";
        strArr2[6] = "26yRDH09B";
        return (zIsEmpty || i <= 0 || i > 65535) ? proxy : new Proxy(Proxy.Type.HTTP, new InetSocketAddress(property, i));
    }

    public static void A0A() {
        A07 = new byte[]{Ascii.DLE, Ascii.DC2, 55, 58, 95, 55, 53, 74, 71, Ascii.SO, 74, 72, Ascii.SI, 76, 90, 93, 67, Ascii.SI, Ascii.SO, 71, 93, Ascii.SO, SignedBytes.MAX_POWER_OF_TWO, 65, 90, Ascii.SO, 79, Ascii.SO, 88, 79, 66, 71, 74, Ascii.SO, 123, 124, 98, Ascii.SO, 65, 72, Ascii.SO, 94, 102, 106, 9, Ascii.RS, 106, 119, 106, Ascii.FS, Ascii.DLE, 98, 100, Ascii.DLE, Ascii.CR, Ascii.DLE, 55, 59, 111, 105, 98, 114, 117, 124, 59, 81, 17, 59, 50, 63, 46, 45, 59, 58, 94, 42, 55, 51, 59, 94, 67, 94, 1, 35, 50, 50, 47, 40, 33, 102, 50, 46, 35, 102, 46, 50, 50, 54, 102, 52, 35, 53, 54, 41, 40, 53, 35, 102, 50, 47, 43, 35, 34, 102, 41, 51, 50, 38, Ascii.CR, Ascii.FS, Ascii.US, 7, Ascii.SUB, 3, 72, Ascii.CR, Ascii.SUB, Ascii.SUB, 7, Ascii.SUB, 34, 35, 49, 90, 79, 122, 107, 107, 119, 114, 120, 122, 111, 114, 116, 117, 52, 99, 54, 108, 108, 108, 54, 125, 116, 105, 118, 54, 110, 105, 119, 126, 117, 120, 116, 127, 126, 127, 32, 120, 115, 122, 105, 104, 126, 111, 38, 78, 79, 93, 54, 35, 47, 57, 62, 32, 108, 97, 39, 108, 97, 37, Ascii.CAN, 4, 4, 0, 94, 0, 2, Ascii.US, 8, 9, 56, Ascii.US, 3, 4, 127, 99, 99, 103, 57, 103, 101, 120, 111, 110, 71, 120, 101, 99, 52, 63, 46, 45, 53, 40, 49};
    }

    public static synchronized void A0B() {
        if (CookieHandler.getDefault() == null) {
            CookieHandler.setDefault(new CookieManager());
        }
    }

    private void A0C(AbstractC2140b5 abstractC2140b5) {
        StringBuilder sb = new StringBuilder(A07(182, 10, 17));
        boolean zEquals = abstractC2140b5.A05().equals(EnumC2141b6.A06);
        String strA07 = A07(41, 1, 33);
        if (zEquals && abstractC2140b5.A08() != null) {
            sb.append(A07(7, 5, 55));
            sb.append(new String(abstractC2140b5.A08(), Charset.forName(A07(130, 5, 42))));
            sb.append(strA07);
        }
        Map<String, String> mapA06 = abstractC2140b5.A04().A06();
        String[] strArr = A08;
        if (strArr[1].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A08;
        strArr2[3] = "s0c02ga9sXqOOqZgqzjFkG4II3gfLx";
        strArr2[6] = "iECV1gT3x";
        for (Map.Entry<String, String> entry : mapA06.entrySet()) {
            sb.append(A07(2, 5, 74));
            sb.append(entry.getKey());
            sb.append(A07(66, 1, 118));
            sb.append(entry.getValue());
            sb.append(strA07);
        }
        sb.append(A07(0, 2, 109));
        sb.append(abstractC2140b5.A07());
        sb.append(strA07);
        String string = sb.toString();
        A0E(string, 1, (string.length() / 4000) + 1);
    }

    private void A0D(AbstractC2140b5 abstractC2140b5, InterfaceC2187bq interfaceC2187bq) {
        this.A04.A7Y(this, interfaceC2187bq, this.A01).A04(abstractC2140b5);
        if (this.A03.A04()) {
            A0C(abstractC2140b5);
        }
    }

    private void A0E(String str, int i, int i2) {
        String str2 = A09 + A07(12, 6, 114) + i + A07(65, 1, 35) + i2;
        if (str.length() > 4000) {
            str.substring(0, 4000);
            A0E(str.substring(4000), i + 1, i2);
        }
    }

    private void A0F(String str, String str2, byte[] bArr, InterfaceC2187bq interfaceC2187bq, C2161bQ c2161bQ) {
        A0D(new AV(str, null, str2, bArr, c2161bQ), interfaceC2187bq);
    }

    private void A0G(HttpURLConnection httpURLConnection, AbstractC2140b5 abstractC2140b5) {
        Map<String, String> mapA06 = abstractC2140b5.A04().A06();
        InterfaceC2194bx interfaceC2194bxA05 = abstractC2140b5.A04().A05();
        for (String str : mapA06.keySet()) {
            httpURLConnection.setRequestProperty(str, mapA06.get(str));
        }
        if (interfaceC2194bxA05 != null) {
            Map<String, String> mapA7G = interfaceC2194bxA05.A7G(this.A03.A03());
            for (String str2 : mapA7G.keySet()) {
                httpURLConnection.setRequestProperty(str2, mapA7G.get(str2));
            }
        }
    }

    private final void A0H(HttpURLConnection httpURLConnection, AbstractC2140b5 abstractC2140b5) throws IOException {
        C2161bQ c2161bQA04 = abstractC2140b5.A04();
        httpURLConnection.setConnectTimeout(c2161bQA04.A00());
        httpURLConnection.setReadTimeout(c2161bQA04.A02());
        this.A05.AIJ(httpURLConnection, abstractC2140b5.A05(), abstractC2140b5.A06());
    }

    private final boolean A0I(Throwable th, long j, AbstractC2140b5 abstractC2140b5) {
        C2161bQ c2161bQA04 = abstractC2140b5.A04();
        long jCurrentTimeMillis = (System.currentTimeMillis() - j) + 10;
        if (this.A06.ABH()) {
            String str = A07(67, 15, 35) + jCurrentTimeMillis + A07(42, 7, 23) + c2161bQA04.A00() + A07(49, 7, 109) + c2161bQA04.A02();
        }
        if (this.A02) {
            return jCurrentTimeMillis >= ((long) c2161bQA04.A02());
        }
        long jA00 = c2161bQA04.A00();
        if (A08[5].length() != 28) {
            throw new RuntimeException();
        }
        String[] strArr = A08;
        strArr[3] = "UT6xnSlzbr9JaeC9T1uoRQiwoDXC3Y";
        strArr[6] = "g5URFCrsk";
        return jCurrentTimeMillis >= jA00;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:33:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:44:0x011b  */
    /* JADX WARN: Code duplicated, block: B:47:0x0121  */
    /* JADX WARN: Code duplicated, block: B:49:0x0125  */
    /* JADX WARN: Code duplicated, block: B:52:0x0131  */
    /* JADX WARN: Code duplicated, block: B:53:0x0136  */
    /* JADX WARN: Code duplicated, block: B:72:0x0104 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x0108 A[EDGE_INSN: B:79:0x0108->B:40:0x0108 BREAK  A[LOOP:0: B:3:0x002a->B:26:0x00cd], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:0x00cd A[SYNTHETIC] */
    public final InterfaceC2193bw A0J(AbstractC2140b5 abstractC2140b5) throws C2136b1 {
        InterfaceC2193bw interfaceC2193bwA00;
        long length;
        long length2;
        int iA9p;
        int i = 0;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iA01 = abstractC2140b5.A04().A01();
        long jA03 = abstractC2140b5.A04().A03();
        long jCurrentTimeMillis2 = System.currentTimeMillis() + ((long) abstractC2140b5.A04().A04());
        while (true) {
            if (A08[5].length() == 28) {
                A08[5] = "uw7CndVwumsNWx3tR5uVNB4kWYqq";
                if (i >= iA01 || jCurrentTimeMillis2 <= System.currentTimeMillis()) {
                    this.A00.ACc(jCurrentTimeMillis, System.currentTimeMillis() - jCurrentTimeMillis, 0L, abstractC2140b5.A04 == null ? 0L : abstractC2140b5.A04.length, 0, new TimeoutException(A07(82, 35, 27)));
                    return null;
                }
                try {
                    if (this.A06.ABH()) {
                        String str = (i + 1) + A07(37, 4, 115) + iA01 + A07(56, 9, 70) + abstractC2140b5.A07();
                    }
                    jCurrentTimeMillis = System.currentTimeMillis();
                    InterfaceC2193bw interfaceC2193bwA01 = A01(abstractC2140b5);
                    if (interfaceC2193bwA01 != null) {
                        this.A00.ACc(jCurrentTimeMillis, System.currentTimeMillis() - jCurrentTimeMillis, interfaceC2193bwA01.A7c().length, abstractC2140b5.A04 == null ? 0L : abstractC2140b5.A04.length, interfaceC2193bwA01.A9p(), null);
                        return interfaceC2193bwA01;
                    }
                    continue;
                } catch (C2136b1 e) {
                    if (!A0I(e, jCurrentTimeMillis, abstractC2140b5) || i >= iA01 - 1) {
                        InterfaceC2133ay interfaceC2133ay = this.A05;
                        if (A08[5].length() == 28) {
                            A08[4] = "QCV1DKlppK5B8d9XgS0nl0pavHf";
                            if (!interfaceC2133ay.AEu(e)) {
                                break;
                            }
                            if (i < iA01 - 1) {
                                break;
                                break;
                            }
                            if (jA03 > 0) {
                                Thread.sleep(jA03);
                            } else {
                                continue;
                            }
                        } else {
                            A08[4] = "RTCgSwX4E1qAS9DeUF79c1CzYGzjCcSq";
                            if (!interfaceC2133ay.AEu(e)) {
                                break;
                            }
                            if (i < iA01 - 1) {
                                break;
                            }
                            if (jA03 > 0) {
                                try {
                                    Thread.sleep(jA03);
                                } catch (InterruptedException e2) {
                                    this.A00.ACc(jCurrentTimeMillis, System.currentTimeMillis() - jCurrentTimeMillis, 0L, abstractC2140b5.A04 != null ? abstractC2140b5.A04.length : 0L, 0, e2);
                                    throw e;
                                }
                            } else {
                                continue;
                            }
                        }
                        interfaceC2193bwA00 = e.A00();
                        InterfaceC2785le interfaceC2785le = this.A00;
                        long jCurrentTimeMillis3 = System.currentTimeMillis() - jCurrentTimeMillis;
                        if (interfaceC2193bwA00 == null) {
                            length = 0;
                        } else {
                            length = 0;
                        }
                        if (abstractC2140b5.A04 == null) {
                            length2 = 0;
                        } else {
                            length2 = abstractC2140b5.A04.length;
                        }
                        if (interfaceC2193bwA00 == null) {
                            iA9p = 0;
                        } else {
                            iA9p = interfaceC2193bwA00.A9p();
                        }
                        interfaceC2785le.ACc(jCurrentTimeMillis, jCurrentTimeMillis3, length, length2, iA9p, e);
                        throw e;
                    }
                    continue;
                }
                i++;
            }
            throw new RuntimeException();
        }
        interfaceC2193bwA00 = e.A00();
        InterfaceC2785le interfaceC2785le2 = this.A00;
        long jCurrentTimeMillis4 = System.currentTimeMillis() - jCurrentTimeMillis;
        if (interfaceC2193bwA00 == null && interfaceC2193bwA00.A7c() != null) {
            byte[] bArrA7c = interfaceC2193bwA00.A7c();
            String[] strArr = A08;
            if (strArr[3].length() != strArr[6].length()) {
                String[] strArr2 = A08;
                strArr2[3] = "kZCGiI5zGihRv0GXktBIsysHbk9bX5";
                strArr2[6] = "FynZg164G";
                length = bArrA7c.length;
            }
            throw new RuntimeException();
        }
        length = 0;
        if (abstractC2140b5.A04 == null) {
            length2 = 0;
        } else {
            length2 = abstractC2140b5.A04.length;
        }
        if (interfaceC2193bwA00 == null) {
            iA9p = 0;
        } else {
            iA9p = interfaceC2193bwA00.A9p();
        }
        interfaceC2785le2.ACc(jCurrentTimeMillis, jCurrentTimeMillis4, length, length2, iA9p, e);
        throw e;
    }

    public final C2165bU A0K() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2189bs
    @Deprecated
    public final InterfaceC2193bw AI9(String str, Map<String, String> map) {
        return A03(str, new C2134az(map), this.A03.A00());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2189bs
    @Deprecated
    public final InterfaceC2193bw AIA(String str, byte[] bArr) {
        return A04(str, A07(135, 47, 70), bArr, this.A03.A00());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2189bs
    public final void AIB(String str, byte[] bArr, InterfaceC2187bq interfaceC2187bq) {
        A0F(str, A07(135, 47, 70), bArr, interfaceC2187bq, this.A03.A00());
    }
}
