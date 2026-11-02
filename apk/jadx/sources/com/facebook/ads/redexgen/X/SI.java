package com.facebook.ads.redexgen.X;

import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.android.gms.nearby.uwb.RangingPosition;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import p005kotlin.time.DurationKt;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class SI implements InterfaceC1840Qo {
    public static boolean A0v;
    public static int A0w;
    public static ExecutorService A0x;
    public static byte[] A0y;
    public static String[] A0z = {"Vm34RtAuvH", "KApfs4NIeoMbH", "G6EQ", "58tGO1HlZwW4jqc6p7", "3lvK1zrQxpaAMv8YXmHvStKwjRQhCbHE", "FbO3sWXPQ3OcV2Ggvc", "bpi5G9jo4", "XZBql1qLDwgxzhX"};
    public static final Object A10;

    @MetaExoPlayerCustomization
    public static final AtomicInteger A11;
    public float A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public long A07;
    public long A08;
    public long A09;
    public long A0A;
    public long A0B;
    public long A0C;
    public AudioTrack A0D;
    public VL A0E;
    public C1675Jq A0F;
    public UW A0G;
    public QD A0H;
    public InterfaceC1836Qk A0I;
    public R3 A0J;
    public R6 A0K;
    public R6 A0L;
    public R8 A0M;
    public R8 A0N;
    public RD A0O;
    public ByteBuffer A0P;
    public ByteBuffer A0Q;
    public ByteBuffer A0R;

    @MetaExoPlayerCustomization
    public boolean A0S;
    public boolean A0T;
    public boolean A0U;
    public boolean A0V;
    public boolean A0W;
    public boolean A0X;
    public boolean A0Y;
    public boolean A0Z;
    public boolean A0a;
    public boolean A0b;
    public byte[] A0c;
    public LZ[] A0d;
    public ByteBuffer[] A0e;
    public final int A0f;
    public final InterfaceC1709La A0g;
    public final C1731Lx A0h;
    public final OL A0i;
    public final QG A0j;
    public final C1846Qu A0k;
    public final AnonymousClass90 A0l;
    public final R4 A0m;
    public final RB<C1834Qi> A0n;
    public final RB<C1839Qn> A0o;
    public final C14028v A0p;
    public final ArrayDeque<R8> A0q;
    public final boolean A0r;
    public final boolean A0s;
    public final LZ[] A0t;
    public final LZ[] A0u;

    static {
        A0T();
        A0v = false;
        A10 = new Object();
        A11 = new AtomicInteger(0);
    }

    @Deprecated
    public SI(QG qg, LZ[] lzArr) {
        this(new R5().A06((QG) AbstractC1997Wx.A00(qg, QG.A04)).A07(lzArr));
    }

    @RequiresNonNull
    public SI(R5 r5) {
        this.A0j = r5.A03;
        this.A0g = r5.A02;
        this.A0s = N1.A02 >= 21 && r5.A05;
        this.A0r = N1.A02 >= 23 && r5.A04;
        this.A0f = N1.A02 >= 29 ? r5.A01 : 0;
        this.A0m = r5.A00;
        this.A0h = new C1731Lx(InterfaceC1729Lu.A00);
        this.A0h.A04();
        this.A0k = new C1846Qu(new SJ(this));
        this.A0l = new AnonymousClass90();
        this.A0p = new C14028v();
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new SK() { // from class: com.facebook.ads.redexgen.X.8x
            public static String[] A00 = {"24x7LE0aMCLmy4Cr90ILHi2URidISADe", "P7PEYEXmMLFT9vpOXmNxvTd4mu4rn2ac", "U0TQqwwEkBsVFFMA6Ld4YdAAnOqbP6j4", "osgQVriRl5RsHDZ79rlYoCUSxlSucoa4", "7Ulc7J5DGkrn9XdQEY9B52iinKq5Bi9I", "bG2Qd5VF4kAXA7csyfRNs1IikG7LyXl", "Z6rWJZjQgNpQgA24zjHn4zIAbIaGbZGe", "edYv1uFxrW0ntWc4yA09Ykoq3hihq0FM"};

            @Override // com.facebook.ads.redexgen.X.SK
            public final LX A09(LX lx) throws LY {
                int i = lx.A02;
                if (i == 3 || i == 2 || i == 268435456 || i == 536870912 || i == 805306368 || i == 4) {
                    return i != 2 ? new LX(lx.A03, lx.A01, 2) : LX.A06;
                }
                throw new LY(lx);
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // com.facebook.ads.redexgen.X.LZ
            public final void AIU(ByteBuffer byteBuffer) {
                int iPosition = byteBuffer.position();
                int iLimit = byteBuffer.limit();
                int i = iLimit - iPosition;
                switch (this.A05.A02) {
                    case 3:
                        i *= 2;
                        break;
                    case 4:
                    case 805306368:
                        i /= 2;
                        break;
                    case 268435456:
                        break;
                    case 536870912:
                        int i2 = i / 3;
                        if (A00[1].charAt(19) == 'P') {
                            throw new RuntimeException();
                        }
                        A00[7] = "Kg0SQXP1Uwpo1gaOesPqkA58HhYguS7b";
                        i = i2 * 2;
                        break;
                        break;
                    default:
                        throw new IllegalStateException();
                }
                ByteBuffer byteBufferA00 = A00(i);
                switch (this.A05.A02) {
                    case 3:
                        while (iPosition < iLimit) {
                            byteBufferA00.put((byte) 0);
                            byteBufferA00.put((byte) ((byteBuffer.get(iPosition) & 255) + RangingPosition.RSSI_UNKNOWN));
                            iPosition++;
                        }
                        byteBuffer.position(byteBuffer.limit());
                        byteBufferA00.flip();
                        return;
                    case 4:
                        while (iPosition < iLimit) {
                            short sA00 = (short) (32767.0f * N1.A00(byteBuffer.getFloat(iPosition), -1.0f, 1.0f));
                            byteBufferA00.put((byte) (sA00 & 255));
                            byteBufferA00.put((byte) ((sA00 >> 8) & 255));
                            iPosition += 4;
                        }
                        byteBuffer.position(byteBuffer.limit());
                        byteBufferA00.flip();
                        return;
                    case 268435456:
                        while (iPosition < iLimit) {
                            byte b = byteBuffer.get(iPosition + 1);
                            String[] strArr = A00;
                            if (strArr[2].charAt(31) != strArr[3].charAt(31)) {
                                A00[7] = "WVsDZ5buKx70EJyZWDh4YQIYvha3TOO1";
                                byteBufferA00.put(b);
                                byteBufferA00.put(byteBuffer.get(iPosition));
                                iPosition += 0;
                            } else {
                                A00[5] = "rHWDG1MI";
                                byteBufferA00.put(b);
                                byteBufferA00.put(byteBuffer.get(iPosition));
                                iPosition += 2;
                            }
                        }
                        byteBuffer.position(byteBuffer.limit());
                        byteBufferA00.flip();
                        return;
                    case 536870912:
                        while (iPosition < iLimit) {
                            byteBufferA00.put(byteBuffer.get(iPosition + 1));
                            byteBufferA00.put(byteBuffer.get(iPosition + 2));
                            iPosition += 3;
                        }
                        byteBuffer.position(byteBuffer.limit());
                        byteBufferA00.flip();
                        return;
                    case 805306368:
                        while (iPosition < iLimit) {
                            byteBufferA00.put(byteBuffer.get(iPosition + 2));
                            byteBufferA00.put(byteBuffer.get(iPosition + 3));
                            iPosition += 4;
                        }
                        byteBuffer.position(byteBuffer.limit());
                        byteBufferA00.flip();
                        return;
                    default:
                        throw new IllegalStateException();
                }
            }
        }, this.A0l, this.A0p);
        Collections.addAll(arrayList, this.A0g.A7Z());
        this.A0u = (LZ[]) arrayList.toArray(new LZ[0]);
        this.A0t = new LZ[]{new SK() { // from class: com.facebook.ads.redexgen.X.8y
            public static String[] A00 = {"vnIPpnF5mfadbb6vv6b6pryI1li4ODW4", "pcKpuoGw", "z4VvdyAHuTdzMXuwHe239FmRj1zsaN", "TIpV73gbBqS5DbWFFPtu7wnKcb18QYdd", "R9leefbXNFSmDQdE", "xv6XcaXZNK9bUIDl1OZ1nrWoKDG", "", "lpm9awGoRs4To0ugdbAeLdxa"};
            public static final int A01 = Float.floatToIntBits(Float.NaN);

            public static void A00(int i, ByteBuffer byteBuffer) {
                int iFloatToIntBits = Float.floatToIntBits((float) (((double) i) * 4.656612875245797E-10d));
                if (iFloatToIntBits == A01) {
                    iFloatToIntBits = Float.floatToIntBits(0.0f);
                }
                byteBuffer.putInt(iFloatToIntBits);
            }

            @Override // com.facebook.ads.redexgen.X.SK
            public final LX A09(LX lx) throws LY {
                int i = lx.A02;
                if (N1.A14(i)) {
                    return i != 4 ? new LX(lx.A03, lx.A01, 4) : LX.A06;
                }
                throw new LY(lx);
            }

            @Override // com.facebook.ads.redexgen.X.LZ
            public final void AIU(ByteBuffer byteBuffer) {
                ByteBuffer byteBufferA00;
                int iPosition = byteBuffer.position();
                int iLimit = byteBuffer.limit();
                int i = iLimit - iPosition;
                switch (this.A05.A02) {
                    case 536870912:
                        byteBufferA00 = A00((i / 3) * 4);
                        while (iPosition < iLimit) {
                            A00(((byteBuffer.get(iPosition) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition + 2) & 255) << 24), byteBufferA00);
                            iPosition += 3;
                        }
                        break;
                    case 805306368:
                        byteBufferA00 = A00(i);
                        while (iPosition < iLimit) {
                            byte b = byteBuffer.get(iPosition);
                            if (A00[4].length() != 16) {
                                throw new RuntimeException();
                            }
                            String[] strArr = A00;
                            strArr[6] = "";
                            strArr[1] = "ihLtRy11";
                            A00((b & 255) | ((byteBuffer.get(iPosition + 1) & 255) << 8) | ((byteBuffer.get(iPosition + 2) & 255) << 16) | ((byteBuffer.get(iPosition + 3) & 255) << 24), byteBufferA00);
                            iPosition += 4;
                        }
                        break;
                    default:
                        throw new IllegalStateException();
                }
                int iLimit2 = byteBuffer.limit();
                if (A00[0].charAt(14) == 'U') {
                    throw new RuntimeException();
                }
                String[] strArr2 = A00;
                strArr2[7] = "8UXbWGhdR90bMqntR97pq9Fh";
                strArr2[2] = "U50wiiPjEpdDhO7QiTcto1IrT7nYkJ";
                byteBuffer.position(iLimit2);
                byteBufferA00.flip();
            }
        }};
        this.A00 = 1.0f;
        this.A0E = VL.A07;
        this.A01 = 0;
        this.A0F = new C1675Jq(0, 0.0f);
        this.A0N = new R8(UW.A05, false, 0L, 0L);
        this.A0G = UW.A05;
        this.A03 = -1;
        this.A0d = new LZ[0];
        this.A0e = new ByteBuffer[0];
        this.A0q = new ArrayDeque<>();
        this.A0n = new RB<>(100L);
        this.A0o = new RB<>(100L);
        this.A0i = null;
    }

    @MetaExoPlayerCustomization
    private int A00() {
        return XL.A03(XQ.A2P) ? A01(this.A0K.A06, this.A0K.A02, this.A0K.A03) : DurationKt.NANOS_IN_MILLIS;
    }

    public static int A01(int i, int i2, int i3) {
        int minBufferSize = AudioTrack.getMinBufferSize(i, i2, i3);
        AbstractC1722Ln.A08(minBufferSize != -2);
        if (A0z[7].length() != 15) {
            throw new RuntimeException();
        }
        String[] strArr = A0z;
        strArr[3] = "hde9tmFJyYnvwgND2M";
        strArr[5] = "CEfKXpgba9aNeWtlCc";
        return minBufferSize;
    }

    public static int A02(int i, ByteBuffer byteBuffer) {
        switch (i) {
            case 5:
            case 6:
            case 18:
                return AbstractC2026Yd.A03(byteBuffer);
            case 7:
            case 8:
                int iA00 = AbstractC2041Yt.A00(byteBuffer);
                String[] strArr = A0z;
                if (strArr[6].length() == strArr[2].length()) {
                    throw new RuntimeException();
                }
                A0z[7] = "V8hnj9LlpZTe9lZ";
                return iA00;
            case 9:
                int iA01 = ZA.A01(N1.A0F(byteBuffer, byteBuffer.position()));
                if (iA01 != -1) {
                    return iA01;
                }
                throw new IllegalArgumentException();
            case 10:
                return 1024;
            case 11:
            case 12:
                return 2048;
            case 13:
            case 19:
            default:
                throw new IllegalStateException(A0L(244, 27, 25) + i);
            case 14:
                int iA02 = AbstractC2026Yd.A02(byteBuffer);
                if (iA02 == -1) {
                    return 0;
                }
                return AbstractC2026Yd.A04(byteBuffer, iA02) * 16;
            case 15:
                return 512;
            case 16:
                return 1024;
            case 17:
                return AbstractC2029Yg.A01(byteBuffer);
            case 20:
                return ZF.A00(byteBuffer);
        }
    }

    private int A03(AudioFormat audioFormat, AudioAttributes audioAttributes) {
        if (N1.A02 >= 31) {
            return AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        }
        if (!AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return 0;
        }
        if (N1.A02 != 30) {
            return 1;
        }
        String str = N1.A06;
        if (A0z[7].length() != 15) {
            throw new RuntimeException();
        }
        A0z[7] = "y2mCjJbKjRqrTFM";
        return str.startsWith(A0L(173, 5, 52)) ? 2 : 1;
    }

    public static int A04(AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
        return audioTrack.write(byteBuffer, i, 1);
    }

    private int A05(AudioTrack audioTrack, ByteBuffer byteBuffer, int i, long j) {
        if (N1.A02 >= 26) {
            return audioTrack.write(byteBuffer, i, 1, j * 1000);
        }
        if (this.A0P == null) {
            this.A0P = ByteBuffer.allocate(16);
            this.A0P.order(ByteOrder.BIG_ENDIAN);
            this.A0P.putInt(1431633921);
        }
        if (this.A02 == 0) {
            this.A0P.putInt(4, i);
            this.A0P.putLong(8, 1000 * j);
            this.A0P.position(0);
            this.A02 = i;
        }
        int iRemaining = this.A0P.remaining();
        if (iRemaining > 0) {
            int iWrite = audioTrack.write(this.A0P, iRemaining, 1);
            if (iWrite < 0) {
                this.A02 = 0;
                return iWrite;
            }
            if (iWrite < iRemaining) {
                return 0;
            }
        }
        int iA04 = A04(audioTrack, byteBuffer, i);
        if (iA04 < 0) {
            this.A02 = 0;
            return iA04;
        }
        this.A02 -= iA04;
        return iA04;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long A06() {
        return this.A0K.A04 == 0 ? this.A0A / ((long) this.A0K.A01) : this.A09;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long A07() {
        return this.A0K.A04 == 0 ? this.A0C / ((long) this.A0K.A05) : this.A0B;
    }

    private long A08(long j) {
        while (!this.A0q.isEmpty()) {
            R8 first = this.A0q.getFirst();
            if (A0z[1].length() == 12) {
                throw new RuntimeException();
            }
            A0z[7] = "Bn5bym0ViaigI51";
            if (j < first.A00) {
                break;
            }
            this.A0N = this.A0q.remove();
        }
        long j2 = j - this.A0N.A00;
        if (this.A0N.A02.equals(UW.A05)) {
            return this.A0N.A01 + j2;
        }
        if (this.A0q.isEmpty()) {
            return this.A0N.A01 + this.A0g.A96(j2);
        }
        R8 first2 = this.A0q.getFirst();
        return first2.A01 - N1.A0Q(first2.A00 - j, this.A0N.A02.A01);
    }

    private long A09(long j) {
        return this.A0K.A08(this.A0g.A9l()) + j;
    }

    public static AudioFormat A0D(int i, int i2, int i3) {
        return new AudioFormat.Builder().setSampleRate(i).setChannelMask(i2).setEncoding(i3).build();
    }

    private AudioTrack A0F() throws C1834Qi {
        try {
            return A0G((R6) AbstractC1722Ln.A01(this.A0K));
        } catch (C1834Qi e) {
            int iA00 = A00();
            if (this.A0K.A00 > iA00) {
                R6 r6A0C = this.A0K.A0C(iA00);
                try {
                    AudioTrack audioTrackA0G = A0G(r6A0C);
                    this.A0K = r6A0C;
                    return audioTrackA0G;
                } catch (C1834Qi e2) {
                    e.addSuppressed(e2);
                    A0O();
                    throw e;
                }
            }
            A0O();
            throw e;
        }
    }

    private AudioTrack A0G(R6 r6) throws C1834Qi {
        try {
            AudioTrack audioTrackA0A = r6.A0A(this.A0b, this.A0E, this.A01);
            if (0 != 0) {
                A0l(audioTrackA0A);
            }
            return audioTrackA0A;
        } catch (C1834Qi e) {
            if (this.A0I != null) {
                this.A0I.AE2(e);
            }
            throw e;
        }
    }

    private UW A0I() {
        return A0K().A02;
    }

    private R8 A0K() {
        if (this.A0M != null) {
            return this.A0M;
        }
        return !this.A0q.isEmpty() ? this.A0q.getLast() : this.A0N;
    }

    public static String A0L(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0y, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 67);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0N() {
        for (int i = 0; i < this.A0d.length; i++) {
            LZ lz = this.A0d[i];
            lz.flush();
            this.A0e[i] = lz.A9G();
        }
    }

    private void A0O() {
        if (this.A0K.A0D()) {
            this.A0W = true;
        }
    }

    private void A0P() {
        if (this.A0a) {
            return;
        }
        this.A0a = true;
        this.A0k.A0H(A07());
        this.A0D.stop();
        this.A02 = 0;
    }

    private void A0Q() {
        this.A0A = 0L;
        this.A09 = 0L;
        this.A0C = 0L;
        this.A0B = 0L;
        this.A0V = false;
        this.A04 = 0;
        this.A0N = new R8(A0I(), A0p(), 0L, 0L);
        this.A08 = 0L;
        this.A0M = null;
        this.A0q.clear();
        this.A0Q = null;
        this.A05 = 0;
        this.A0R = null;
        this.A0a = false;
        this.A0U = false;
        this.A03 = -1;
        this.A0P = null;
        this.A02 = 0;
        this.A0p.A0D();
        A0N();
    }

    private void A0R() {
        if (A0h()) {
            if (N1.A02 >= 21) {
                A0X(this.A0D, this.A00);
            } else {
                A0Y(this.A0D, this.A00);
            }
        }
    }

    private void A0S() {
        LZ[] lzArr = this.A0K.A09;
        ArrayList arrayList = new ArrayList();
        for (LZ lz : lzArr) {
            if (lz.AB3()) {
                arrayList.add(lz);
            } else {
                lz.flush();
            }
        }
        int size = arrayList.size();
        this.A0d = (LZ[]) arrayList.toArray(new LZ[size]);
        this.A0e = new ByteBuffer[size];
        A0N();
    }

    public static void A0T() {
        A0y = new byte[]{-53, -62, 8, 17, Ascii.DC4, -36, -62, -100, -67, -66, -71, -51, -60, -52, -103, -51, -68, -63, -57, -85, -63, -58, -61, -61, -10, -19, -50, -22, -33, -9, -29, -16, -72, -65, -13, -30, -25, -19, -46, -16, -33, -31, -23, -48, -29, -22, -29, -33, -15, -29, -46, -26, -16, -29, -33, -30, -77, -50, -42, -39, -46, -47, -115, -31, -36, -115, -32, -46, -31, -115, -35, -39, -50, -26, -49, -50, -48, -40, -115, -35, -50, -33, -50, -38, -32, -57, -20, -12, -33, -22, -25, -30, -98, -50, -63, -53, -98, -29, -20, -31, -19, -30, -25, -20, -27, -72, -98, -70, -33, -25, -46, -35, -38, -43, -111, -32, -26, -27, -31, -26, -27, -111, -44, -39, -46, -33, -33, -42, -35, -111, -44, -32, -33, -41, -38, -40, -111, -103, -34, -32, -43, -42, -82, -75, -38, -30, -51, -40, -43, -48, -116, -37, -31, -32, -36, -31, -32, -116, -47, -38, -49, -37, -48, -43, -38, -45, -116, -108, -39, -37, -48, -47, -87, -57, -32, -17, -36, -29, -13, 6, Ascii.DC4, 6, Ascii.NAK, Ascii.NAK, 10, Ascii.SI, 8, -63, Ascii.DC4, Ascii.NAK, 2, Ascii.CR, Ascii.CR, 6, 5, -63, 2, Ascii.SYN, 5, 10, Ascii.DLE, -63, Ascii.NAK, 19, 2, 4, Ascii.FF, Ascii.SO, 39, Ascii.SUB, Ascii.ESC, 37, Ascii.RS, -39, 45, 40, -39, Ascii.FS, 40, 39, Ascii.US, 34, 32, 46, 43, Ascii.RS, -39, 41, Ascii.SUB, 44, 44, 45, 33, 43, 40, 46, 32, 33, -39, Ascii.US, 40, 43, -13, -39, -79, -54, -63, -44, -52, -63, -65, -48, -63, -64, 124, -67, -47, -64, -59, -53, 124, -63, -54, -65, -53, -64, -59, -54, -61, -106, 124, -21, -1, -18, -13, -7, -71, -4, -21, 1};
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ProcessVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Method arg registers not loaded: com.facebook.ads.redexgen.X.R8.<init>(com.facebook.ads.redexgen.X.UW, boolean, long, long, com.facebook.ads.redexgen.X.R0):void, class status: GENERATED_AND_UNLOADED
        	at jadx.core.dex.nodes.MethodNode.getArgRegs(MethodNode.java:309)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.isArgUnused(ProcessVariables.java:146)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.lambda$isVarUnused$0(ProcessVariables.java:131)
        	at jadx.core.utils.ListUtils.allMatch(ListUtils.java:224)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.isVarUnused(ProcessVariables.java:131)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.processBlock(ProcessVariables.java:82)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:93)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.removeUnusedResults(ProcessVariables.java:73)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.visit(ProcessVariables.java:48)
        */
    private void A0U(long r13) {
        /*
            r12 = this;
            boolean r0 = r12.A0i()
            if (r0 == 0) goto L4a
            com.facebook.ads.redexgen.X.La r1 = r12.A0g
            com.facebook.ads.redexgen.X.UW r0 = r12.A0I()
            com.facebook.ads.redexgen.X.UW r5 = r1.A4g(r0)
        L10:
            boolean r0 = r12.A0i()
            if (r0 == 0) goto L48
            com.facebook.ads.redexgen.X.La r1 = r12.A0g
            boolean r0 = r12.A0p()
            boolean r6 = r1.A4h(r0)
        L20:
            java.util.ArrayDeque<com.facebook.ads.redexgen.X.R8> r2 = r12.A0q
            com.facebook.ads.redexgen.X.R8 r4 = new com.facebook.ads.redexgen.X.R8
            r0 = 0
            long r7 = java.lang.Math.max(r0, r13)
            com.facebook.ads.redexgen.X.R6 r3 = r12.A0K
            long r0 = r12.A07()
            long r9 = r3.A08(r0)
            r11 = 0
            r4.<init>(r5, r6, r7, r9)
            r2.add(r4)
            r12.A0S()
            com.facebook.ads.redexgen.X.Qk r0 = r12.A0I
            if (r0 == 0) goto L47
            com.facebook.ads.redexgen.X.Qk r0 = r12.A0I
            r0.AH5(r6)
        L47:
            return
        L48:
            r6 = 0
            goto L20
        L4a:
            com.facebook.ads.redexgen.X.UW r5 = com.facebook.ads.redexgen.X.UW.A05
            goto L10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.SI.A0U(long):void");
    }

    private void A0V(long j) throws Exception {
        ByteBuffer byteBuffer;
        int length = this.A0d.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.A0e[i - 1];
            } else {
                ByteBuffer byteBuffer2 = this.A0Q;
                String[] strArr = A0z;
                if (strArr[3].length() != strArr[5].length()) {
                    throw new RuntimeException();
                }
                A0z[0] = "l";
                byteBuffer = byteBuffer2 != null ? this.A0Q : LZ.A00;
            }
            if (i == length) {
                A0e(byteBuffer, j);
            } else {
                LZ lz = this.A0d[i];
                if (i > this.A03) {
                    lz.AIU(byteBuffer);
                }
                ByteBuffer byteBufferA9G = lz.A9G();
                this.A0e[i] = byteBufferA9G;
                if (byteBufferA9G.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i--;
            }
        }
    }

    private void A0W(AudioTrack audioTrack) {
        if (this.A0O == null) {
            this.A0O = new RD(this);
        }
        this.A0O.A00(audioTrack);
    }

    public static void A0X(AudioTrack audioTrack, float f) {
        audioTrack.setVolume(f);
    }

    public static void A0Y(AudioTrack audioTrack, float f) {
        audioTrack.setStereoVolume(f, f);
    }

    private void A0Z(final AudioTrack audioTrack, final C1731Lx c1731Lx, final InterfaceC1836Qk interfaceC1836Qk, final C1832Qg c1832Qg) {
        c1731Lx.A02();
        final Handler handler = new Handler(Looper.myLooper());
        synchronized (A10) {
            if (A0x == null) {
                A0x = N1.A0u(A0L(23, 33, 59));
            }
            A0w++;
            A0x.execute(new Runnable() { // from class: com.facebook.ads.redexgen.X.Qz
                @Override // java.lang.Runnable
                public final void run() {
                    SI.A0a(audioTrack, interfaceC1836Qk, handler, c1832Qg, c1731Lx);
                }
            });
        }
    }

    public static /* synthetic */ void A0a(AudioTrack audioTrack, final InterfaceC1836Qk interfaceC1836Qk, Handler handler, final C1832Qg c1832Qg, C1731Lx c1731Lx) {
        try {
            audioTrack.flush();
            audioTrack.release();
            if (interfaceC1836Qk != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Qy
                    @Override // java.lang.Runnable
                    public final void run() {
                        interfaceC1836Qk.AE4(c1832Qg);
                    }
                });
            }
            c1731Lx.A04();
            synchronized (A10) {
                A0w--;
                if (A0w == 0) {
                    A0x.shutdown();
                    A0x = null;
                }
            }
        } catch (Throwable th) {
            if (interfaceC1836Qk != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Qy
                    @Override // java.lang.Runnable
                    public final void run() {
                        interfaceC1836Qk.AE4(c1832Qg);
                    }
                });
            }
            c1731Lx.A04();
            synchronized (A10) {
                A0w--;
                if (A0w == 0) {
                    A0x.shutdown();
                    A0x = null;
                }
                throw th;
            }
        }
    }

    private void A0b(UW uw) {
        if (A0h()) {
            try {
                this.A0D.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(uw.A01).setPitch(uw.A00).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e) {
                MV.A0A(A0L(7, 16, 21), A0L(56, 29, 42), e);
            }
            uw = new UW(this.A0D.getPlaybackParams().getSpeed(), this.A0D.getPlaybackParams().getPitch());
            this.A0k.A0G(uw.A01);
        }
        this.A0G = uw;
    }

    private void A0c(UW uw, boolean z) {
        R8 r8A0K = A0K();
        if (uw.equals(r8A0K.A02) && z == r8A0K.A03) {
            return;
        }
        R8 r8 = new R8(uw, z, -9223372036854775807L, -9223372036854775807L);
        if (A0h()) {
            this.A0M = r8;
        } else {
            this.A0N = r8;
        }
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0147  */
    private void A0e(ByteBuffer byteBuffer, long j) throws Exception {
        if (byteBuffer.hasRemaining()) {
            if (this.A0R != null) {
                AbstractC1722Ln.A07(this.A0R == byteBuffer);
            } else {
                this.A0R = byteBuffer;
                if (N1.A02 < 21) {
                    int iRemaining = byteBuffer.remaining();
                    if (this.A0c == null || this.A0c.length < iRemaining) {
                        this.A0c = new byte[iRemaining];
                    }
                    int iPosition = byteBuffer.position();
                    byteBuffer.get(this.A0c, 0, iRemaining);
                    byteBuffer.position(iPosition);
                    this.A06 = 0;
                }
            }
            int iRemaining2 = byteBuffer.remaining();
            int iA04 = 0;
            if (A0z[4].charAt(3) != 'K') {
                throw new RuntimeException();
            }
            A0z[7] = "kYiBhVCQcO0E0Ug";
            if (N1.A02 < 21) {
                int iA0C = this.A0k.A0C(this.A0C);
                if (iA0C > 0) {
                    iA04 = this.A0D.write(this.A0c, this.A06, Math.min(iRemaining2, iA0C));
                    if (iA04 > 0) {
                        this.A06 += iA04;
                        byteBuffer.position(byteBuffer.position() + iA04);
                    }
                }
            } else if (this.A0b) {
                AbstractC1722Ln.A08(j != -9223372036854775807L);
                iA04 = A05(this.A0D, byteBuffer, iRemaining2, j);
            } else {
                iA04 = A04(this.A0D, byteBuffer, iRemaining2);
            }
            this.A07 = SystemClock.elapsedRealtime();
            if (iA04 < 0) {
                C1839Qn c1839Qn = new C1839Qn(iA04, this.A0K.A07, A0k(iA04) && this.A0B > 0);
                if (this.A0I != null) {
                    this.A0I.AE2(c1839Qn);
                }
                if (c1839Qn.A02) {
                    throw c1839Qn;
                }
                RB<C1839Qn> rb = this.A0o;
                String[] strArr = A0z;
                if (strArr[3].length() != strArr[5].length()) {
                    A0z[0] = "d01LXY2j";
                    rb.A01(c1839Qn);
                    return;
                } else {
                    String[] strArr2 = A0z;
                    strArr2[6] = "ozo5UvJXF";
                    strArr2[2] = "bka7";
                    rb.A01(c1839Qn);
                    return;
                }
            }
            this.A0o.A00();
            if (A0l(this.A0D)) {
                if (this.A0B > 0) {
                    this.A0V = false;
                }
                if (this.A0X) {
                    InterfaceC1836Qk interfaceC1836Qk = this.A0I;
                    String[] strArr3 = A0z;
                    if (strArr3[6].length() != strArr3[2].length()) {
                        String[] strArr4 = A0z;
                        strArr4[3] = "xOsci6Ayga96EfLIhg";
                        strArr4[5] = "mkx3rPpVenhxPXLil2";
                        if (interfaceC1836Qk != null) {
                            if (iA04 < iRemaining2 && !this.A0V) {
                                this.A0I.AG8();
                            }
                        }
                    } else {
                        A0z[1] = "QaSGBYLOXryQ9Btzxqel1D";
                        if (interfaceC1836Qk != null) {
                            if (iA04 < iRemaining2) {
                                this.A0I.AG8();
                            }
                        }
                    }
                }
            }
            if (this.A0K.A04 == 0) {
                this.A0C += (long) iA04;
            }
            if (iA04 == iRemaining2) {
                if (this.A0K.A04 != 0) {
                    AbstractC1722Ln.A08(byteBuffer == this.A0Q);
                    this.A0B += ((long) this.A04) * ((long) this.A05);
                }
                this.A0R = null;
            }
        }
    }

    private boolean A0f() throws Exception {
        boolean z = false;
        if (this.A03 == -1) {
            this.A03 = 0;
            z = true;
        }
        while (this.A03 < this.A0d.length) {
            LZ lz = this.A0d[this.A03];
            if (z) {
                lz.AIT();
            }
            A0V(-9223372036854775807L);
            if (!lz.AB7()) {
                return false;
            }
            z = true;
            this.A03++;
        }
        if (this.A0R != null) {
            A0e(this.A0R, -9223372036854775807L);
            if (this.A0R != null) {
                return false;
            }
        }
        this.A03 = -1;
        return true;
    }

    @MetaExoPlayerCustomization
    private boolean A0g() throws C1834Qi {
        if (!this.A0h.A03()) {
            return false;
        }
        this.A0D = this.A0S ? A0F() : A0G(this.A0K);
        if (A0l(this.A0D)) {
            A0W(this.A0D);
            if (this.A0f != 3) {
                this.A0D.setOffloadDelayPadding(this.A0K.A07.A08, this.A0K.A07.A09);
            }
        }
        if (N1.A02 >= 31 && this.A0H != null) {
            R2.A00(this.A0D, this.A0H);
        }
        this.A01 = this.A0D.getAudioSessionId();
        this.A0k.A0I(this.A0D, this.A0K.A04 == 2, this.A0K.A03, this.A0K.A05, this.A0K.A00);
        A0R();
        if (this.A0F.A01 != 0) {
            this.A0D.attachAuxEffect(this.A0F.A01);
            this.A0D.setAuxEffectSendLevel(this.A0F.A00);
        }
        if (this.A0J != null && N1.A02 >= 23) {
            AudioTrack audioTrack = this.A0D;
            R3 r3 = this.A0J;
            if (A0z[4].charAt(3) != 'K') {
                throw new RuntimeException();
            }
            A0z[4] = "TOuKrcb9bBSyou7w4tIdRoCGV6m3sHcQ";
            R1.A00(audioTrack, r3);
        }
        this.A0Y = true;
        if (this.A0I != null) {
            this.A0I.AE3(this.A0K.A0B());
        }
        return true;
    }

    private boolean A0h() {
        return this.A0D != null;
    }

    private boolean A0i() {
        if (!this.A0b) {
            if (A0L(271, 9, 71).equals(this.A0K.A07.A0W) && !A0j(this.A0K.A07.A0C)) {
                return true;
            }
        }
        return false;
    }

    private boolean A0j(int i) {
        return this.A0s && N1.A14(i);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0029  */
    /* JADX WARN: Code duplicated, block: B:14:0x002f A[RETURN, SYNTHETIC] */
    public static boolean A0k(int i) {
        if (N1.A02 < 24) {
            if (i == -32) {
                return false;
            }
        } else {
            if (A0z[4].charAt(3) != 'K') {
                throw new RuntimeException();
            }
            String[] strArr = A0z;
            strArr[6] = "lrlu1YMM3";
            strArr[2] = "lPjq";
            if (i != -6) {
                if (i == -32) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean A0l(AudioTrack audioTrack) {
        return N1.A02 >= 29 && audioTrack.isOffloadedPlayback();
    }

    private boolean A0m(VC vc, VL vl) {
        int iA03;
        int iA01;
        if (N1.A02 < 29 || this.A0f == 0 || (iA03 = L8.A03((String) AbstractC1722Ln.A01(vc.A0W), vc.A0R)) == 0 || (iA01 = N1.A01(vc.A06)) == 0) {
            return false;
        }
        AudioFormat audioFormatA0D = A0D(vc.A0G, iA01, iA03);
        Jo joA01 = vl.A01();
        String[] strArr = A0z;
        if (strArr[3].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        A0z[7] = "wr15FegATdwNzOE";
        switch (A03(audioFormatA0D, joA01.A00)) {
            case 0:
                return false;
            case 1:
                return ((vc.A08 != 0 || vc.A09 != 0) && (this.A0f == 1)) ? false : true;
            case 2:
                return true;
            default:
                throw new IllegalStateException();
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00a3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x00b7 A[RETURN] */
    public final int A0o(VC vc) {
        if (A0L(271, 9, 71).equals(vc.A0W)) {
            if (!N1.A15(vc.A0C)) {
                MV.A07(A0L(7, 16, 21), A0L(85, 22, 59) + vc.A0C);
                return 0;
            }
            if (vc.A0C != 2) {
                boolean z = this.A0s;
                if (A0z[1].length() == 12) {
                    throw new RuntimeException();
                }
                String[] strArr = A0z;
                strArr[6] = "Bw2a5srSe";
                strArr[2] = "3FVt";
                if (!z || vc.A0C != 4) {
                    return 1;
                }
            }
            return 2;
        }
        if (!this.A0W && A0m(vc, this.A0E)) {
            return 2;
        }
        QG qg = this.A0j;
        String[] strArr2 = A0z;
        if (strArr2[6].length() != strArr2[2].length()) {
            A0z[7] = "BY0R3EI7a4MwoCm";
            if (qg.A0B(vc)) {
                return 2;
            }
            return 0;
        }
        String[] strArr3 = A0z;
        strArr3[6] = "QSALspWmy";
        strArr3[2] = "Vn1k";
        if (qg.A0B(vc)) {
            return 2;
        }
        return 0;
    }

    public final boolean A0p() {
        return A0K().A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final void A5i(VC vc, int i, int[] iArr) throws C1833Qh {
        int iA06;
        LZ[] lzArr;
        int i2;
        int iA07;
        int i3;
        int iIntValue;
        int iIntValue2;
        int[] iArr2 = iArr;
        int iA7f = i;
        if (A0L(271, 9, 71).equals(vc.A0W)) {
            AbstractC1722Ln.A07(N1.A15(vc.A0C));
            iA06 = N1.A06(vc.A0C, vc.A06);
            lzArr = A0j(vc.A0C) ? this.A0t : this.A0u;
            this.A0p.A0E(vc.A08, vc.A09);
            if (N1.A02 < 21 && vc.A06 == 8 && iArr2 == null) {
                String[] strArr = A0z;
                if (strArr[6].length() == strArr[2].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0z;
                strArr2[3] = "LMKFeEazs9KoiJg3dX";
                strArr2[5] = "3d4lOtTfogOvC64r6v";
                iArr2 = new int[6];
                int i4 = 0;
                while (true) {
                    int length = iArr2.length;
                    if (A0z[1].length() == 12) {
                        if (i4 >= length) {
                            break;
                        }
                        iArr2[i4] = i4;
                        i4++;
                    } else {
                        A0z[1] = "h";
                        if (i4 >= length) {
                            break;
                        }
                        iArr2[i4] = i4;
                        i4++;
                    }
                }
            }
            this.A0l.A0C(iArr2);
            LX lx = new LX(vc.A0G, vc.A06, vc.A0C);
            for (LZ lz : lzArr) {
                try {
                    LX lxA5g = lz.A5g(lx);
                    if (lz.AB3()) {
                        lx = lxA5g;
                    }
                } catch (LY e) {
                    throw new C1833Qh(e, vc);
                }
            }
            i3 = 0;
            iIntValue = lx.A02;
            i2 = lx.A03;
            iIntValue2 = N1.A01(lx.A01);
            iA07 = N1.A06(iIntValue, lx.A01);
        } else {
            iA06 = -1;
            lzArr = new LZ[0];
            i2 = vc.A0G;
            iA07 = -1;
            if (A0m(vc, this.A0E)) {
                i3 = 1;
                iIntValue = L8.A03((String) AbstractC1722Ln.A01(vc.A0W), vc.A0R);
                iIntValue2 = N1.A01(vc.A06);
            } else {
                i3 = 2;
                Pair<Integer, Integer> pairA09 = this.A0j.A09(vc);
                if (pairA09 == null) {
                    throw new C1833Qh(A0L(InterfaceC3669k1.c.b.h, 37, 118) + vc, vc);
                }
                iIntValue = ((Integer) pairA09.first).intValue();
                iIntValue2 = ((Integer) pairA09.second).intValue();
            }
        }
        String strA0L = A0L(0, 7, 95);
        if (iIntValue == 0) {
            throw new C1833Qh(A0L(143, 30, 41) + i3 + strA0L + vc, vc);
        }
        if (iIntValue2 == 0) {
            throw new C1833Qh(A0L(kotlin.fh.h1, 36, 46) + i3 + strA0L + vc, vc);
        }
        if (iA7f == 0) {
            iA7f = this.A0m.A7f(A01(i2, iIntValue2, iIntValue), iIntValue, i3, iA07 != -1 ? iA07 : 1, i2, vc.A05, this.A0r ? 8.0d : 1.0d);
        }
        this.A0W = false;
        R6 r6 = new R6(vc, iA06, i3, iA07, i2, iIntValue2, iIntValue, iA7f, lzArr, this.A0b);
        if (A0h()) {
            this.A0L = r6;
        } else {
            this.A0K = r6;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final void A6Y() {
        if (this.A0b) {
            this.A0b = false;
            flush();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final void A6v() {
        AbstractC1722Ln.A08(N1.A02 >= 21);
        AbstractC1722Ln.A08(this.A0T);
        if (this.A0b) {
            return;
        }
        this.A0b = true;
        flush();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final void A72() {
        if (N1.A02 < 25) {
            flush();
            return;
        }
        this.A0o.A00();
        this.A0n.A00();
        if (A0h()) {
            A0Q();
            if (this.A0k.A0J()) {
                this.A0D.pause();
            }
            this.A0D.flush();
            this.A0k.A0E();
            this.A0k.A0I(this.A0D, this.A0K.A04 == 2, this.A0K.A03, this.A0K.A05, this.A0K.A00);
            this.A0Y = true;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final long A8G(boolean z) {
        if (A0h() && !this.A0Y) {
            return A09(A08(Math.min(this.A0k.A0D(z), this.A0K.A08(A07()))));
        }
        if (A0z[0].length() == 24) {
            throw new RuntimeException();
        }
        A0z[7] = "q8RVGeKBIXt5NkT";
        return Long.MIN_VALUE;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final UW A9P() {
        return this.A0r ? this.A0G : A0I();
    }

    /* JADX WARN: Code duplicated, block: B:90:0x018d A[PHI: r2
  0x018d: PHI (r2v13 long) = (r2v7 long), (r2v14 long) binds: [B:102:0x01c3, B:89:0x018b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:92:0x019a  */
    /* JADX WARN: Code duplicated, block: B:94:0x019e  */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0125, code lost:
    
        if (r7 == 0) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0127, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x012f, code lost:
    
        if (r7 == 0) goto L72;
     */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean AAI(java.nio.ByteBuffer r12, long r13, int r15) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.SI.AAI(java.nio.ByteBuffer, long, int):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final void AAL() {
        this.A0Z = true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final boolean AAS() {
        return A0h() && this.A0k.A0L(A07());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final boolean AB7() {
        return !A0h() || (this.A0U && !AAS());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final void AID() {
        this.A0X = true;
        if (A0h()) {
            this.A0k.A0F();
            this.A0D.play();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final void AIF() throws C1839Qn {
        if (!this.A0U && A0h() && A0f()) {
            A0P();
            this.A0U = true;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final void AKY(VL vl) {
        if (this.A0E.equals(vl)) {
            return;
        }
        this.A0E = vl;
        if (this.A0b) {
            return;
        }
        flush();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final void AKZ(int i) {
        if (this.A01 != i) {
            this.A01 = i;
            this.A0T = i != 0;
            flush();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final void AKa(C1675Jq c1675Jq) {
        if (this.A0F.equals(c1675Jq)) {
            return;
        }
        int i = c1675Jq.A01;
        float f = c1675Jq.A00;
        if (this.A0D != null) {
            if (this.A0F.A01 != i) {
                this.A0D.attachAuxEffect(i);
            }
            if (i != 0) {
                this.A0D.setAuxEffectSendLevel(f);
            }
        }
        this.A0F = c1675Jq;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    @MetaExoPlayerCustomization
    public final void AKi(boolean z) {
        this.A0S = z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final void AKn(InterfaceC1836Qk interfaceC1836Qk) {
        this.A0I = interfaceC1836Qk;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final void AKv(UW uw) {
        UW uw2 = new UW(N1.A00(uw.A01, 0.1f, 8.0f), N1.A00(uw.A00, 0.1f, 8.0f));
        if (!this.A0r || N1.A02 < 23) {
            A0c(uw2, A0p());
        } else {
            A0b(uw2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final void AKy(QD qd) {
        this.A0H = qd;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final void AL0(AudioDeviceInfo audioDeviceInfo) {
        this.A0J = audioDeviceInfo == null ? null : new R3(audioDeviceInfo);
        if (this.A0D != null) {
            AudioTrack audioTrack = this.A0D;
            R3 r3 = this.A0J;
            if (A0z[1].length() == 12) {
                throw new RuntimeException();
            }
            A0z[4] = "TVwKDquzdZaj55ztHBjiT9RTXoYS6OEJ";
            R1.A00(audioTrack, r3);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final void AL6(boolean z) {
        A0c(A0I(), z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final boolean ALg(VC vc) {
        return A0o(vc) != 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    @MetaExoPlayerCustomization
    public final boolean ALi(int i, int i2) {
        if (N1.A15(i2)) {
            return i2 != 4 || N1.A02 >= 21;
        }
        return this.A0j != null && this.A0j.A0A(i2) && (i == -1 || i <= this.A0j.A08());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final void flush() {
        if (A0h()) {
            A0Q();
            if (this.A0k.A0J()) {
                this.A0D.pause();
            }
            if (A0l(this.A0D)) {
                Object objA01 = AbstractC1722Ln.A01(this.A0O);
                if (A0z[7].length() != 15) {
                    throw new RuntimeException();
                }
                A0z[0] = "fKqFQdt";
                ((RD) objA01).A01(this.A0D);
            }
            if (N1.A02 < 21 && !this.A0T) {
                this.A01 = 0;
            }
            C1832Qg c1832QgA0B = this.A0K.A0B();
            if (this.A0L != null) {
                this.A0K = this.A0L;
                if (A0z[7].length() != 15) {
                    A0z[4] = "g5yKq1FwVJXj3CcJHGy7F4n7ymxANttp";
                    this.A0L = null;
                } else {
                    String[] strArr = A0z;
                    strArr[6] = "zu2aRVclY";
                    strArr[2] = "noOD";
                    this.A0L = null;
                }
            }
            this.A0k.A0E();
            A0Z(this.A0D, this.A0h, this.A0I, c1832QgA0B);
            this.A0D = null;
        }
        this.A0o.A00();
        this.A0n.A00();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final void pause() {
        this.A0X = false;
        if (A0h() && this.A0k.A0K()) {
            this.A0D.pause();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1840Qo
    public final void setVolume(float f) {
        if (this.A00 != f) {
            this.A00 = f;
            A0R();
        }
    }
}
