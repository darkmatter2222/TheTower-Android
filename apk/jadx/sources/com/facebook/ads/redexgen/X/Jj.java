package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.os.Message;
import android.util.Log;
import androidx.core.view.PointerIconCompat;
import com.facebook.ads.AdError;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.facebook.ads.InterstitialAdListener;
import com.google.common.base.Ascii;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Jj implements InterfaceC2463gK {
    public static byte[] A05;
    public static String[] A06 = {"PyT2XUnl", "3EmvKqRjFYzRkizxlD8eotggUBC8U5J9", "Ib6uyfMRsh5ysHZ3i8ryXk3sO16qq9Ys", "q2kkzr74cnXMazMYxmC9c", "9U931lGThJH7Qz6wctlm6EKEWHFtvDAV", "f15MquYM06llw3BWZWASFwAp5egI2HKX", "yMUgiPhi", "t3xZZPMR"};
    public boolean A00;
    public final InterfaceC2448g5 A01;
    public final C1680Jv A02;
    public final HandlerC2455gC A03;
    public final C1618Hi A04;

    static {
        A01();
    }

    public Jj(C1618Hi c1618Hi, C1680Jv c1680Jv, InterfaceC2448g5 interfaceC2448g5, HandlerC2455gC handlerC2455gC) {
        this.A04 = c1618Hi;
        this.A02 = c1680Jv;
        this.A01 = interfaceC2448g5;
        this.A03 = handlerC2455gC;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 57);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{-77, -42, -110, -31, -44, -36, -41, -43, -26, -110, -37, -27, -110, -32, -25, -34, -34, -115, -96, -103, -113, -105, -112, -86, -112, -93, -97, -99, -116, -98, -86, -106, -112, -92, -74, -78, -79, -27, -44, -39, -43, -34, -45, -43, -66, -43, -28, -25, -33, -30, -37, -87, -82, -76, -65, -91, -78, -78, -81, -78, -65, -93, -81, -92, -91, -65, -85, -91, -71, 4, 7, 6, -1, Ascii.ETB, 1, 6, Ascii.SO, -7, 4, 1, -4, -7, Ascii.FF, 1, 7, 6, Ascii.ETB, Ascii.FF, 1, 5, -3, Ascii.ETB, 3, -3, 17, -61, -37, -23, -23, -41, -35, -37, -80, -106, -66, -38, -28, -28, -38, -33, -40, -111, -45, -26, -33, -43, -35, -42, -111, -41, -32, -29, -111, -34, -42, -28, -28, -46, -40, -42, -97, -95, -94, -96, -83, -109, -96, -96, -99, -96, -83, -101, -109, -95, -95, -113, -107, -109, -83, -103, -109, -89, 4, 19, Ascii.FF};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2463gK
    public final Bundle A60(String str) {
        return AbstractC2470gR.A02(str, this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2463gK
    public final void A6U() {
        this.A03.A0F(PointerIconCompat.TYPE_NO_DROP, null);
        this.A03.A0C();
        this.A02.A0D(null);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2463gK
    public final int A91() {
        return 1010;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:19:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:21:0x00b5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:27:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:29:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:31:0x0109 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x010a  */
    /* JADX WARN: Code duplicated, block: B:33:0x011d  */
    /* JADX WARN: Code duplicated, block: B:35:0x0137  */
    /* JADX WARN: Code duplicated, block: B:37:0x014b  */
    /* JADX WARN: Code duplicated, block: B:39:0x0153  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2463gK
    public final void AAN(Message message) {
        int i;
        String[] strArr;
        C1680Jv c1680Jv;
        InterstitialAd interstitialAdA7K = this.A02.A7K();
        String strA00 = A00(152, 3, kotlin.fh.g1);
        if (interstitialAdA7K == null) {
            this.A04.A08().ABz(strA00, AbstractC2786lf.A0K, new C2787lg(A00(0, 17, 57)));
            return;
        }
        int i2 = message.what;
        String strA01 = A00(95, 9, 61);
        String strA02 = A00(104, 27, 56);
        String strA03 = A00(17, 17, 18);
        switch (i2) {
            case 10:
            case IronSourceError.ERROR_RV_SHOW_CALLED_WRONG_STATE /* 1023 */:
                EnumC2814m8.A04(EnumC2814m8.A0A, EnumC2814m8.A07);
                Bundle bundle = message.getData().getBundle(strA03);
                if (bundle != null) {
                    int i3 = bundle.getInt(A00(51, 18, 39));
                    String string = bundle.getString(A00(131, 21, 21));
                    AdError adError = new AdError(i3, string);
                    this.A01.AKj(adError);
                    if (this.A02.A7O() != null) {
                        InterstitialAdListener interstitialAdListenerA7O = this.A02.A7O();
                        String[] strArr2 = A06;
                        if (strArr2[3].length() != strArr2[7].length()) {
                            A06[2] = "38H5G1BKqQclfZgbDo4KbeEy0dV8wgme";
                            interstitialAdListenerA7O.onError(interstitialAdA7K, adError);
                        } else {
                            String[] strArr3 = A06;
                            strArr3[6] = "pEqkzk2o";
                            strArr3[0] = "rqU6ms8L";
                            interstitialAdListenerA7O.onError(interstitialAdA7K, adError);
                        }
                    } else {
                        Log.e(A00(34, 17, 55), string);
                    }
                } else {
                    this.A01.AKe(EnumC2447g4.A05);
                    this.A04.A08().ABz(strA00, AbstractC2786lf.A0V, new C2787lg(strA02, strA01 + message));
                }
                this.A02.A0D(null);
                return;
            case 1020:
                this.A01.AKo();
                Bundle bundle2 = message.getData().getBundle(strA03);
                if (bundle2 != null) {
                    this.A02.A0C(bundle2.getLong(A00(69, 26, 127)));
                } else {
                    this.A04.A08().ABz(strA00, AbstractC2786lf.A0V, new C2787lg(strA02, strA01 + message));
                }
                this.A02.A0D(null);
                break;
            case IronSourceError.ERROR_RV_SHOW_CALLED_DURING_SHOW /* 1022 */:
                this.A01.AL4();
                break;
        }
        if (this.A02.A7O() == null) {
            return;
        }
        switch (message.what) {
            case 1020:
                EnumC2814m8.A04(EnumC2814m8.A0A, EnumC2814m8.A09);
                if (this.A00) {
                    this.A00 = false;
                    return;
                } else {
                    this.A02.A7O().onAdLoaded(interstitialAdA7K);
                    return;
                }
            case 1021:
                this.A04.A0F().AAz();
                InterstitialAdListener interstitialAdListenerA7O2 = this.A02.A7O();
                if (A06[2].charAt(18) != 'n') {
                    String[] strArr4 = A06;
                    strArr4[1] = "IMuRostxJ5htnzhiOcsxYcu1iidsGUgj";
                    strArr4[5] = "ubJ4M5GxN6FfPval4rtOnbhl8vPUgGKC";
                    interstitialAdListenerA7O2.onInterstitialDisplayed(interstitialAdA7K);
                    return;
                }
                throw new RuntimeException();
            case IronSourceError.ERROR_RV_SHOW_CALLED_DURING_SHOW /* 1022 */:
                this.A04.A0F().AAy();
                this.A02.A7O().onInterstitialDismissed(interstitialAdA7K);
                return;
            case IronSourceError.ERROR_RV_SHOW_CALLED_WRONG_STATE /* 1023 */:
            default:
                if (this.A02.A04() == null) {
                    return;
                }
                i = message.what;
                strArr = A06;
                if (strArr[3].length() != strArr[7].length()) {
                    A06[4] = "YO9dGq40ZDljeOjTjHA4uB3VVKU9R56I";
                    switch (i) {
                        case 3000:
                            this.A04.A0F().A3y();
                            this.A02.A04().onRewardedAdCompleted();
                            return;
                        case 3001:
                            this.A04.A0F().ACl();
                            c1680Jv = this.A02;
                            if (A06[2].charAt(18) == 'n') {
                                c1680Jv.A04().onRewardedAdServerSucceeded();
                                return;
                            }
                            String[] strArr5 = A06;
                            strArr5[1] = "4ubpoteMIucGsWyTMsTtOH4ZOdBl9bHr";
                            strArr5[5] = "Xxx4qDjyhZoijrhiIp4u1mFMOEMCLZoL";
                            c1680Jv.A04().onRewardedAdServerSucceeded();
                            return;
                        case 3002:
                            this.A04.A0F().ACk();
                            this.A02.A04().onRewardedAdServerFailed();
                            return;
                        default:
                            return;
                    }
                }
                throw new RuntimeException();
            case 1024:
                this.A04.A0F().A3g();
                this.A02.A7O().onAdClicked(interstitialAdA7K);
                return;
            case 1025:
                this.A02.A7O().onLoggingImpression(interstitialAdA7K);
                return;
            case IronSourceError.ERROR_RV_LOAD_DURING_LOAD /* 1026 */:
                this.A04.A0F().AAx();
                if (this.A02.A7O() instanceof InterstitialAdExtendedListener) {
                    C1680Jv c1680Jv2 = this.A02;
                    if (A06[2].charAt(18) != 'n') {
                        A06[2] = "QiAUsDkapNh1fTZA9J8Gsz0JLC17Ghy8";
                        ((InterstitialAdExtendedListener) c1680Jv2.A7O()).onInterstitialActivityDestroyed();
                        if (this.A02.A04() == null) {
                            return;
                        }
                        i = message.what;
                        strArr = A06;
                        if (strArr[3].length() != strArr[7].length()) {
                            A06[4] = "YO9dGq40ZDljeOjTjHA4uB3VVKU9R56I";
                            switch (i) {
                                case 3000:
                                    this.A04.A0F().A3y();
                                    this.A02.A04().onRewardedAdCompleted();
                                    return;
                                case 3001:
                                    this.A04.A0F().ACl();
                                    c1680Jv = this.A02;
                                    if (A06[2].charAt(18) == 'n') {
                                        c1680Jv.A04().onRewardedAdServerSucceeded();
                                        return;
                                    }
                                    String[] strArr6 = A06;
                                    strArr6[1] = "4ubpoteMIucGsWyTMsTtOH4ZOdBl9bHr";
                                    strArr6[5] = "Xxx4qDjyhZoijrhiIp4u1mFMOEMCLZoL";
                                    c1680Jv.A04().onRewardedAdServerSucceeded();
                                    return;
                                case 3002:
                                    this.A04.A0F().ACk();
                                    this.A02.A04().onRewardedAdServerFailed();
                                    return;
                                default:
                                    return;
                            }
                        }
                    }
                } else {
                    if (this.A02.A04() == null) {
                        return;
                    }
                    i = message.what;
                    strArr = A06;
                    if (strArr[3].length() != strArr[7].length()) {
                        A06[4] = "YO9dGq40ZDljeOjTjHA4uB3VVKU9R56I";
                        switch (i) {
                            case 3000:
                                this.A04.A0F().A3y();
                                this.A02.A04().onRewardedAdCompleted();
                                return;
                            case 3001:
                                this.A04.A0F().ACl();
                                c1680Jv = this.A02;
                                if (A06[2].charAt(18) == 'n') {
                                    c1680Jv.A04().onRewardedAdServerSucceeded();
                                    return;
                                }
                                String[] strArr7 = A06;
                                strArr7[1] = "4ubpoteMIucGsWyTMsTtOH4ZOdBl9bHr";
                                strArr7[5] = "Xxx4qDjyhZoijrhiIp4u1mFMOEMCLZoL";
                                c1680Jv.A04().onRewardedAdServerSucceeded();
                                return;
                            case 3002:
                                this.A04.A0F().ACk();
                                this.A02.A04().onRewardedAdServerFailed();
                                return;
                            default:
                                return;
                        }
                    }
                }
                throw new RuntimeException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2463gK
    public final void AL5(boolean z) {
        this.A00 = z;
    }
}
