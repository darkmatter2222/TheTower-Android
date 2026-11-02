package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.os.Message;
import android.util.Log;
import com.facebook.ads.AdError;
import com.facebook.ads.RewardedVideoAdExtendedListener;
import com.facebook.ads.S2SRewardedVideoAdListener;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.C3829se;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Jd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1664Jd implements InterfaceC2463gK {
    public static byte[] A05;
    public static String[] A06 = {"l1o30ubgNMqwIxdsvAhdwl", "uEolzpc8zYF03u8DLAeDfs0A9wQx2vsd", "zKwy", "mFz9Za5MD8BXE4Lkxv", "Wms6Ep20", "", "s6yiLC", "izOiniaIEQHycLDhhOkzL"};
    public boolean A00;
    public final InterfaceC2448g5 A01;
    public final HandlerC2455gC A02;
    public final C1663Jc A03;
    public final C1618Hi A04;

    static {
        A01();
    }

    public C1664Jd(C1618Hi c1618Hi, C1663Jc c1663Jc, InterfaceC2448g5 interfaceC2448g5, HandlerC2455gC handlerC2455gC) {
        this.A04 = c1618Hi;
        this.A03 = c1663Jc;
        this.A01 = interfaceC2448g5;
        this.A02 = handlerC2455gC;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 116);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{57, Ascii.FS, 88, Ascii.ETB, Ascii.SUB, Ascii.DC2, Ascii.GS, Ascii.ESC, Ascii.FF, 88, 17, Ascii.VT, 88, Ascii.SYN, Ascii.CR, Ascii.DC4, Ascii.DC4, 56, 47, 52, 62, 54, 63, 37, 63, 34, 46, 40, 59, 41, 37, 49, 63, 35, 9, Ascii.CR, Ascii.SO, 58, 43, 38, 42, 33, 44, 42, 1, 42, 59, 56, 32, Base64.padSymbol, 36, 98, 101, 127, 116, 110, 121, 121, 100, 121, 116, 104, 100, 111, 110, 116, 96, 110, 114, Ascii.SO, 9, 19, Ascii.CAN, Ascii.NAK, 17, Ascii.CAN, 17, Ascii.SO, 3, 2, 8, Ascii.CAN, 3, Ascii.DC2, Ascii.NAK, 6, 19, Ascii.SO, 8, 9, Ascii.CAN, Ascii.FF, 2, Ascii.RS, 111, 108, 109, 100, 124, 106, 109, 117, 98, 111, 106, 103, 98, 119, 106, 108, 109, 124, 119, 106, 110, 102, 124, 104, 102, 122, 59, 19, 5, 5, Ascii.ETB, 17, 19, 76, 86, 96, 68, 94, 94, 68, 67, 74, Ascii.CR, 79, 88, 67, 73, 65, 72, Ascii.CR, 75, 66, 95, Ascii.CR, SignedBytes.MAX_POWER_OF_TWO, 72, 94, 94, 76, 74, 72, 8, 44, 54, 54, 44, 43, 34, 101, 39, 48, 43, 33, 41, 32, 101, 35, 42, 55, 101, 40, 32, 54, 54, 36, 34, 32, 107, 90, 93, 91, 86, 76, 91, 91, 70, 91, 86, 68, 76, 90, 90, 72, 78, 76, 86, 66, 76, 80, 5, Ascii.DC4, Ascii.CR};
        String[] strArr = A06;
        if (strArr[6].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A06;
        strArr2[1] = "11z8nLjTbJ8kXGgkHyQ0qsLYj80GB6ec";
        strArr2[2] = "E5wc";
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2463gK
    public final Bundle A60(String str) {
        return AbstractC2470gR.A03(str, this.A03);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2463gK
    public final void A6U() {
        this.A02.A0F(2002, null);
        this.A02.A0C();
        this.A03.A02(null);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2463gK
    public final int A91() {
        return 2000;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2463gK
    public final void AAN(Message message) {
        com.facebook.ads.Ad adA7K = this.A03.A7K();
        String strA00 = A00(203, 3, 16);
        if (adA7K == null) {
            this.A04.A08().ABz(strA00, AbstractC2786lf.A0K, new C2787lg(A00(0, 17, 12)));
            return;
        }
        int i = message.what;
        String strA01 = A00(120, 9, 2);
        String strA02 = A00(17, 17, 14);
        switch (i) {
            case 10:
            case 2103:
                EnumC2814m8.A05(EnumC2814m8.A0A, EnumC2814m8.A07);
                Bundle bundle = message.getData().getBundle(strA02);
                if (bundle != null) {
                    int i2 = bundle.getInt(A00(51, 18, 95));
                    String string = bundle.getString(A00(182, 21, 125));
                    AdError adError = new AdError(i2, string);
                    this.A01.AKj(adError);
                    if (this.A03.A04 != null) {
                        this.A03.A04.onError(adA7K, adError);
                    } else {
                        Log.e(A00(34, 17, 59), string);
                    }
                } else {
                    this.A01.AKe(EnumC2447g4.A05);
                    this.A04.A08().ABz(strA00, AbstractC2786lf.A0V, new C2787lg(A00(155, 27, 49), strA01 + message));
                }
                this.A03.A02(null);
                return;
            case 2100:
                this.A01.AKo();
                Bundle bundle2 = message.getData().getBundle(strA02);
                if (bundle2 != null) {
                    this.A03.A01 = bundle2.getLong(A00(94, 26, 87));
                    C1663Jc c1663Jc = this.A03;
                    int i3 = bundle2.getInt(A00(69, 25, 51));
                    String[] strArr = A06;
                    if (strArr[6].length() == strArr[7].length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A06;
                    strArr2[6] = "eimvHB";
                    strArr2[7] = "9nAYjps8XJWkdVKe7ORqJ";
                    c1663Jc.A00 = i3;
                } else {
                    this.A04.A08().ABz(strA00, AbstractC2786lf.A0V, new C2787lg(A00(129, 26, 89), strA01 + message));
                }
                this.A03.A02(null);
                break;
            case 2106:
                this.A03.A02(null);
                break;
            case C3829se.h /* 2110 */:
                this.A01.AL4();
                break;
        }
        if (this.A03.A04 == null) {
            return;
        }
        switch (message.what) {
            case 2100:
                EnumC2814m8.A05(EnumC2814m8.A0A, EnumC2814m8.A09);
                if (this.A00) {
                    this.A00 = false;
                    return;
                } else {
                    this.A03.A04.onAdLoaded(adA7K);
                    return;
                }
            case 2104:
                this.A04.A0F().A3g();
                this.A03.A04.onAdClicked(adA7K);
                return;
            case 2105:
                this.A03.A04.onLoggingImpression(adA7K);
                return;
            case 2106:
                if (this.A03.A04 instanceof RewardedVideoAdExtendedListener) {
                    ((RewardedVideoAdExtendedListener) this.A03.A04).onRewardedVideoActivityDestroyed();
                    return;
                }
                return;
            case C3829se.h /* 2110 */:
                this.A04.A0F().ABl();
                this.A03.A04.onRewardedVideoClosed();
                return;
            case 3000:
                this.A04.A0F().A3y();
                this.A03.A04.onRewardedVideoCompleted();
                return;
            case 3001:
                this.A04.A0F().ACl();
                if (this.A03.A04 instanceof S2SRewardedVideoAdListener) {
                    ((S2SRewardedVideoAdListener) this.A03.A04).onRewardServerSuccess();
                    return;
                }
                return;
            case 3002:
                this.A04.A0F().ACk();
                if (this.A03.A04 instanceof S2SRewardedVideoAdListener) {
                    ((S2SRewardedVideoAdListener) this.A03.A04).onRewardServerFailed();
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2463gK
    public final void AL5(boolean z) {
        this.A00 = z;
    }
}
