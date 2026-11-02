package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.Pair;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.oK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2948oK {
    public static byte[] A08;
    public static final ThreadFactoryC3089qf A09;
    public static final Executor A0A;
    public static final AtomicReference<InterfaceC2952oO> A0B;
    public long A00;
    public long A01;
    public InterfaceC2947oJ A02;
    public Map<String, String> A03;
    public final C2479ga A04;
    public final C1618Hi A05;
    public final C2949oL A06;
    public final String A07;

    static {
        A0B();
        A09 = new ThreadFactoryC3089qf();
        A0A = Executors.newCachedThreadPool(A09);
        A0B = new AtomicReference<>();
    }

    public C2948oK(C1618Hi c1618Hi) {
        this(c1618Hi, AbstractC2480gb.A00(c1618Hi.A02()));
    }

    public C2948oK(C1618Hi c1618Hi, C2479ga c2479ga) {
        this.A01 = -1L;
        this.A00 = -1L;
        this.A05 = c1618Hi;
        this.A06 = C2949oL.A00();
        this.A07 = AbstractC2953oP.A01(c1618Hi);
        this.A04 = c2479ga;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public GJ A03(long j, C2945oH c2945oH) {
        return new GJ(this, c2945oH, j);
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 80);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0A() {
        if (this.A05 == null || !C2114af.A0A(this.A05)) {
            return;
        }
        C2787lg c2787lg = new C2787lg(A06(8, 5, kotlin.fh.h1));
        c2787lg.A05(1);
        this.A05.A08().ABz(A06(86, 7, 111), AbstractC2786lf.A1x, c2787lg);
    }

    public static void A0B() {
        A08 = new byte[]{56, 63, 50, 56, 105, 63, 62, 57, 122, 105, 107, 119, 117, 78, 65, 68, 72, 67, 89, 82, 95, 72, 92, 88, 72, 94, 89, 82, 68, 73, 98, 88, Ascii.VT, 121, 101, 17, Ascii.VT, 100, 101, 10, 108, 99, 102, 102, 10, 88, 79, 73, 79, 67, 92, 79, 78, Ascii.DC4, 53, 122, Ascii.FS, 51, 54, 54, 122, 63, 40, 40, 53, 40, 122, 57, 53, 62, 63, 122, 1, 127, 41, 7, 122, 127, 41, Ascii.SI, Ascii.CR, 6, Ascii.CR, Ascii.SUB, 1, Ascii.VT, 81, 90, 75, 72, 80, 77, 84, 40, 41, 0, 47, 42, 42, Ascii.SO, 41, 41, 45, 41, 43, 54, 47, 48, Base64.padSymbol, 60};
    }

    private void A0C(int i, String str) {
        String strA06 = A06(37, 16, 122);
        String strA07 = A06(0, 8, 90);
        String strA08 = A06(93, 10, 22);
        AbstractC2933o5.A05(strA08, strA06, strA07);
        AbstractC2933o5.A04(strA08, String.format(Locale.US, A06(53, 26, 10), Integer.valueOf(i), str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0D(C2922nt c2922nt) {
        if (this.A02 != null) {
            this.A02.AEr(c2922nt);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0E(C2922nt c2922nt) {
        ExecutorC3079qV.A00(new GH(this, c2922nt));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0L(GG gg) {
        if (this.A02 != null) {
            this.A02.AHE(gg);
        } else {
            if (gg.A00() == null || gg.A00().A06() == null) {
                return;
            }
            C2988oz.A00(this.A05).A0D(gg.A00().A06().toString(), gg.A00().A0B());
        }
    }

    private void A0M(GG gg) {
        InterfaceC2761lG interfaceC2761lGA06;
        ExecutorC3079qV.A00(new GI(this, gg));
        if (!C2863mv.A2g(this.A05) || (interfaceC2761lGA06 = this.A05.A06()) == null) {
            return;
        }
        interfaceC2761lGA06.A7D();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0N(String str, long j, C2945oH c2945oH) {
        try {
            try {
                C2951oN c2951oNA07 = this.A06.A07(this.A05, str, j);
                C2805ly c2805lyA00 = c2951oNA07.A00();
                if (c2805lyA00 != null) {
                    C2863mv.A0T(this.A05).A39(c2805lyA00.A0A());
                    if (C2863mv.A0w(this.A05) && c2805lyA00.A08() != null) {
                        AbstractC2815m9.A04(this.A05.A02(), c2805lyA00.A08());
                    }
                    if (C2863mv.A0x(this.A05) && c2805lyA00.A0C() != null) {
                        AbstractC2815m9.A05(this.A05.A02(), c2805lyA00.A0C());
                    }
                    this.A05.A08().ADG();
                    this.A04.A0N(c2805lyA00.A07());
                    AbstractC2944oG.A05(c2805lyA00.A05().A0B(), c2945oH);
                    C3103qt.A01(this.A05, A0A, c2805lyA00);
                    C2787lg c2787lg = new C2787lg(A06(30, 7, 123) + C3046py.A02());
                    c2787lg.A06(1);
                    c2787lg.A0A(false);
                    this.A05.A08().AD0(A06(79, 7, 56), AbstractC2786lf.A1W, c2787lg);
                }
                switch (C2946oI.A00[c2951oNA07.A01().ordinal()]) {
                    case 1:
                        GG gg = (GG) c2951oNA07;
                        if (c2805lyA00 != null) {
                            if (c2805lyA00.A05().A0E()) {
                                AbstractC2944oG.A07(str, c2945oH);
                            }
                            String str2 = this.A03 != null ? this.A03.get(A06(13, 17, 93)) : null;
                            if (!TextUtils.isEmpty(c2951oNA07.A02()) && !TextUtils.isEmpty(str2)) {
                                this.A05.A03().AK0(this.A05, str2, c2951oNA07.A02());
                            }
                        }
                        this.A05.A0F().A3u(C3076qS.A01(this.A01), C3076qS.A02(this.A01, this.A00));
                        A0M(gg);
                        break;
                    case 2:
                        GF gf = (GF) c2951oNA07;
                        String strA04 = gf.A04();
                        AdErrorType adErrorTypeAdErrorTypeFromCode = AdErrorType.adErrorTypeFromCode(gf.A03(), AdErrorType.ERROR_MESSAGE);
                        A0C(gf.A03(), strA04);
                        if (strA04 == null) {
                            strA04 = str;
                        }
                        this.A05.A0F().A3t(C3076qS.A01(this.A01), adErrorTypeAdErrorTypeFromCode.getErrorCode(), strA04, adErrorTypeAdErrorTypeFromCode.isPublicError());
                        A0E(C2922nt.A01(adErrorTypeAdErrorTypeFromCode, strA04));
                        break;
                    default:
                        AdErrorType adErrorType = AdErrorType.UNKNOWN_RESPONSE;
                        this.A05.A0F().A3t(C3076qS.A01(this.A01), adErrorType.getErrorCode(), str, adErrorType.isPublicError());
                        A0E(C2922nt.A01(adErrorType, str));
                        break;
                }
            } catch (Exception e) {
                e = e;
                String message = e.getMessage();
                AdErrorType adErrorType2 = AdErrorType.PARSER_FAILURE;
                this.A05.A0F().A3t(C3076qS.A01(this.A01), adErrorType2.getErrorCode(), message, adErrorType2.isPublicError());
                A0E(C2922nt.A01(adErrorType2, message));
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0O(String str, long j, C2945oH c2945oH) {
        A0A.execute(new GK(this, str, j, c2945oH));
    }

    private boolean A0P(C2945oH c2945oH) {
        Pair<String, String> pairA0B;
        String string = c2945oH.A06().toString();
        if (C2988oz.A00(this.A05).A0F(string)) {
            return false;
        }
        int iA0A = C2988oz.A00(this.A05).A0A(string);
        int iA0H = C2863mv.A0H(this.A05);
        int iA09 = C2988oz.A00(this.A05).A09(string);
        if ((iA0A < iA0H && iA0A <= iA09) || (pairA0B = C2988oz.A00(this.A05).A0B(c2945oH.A06().toString())) == null || pairA0B.second == null || pairA0B.first == null) {
            return false;
        }
        A0O(pairA0B.second.toString(), 0L, c2945oH);
        return true;
    }

    public final void A0Q(C2945oH c2945oH) {
        this.A01 = System.currentTimeMillis();
        C2796lp.A0B(this.A05);
        A0B.get();
        if (0 != 0) {
            throw new NullPointerException(A06(103, 7, 9));
        }
        if (C2863mv.A00(this.A05) <= 0 || !A0P(c2945oH)) {
            if (!AbstractC2944oG.A08(c2945oH)) {
                A0A.execute(new GL(this, c2945oH));
                return;
            }
            ExecutorC3091qh.A06.execute(new GM(this));
            String strA02 = AbstractC2944oG.A02(c2945oH);
            if (strA02 != null) {
                this.A05.A0F().AM0();
                A0O(strA02, 0L, c2945oH);
            } else {
                AdErrorType adErrorType = AdErrorType.LOAD_TOO_FREQUENTLY;
                this.A05.A0F().A3t(C3076qS.A01(this.A01), adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage(), adErrorType.isPublicError());
                A0E(C2922nt.A01(adErrorType, null));
            }
        }
    }

    public final void A0R(InterfaceC2947oJ interfaceC2947oJ) {
        this.A02 = interfaceC2947oJ;
    }
}
