package com.facebook.ads.redexgen.X;

import android.content.Context;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedAdListener;
import com.facebook.ads.internal.api.InterstitialAdApi;
import com.facebook.ads.internal.context.Repairable;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.UUID;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.jq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2676jq implements InterstitialAdApi, Repairable {
    public static byte[] A04;
    public static String[] A05 = {"S822El9zG6GuADGrtluuLX363osWhxiG", "ZFI3hp6NIHNPBZ8p7tKJKM6DxTur89gU", "rKe2xKovfMLHVnc2kJBHIfRtW7KI2joW", "CTsEdbmp9bu3ZhSS7yZH02ALmjP1FNtP", "mPYAOoIIU9PuPwOlU3lFT13mhy9mIxzC", "", "", "HqZNdyzgU2LJRhG9zHJvoyCPzWSUAGCn"};
    public final InterstitialAd A00;
    public final C1680Jv A01;
    public final C7Z A02;
    public final C1618Hi A03;

    static {
        A01();
    }

    public C2676jq(Context context, String str, InterstitialAd interstitialAd) {
        String string;
        this.A00 = interstitialAd;
        if (context instanceof C1618Hi) {
            this.A03 = (C1618Hi) context;
            string = this.A03.A0F().getId();
        } else {
            string = UUID.randomUUID().toString();
            this.A03 = C2673jn.A06(context, string);
        }
        this.A03.A0F().A3p(AdPlacementType.INTERSTITIAL.toString(), str);
        this.A01 = new C1680Jv(this.A03, interstitialAd, str);
        this.A03.A0O(this);
        this.A02 = new C7Z(this.A01, string);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] - i3;
            if (A05[0].charAt(22) != '3') {
                throw new RuntimeException();
            }
            A05[4] = "dLq0XFJawohP2A9uDPm8W8ZKhW9iXRhW";
            bArrCopyOfRange[i4] = (byte) (i5 - 126);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{-31, -30, -31, Ascii.DC4, Ascii.NAK, -33, 17, -28, -71, -23, -71, -75, -69, -23, -66, -70, 36, 38, 81, 36, 85, 32, 81, 81, -49, -12, -6, -21, -8, -12, -25, -14, -90, -21, -8, -8, -11, -8, -76, -112, -29, 8, Ascii.SO, -1, Ascii.FF, Ascii.CR, Ascii.SO, 3, Ascii.SO, 3, -5, 6, -70, -5, -2, -70, -2, -1, Ascii.CR, Ascii.SO, Ascii.FF, 9, 19, -1, -2, -56, -19, -13, -28, -15, -14, -13, -24, -13, -24, -32, -21, -97, -32, -29, -97, -21, -18, -32, -29, -97, -15, -28, -16, -12, -28, -14, -13, -28, -29, -18, 19, Ascii.EM, 10, Ascii.ETB, Ascii.CAN, Ascii.EM, Ascii.SO, Ascii.EM, Ascii.SO, 6, 17, -59, 6, 9, -59, Ascii.CAN, Ascii.CR, Ascii.DC4, Ascii.FS, -59, 8, 6, 17, 17, 10, 9, -10, -9, 5, 6, 4, 1, Ascii.VT, -28, -17, -52, -17, -31, -28, -63, -28, 49, 38, 45, 53};
    }

    public final void A02(InterstitialAdListener interstitialAdListener) {
        this.A03.A0F().A3i(interstitialAdListener != null);
        this.A01.A0E(interstitialAdListener);
        if (A05[0].charAt(22) != '3') {
            throw new RuntimeException();
        }
        A05[4] = "rYQ6gTbtajntBm3fXVm84HcfyQ9ACN8J";
    }

    public final void A03(RewardData rewardData) {
        this.A02.A0G(rewardData);
    }

    public final void A04(RewardedAdListener rewardedAdListener) {
        this.A01.A0G(rewardedAdListener);
    }

    public final void A05(EnumSet<CacheFlag> enumSet, String str) {
        AbstractC2933o5.A05(A00(129, 8, 2), A00(65, 30, 1), A00(16, 8, InterfaceC3669k1.d.b.k));
        if (str == null) {
            this.A03.A0F().A3m();
        } else {
            this.A03.A0F().A3l();
        }
        this.A02.A0F(this.A00, enumSet, str);
        this.A03.A0F().A3k();
    }

    @Override // com.facebook.ads.internal.api.InterstitialAdApi, com.facebook.ads.FullScreenAd
    public final InterstitialAd.InterstitialAdLoadConfigBuilder buildLoadAdConfig() {
        return new C2677jr(this);
    }

    @Override // com.facebook.ads.internal.api.InterstitialAdApi, com.facebook.ads.FullScreenAd
    public final InterstitialAd.InterstitialAdShowConfigBuilder buildShowAdConfig() {
        return new C2678js();
    }

    @Override // com.facebook.ads.Ad
    public final void destroy() {
        AbstractC2933o5.A05(A00(122, 7, 20), A00(40, 25, 28), A00(0, 8, 49));
        if (C2863mv.A2N(this.A03)) {
            return;
        }
        this.A02.A08();
        this.A03.A0F().A3q();
    }

    public final void finalize() {
        this.A02.A07();
    }

    @Override // com.facebook.ads.Ad
    public final String getPlacementId() {
        return this.A01.A0A();
    }

    @Override // com.facebook.ads.Ad
    public final boolean isAdInvalidated() {
        boolean zA0H = this.A02.A0H();
        this.A03.A0F().A6E(zA0H);
        return zA0H;
    }

    @Override // com.facebook.ads.internal.api.InterstitialAdApi
    public final boolean isAdLoaded() {
        return this.A02.A0I();
    }

    @Override // com.facebook.ads.Ad
    public final void loadAd() {
        A05(CacheFlag.ALL, null);
    }

    @Override // com.facebook.ads.internal.api.InterstitialAdApi
    public final void loadAd(InterstitialAd.InterstitialLoadAdConfig interstitialLoadAdConfig) {
        ((C2677jr) interstitialLoadAdConfig).A00();
    }

    @Override // com.facebook.ads.internal.context.Repairable
    public final void repair(Throwable th) {
        if (this.A01.A7O() != null) {
            this.A01.A7O().onError(this.A00, new AdError(AdError.INTERNAL_ERROR_CODE, A00(24, 16, 8) + AbstractC3068qK.A03(this.A03, th)));
        }
    }

    @Override // com.facebook.ads.internal.api.InterstitialAdApi, com.facebook.ads.Ad
    @Deprecated
    public final void setExtraHints(ExtraHints extraHints) {
        this.A01.A0I(extraHints.getHints());
        this.A01.A0J(extraHints.getMediationData());
    }

    @Override // com.facebook.ads.internal.api.InterstitialAdApi, com.facebook.ads.FullScreenAd
    public final boolean show() {
        AbstractC2933o5.A05(A00(137, 4, 64), A00(95, 27, 39), A00(8, 8, 7));
        this.A03.A0F().A3w();
        boolean zA0J = this.A02.A0J(this.A00, new C2678js());
        this.A03.A0F().A3v(zA0J);
        return zA0J;
    }

    @Override // com.facebook.ads.internal.api.InterstitialAdApi
    public final boolean show(InterstitialAd.InterstitialShowAdConfig interstitialShowAdConfig) {
        this.A03.A0F().A3w();
        boolean zA0J = this.A02.A0J(this.A00, interstitialShowAdConfig);
        this.A03.A0F().A3v(zA0J);
        return zA0J;
    }
}
