package com.facebook.ads.redexgen.X;

import android.os.Handler;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.google.common.primitives.SignedBytes;
import com.tapjoy.TapjoyConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class KC implements InterfaceC2947oJ {
    public static byte[] A0E;
    public static String[] A0F = {"Um", "5O6Pi5UhekEiJBNtL2", "ByBiFstlzS", "VNZICTTmM6bBZ", "I3ykA2cHAONkN", "xnUs6VMzToWHuFoC", "Qkjm3fg24P6DD7pmZ7L4neN1zLjqdukp", "LFB8Dcv49A6aPeUL"};
    public InterfaceC2445g2 A00;
    public C2805ly A01;
    public String A02;
    public boolean A03;
    public final int A04;
    public final Handler A05;
    public final AdSize A06;
    public final C2373es A07;
    public final C1618Hi A08;
    public final InterfaceC2884nG A09;
    public final EnumC2925nx A0A;
    public final C2948oK A0B;
    public final Runnable A0C;
    public final String A0D;

    static {
        A05();
        AbstractC3088qe.A02();
    }

    public KC(C1618Hi c1618Hi, String str, EnumC2925nx enumC2925nx, AdSize adSize, int i) {
        this.A08 = c1618Hi;
        this.A0D = str;
        this.A0A = enumC2925nx;
        this.A06 = adSize;
        this.A04 = i;
        this.A0B = new C2948oK(this.A08);
        this.A0B.A0R(this);
        this.A07 = new C2373es();
        this.A03 = true;
        this.A05 = new Handler();
        this.A0C = new G2<KC>(this) { // from class: com.facebook.ads.redexgen.X.7b
            public static String[] A00 = {"ByMq6MLqhjUJsdWB3RBIp", "zuOr3", "msyHKBX3wHVeYE5obxbctQprcgEzI02t", "I3sOgeRwcNYGF4oixOV5Q17", "dcB", "ibtCqc8qysdz0E5AMIDmPhuL1XZA", "mNtKCg4kzaH6sXUtb2oDuqx2", "ObFvkEusatMYzjWaq72f4FkWXHrQjerH"};

            {
                super(this);
            }

            @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
            public final void A07() {
                KC kcA08 = A08();
                if (kcA08 == null) {
                    return;
                }
                C1618Hi c1618Hi2 = kcA08.A08;
                String[] strArr = A00;
                if (strArr[3].length() == strArr[4].length()) {
                    throw new RuntimeException();
                }
                A00[5] = "SiVLKh";
                if (C3106qw.A02(c1618Hi2)) {
                    kcA08.A07();
                } else {
                    kcA08.A05.postDelayed(kcA08.A0C, 5000L);
                }
            }
        };
        this.A09 = c1618Hi.A0A();
        DynamicLoaderFactory.makeLoader(this.A08).getInitApi().onAdLoadInvoked(this.A08);
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A0F[2].length() != 10) {
                throw new RuntimeException();
            }
            A0F[1] = "uoxYJqIRleds8fPMMv";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 87);
            i4++;
        }
    }

    private List<C1716Lh> A04() {
        C2805ly c2805ly = this.A01;
        final ArrayList arrayList = new ArrayList(c2805ly.A02());
        for (C2803lw c2803lwA04 = c2805ly.A04(); c2803lwA04 != null; c2803lwA04 = c2805ly.A04()) {
            InterfaceC2368en interfaceC2368enA00 = this.A07.A00(this.A08, AdPlacementType.NATIVE);
            if (interfaceC2368enA00 != null && interfaceC2368enA00.A9N() == AdPlacementType.NATIVE) {
                final C1716Lh c1716Lh = (C1716Lh) interfaceC2368enA00;
                c1716Lh.A0L(this.A08, new KD() { // from class: com.facebook.ads.redexgen.X.7c
                    @Override // com.facebook.ads.redexgen.X.InterfaceC2383f2
                    public final void AG0(C1716Lh c1716Lh2) {
                        arrayList.add(c1716Lh);
                    }
                }, this.A09, new C2442fz(c2803lwA04.A04(), c2805ly.A05(), this.A0D, c2805ly.A05().A0C()), GT.A0K());
            }
        }
        return arrayList;
    }

    public static void A05() {
        byte[] bArr = {SignedBytes.MAX_POWER_OF_TWO, 65, -14, 66, 62, 51, 53, 55, 63, 55, SignedBytes.MAX_POWER_OF_TWO, 70, -14, 59, SignedBytes.MAX_POWER_OF_TWO, -14, 68, 55, 69, 66, 65, SignedBytes.MAX_POWER_OF_TWO, 69, 55};
        if (A0F[0].length() != 2) {
            throw new RuntimeException();
        }
        A0F[1] = "dKV76OJFyRmVPWeRzZ";
        A0E = bArr;
    }

    public final void A06() {
        this.A03 = false;
        this.A05.removeCallbacks(this.A0C);
    }

    public final void A07() {
        try {
            this.A0B.A0Q(new C2945oH(this.A08, this.A0D, this.A06 != null ? new C3062qE(this.A06.getWidth(), this.A06.getHeight()) : null, this.A0A, this.A04, new C2929o1(this.A08, null, null, null), AbstractC3068qK.A01(C2863mv.A0L(this.A08)), this.A02, null, new K5()));
        } catch (C2923nu e) {
            AEr(C2922nt.A02(e));
        }
    }

    public final void A08(InterfaceC2445g2 interfaceC2445g2) {
        this.A00 = interfaceC2445g2;
    }

    public final void A09(String str) {
        this.A02 = str;
    }

    public final boolean A0A() {
        return this.A01 == null || this.A01.A0H();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2947oJ
    public final void AEr(C2922nt c2922nt) {
        if (this.A03) {
            this.A05.postDelayed(this.A0C, TapjoyConstants.SESSION_ID_INACTIVITY_TIME);
        }
        InterfaceC2445g2 interfaceC2445g2 = this.A00;
        if (A0F[2].length() != 10) {
            throw new RuntimeException();
        }
        A0F[2] = "yGn7NPCZVX";
        if (interfaceC2445g2 != null) {
            this.A00.AEr(c2922nt);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2947oJ
    public final void AHE(GG gg) {
        C2805ly c2805lyA00 = gg.A00();
        if (c2805lyA00 == null) {
            throw new IllegalStateException(A03(0, 24, 123));
        }
        if (this.A03) {
            long jA0A = c2805lyA00.A05().A0A();
            if (jA0A == 0) {
                jA0A = TapjoyConstants.SESSION_ID_INACTIVITY_TIME;
            }
            this.A05.postDelayed(this.A0C, jA0A);
        }
        this.A01 = c2805lyA00;
        List<C1716Lh> listA04 = A04();
        if (this.A00 != null) {
            if (listA04.isEmpty()) {
                this.A00.AEr(C2922nt.A01(AdErrorType.NO_FILL, A03(0, 0, 68)));
            } else {
                this.A00.AG2(listA04);
            }
        }
    }
}
