package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.facebook.ads.androidx.media3.exoplayer.offline.DownloadRequest;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.To, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class HandlerC1918To extends Handler {
    public static byte[] A0D;
    public static String[] A0E = {"UwA8Qp2yDDuckZJOVe4irll7ZQPoGZoD", "hKBSfgRiZ2j0dJAFWpeEPTE8ASbuF2Yc", "7kHSZWcHK5TSpAUU1NAIxvfOb882Ngvs", "W97hdg2gujpUnTGsEW13ENYNotehvrwT", "gKT9t4MlatwEywdhUCsuZIADJ9Vp3nvA", "0SX4RX0bHUmJxVYLlaCFXcxKrDCt1AVH", "97Mtv7xLtHyCqp2lt2i222tn2GcShKKT", "2h5YOXpUBVVqRgG1rLc2q2DLhGpYe7nL"};
    public boolean A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public boolean A05;
    public boolean A06;
    public final Handler A07;
    public final HandlerThread A08;
    public final U5 A09;
    public final InterfaceC1874Rw A0A;
    public final ArrayList<TW> A0B;
    public final HashMap<String, S0> A0C;

    static {
        A0D();
    }

    public HandlerC1918To(HandlerThread handlerThread, InterfaceC1874Rw interfaceC1874Rw, U5 u5, Handler handler, int i, int i2, boolean z) {
        super(handlerThread.getLooper());
        this.A08 = handlerThread;
        this.A0A = interfaceC1874Rw;
        this.A09 = u5;
        this.A07 = handler;
        this.A02 = i;
        this.A03 = i2;
        this.A05 = z;
        this.A0B = new ArrayList<>();
        this.A0C = new HashMap<>();
    }

    public static int A00(TW tw, TW tw2) {
        return N1.A08(tw.A05, tw2.A05);
    }

    private int A02(String str) {
        for (int i = 0; i < this.A0B.size(); i++) {
            if (this.A0B.get(i).A07.A02.equals(str)) {
                return i;
            }
        }
        return -1;
    }

    private TW A03(TW tw) {
        AbstractC1722Ln.A08((tw.A02 == 3 || tw.A02 == 4) ? false : true);
        int iA02 = A02(tw.A07.A02);
        if (iA02 == -1) {
            this.A0B.add(tw);
            Collections.sort(this.A0B, new C1917Tn());
        } else {
            long j = tw.A05;
            long j2 = this.A0B.get(iA02).A05;
            String[] strArr = A0E;
            if (strArr[6].charAt(19) != strArr[7].charAt(19)) {
                throw new RuntimeException();
            }
            A0E[3] = "JdyDgc7FctZRVTtSFXQ7pi3holafYb2e";
            boolean z = j != j2;
            this.A0B.set(iA02, tw);
            if (z) {
                Collections.sort(this.A0B, new C1917Tn());
            }
        }
        try {
            this.A0A.AIS(tw);
        } catch (IOException e) {
            MV.A08(A08(2, 15, kotlin.fh.h1), A08(223, 23, 55), e);
        }
        this.A07.obtainMessage(2, new C1916Tm(tw, false, new ArrayList(this.A0B), null)).sendToTarget();
        return tw;
    }

    private TW A04(TW tw, int i, int i2) {
        AbstractC1722Ln.A08((i == 3 || i == 4) ? false : true);
        return A03(A05(tw, i, i2));
    }

    public static TW A05(TW tw, int i, int i2) {
        return new TW(tw.A07, i, tw.A05, System.currentTimeMillis(), tw.A04, i2, 0, tw.A00);
    }

    private TW A06(String str, boolean z) {
        int iA02 = A02(str);
        if (iA02 != -1) {
            return this.A0B.get(iA02);
        }
        if (!z) {
            return null;
        }
        try {
            return this.A0A.A8R(str);
        } catch (IOException e) {
            MV.A08(A08(2, 15, kotlin.fh.h1), A08(17, 25, 100) + str, e);
            return null;
        }
    }

    private S0 A07(S0 s0, TW tw) {
        if (s0 != null) {
            AbstractC1722Ln.A08(!s0.A06);
            s0.A05(false);
            return s0;
        }
        if (!A0U() || this.A01 >= this.A02) {
            if (A0E[3].charAt(13) != 'T') {
                throw new RuntimeException();
            }
            String[] strArr = A0E;
            strArr[0] = "1BYwewq2j3ndp7UqWSZ9zjcNsKc3D7Wk";
            strArr[5] = "kGROXNJGPy0lCs3jBblxgu9ckPsqthLV";
            return null;
        }
        TW twA04 = A04(tw, 2, 0);
        S0 s1 = new S0(twA04.A07, this.A09.A5v(twA04.A07), twA04.A00, false, this.A03, this);
        this.A0C.put(twA04.A07.A02, s1);
        int i = this.A01;
        this.A01 = i + 1;
        if (i == 0) {
            sendEmptyMessageDelayed(11, 5000L);
        }
        s1.start();
        return s1;
    }

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 42);
        }
        return new String(bArrCopyOfRange);
    }

    private void A09() {
        Iterator<S0> it = this.A0C.values().iterator();
        while (it.hasNext()) {
            it.next().A05(true);
        }
        try {
            this.A0A.AKg();
        } catch (IOException e) {
            MV.A08(A08(2, 15, kotlin.fh.h1), A08(223, 23, 55), e);
        }
        this.A0B.clear();
        this.A08.quit();
        synchronized (this) {
            this.A00 = true;
            notifyAll();
        }
    }

    private void A0A() {
        String strA08 = A08(2, 15, kotlin.fh.h1);
        ArrayList arrayList = new ArrayList();
        try {
            S3 s3A8S = this.A0A.A8S(3, 4);
            while (s3A8S.A01()) {
                try {
                    arrayList.add(s3A8S.A00());
                } catch (Throwable th) {
                    if (s3A8S != null) {
                        try {
                            s3A8S.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
            if (s3A8S != null) {
                s3A8S.close();
            }
        } catch (IOException unused) {
            MV.A05(strA08, A08(42, 25, 53));
        }
        for (int i = 0; i < this.A0B.size(); i++) {
            this.A0B.set(i, A05(this.A0B.get(i), 5, 0));
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            this.A0B.add(A05((TW) arrayList.get(i2), 5, 0));
        }
        Collections.sort(this.A0B, new C1917Tn());
        try {
            this.A0A.AL7();
        } catch (IOException e) {
            MV.A08(strA08, A08(223, 23, 55), e);
        }
        ArrayList arrayList2 = new ArrayList(this.A0B);
        for (int i3 = 0; i3 < this.A0B.size(); i3++) {
            this.A07.obtainMessage(2, new C1916Tm(this.A0B.get(i3), false, arrayList2, null)).sendToTarget();
        }
        A0B();
    }

    private void A0B() {
        int i = 0;
        for (int i2 = 0; i2 < this.A0B.size(); i2++) {
            TW tw = this.A0B.get(i2);
            S0 s0A07 = this.A0C.get(tw.A07.A02);
            switch (tw.A02) {
                case 0:
                    s0A07 = A07(s0A07, tw);
                    break;
                case 1:
                    A0M(s0A07);
                    break;
                case 2:
                    AbstractC1722Ln.A01(s0A07);
                    A0P(s0A07, tw, i);
                    break;
                case 3:
                case 4:
                case 6:
                default:
                    throw new IllegalStateException();
                case 5:
                case 7:
                    A0O(s0A07, tw);
                    break;
            }
            if (s0A07 != null && !s0A07.A06) {
                i++;
            }
        }
    }

    private void A0C() {
        for (int i = 0; i < this.A0B.size(); i++) {
            TW tw = this.A0B.get(i);
            if (tw.A02 == 2) {
                try {
                    this.A0A.AIS(tw);
                } catch (IOException e) {
                    MV.A08(A08(2, 15, kotlin.fh.h1), A08(223, 23, 55), e);
                }
            }
        }
        sendEmptyMessageDelayed(11, 5000L);
    }

    public static void A0D() {
        A0D = new byte[]{-114, -126, -39, 4, Ascii.FF, 3, 1, 4, -10, -7, -30, -10, 3, -10, -4, -6, 7, -44, -17, -9, -6, -13, -14, -82, 2, -3, -82, -6, -3, -17, -14, -82, -14, -3, 5, -4, -6, -3, -17, -14, -56, -82, -91, -64, -56, -53, -60, -61, 127, -45, -50, 127, -53, -50, -64, -61, 127, -61, -50, -42, -51, -53, -50, -64, -61, -46, -115, -42, -15, -7, -4, -11, -12, -80, 4, -1, -80, -4, -1, -15, -12, -80, -7, -2, -12, -11, 8, -66, -71, -44, -36, -33, -40, -41, -109, -25, -30, -109, -27, -40, -32, -30, -23, -40, -109, -39, -27, -30, -32, -109, -41, -44, -25, -44, -43, -44, -26, -40, -118, -91, -83, -80, -87, -88, 100, -72, -77, 100, -74, -87, -79, -77, -70, -87, 100, -78, -77, -78, -87, -68, -83, -73, -72, -87, -78, -72, 100, -88, -77, -69, -78, -80, -77, -91, -88, 126, 100, -117, -90, -82, -79, -86, -87, 101, -71, -76, 101, -72, -86, -71, 101, -78, -90, -77, -70, -90, -79, 101, -72, -71, -76, -75, 101, -73, -86, -90, -72, -76, -77, -52, -25, -17, -14, -21, -22, -90, -6, -11, -90, -7, -21, -6, -90, -13, -25, -12, -5, -25, -14, -90, -7, -6, -11, -10, -90, -8, -21, -25, -7, -11, -12, -64, -90, -89, -62, -54, -51, -58, -59, -127, -43, -48, -127, -42, -47, -59, -62, -43, -58, -127, -54, -49, -59, -58, -39, -113, -69, -56, -38, -46, -121, -51, -56, -48, -45, -52, -53, -95, -121};
    }

    private void A0E(int i) {
        this.A04 = i;
        S3 s3A8S = null;
        try {
            try {
                this.A0A.AKg();
                s3A8S = this.A0A.A8S(0, 1, 2, 5, 7);
                while (s3A8S.A01()) {
                    this.A0B.add(s3A8S.A00());
                }
            } catch (IOException e) {
                MV.A08(A08(2, 15, kotlin.fh.h1), A08(67, 21, 102), e);
                this.A0B.clear();
            }
            N1.A10(s3A8S);
            this.A07.obtainMessage(0, new ArrayList(this.A0B)).sendToTarget();
            A0B();
        } catch (Throwable th) {
            N1.A10(s3A8S);
            throw th;
        }
    }

    private void A0F(int i) {
        this.A02 = i;
        A0B();
    }

    private void A0G(int i) {
        this.A03 = i;
    }

    private void A0H(int i) {
        this.A04 = i;
        A0B();
    }

    private void A0I(TW tw) {
        if (tw.A02 == 7) {
            A04(tw, tw.A03 == 0 ? 0 : 1, tw.A03);
            A0B();
        } else {
            this.A0B.remove(A02(tw.A07.A02));
            try {
                this.A0A.AJi(tw.A07.A02);
            } catch (IOException unused) {
                MV.A05(A08(2, 15, kotlin.fh.h1), A08(88, 30, 73));
            }
            this.A07.obtainMessage(2, new C1916Tm(tw, true, new ArrayList(this.A0B), null)).sendToTarget();
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0043  */
    private void A0J(TW tw, int i) {
        if (i == 0) {
            if (tw.A02 == 1) {
                A04(tw, 0, 0);
                return;
            }
            return;
        }
        if (i != tw.A03) {
            int i2 = tw.A02;
            if (i2 != 0) {
                String[] strArr = A0E;
                if (strArr[6].charAt(19) != strArr[7].charAt(19)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0E;
                strArr2[0] = "8l9SG5h20tqJLjwb5v3spVftx6HT2RLS";
                strArr2[5] = "I7esPqKadVVgUdzdcSRhsNbo28gghaVs";
                if (i2 == 2) {
                    i2 = 1;
                }
            } else {
                i2 = 1;
            }
            A03(new TW(tw.A07, i2, tw.A05, System.currentTimeMillis(), tw.A04, i, 0, tw.A00));
        }
    }

    private void A0K(TW tw, Exception exc) {
        TW tw2 = new TW(tw.A07, exc == null ? 3 : 4, tw.A05, System.currentTimeMillis(), tw.A04, tw.A03, exc == null ? 0 : 1, tw.A00);
        this.A0B.remove(A02(tw2.A07.A02));
        try {
            this.A0A.AIS(tw2);
        } catch (IOException e) {
            MV.A08(A08(2, 15, kotlin.fh.h1), A08(223, 23, 55), e);
        }
        this.A07.obtainMessage(2, new C1916Tm(tw2, false, new ArrayList(this.A0B), exc)).sendToTarget();
    }

    private void A0L(S0 s0) {
        String str = s0.A04.A02;
        this.A0C.remove(str);
        boolean z = s0.A06;
        if (z) {
            this.A06 = false;
        } else {
            int i = this.A01 - 1;
            this.A01 = i;
            if (i == 0) {
                removeMessages(11);
            }
        }
        if (s0.A08) {
            A0B();
            return;
        }
        Exception exc = s0.A01;
        if (exc != null) {
            MV.A08(A08(2, 15, kotlin.fh.h1), A08(246, 13, 61) + s0.A04 + A08(0, 2, 56) + z, exc);
        }
        TW tw = (TW) AbstractC1722Ln.A01(A06(str, false));
        switch (tw.A02) {
            case 2:
                AbstractC1722Ln.A08(!z);
                A0K(tw, exc);
                break;
            case 3:
            case 4:
            case 6:
            default:
                throw new IllegalStateException();
            case 5:
            case 7:
                AbstractC1722Ln.A08(z);
                A0I(tw);
                break;
        }
        A0B();
    }

    private void A0M(S0 s0) {
        if (s0 != null) {
            AbstractC1722Ln.A08(!s0.A06);
            s0.A05(false);
        }
    }

    private void A0N(S0 s0, long j) {
        TW tw = (TW) AbstractC1722Ln.A01(A06(s0.A04.A02, false));
        if (j == tw.A04 || j == -1) {
            return;
        }
        A03(new TW(tw.A07, tw.A02, tw.A05, System.currentTimeMillis(), j, tw.A03, tw.A01, tw.A00));
    }

    private void A0O(S0 s0, TW tw) {
        if (s0 != null) {
            if (s0.A06) {
                return;
            }
            s0.A05(false);
        } else {
            if (this.A06) {
                return;
            }
            S0 s1 = new S0(tw.A07, this.A09.A5v(tw.A07), tw.A00, true, this.A03, this);
            this.A0C.put(tw.A07.A02, s1);
            this.A06 = true;
            s1.start();
        }
    }

    private void A0P(S0 s0, TW tw, int i) {
        AbstractC1722Ln.A08(!s0.A06);
        if (!A0U() || i >= this.A02) {
            A04(tw, 0, 0);
            s0.A05(false);
        }
    }

    private void A0Q(DownloadRequest downloadRequest, int i) {
        TW twA06 = A06(downloadRequest.A02, true);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (twA06 != null) {
            A03(C1921Tr.A00(twA06, downloadRequest, i, jCurrentTimeMillis));
        } else {
            A03(new TW(downloadRequest, i != 0 ? 1 : 0, jCurrentTimeMillis, jCurrentTimeMillis, -1L, i, 0));
        }
        A0B();
    }

    private void A0R(String str) {
        TW twA06 = A06(str, true);
        if (twA06 == null) {
            MV.A05(A08(2, 15, kotlin.fh.h1), A08(118, 39, 26) + str);
        } else {
            A04(twA06, 5, 0);
            A0B();
        }
    }

    private void A0S(String str, int i) {
        String strA08 = A08(2, 15, kotlin.fh.h1);
        if (str == null) {
            for (int i2 = 0; i2 < this.A0B.size(); i2++) {
                A0J(this.A0B.get(i2), i);
            }
            try {
                this.A0A.AL8(i);
            } catch (IOException e) {
                MV.A08(strA08, A08(157, 32, 27), e);
            }
        } else {
            TW twA06 = A06(str, false);
            if (twA06 != null) {
                A0J(twA06, i);
            } else {
                try {
                    this.A0A.AL9(str, i);
                } catch (IOException e2) {
                    MV.A08(strA08, A08(189, 34, 92) + str, e2);
                }
            }
        }
        A0B();
    }

    private void A0T(boolean z) {
        this.A05 = z;
        A0B();
    }

    private boolean A0U() {
        return !this.A05 && this.A04 == 0;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        boolean z = true;
        try {
            switch (message.what) {
                case 0:
                    A0E(message.arg1);
                    break;
                case 1:
                    A0T(message.arg1 != 0);
                    break;
                case 2:
                    A0H(message.arg1);
                    break;
                case 3:
                    A0S((String) message.obj, message.arg1);
                    break;
                case 4:
                    A0F(message.arg1);
                    break;
                case 5:
                    A0G(message.arg1);
                    break;
                case 6:
                    A0Q((DownloadRequest) message.obj, message.arg1);
                    break;
                case 7:
                    A0R((String) message.obj);
                    break;
                case 8:
                    A0A();
                    break;
                case 9:
                    A0L((S0) message.obj);
                    z = false;
                    break;
                case 10:
                    A0N((S0) message.obj, N1.A0N(message.arg1, message.arg2));
                    return;
                case 11:
                    A0C();
                    return;
                case 12:
                    A09();
                    return;
                default:
                    throw new IllegalStateException();
            }
            this.A07.obtainMessage(1, z ? 1 : 0, this.A0C.size()).sendToTarget();
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
