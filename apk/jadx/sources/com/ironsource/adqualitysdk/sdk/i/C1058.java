package com.ironsource.adqualitysdk.sdk.i;

import com.amazon.device.ads.DTBAdView;
import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import com.ironsource.mediationsdk.AbstractAdapter;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.IronSourceBannerLayout;
import com.ironsource.mediationsdk.ads.nativead.AdapterNativeAdData;
import com.ironsource.mediationsdk.ads.nativead.LevelPlayMediaView;
import com.ironsource.mediationsdk.ads.nativead.LevelPlayNativeAd;
import com.ironsource.mediationsdk.ads.nativead.LevelPlayNativeAdListener;
import com.ironsource.mediationsdk.ads.nativead.NativeAdLayout;
import com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdAdapterInterface;
import com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface;
import com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdInteractionListener;
import com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdInterface;
import com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdLoadListener;
import com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdSmashListener;
import com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdViewBinderInterface;
import com.ironsource.mediationsdk.ads.nativead.internal.InternalNativeAdListener;
import com.ironsource.mediationsdk.ads.nativead.internal.NativeAdViewHolder;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.impressionData.ImpressionData;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.sdk.BannerSmashListener;
import com.ironsource.mediationsdk.sdk.LevelPlayBannerListener;
import com.ironsource.mediationsdk.sdk.LevelPlayInterstitialListener;
import com.ironsource.mediationsdk.sdk.LevelPlayRewardedVideoAutomaticListener;
import com.ironsource.mediationsdk.sdk.LevelPlayRewardedVideoListener;
import com.ironsource.mediationsdk.sdk.LevelPlayRewardedVideoManualListener;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.ironsource.sdk.controller.ControllerActivity;
import com.ironsource.sdk.controller.InterstitialActivity;
import com.ironsource.sdk.controller.OpenUrlActivity;
import com.unity3d.ironsourceads.IronSourceAds;
import com.unity3d.ironsourceads.banner.BannerAdInfo;
import com.unity3d.ironsourceads.banner.BannerAdRequest;
import com.unity3d.ironsourceads.banner.BannerAdView;
import com.unity3d.ironsourceads.banner.BannerAdViewListener;
import com.unity3d.ironsourceads.interstitial.InterstitialAd;
import com.unity3d.ironsourceads.interstitial.InterstitialAdInfo;
import com.unity3d.ironsourceads.interstitial.InterstitialAdListener;
import com.unity3d.ironsourceads.interstitial.InterstitialAdRequest;
import com.unity3d.ironsourceads.rewarded.RewardedAd;
import com.unity3d.ironsourceads.rewarded.RewardedAdInfo;
import com.unity3d.ironsourceads.rewarded.RewardedAdListener;
import com.unity3d.ironsourceads.rewarded.RewardedAdRequest;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.banner.LevelPlayBannerAdView;
import com.unity3d.mediation.banner.LevelPlayBannerAdViewListener;
import com.unity3d.mediation.impression.LevelPlayImpressionData;
import com.unity3d.mediation.impression.LevelPlayImpressionDataListener;
import com.unity3d.mediation.interstitial.LevelPlayInterstitialAd;
import com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import com.unity3d.mediation.rewarded.LevelPlayRewardedAd;
import com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener;
import java.util.HashMap;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｧ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1058 extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f3783 = StringFog.decrypt("oXPEtRwsh1Wrc96RPiyJVQ==\n", "xhaw5XBN5DA=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f3782 = StringFog.decrypt("hlvii58oH1iTcvewkTMFbY1f9ayTIx9Jr1/7rA==\n", "4T6Wyf5GcT0=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f3781 = StringFog.decrypt("j9mFPBX21b+bz5gaFsLGron2ghoW\n", "6LzxdXiGp9o=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f3780 = StringFog.decrypt("FwGqYJuiL8YFFqdGmJY81xcpp1qCtzPGBA==\n", "dmXOKfbSXaM=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f3779 = StringFog.decrypt("OaTJxPvSOj07s8HY/t4cPg+g0MrB3gAkLq/B2Q==\n", "S8Gkq423c1A=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f3778 = StringFog.decrypt("g4L8z5YoYQ2VpuzNni98Hp6C+g==\n", "8OeIgfdcCHs=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f3777 = StringFog.decrypt("aA+n3In3OAp9LrL7jQ==\n", "D2rTj+yFTm8=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f3776 = StringFog.decrypt("rmTsYXur7WuuYv5lfa/8\n", "7wafFQnKjh8=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f3775 = StringFog.decrypt("j2FWQkkGwGOr\n", "3w03ISxrpQ0=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f3774 = StringFog.decrypt("R70rRnhwk01hoARRfnaJSHCr\n", "BNJFMgof/yE=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f3773 = StringFog.decrypt("WCZ9cA8iUQxIJmUsBTUQEV8iPj0JPkoQVCV8OxR+fQ1VPWIxCjxbEHoqZDcQOUob\n", "O0kQXmZQPmI=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f3772 = StringFog.decrypt("DadNbMqpkj4woFhl+bmSPjKgTXA=\n", "RMk5Cbja5lc=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f3771 = StringFog.decrypt("dZOoh57Qvmxlk7DblMf/cXKX68qYzKVweZCpzIWMmGximbfag8ula3eQhMqDy6drYoU=\n", "FvzFqfei0QI=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f3770 = StringFog.decrypt("U7CBXLPmLKR/tI1Ej+A5\n", "HMDkMuaUQOU=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f3769 = StringFog.decrypt("LbaLkl4n9Tk9tpPOVDC0JCqyyN9YO+4lIbWK2UV71Scrt7POWxT5Iyevj8hO\n", "TtnmvDdVmlc=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f3768 = StringFog.decrypt("yjd3Wsh2h73gIFpV9XeXvc8kYVvubQ==\n", "g0UYNJsZ8s8=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f3767 = StringFog.decrypt("ws2j097iryTSzbuP1PXuJ8TGp5zD+a8k0sal0/7iryTyzbuP1PWCK8/Mq4/78bkl1NY=\n", "oaLO/beQwEo=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f3766 = StringFog.decrypt("zHvhEQC3AAjvaeczDLYnAOB//Q==\n", "jhqPf2XFU2U=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f3765 = StringFog.decrypt("Y/6BxMMecCtJ6Q==\n", "KozuqpBxBVk=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f3764 = StringFog.decrypt("9patbntsyFLQlZl9an4=\n", "v/vdHB4fuzs=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f3763 = StringFog.decrypt("wzpSwd1xMGjlOWbSzGMPaPkjR93dcA==\n", "ilcis7gCQwE=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f3762 = StringFog.decrypt("2sniHJ5aP5vp\n", "np2gXfoMVv4=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f3761 = StringFog.decrypt("S4JPgOkpIDFHgwzK7TIoKE3DQ8r7agUfaqxG+OEhNg==\n", "KO0irohEQUs=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f3760 = StringFog.decrypt("3anWymH0odrojsHBY8G/9/i/1Mpjwb8=\n", "kcygrw2kzbs=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f3759 = StringFog.decrypt("/AXHve+X3PrJKd+s5rXD79kU2Lnvi9noxAXfvfE=\n", "sGCx2IPHsJs=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f3758 = StringFog.decrypt("3IHi7bEoON7ptvH/vAow2vSy/ey4FxXK5Iv56akRN/P5l+Dtsx0m\n", "kOSUiN14VL8=\n");

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f3757 = StringFog.decrypt("xA93SeOegEHxOGRb7ryIRew8aEjqoaBJ+x5kQuq8\n", "iGoBLI/O7CA=\n");

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f3756 = StringFog.decrypt("aCM9r835p7ZdFC69wNuvskAQIq7Exoa2SjMqpu3AuKNBKC64\n", "JEZLyqGpy9c=\n");

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static final String f3755 = StringFog.decrypt("xZ5tsPDd\n", "hPok3payquw=\n");

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static final String f3754 = StringFog.decrypt("8/NwhwUPCRPG2GeWACkAM9s=\n", "v5YG4mlfZXI=\n");

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static final String f3753 = StringFog.decrypt("6XpKiqR3RJDrekeMp2Y=\n", "pxs+49ISBfQ=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f3752 = StringFog.decrypt("cQEuwz6SS/5EKjnSO7RC3lkoMdUmp0n6Tw==\n", "PWRYplLCJ58=\n");

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static final String f3751 = StringFog.decrypt("N31RY02audQCVUJiSKuD3B5v\n", "exgnBiHK1bU=\n");

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static final String f3750 = StringFog.decrypt("YkKXLhn3CoRCUp8oCNMcjkJSlw==\n", "Iyb2Xm2SeMo=\n");

    /* JADX INFO: renamed from: ᖅ, reason: contains not printable characters */
    public static final String f3749 = StringFog.decrypt("/y8bJXvuiKbnJwo7ReSlptQ8\n", "sU5vTA2LycI=\n");

    /* JADX INFO: renamed from: ᕆ, reason: contains not printable characters */
    public static final String f3748 = StringFog.decrypt("RLW8RhPzGthDurxKF/g60EGyu1cE8x7G\n", "DdvII2Gde7Q=\n");

    /* JADX INFO: renamed from: ᕄ, reason: contains not printable characters */
    public static final String f3747 = StringFog.decrypt("6/P2ATwowVLk9uMYPijyf8vm5xosLONT\n", "pZKCaEpNgDY=\n");

    /* JADX INFO: renamed from: ᕃ, reason: contains not printable characters */
    public static final String f3746 = StringFog.decrypt("5ErMdaYCaiPuSsx9mQlfIthN2X+1\n", "qiu4HNBnK0c=\n");

    /* JADX INFO: renamed from: ᕂ, reason: contains not printable characters */
    public static final String f3745 = StringFog.decrypt("mx9kYbkrVsucEGRtvS9027wRfkSmPWPKuxti\n", "1X4QCM9OF68=\n");

    /* JADX INFO: renamed from: ᔽ, reason: contains not printable characters */
    public static final String f3744 = StringFog.decrypt("NY0N4SuX7loygg3tL5TOXR4=\n", "e+x5iF3yrz4=\n");

    /* JADX INFO: renamed from: ᔺ, reason: contains not printable characters */
    public static final String f3743 = StringFog.decrypt("Jkoi+9HXPD8kRDf269sOLw1FM+A=\n", "aCtWkqeyfVs=\n");

    /* JADX INFO: renamed from: ᔹ, reason: contains not printable characters */
    public static final String f3742 = StringFog.decrypt("qb1B0QPw5zm0sVTLHdnPLpO5W90H\n", "59w1uHWVpl0=\n");

    /* JADX INFO: renamed from: ᔲ, reason: contains not printable characters */
    public static final String f3741 = StringFog.decrypt("xp7gAq0RBxjelvEcmR0oGO2N3QWvETQa6Zzx\n", "iP+Ua9t0Rnw=\n");

    /* JADX INFO: renamed from: ᔱ, reason: contains not printable characters */
    public static final String f3740 = StringFog.decrypt("6K629+QL\n", "qcrylpBqlwk=\n");

    /* JADX INFO: renamed from: ᓮ, reason: contains not printable characters */
    public static final String f3739 = StringFog.decrypt("WPb/yMrOqDpt0u3kyPir\n", "FJOJraaexFs=\n");

    /* JADX INFO: renamed from: ᐱ, reason: contains not printable characters */
    public static final String f3738 = StringFog.decrypt("ROv/KXTXUZRxzOgiduJPtGzY4Clv\n", "CI6JTBiHPfU=\n");

    /* JADX INFO: renamed from: Ꮭ, reason: contains not printable characters */
    public static final String f3737 = StringFog.decrypt("aWQ2ZuuO7HJzOD9m84Xhb2t/MifwzudnZGU+OrCs4HBvZwsk/5nHZ2RlPjrfhNNvb3w=\n", "CgtbSJ7ghQY=\n");

    /* JADX INFO: renamed from: Ꮧ, reason: contains not printable characters */
    public static final String f3736 = StringFog.decrypt("Bd3mAMcTgWYw+vELxSafRi3u+QDcD4R0Pd3+ANk=\n", "SbiQZatD7Qc=\n");

    /* JADX INFO: renamed from: პ, reason: contains not printable characters */
    public static final String f3735 = StringFog.decrypt("1cEILbeXlL//1iYnl76Ov/HSEw==\n", "nLNnQ+T44c0=\n");

    /* JADX INFO: renamed from: ე, reason: contains not printable characters */
    public static final String f3734 = StringFog.decrypt("MF0vFwBMb7Q7UicW\n", "cjxBeWU+LtA=\n");

    /* JADX INFO: renamed from: ງ, reason: contains not printable characters */
    public static final String f3733 = StringFog.decrypt("BNXuloKIj8AU0fGNgom6\n", "RrSA+Of6zqQ=\n");

    /* JADX INFO: renamed from: อ, reason: contains not printable characters */
    public static final String f3732 = StringFog.decrypt("+KliUguI/pfsoWlL\n", "usgMPG76v/M=\n");

    /* JADX INFO: renamed from: ม, reason: contains not printable characters */
    public static final String f3731 = StringFog.decrypt("LtbsYZ2FrF40iuVhgZmqRD7W9D2LjqROPpfjLoaFoFhj++Ahho63aynv6Cqf\n", "TbmBT+jrxSo=\n");

    /* JADX INFO: renamed from: น, reason: contains not printable characters */
    public static final String f3730 = StringFog.decrypt("6X3LEFZXawL9dcAJf0xZEs5ywAw=\n", "qxylfjMlKmY=\n");

    /* JADX INFO: renamed from: ต, reason: contains not printable characters */
    public static final String f3729 = StringFog.decrypt("DABrGbWi6j8xB34QhrU=\n", "RW4ffMfRnlY=\n");

    /* JADX INFO: renamed from: ฑ, reason: contains not printable characters */
    public static final String f3728 = StringFog.decrypt("GHLaK7bwTpIldc8ihedzlTdz\n", "URyuTsSDOvs=\n");

    /* JADX INFO: renamed from: ঢ়, reason: contains not printable characters */
    public static final String f3727 = StringFog.decrypt("C4EXeFWmvgU2hgJxZrGGBTGbBnNCpw==\n", "Qu9jHSfVymw=\n");

    /* JADX INFO: renamed from: ষ, reason: contains not printable characters */
    public static final String f3726 = StringFog.decrypt("7Dh+JwVZcNfRP2suNk5W29QjbzED\n", "pVYKQncqBL4=\n");

    /* JADX INFO: renamed from: ঘ, reason: contains not printable characters */
    public static final String f3725 = StringFog.decrypt("VRtbaqp5+MBGGg==\n", "B34sC9gdnaQ=\n");

    /* JADX INFO: renamed from: খ, reason: contains not printable characters */
    public static final String f3724 = StringFog.decrypt("i90ss/MBrF6Y3BK85wo=\n", "2bhb0oFlyTo=\n");

    /* JADX INFO: renamed from: এ, reason: contains not printable characters */
    public static final String f3723 = StringFog.decrypt("9zgnSrl2rXXkORxCuGatf8Av\n", "pV1QK8sSyBE=\n");

    /* JADX INFO: renamed from: ऱ, reason: contains not printable characters */
    public static final String f3722 = StringFog.decrypt("uowWL95aS/SpjTMr3UtL45w=\n", "6OlhTqw+LpA=\n");

    /* JADX INFO: renamed from: ܟ, reason: contains not printable characters */
    public static final String f3721 = StringFog.decrypt("6tpkSKxNBBTf9nxZpW8bAc/Le0ysXAw=\n", "pr8SLcAdaHU=\n");

    /* JADX INFO: renamed from: ܘ, reason: contains not printable characters */
    public static final String f3720 = StringFog.decrypt("U2tUyl0HsBBmR0zbVCWvBXZ6S85dFrg9dn1Wyl8yrg==\n", "Hw4irzFX3HE=\n");

    /* JADX INFO: renamed from: ے, reason: contains not printable characters */
    public static final String f3719 = StringFog.decrypt("upfH+iQx/fKPoNToKRP19pKz1Q==\n", "9vKxn0hhkZM=\n");

    /* JADX INFO: renamed from: ۉ, reason: contains not printable characters */
    public static final String f3718 = StringFog.decrypt("PVXLJa8CIdwIYtg3oiAp2BVx2QyqITnYH1XP\n", "cTC9QMNSTb0=\n");

    /* JADX INFO: renamed from: ۅ, reason: contains not printable characters */
    public static final String f3717 = StringFog.decrypt("WERiOA+EQXptc3EqAqZJ\n", "FCEUXWPULRs=\n");

    /* JADX INFO: renamed from: ڑ, reason: contains not printable characters */
    public static final String f3716 = StringFog.decrypt("Aj9oRY1HJiQ3E3NQk3I5Nic1cGSAYys=\n", "TloeIOEXSkU=\n");

    /* JADX INFO: renamed from: پ, reason: contains not printable characters */
    public static final String f3715 = StringFog.decrypt("uApbbPiQaAmNJkB55qV3G50AQ031tGUknRxZbPqldg==\n", "9G8tCZTABGg=\n");

    /* JADX INFO: renamed from: ٽ, reason: contains not printable characters */
    public static final String f3714 = StringFog.decrypt("5M/pLjG8wZLTxvwbHafUjObZ7gs7pOCf98vXETuk\n", "g6qdYlTKpP4=\n");

    /* JADX INFO: renamed from: ث, reason: contains not printable characters */
    public static final String f3713 = StringFog.decrypt("RW2STOpokzB0ZZd5xnOGLkF6hWngcLo1V32Tbups\n", "JAn2AI8e9lw=\n");

    /* JADX INFO: renamed from: ת, reason: contains not printable characters */
    public static final String f3712 = StringFog.decrypt("5jK+OGEsEBDiMr8HeyglPPknoTJkOjUa+hu6JGMsMhDm\n", "lFfTVxdJXHU=\n");

    public C1058(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        try {
            try {
                return LevelPlay.getSdkVersion();
            } catch (Throwable unused) {
                return IronSourceUtils.getSDKVersion();
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f3783, new C0251(this));
        map.put(f3782, new C0195(this));
        map.put(f3781, new C0189(this));
        map.put(f3780, new C0186(this));
        map.put(f3779, new C0109(this));
        map.put(f3714, new C0106(this));
        map.put(f3713, new C1089(this));
        map.put(f3712, new C1088(this));
        map.put(f3778, new C1069(this));
        map.put(f3777, new C0264(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:191:0x02e0  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -2063883567:
                if (!str.equals(f3751)) {
                    b = -1;
                } else {
                    b = Ascii.EM;
                }
                break;
            case -2054763962:
                if (!str.equals(f3752)) {
                    b = -1;
                } else {
                    b = Ascii.CAN;
                }
                break;
            case -2044561387:
                if (!str.equals(f3746)) {
                    b = -1;
                } else {
                    b = Ascii.RS;
                }
                break;
            case -2012752057:
                if (!str.equals(f3721)) {
                    b = -1;
                } else {
                    b = 55;
                }
                break;
            case -1879025222:
                if (!str.equals(f3762)) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            case -1810844504:
                if (!str.equals(f3730)) {
                    b = -1;
                } else {
                    b = 46;
                }
                break;
            case -1704786309:
                if (!str.equals(f3772)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case -1678289205:
                if (!str.equals(f3773)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case -1555060867:
                if (!str.equals(f3718)) {
                    b = -1;
                } else {
                    b = 58;
                }
                break;
            case -1406023077:
                if (!str.equals(f3771)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case -1282106699:
                if (!str.equals(f3737)) {
                    b = -1;
                } else {
                    b = 39;
                }
                break;
            case -1276273849:
                if (!str.equals(f3763)) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case -1115843213:
                if (!str.equals(f3764)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case -1088585376:
                if (!str.equals(f3736)) {
                    b = -1;
                } else {
                    b = 40;
                }
                break;
            case -989825485:
                if (!str.equals(f3750)) {
                    b = -1;
                } else {
                    b = Ascii.SUB;
                }
                break;
            case -838208757:
                if (!str.equals(f3749)) {
                    b = -1;
                } else {
                    b = Ascii.ESC;
                }
                break;
            case -643050252:
                if (!str.equals(f3769)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case -609786639:
                if (!str.equals(f3725)) {
                    b = -1;
                } else {
                    b = 51;
                }
                break;
            case -559540471:
                if (!str.equals(f3757)) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            case -498709917:
                if (!str.equals(f3727)) {
                    b = -1;
                } else {
                    b = 49;
                }
                break;
            case -498060603:
                if (!str.equals(f3775)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case -393802555:
                if (!str.equals(f3723)) {
                    b = -1;
                } else {
                    b = 53;
                }
                break;
            case -284636416:
                if (!str.equals(f3733)) {
                    b = -1;
                } else {
                    b = 43;
                }
                break;
            case -154075626:
                if (!str.equals(f3742)) {
                    b = -1;
                } else {
                    b = 34;
                }
                break;
            case -153002112:
                if (!str.equals(f3731)) {
                    b = -1;
                } else {
                    b = 45;
                }
                break;
            case 30304559:
                if (!str.equals(f3756)) {
                    b = -1;
                } else {
                    b = Ascii.DC4;
                }
                break;
            case 85893348:
                if (!str.equals(f3735)) {
                    b = -1;
                } else {
                    b = 41;
                }
                break;
            case 149942051:
                if (!str.equals(f3765)) {
                    b = -1;
                } else {
                    b = Ascii.VT;
                }
                break;
            case 204617641:
                if (!str.equals(f3719)) {
                    b = -1;
                } else {
                    b = 57;
                }
                break;
            case 204897024:
                if (!str.equals(f3726)) {
                    b = -1;
                } else {
                    b = 50;
                }
                break;
            case 307677661:
                if (!str.equals(f3734)) {
                    b = -1;
                } else {
                    b = 42;
                }
                break;
            case 308060116:
                if (!str.equals(f3732)) {
                    b = -1;
                } else {
                    b = 44;
                }
                break;
            case 320151695:
                if (!str.equals(f3729)) {
                    b = -1;
                } else {
                    b = 47;
                }
                break;
            case 334118616:
                if (!str.equals(f3760)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case 663296747:
                if (!str.equals(f3774)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 766880816:
                if (!str.equals(f3741)) {
                    b = -1;
                } else {
                    b = 35;
                }
                break;
            case 779287609:
                if (!str.equals(f3768)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case 823061407:
                if (!str.equals(f3744)) {
                    b = -1;
                } else {
                    b = 32;
                }
                break;
            case 846220331:
                if (!str.equals(f3716)) {
                    b = -1;
                } else {
                    b = 60;
                }
                break;
            case 894546539:
                if (!str.equals(f3748)) {
                    b = -1;
                } else {
                    b = Ascii.FS;
                }
                break;
            case 1052532031:
                if (!str.equals(f3724)) {
                    b = -1;
                } else {
                    b = 52;
                }
                break;
            case 1069602180:
                if (!str.equals(f3747)) {
                    b = -1;
                } else {
                    b = Ascii.GS;
                }
                break;
            case 1081984916:
                if (!str.equals(f3743)) {
                    b = -1;
                } else {
                    b = 33;
                }
                break;
            case 1180349927:
                if (!str.equals(f3767)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case 1226831433:
                if (!str.equals(f3739)) {
                    b = -1;
                } else {
                    b = 37;
                }
                break;
            case 1266525324:
                if (!str.equals(f3738)) {
                    b = -1;
                } else {
                    b = 38;
                }
                break;
            case 1267145181:
                if (!str.equals(f3728)) {
                    b = -1;
                } else {
                    b = 48;
                }
                break;
            case 1304950957:
                if (!str.equals(f3776)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case 1325013503:
                if (!str.equals(f3715)) {
                    b = -1;
                } else {
                    b = Base64.padSymbol;
                }
                break;
            case 1432059210:
                if (!str.equals(f3758)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            case 1517126868:
                if (!str.equals(f3770)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case 1628896204:
                if (!str.equals(f3745)) {
                    b = -1;
                } else {
                    b = Ascii.US;
                }
                break;
            case 1715808775:
                if (!str.equals(f3717)) {
                    b = -1;
                } else {
                    b = 59;
                }
                break;
            case 1773831812:
                if (!str.equals(f3753)) {
                    b = -1;
                } else {
                    b = Ascii.ETB;
                }
                break;
            case 1870849118:
                if (!str.equals(f3722)) {
                    b = -1;
                } else {
                    b = 54;
                }
                break;
            case 1910059890:
                if (!str.equals(f3754)) {
                    b = -1;
                } else {
                    b = Ascii.SYN;
                }
                break;
            case 1910219460:
                if (!str.equals(f3766)) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case 1955369613:
                if (!str.equals(f3740)) {
                    b = -1;
                } else {
                    b = 36;
                }
                break;
            case 1955530641:
                if (!str.equals(f3755)) {
                    b = -1;
                } else {
                    b = Ascii.NAK;
                }
                break;
            case 2019413793:
                if (!str.equals(f3761)) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case 2019599576:
                if (!str.equals(f3759)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case 2102577435:
                if (!str.equals(f3720)) {
                    b = -1;
                } else {
                    b = 56;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return AbstractAdapter.class;
            case 1:
                return Placement.class;
            case 2:
            case 3:
                return ControllerActivity.class;
            case 4:
            case 5:
                return InterstitialActivity.class;
            case 6:
            case 7:
                return OpenUrlActivity.class;
            case 8:
            case 9:
                return IronSourceBannerLayout.class;
            case 10:
                return BannerSmashListener.class;
            case 11:
                return IronSource.class;
            case 12:
                return ImpressionData.class;
            case 13:
                return ImpressionDataListener.class;
            case 14:
            case 15:
                return DTBAdView.class;
            case 16:
                return LevelPlayBannerListener.class;
            case 17:
                return LevelPlayInterstitialListener.class;
            case 18:
                return LevelPlayRewardedVideoAutomaticListener.class;
            case 19:
                return LevelPlayRewardedVideoListener.class;
            case 20:
                return LevelPlayRewardedVideoManualListener.class;
            case 21:
                return AdInfo.class;
            case 22:
                return LevelPlayNativeAd.class;
            case 23:
                return NativeAdLayout.class;
            case 24:
                return LevelPlayNativeAdListener.class;
            case 25:
                return LevelPlayMediaView.class;
            case 26:
                return AdapterNativeAdData.class;
            case 27:
                return NativeAdViewHolder.class;
            case 28:
                return InternalNativeAdListener.class;
            case 29:
                return NativeAdAdapterInterface.class;
            case 30:
                return NativeAdDataInterface.class;
            case 31:
                return NativeAdInteractionListener.class;
            case 32:
                return NativeAdInterface.class;
            case 33:
                return NativeAdLoadListener.class;
            case 34:
                return NativeAdSmashListener.class;
            case 35:
                return NativeAdViewBinderInterface.class;
            case 36:
                return AdData.class;
            case 37:
                return LevelPlayAdInfo.class;
            case 38:
            case 39:
                return LevelPlayBannerAdView.class;
            case 40:
                return LevelPlayBannerAdViewListener.class;
            case 41:
                return IronSourceAds.AdFormat.class;
            case 42:
                return BannerAdInfo.class;
            case 43:
                return BannerAdRequest.class;
            case 44:
            case 45:
                return BannerAdView.class;
            case 46:
                return BannerAdViewListener.class;
            case 47:
                return InterstitialAd.class;
            case 48:
                return InterstitialAdInfo.class;
            case 49:
                return InterstitialAdListener.class;
            case 50:
                return InterstitialAdRequest.class;
            case 51:
                return RewardedAd.class;
            case 52:
                return RewardedAdInfo.class;
            case 53:
                return RewardedAdListener.class;
            case 54:
                return RewardedAdRequest.class;
            case 55:
                return LevelPlayInterstitialAd.class;
            case 56:
                return LevelPlayInterstitialAdListener.class;
            case 57:
                return LevelPlayRewardedAd.class;
            case 58:
                return LevelPlayRewardedAdListener.class;
            case 59:
                return LevelPlayReward.class;
            case 60:
                return LevelPlayImpressionData.class;
            case 61:
                return LevelPlayImpressionDataListener.class;
            default:
                return null;
        }
    }
}
