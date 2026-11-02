package com.facebook.ads.redexgen.X;

import android.content.Context;
import com.facebook.ads.AdExperienceType;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.RewardedInterstitialAd;
import com.facebook.ads.internal.api.RewardedInterstitialAdApi;
import com.facebook.ads.internal.context.Repairable;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.kF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2701kF implements RewardedInterstitialAdApi, Repairable {
    public static byte[] A01;
    public static String[] A02 = {"3NmEwDZbIt", "O8AdKP", "F3ALGhsyO3", "0MHUDKJg5DuGWh7rPRyim2f5Q3jzHAIy", "HXUpQ47Mk3E2sR2m", "8jXe5NRPzLqsvVidOiIerBtc23OceItu", "2ZUtk7q5pb8vSbqEv1qAEyjXWKkByt40", "lRwzP9ChqND6LzN"};
    public final C2705kJ A00;

    static {
        A01();
    }

    public C2701kF(Context context, String str, RewardedInterstitialAd rewardedInterstitialAd) {
        this.A00 = new C2705kJ(context, str, rewardedInterstitialAd);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 126);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        byte[] bArr = {SignedBytes.MAX_POWER_OF_TWO, 66, 70, 76, Ascii.NAK, Ascii.NAK, SignedBytes.MAX_POWER_OF_TWO, 126, 127, 40, 114, 125, 115, 45, 41, 9, 9, 94, 91, 89, Ascii.VT, Ascii.CR, 48, 53, 52, 55, 48, 48, 99, 100, 36, 19, 1, Ascii.ETB, 4, Ascii.DC2, 19, Ascii.DC2, 86, Ascii.US, Ascii.CAN, 2, 19, 4, 5, 2, Ascii.US, 2, Ascii.US, Ascii.ETB, Ascii.SUB, 86, Ascii.ETB, Ascii.DC2, 86, Ascii.DC2, 19, 5, 2, 4, Ascii.EM, Ascii.SI, 19, Ascii.DC2, 6, 49, 35, 53, 38, 48, 49, 48, 116, Base64.padSymbol, 58, 32, 49, 38, 39, 32, Base64.padSymbol, 32, Base64.padSymbol, 53, 56, 116, 53, 48, 116, 56, 59, 53, 48, 116, 38, 49, 37, 33, 49, 39, 32, 49, 48, 36, 19, 1, Ascii.ETB, 4, Ascii.DC2, 19, Ascii.DC2, 86, Ascii.US, Ascii.CAN, 2, 19, 4, 5, 2, Ascii.US, 2, Ascii.US, Ascii.ETB, Ascii.SUB, 86, Ascii.ETB, Ascii.DC2, 86, 5, Ascii.RS, Ascii.EM, 1, 86, Ascii.NAK, Ascii.ETB, Ascii.SUB, Ascii.SUB, 19, Ascii.DC2, 73, 72, 94, 89, 95, 66, 84, 50, 49, 63, 58, Ascii.US, 58, 6, Ascii.GS, Ascii.SUB, 2};
        if (A02[4].length() == 1) {
            throw new RuntimeException();
        }
        A02[7] = "xXnNwnRRjThYq22";
        A01 = bArr;
    }

    @Override // com.facebook.ads.internal.api.RewardedInterstitialAdApi, com.facebook.ads.FullScreenAd
    public final RewardedInterstitialAd.RewardedInterstitialAdLoadConfigBuilder buildLoadAdConfig() {
        return new C2703kH(this.A00.buildLoadAdConfig());
    }

    @Override // com.facebook.ads.internal.api.RewardedInterstitialAdApi, com.facebook.ads.FullScreenAd
    public final RewardedInterstitialAd.RewardedInterstitialAdShowConfigBuilder buildShowAdConfig() {
        return new C2704kI(this.A00.buildShowAdConfig());
    }

    @Override // com.facebook.ads.internal.api.RewardedInterstitialAdApi, com.facebook.ads.Ad
    public final void destroy() {
        AbstractC2933o5.A05(A00(139, 7, 83), A00(30, 34, 8), A00(22, 8, 121));
        this.A00.A04();
    }

    public final void finalize() {
        this.A00.finalize();
    }

    @Override // com.facebook.ads.internal.api.RewardedInterstitialAdApi, com.facebook.ads.Ad
    public final String getPlacementId() {
        return this.A00.getPlacementId();
    }

    @Override // com.facebook.ads.internal.api.RewardedInterstitialAdApi
    public final int getVideoDuration() {
        return this.A00.getVideoDuration();
    }

    @Override // com.facebook.ads.Ad
    public final boolean isAdInvalidated() {
        return this.A00.isAdInvalidated();
    }

    @Override // com.facebook.ads.internal.api.RewardedInterstitialAdApi
    public final boolean isAdLoaded() {
        return this.A00.isAdLoaded();
    }

    @Override // com.facebook.ads.internal.api.RewardedInterstitialAdApi, com.facebook.ads.Ad
    public final void loadAd() {
        AbstractC2933o5.A05(A00(146, 6, 32), A00(64, 39, 42), A00(0, 7, 10));
        this.A00.A07(null, AdExperienceType.AD_EXPERIENCE_TYPE_REWARDED_INTERSTITIAL, true);
    }

    @Override // com.facebook.ads.internal.api.RewardedInterstitialAdApi
    public final void loadAd(RewardedInterstitialAd.RewardedInterstitialLoadAdConfig rewardedInterstitialLoadAdConfig) {
        ((C2703kH) rewardedInterstitialLoadAdConfig).A00();
    }

    @Override // com.facebook.ads.internal.context.Repairable
    public final void repair(Throwable th) {
        this.A00.repair(th);
    }

    @Override // com.facebook.ads.internal.api.RewardedInterstitialAdApi, com.facebook.ads.Ad
    @Deprecated
    public final void setExtraHints(ExtraHints extraHints) {
        this.A00.setExtraHints(extraHints);
    }

    @Override // com.facebook.ads.internal.api.RewardedInterstitialAdApi, com.facebook.ads.FullScreenAd
    public final boolean show() {
        AbstractC2933o5.A05(A00(152, 4, 11), A00(103, 36, 8), A00(7, 8, 53));
        return this.A00.A08(new C2707kL().withAppOrientation(-1).build());
    }

    @Override // com.facebook.ads.internal.api.RewardedInterstitialAdApi
    public final boolean show(RewardedInterstitialAd.RewardedInterstitialShowAdConfig rewardedInterstitialShowAdConfig) {
        AbstractC2933o5.A05(A00(152, 4, 11), A00(103, 36, 8), A00(15, 7, 65));
        return this.A00.A08(((C2704kI) rewardedInterstitialShowAdConfig).A00());
    }
}
