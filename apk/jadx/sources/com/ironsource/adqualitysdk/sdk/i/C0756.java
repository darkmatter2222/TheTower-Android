package com.ironsource.adqualitysdk.sdk.i;

import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import com.qq.e.ads.ADActivity;
import com.qq.e.ads.DialogActivity;
import com.qq.e.ads.LandscapeADActivity;
import com.qq.e.ads.LiteAbstractAD;
import com.qq.e.ads.PortraitADActivity;
import com.qq.e.ads.RewardvideoLandscapeADActivity;
import com.qq.e.ads.RewardvideoPortraitADActivity;
import com.qq.e.ads.banner2.UnifiedBannerADListener;
import com.qq.e.ads.banner2.UnifiedBannerView;
import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;
import com.qq.e.ads.interstitial2.UnifiedInterstitialADListener;
import com.qq.e.ads.rewardvideo.RewardVideoAD;
import com.qq.e.ads.rewardvideo.RewardVideoADListener;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.managers.GDTAdSdk;
import com.qq.e.comm.managers.status.APPStatus;
import com.qq.e.comm.managers.status.SDKStatus;
import com.qq.e.comm.pi.ACTD;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵔ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0756 extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f2785 = StringFog.decrypt("+7cSq6sa1L8=\n", "vPNG6s9JsNQ=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f2784 = StringFog.decrypt("TkYWUC5NFqN7ew==\n", "DwJXM1okYMo=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f2783 = StringFog.decrypt("3o8Oj/i/sHeTgQfSp4/aU96UCtfguuc=\n", "veBjoYnOnhI=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f2782 = StringFog.decrypt("wSIPBVxzWpjxIhgAR20=\n", "hUtuaTMUG/s=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f2781 = StringFog.decrypt("eNA3W6OyrjI13j4G/IfpNnfQPTSxt+khcssj\n", "G79addLDgFc=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f2780 = StringFog.decrypt("jZdSeF26nEekt3hdTa2UQaiCRQ==\n", "wfY8HC7Z/Tc=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f2779 = StringFog.decrypt("dBxuFLitum85EmdJ55D1ZHMAYFu5udVOVhB3U7+14HM=\n", "F3MDOsnclAo=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f2778 = StringFog.decrypt("FIu3O25tB5AFoIQsaGUYjTCd\n", "ROTFTxwMbuQ=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f2777 = StringFog.decrypt("GmcHD8RDTy5XaQ5Sm2IOOQ16C0jBcyUKGnwDV9xGGA==\n", "eQhqIbUyYUs=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f2776 = StringFog.decrypt("0Hpc6sOHTzPmekTH0I1dKeF+W+7wp3g59nZd4sWa\n", "gh8ri7HjOVo=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f2775 = StringFog.decrypt("h+ntc8zLSmTK5+Quk+gBdoX05CvU3gFuqOfuOc7ZBXGBx8Qc3s4Nd43y+Q==\n", "5IaAXb26ZAE=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f2774 = StringFog.decrypt("BlLCzk/CFtwwUtr/UtQUxzVewe555wPBPUHc20Q=\n", "VDe1rz2mYLU=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f2773 = StringFog.decrypt("9Ieek5QKf1W5iZfOyyk0R/aal8uMHzRfx4eByZcaOETWrLLekRInWeOR\n", "l+jzveV7UTA=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f2772 = StringFog.decrypt("+Uxc76sJUK7CVlD7sRhdk8VDWciG\n", "rCI1icJsNOc=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f2771 = StringFog.decrypt("uGyeUW6bVa2DdpJFdIpYkIRjm3ZDsliXmWeZUnU=\n", "7QL3Nwf+MeQ=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f2770 = StringFog.decrypt("NgFuQcKux1UAAXZh9A==\n", "ZGQZILDKkTw=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f2769 = StringFog.decrypt("2sRR7YlfroL+8lzgm1u/iek=\n", "m4AdhPory+w=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f2768 = StringFog.decrypt("vELGwJLzm5KKQt7gpNukiJpC38SS\n", "7iexoeCXzfs=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f2767 = StringFog.decrypt("gH/7x3C1o4++cffQ\n", "zBCaozHR8+4=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f2766 = StringFog.decrypt("fLRexNBIG+RItFnHy3sWw14=\n", "Kdo3orktf6Y=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f2765 = StringFog.decrypt("HGB67aUmdMwoYH3uvgJUwiB9Z+6iJmI=\n", "SQ4Ti8xDEI4=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f2764 = StringFog.decrypt("K46OZa24bQ==\n", "asrLE8jWGUg=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f2763 = StringFog.decrypt("RpT2pSW6Oo10\n", "B8Sm9lHbTvg=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f2762 = StringFog.decrypt("q8ehzQ==\n", "6oT1iS0SXY0=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f2761 = StringFog.decrypt("2iJXIp9gsx7kKkAzn0Y=\n", "lksjR94CwGo=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f2760 = StringFog.decrypt("HSQiwyudl8s5Eg==\n", "XGBuqljp8qU=\n");

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f2759 = StringFog.decrypt("9VSMASLfGGHfUJYhA/k=\n", "kjH4RmaLWQU=\n");

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f2758 = StringFog.decrypt("ILeo7jYcWIk=\n", "R9Lcr0ZsEe0=\n");

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static final String f2757 = StringFog.decrypt("0Oggt+toNJr+4zKd\n", "t41U8pMcRvs=\n");

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static final String f2756 = StringFog.decrypt("AttSaoUhBnYB/0JsmSYC\n", "Zb4mOOBWZwQ=\n");

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static final String f2755 = StringFog.decrypt("pKQBDfdw11qnpBEa6nPF\n", "w8F1X5IHtig=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f2754 = StringFog.decrypt("BN0WjbOytKIQzAuwtKe9lRvM\n", "Y7hixN3G0dA=\n");

    public C0756(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        return SDKStatus.getIntegrationSDKVersion();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f2759, new C0210(this));
        map.put(f2758, new C1067(this));
        map.put(f2757, new C0990(this));
        map.put(f2756, new C0986(this));
        map.put(f2755, new C0855(this));
        map.put(f2754, new C0769(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:83:0x0130  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -1950656211:
                if (!str.equals(f2780)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case -1537668511:
                if (!str.equals(f2772)) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case -1192770783:
                if (!str.equals(f2776)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case -1125491209:
                if (!str.equals(f2760)) {
                    b = -1;
                } else {
                    b = Ascii.EM;
                }
                break;
            case -1040623465:
                if (!str.equals(f2782)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case -839956733:
                if (!str.equals(f2766)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            case -570955421:
                if (!str.equals(f2768)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case -427681737:
                if (!str.equals(f2764)) {
                    b = -1;
                } else {
                    b = Ascii.DC4;
                }
                break;
            case -358530385:
                if (!str.equals(f2767)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case -311779863:
                if (!str.equals(f2775)) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case -301299368:
                if (!str.equals(f2769)) {
                    b = -1;
                } else {
                    b = Ascii.SYN;
                }
                break;
            case -287046183:
                if (!str.equals(f2774)) {
                    b = -1;
                } else {
                    b = Ascii.VT;
                }
                break;
            case -207731435:
                if (!str.equals(f2777)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case 2003474:
                if (!str.equals(f2762)) {
                    b = -1;
                } else {
                    b = Ascii.ETB;
                }
                break;
            case 167349330:
                if (!str.equals(f2784)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 555831221:
                if (!str.equals(f2765)) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            case 796884557:
                if (!str.equals(f2778)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case 814717722:
                if (!str.equals(f2783)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 937653587:
                if (!str.equals(f2763)) {
                    b = -1;
                } else {
                    b = Ascii.NAK;
                }
                break;
            case 1265986405:
                if (!str.equals(f2779)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case 1305853839:
                if (!str.equals(f2770)) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case 1336889139:
                if (!str.equals(f2761)) {
                    b = -1;
                } else {
                    b = Ascii.CAN;
                }
                break;
            case 1773421109:
                if (!str.equals(f2771)) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            case 1874129984:
                if (!str.equals(f2785)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case 1958130193:
                if (!str.equals(f2773)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case 2111488863:
                if (!str.equals(f2781)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return GDTAdSdk.class;
            case 1:
            case 2:
                return ADActivity.class;
            case 3:
            case 4:
                return DialogActivity.class;
            case 5:
            case 6:
                return LandscapeADActivity.class;
            case 7:
            case 8:
                return PortraitADActivity.class;
            case 9:
            case 10:
                return RewardvideoLandscapeADActivity.class;
            case 11:
            case 12:
                return RewardvideoPortraitADActivity.class;
            case 13:
                return UnifiedInterstitialAD.class;
            case 14:
                return UnifiedInterstitialADListener.class;
            case 15:
                return RewardVideoAD.class;
            case 16:
                return RewardVideoADListener.class;
            case 17:
                return LoadAdParams.class;
            case 18:
                return UnifiedBannerView.class;
            case 19:
                return UnifiedBannerADListener.class;
            case 20:
                return ADEvent.class;
            case 21:
                return APPStatus.class;
            case 22:
                return RewardVideoAD.ADListenerAdapter.class;
            case 23:
                return ACTD.class;
            case 24:
                return LiteAbstractAD.class;
            case 25:
                return ADListener.class;
            default:
                return null;
        }
    }
}
