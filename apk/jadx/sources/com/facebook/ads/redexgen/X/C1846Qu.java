package com.facebook.ads.redexgen.X;

import android.media.AudioTrack;
import android.os.SystemClock;
import java.lang.reflect.Method;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Qu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1846Qu {
    public static byte[] A0X;
    public static String[] A0Y = {"szrYTU0DS01XOv1t9rymuWvtHBzl9P36", "s7NaBqmAEHzFdiTFEJctKJZXErXLf66", "N2mrN2qAo9DY", "hoqZCfmYqy5nkA1tXBfpgkqYNSmjUTg6", "5xNJsSwnVbuYJKRd9AZ904GtC6jlbxv6", "fMEqBhIQX0E59kzTmDYun2REUlm12hF", "FOLMhvRYFOEelsj1LA7dnoiDqvOklTJg", "8FpEnMonefyKQskyao4ISAxL9Nu6yKBg"};
    public float A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public long A06;
    public long A07;
    public long A08;
    public long A09;
    public long A0A;
    public long A0B;
    public long A0C;
    public long A0D;
    public long A0E;
    public long A0F;
    public long A0G;
    public long A0H;
    public long A0I;
    public long A0J;
    public long A0K;
    public long A0L;
    public long A0M;
    public AudioTrack A0N;
    public C1843Qr A0O;
    public Method A0P;
    public boolean A0Q;
    public boolean A0R;
    public boolean A0S;
    public boolean A0T;
    public boolean A0U;
    public final InterfaceC1844Qs A0V;
    public final long[] A0W;

    static {
        A06();
    }

    public C1846Qu(InterfaceC1844Qs interfaceC1844Qs) {
        this.A0V = (InterfaceC1844Qs) AbstractC1722Ln.A01(interfaceC1844Qs);
        if (N1.A02 >= 18) {
            try {
                this.A0P = AudioTrack.class.getMethod(A03(0, 10, 3), null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.A0W = new long[10];
    }

    private long A00() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.A0M != -9223372036854775807L) {
            return Math.min(this.A07, this.A0L + ((((long) this.A04) * N1.A0Q((1000 * jElapsedRealtime) - this.A0M, this.A00)) / 1000000));
        }
        if (jElapsedRealtime - this.A0C >= 5) {
            A09(jElapsedRealtime);
            this.A0C = jElapsedRealtime;
        }
        return this.A0I + (this.A0J << 32);
    }

    private long A01() {
        return A02(A00());
    }

    private long A02(long j) {
        return (1000000 * j) / ((long) this.A04);
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0X, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 62);
        }
        return new String(bArrCopyOfRange);
    }

    private void A04() {
        long jNanoTime = System.nanoTime() / 1000;
        if (jNanoTime - this.A0A >= 30000) {
            long jA01 = A01();
            if (jA01 == 0) {
                return;
            }
            this.A0W[this.A02] = N1.A0R(jA01, this.A00) - jNanoTime;
            this.A02 = (this.A02 + 1) % 10;
            if (this.A05 < 10) {
                this.A05++;
            }
            this.A0A = jNanoTime;
            this.A0K = 0L;
            for (int i = 0; i < this.A05; i++) {
                this.A0K += this.A0W[i] / ((long) this.A05);
            }
        }
        if (this.A0T) {
            return;
        }
        A07(jNanoTime);
        if (A0Y[3].charAt(28) != 'U') {
            throw new RuntimeException();
        }
        A0Y[3] = "DvSCD4NKDEWcwB7K3eMl26qicMJQUKXN";
        A08(jNanoTime);
    }

    private void A05() {
        this.A0K = 0L;
        this.A05 = 0;
        this.A02 = 0;
        this.A0A = 0L;
        this.A0D = 0L;
        this.A0H = 0L;
        this.A0U = false;
    }

    public static void A06() {
        A0X = new byte[]{-88, -90, -75, -115, -94, -75, -90, -81, -92, -70};
    }

    private void A07(long j) {
        C1843Qr c1843Qr = (C1843Qr) AbstractC1722Ln.A01(this.A0O);
        if (c1843Qr.A07(j)) {
            long jA02 = c1843Qr.A02();
            long jA01 = c1843Qr.A01();
            long jA03 = A01();
            if (Math.abs(jA02 - j) > 5000000) {
                this.A0V.AHG(jA01, jA02, j, jA03);
                c1843Qr.A04();
            } else if (Math.abs(A02(jA01) - jA03) <= 5000000) {
                c1843Qr.A03();
            } else {
                this.A0V.AGU(jA01, jA02, j, jA03);
                c1843Qr.A04();
            }
        }
    }

    private void A08(long j) {
        if (this.A0R) {
            Method method = this.A0P;
            if (A0Y[2].length() == 13) {
                throw new RuntimeException();
            }
            A0Y[3] = "LwDJ2adXsvmapAbFxE6aw0c9OronULJK";
            if (method == null || j - this.A09 < 500000) {
                return;
            }
            try {
                this.A0E = (((long) ((Integer) N1.A0f((Integer) this.A0P.invoke(AbstractC1722Ln.A01(this.A0N), new Object[0]))).intValue()) * 1000) - this.A06;
                this.A0E = Math.max(this.A0E, 0L);
                if (this.A0E > 5000000) {
                    this.A0V.AFP(this.A0E);
                    this.A0E = 0L;
                }
            } catch (Exception unused) {
                this.A0P = null;
            }
            this.A09 = j;
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x005f  */
    private void A09(long j) {
        long j2;
        AudioTrack audioTrack = (AudioTrack) AbstractC1722Ln.A01(this.A0N);
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return;
        }
        long playbackHeadPosition = ((long) audioTrack.getPlaybackHeadPosition()) & 4294967295L;
        if (this.A0T) {
            if (playState == 2 && playbackHeadPosition == 0) {
                long j3 = this.A0I;
                String[] strArr = A0Y;
                if (strArr[5].length() == strArr[1].length()) {
                    String[] strArr2 = A0Y;
                    strArr2[4] = "NFpO21JovjOYB3sWlcx9YYztHikGNmG2";
                    strArr2[0] = "fMOZdlEOnc2DE7tPUHnxGyRttJbYpWs8";
                    this.A0F = j3;
                    j2 = this.A0F;
                    if (A0Y[2].length() != 13) {
                        A0Y[3] = "80YL1s95COzXxFzHty8TdzJYnUYIUjxc";
                        playbackHeadPosition += j2;
                    }
                }
            } else {
                j2 = this.A0F;
                if (A0Y[2].length() != 13) {
                    A0Y[3] = "80YL1s95COzXxFzHty8TdzJYnUYIUjxc";
                    playbackHeadPosition += j2;
                }
            }
            throw new RuntimeException();
        }
        if (N1.A02 <= 29) {
            if (playbackHeadPosition == 0 && this.A0I > 0 && playState == 3) {
                if (this.A08 == -9223372036854775807L) {
                    this.A08 = j;
                    return;
                }
                return;
            }
            this.A08 = -9223372036854775807L;
        }
        if (this.A0I > playbackHeadPosition) {
            this.A0J++;
        }
        this.A0I = playbackHeadPosition;
    }

    private boolean A0A() {
        return this.A0T && ((AudioTrack) AbstractC1722Ln.A01(this.A0N)).getPlayState() == 2 && A00() == 0;
    }

    public static boolean A0B(int i) {
        if (N1.A02 < 23) {
            if (A0Y[3].charAt(28) == 'U') {
                A0Y[2] = "QimAKg1A2LR55QKN11U1CLfkq7IW";
                if (i != 5) {
                    String[] strArr = A0Y;
                    if (strArr[6].charAt(1) != strArr[7].charAt(1)) {
                        A0Y[3] = "L2En9myi31F5L6fXc4mZT0nWzJPEUu7U";
                        if (i == 6) {
                        }
                    }
                }
                return true;
            }
            throw new RuntimeException();
        }
        return false;
    }

    public final int A0C(long j) {
        return this.A01 - ((int) (j - (A00() * ((long) this.A03))));
    }

    public final long A0D(boolean z) {
        long jA0Q;
        if (((AudioTrack) AbstractC1722Ln.A01(this.A0N)).getPlayState() == 3) {
            A04();
        }
        long jNanoTime = System.nanoTime() / 1000;
        C1843Qr c1843Qr = (C1843Qr) AbstractC1722Ln.A01(this.A0O);
        boolean zA06 = c1843Qr.A06();
        if (zA06) {
            jA0Q = A02(c1843Qr.A01()) + N1.A0Q(jNanoTime - c1843Qr.A02(), this.A00);
        } else {
            if (this.A05 == 0) {
                jA0Q = A01();
                String[] strArr = A0Y;
                if (strArr[6].charAt(1) != strArr[7].charAt(1)) {
                    String[] strArr2 = A0Y;
                    strArr2[6] = "xUEgxFtPACJPZIb13bP3hMWMIhEG7xMC";
                    strArr2[7] = "0FjmHQJcBH4LdF9PJy8ro8FAnByCJd6O";
                }
            } else {
                jA0Q = N1.A0Q(this.A0K + jNanoTime, this.A00);
            }
            if (!z) {
                jA0Q = Math.max(0L, jA0Q - this.A0E);
            }
        }
        if (this.A0S != zA06) {
            this.A0H = this.A0D;
            this.A0G = this.A0B;
        }
        long j = jNanoTime - this.A0H;
        if (j < 1000000) {
            long jA0Q2 = this.A0G + N1.A0Q(j, this.A00);
            long j2 = (j * 1000) / 1000000;
            jA0Q = ((jA0Q * j2) + ((1000 - j2) * jA0Q2)) / 1000;
        }
        if (!this.A0U && jA0Q > this.A0B) {
            this.A0U = true;
            this.A0V.AGS(System.currentTimeMillis() - N1.A0P(N1.A0R(N1.A0P(jA0Q - this.A0B), this.A00)));
        }
        this.A0D = jNanoTime;
        if (A0Y[3].charAt(28) != 'U') {
            throw new RuntimeException();
        }
        String[] strArr3 = A0Y;
        strArr3[5] = "K3IxgzHxuEJER65EhA3mjFQAs2l3WeJ";
        strArr3[1] = "Z33m0uFRo3mrV94OhR47SyLzttNMDNS";
        this.A0B = jA0Q;
        this.A0S = zA06;
        return jA0Q;
    }

    public final void A0E() {
        A05();
        this.A0N = null;
        this.A0O = null;
    }

    public final void A0F() {
        ((C1843Qr) AbstractC1722Ln.A01(this.A0O)).A05();
    }

    public final void A0G(float f) {
        this.A00 = f;
        if (this.A0O != null) {
            this.A0O.A05();
        }
        A05();
    }

    public final void A0H(long j) {
        this.A0L = A00();
        this.A0M = SystemClock.elapsedRealtime() * 1000;
        this.A07 = j;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x006e  */
    public final void A0I(AudioTrack audioTrack, boolean z, int i, int i2, int i3) {
        boolean z2;
        this.A0N = audioTrack;
        this.A03 = i2;
        this.A01 = i3;
        this.A0O = new C1843Qr(audioTrack);
        this.A04 = audioTrack.getSampleRate();
        if (z) {
            boolean zA0B = A0B(i);
            String[] strArr = A0Y;
            if (strArr[6].charAt(1) == strArr[7].charAt(1)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0Y;
            strArr2[5] = "dIBetfCUgBCqw8ZTIS6TfgpOfPDFDgf";
            strArr2[1] = "8ghRGmMlPAoZuHZqxN9JEhdUZeZBQam";
            if (zA0B) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        this.A0T = z2;
        this.A0R = N1.A15(i);
        this.A06 = this.A0R ? A02(i3 / i2) : -9223372036854775807L;
        this.A0I = 0L;
        this.A0J = 0L;
        this.A0F = 0L;
        this.A0Q = false;
        this.A0M = -9223372036854775807L;
        this.A08 = -9223372036854775807L;
        this.A09 = 0L;
        this.A0E = 0L;
        this.A00 = 1.0f;
    }

    public final boolean A0J() {
        return ((AudioTrack) AbstractC1722Ln.A01(this.A0N)).getPlayState() == 3;
    }

    public final boolean A0K() {
        A05();
        if (this.A0M != -9223372036854775807L) {
            return false;
        }
        ((C1843Qr) AbstractC1722Ln.A01(this.A0O)).A05();
        return true;
    }

    public final boolean A0L(long j) {
        if (j <= A00()) {
            boolean zA0A = A0A();
            if (A0Y[3].charAt(28) != 'U') {
                throw new RuntimeException();
            }
            A0Y[2] = "3pZSLe1LS9RDIWdAAYgLn7usG";
            if (!zA0A) {
                return false;
            }
        }
        return true;
    }

    public final boolean A0M(long j) {
        return this.A08 != -9223372036854775807L && j > 0 && SystemClock.elapsedRealtime() - this.A08 >= 200;
    }

    public final boolean A0N(long j) {
        int playState = ((AudioTrack) AbstractC1722Ln.A01(this.A0N)).getPlayState();
        if (this.A0T) {
            if (playState == 2) {
                this.A0Q = false;
                return false;
            }
            if (playState == 1 && A00() == 0) {
                return false;
            }
        }
        boolean z = this.A0Q;
        this.A0Q = A0L(j);
        if (z) {
            boolean z2 = this.A0Q;
            if (A0Y[3].charAt(28) != 'U') {
                throw new RuntimeException();
            }
            A0Y[2] = "xzY9CvHn6cSZfbG";
            if (!z2 && playState != 1) {
                this.A0V.AHR(this.A01, N1.A0P(this.A06));
            }
        }
        return true;
    }
}
