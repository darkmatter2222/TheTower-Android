package com.ironsource.adqualitysdk.sdk.i;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;
import net.pubnative.lite.sdk.AdCache;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.UserDataManager;
import net.pubnative.lite.sdk.api.RequestManager;
import net.pubnative.lite.sdk.auction.AdSourceConfig;
import net.pubnative.lite.sdk.auction.Auction;
import net.pubnative.lite.sdk.auction.HyBidAdSource;
import net.pubnative.lite.sdk.auction.VastTagAdSource;
import net.pubnative.lite.sdk.banner.presenter.BannerPresenterFactory;
import net.pubnative.lite.sdk.banner.presenter.MraidAdPresenter;
import net.pubnative.lite.sdk.banner.presenter.VastAdPresenter;
import net.pubnative.lite.sdk.browser.BrowserManager;
import net.pubnative.lite.sdk.interstitial.HyBidInterstitialAd;
import net.pubnative.lite.sdk.interstitial.HyBidInterstitialBroadcastReceiver;
import net.pubnative.lite.sdk.interstitial.HyBidInterstitialBroadcastSender;
import net.pubnative.lite.sdk.interstitial.PNInterstitialAd;
import net.pubnative.lite.sdk.interstitial.activity.HyBidInterstitialActivity;
import net.pubnative.lite.sdk.interstitial.activity.MraidInterstitialActivity;
import net.pubnative.lite.sdk.interstitial.activity.VastInterstitialActivity;
import net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenterDecorator;
import net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenterFactory;
import net.pubnative.lite.sdk.interstitial.presenter.MraidInterstitialPresenter;
import net.pubnative.lite.sdk.interstitial.presenter.VastInterstitialPresenter;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.models.AdData;
import net.pubnative.lite.sdk.models.AdExt;
import net.pubnative.lite.sdk.models.AdResponse;
import net.pubnative.lite.sdk.models.AdvertisingInfo;
import net.pubnative.lite.sdk.models.RemoteConfigAppInfo;
import net.pubnative.lite.sdk.models.VASTtag;
import net.pubnative.lite.sdk.mraid.MRAIDBanner;
import net.pubnative.lite.sdk.mraid.MRAIDInterstitial;
import net.pubnative.lite.sdk.mraid.MRAIDView;
import net.pubnative.lite.sdk.presenter.AdPresenterDecorator;
import net.pubnative.lite.sdk.presenter.PresenterFactory;
import net.pubnative.lite.sdk.rewarded.HyBidRewardedAd;
import net.pubnative.lite.sdk.rewarded.HyBidRewardedBroadcastReceiver;
import net.pubnative.lite.sdk.rewarded.HyBidRewardedBroadcastSender;
import net.pubnative.lite.sdk.rewarded.activity.HyBidRewardedActivity;
import net.pubnative.lite.sdk.rewarded.activity.VastRewardedActivity;
import net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenterDecorator;
import net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenterFactory;
import net.pubnative.lite.sdk.rewarded.presenter.VastRewardedPresenter;
import net.pubnative.lite.sdk.views.HyBidAdView;
import net.pubnative.lite.sdk.views.HyBidBannerAdView;
import net.pubnative.lite.sdk.views.HyBidLeaderboardAdView;
import net.pubnative.lite.sdk.views.HyBidMRectAdView;
import net.pubnative.lite.sdk.views.PNAPIContentInfoView;
import net.pubnative.lite.sdk.views.PNAdView;
import net.pubnative.lite.sdk.views.PNBannerAdView;
import net.pubnative.lite.sdk.views.PNMRectAdView;
import net.pubnative.lite.sdk.views.PNWebView;
import net.pubnative.lite.sdk.visibility.ImpressionManager;
import net.pubnative.lite.sdk.vpaid.PlayerInfo;
import net.pubnative.lite.sdk.vpaid.VideoAd;
import net.pubnative.lite.sdk.vpaid.VideoAdController;
import net.pubnative.lite.sdk.vpaid.VideoAdListener;
import net.pubnative.lite.sdk.vpaid.VideoAdView;
import net.pubnative.lite.sdk.vpaid.models.vast.ClickThrough;
import net.pubnative.lite.sdk.vpaid.models.vast.ClickTracking;
import net.pubnative.lite.sdk.vpaid.models.vast.Companion;
import net.pubnative.lite.sdk.vpaid.models.vast.CompanionAds;
import net.pubnative.lite.sdk.vpaid.models.vast.CompanionClickThrough;
import net.pubnative.lite.sdk.vpaid.models.vast.CompanionClickTracking;
import net.pubnative.lite.sdk.vpaid.models.vast.Creative;
import net.pubnative.lite.sdk.vpaid.models.vast.Creatives;
import net.pubnative.lite.sdk.vpaid.models.vast.InLine;
import net.pubnative.lite.sdk.vpaid.models.vast.MediaFile;
import net.pubnative.lite.sdk.vpaid.models.vast.MediaFiles;
import net.pubnative.lite.sdk.vpaid.models.vast.StaticResource;
import net.pubnative.lite.sdk.vpaid.models.vast.VASTAdTagURI;
import net.pubnative.lite.sdk.vpaid.models.vast.Vast;
import net.pubnative.lite.sdk.vpaid.models.vast.VastAdSource;
import net.pubnative.lite.sdk.vpaid.models.vast.VideoClicks;
import net.pubnative.lite.sdk.vpaid.models.vast.Wrapper;
import net.pubnative.lite.sdk.vpaid.models.vpaid.CreativeParams;
import net.pubnative.lite.sdk.vpaid.response.AdParams;
import net.pubnative.lite.sdk.vpaid.response.VastProcessor;
import net.pubnative.lite.sdk.vpaid.vast.ViewControllerVast;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ɨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0176 extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f1024 = StringFog.decrypt("TJok0wqcBW5Amj4=\n", "K/9QknrsUQE=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f1023 = StringFog.decrypt("BbWXXtbw0MEJopNSxfTN5Ag=\n", "bMbFO6GRoqU=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f1022 = StringFog.decrypt("G5goAOHrfE4pmRA/+/t8Tw2P\n", "aP1cVoiPGSE=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f1021 = StringFog.decrypt("Sg0CZoe08ulD\n", "LWh2J+P+gYY=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f1020 = StringFog.decrypt("xQ/FBbCYu0bDHtgysZKt\n", "omqxRNTbySM=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f1019 = StringFog.decrypt("/PEwtAOY9crv\n", "m5RE9WfOlLk=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f1018 = StringFog.decrypt("FpTuw3HuJjYUuP4=\n", "cfGaghW0SVg=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f1017 = StringFog.decrypt("vvA+BhkIeUi4\n", "2ZVKR31FHDw=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f1016 = StringFog.decrypt("BdAZgQzSH9QHwQ==\n", "YrVtwGiTbKc=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f1015 = StringFog.decrypt("kYSPefOu/keVjpVL\n", "9uH7OJfsmyY=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f1014 = StringFog.decrypt("OWy2vdRAfrE7fZeO3A==\n", "XgnC/LABDcI=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f1013 = StringFog.decrypt("LBMh21YSJjAqPiH3Xg==\n", "S3ZVmjJWR0Q=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f1012 = StringFog.decrypt("M/uF4447jas11II=\n", "VJ7xoup/7N8=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f1011 = StringFog.decrypt("old8HCYcrVOkZ3ox\n", "xTIIXUJYzCc=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f1010 = StringFog.decrypt("QlyHWyQm4V1EaodoKQznb0xcn34=\n", "JTnzGkBigCk=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f1009 = StringFog.decrypt("bbp32rdzJHFYoXberFcUf2e7Zt6tcwI=\n", "DsgSu8MWcDM=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f1008 = StringFog.decrypt("099nqhJwXGbV12C4AlJUetM=\n", "tLoT63YgPRQ=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f1007 = StringFog.decrypt("VYLpZ8RtVXxTiu5vxA==\n", "MuedJqA9NA4=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f1006 = StringFog.decrypt("4sxN3BHOT7fkxErLHPpLqtfMXfQH+02x0NtV\n", "hak5nXWeLsU=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f1005 = StringFog.decrypt("ekfHzvr5IT98T8DK8M0DLG9G4er6wDIoflbm/fI=\n", "HSKzj56pQE0=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f1004 = StringFog.decrypt("/yiol1LcboL5IK+AX+hqn9shtbVd/w==\n", "mE3c1jaMD/A=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f1003 = StringFog.decrypt("mmr/N5DHk0KcYvgzmvOxUY9ryBqd9JlD\n", "/Q+LdvSX8jA=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f1002 = StringFog.decrypt("tHPeMpqouvmye9kll5y+5JV/xharirf4n3/ZBw==\n", "0xaqc/7424s=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f1001 = StringFog.decrypt("MTppyshJevk3Mm7Own1Y6iQ7SPnAVXL4Ig==\n", "Vl8di6wZG4s=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f1000 = StringFog.decrypt("BWvKYnfNns0DY80=\n", "Yg6+IxOd/78=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f999 = StringFog.decrypt("tWfOoj5nNo2RbtOXPHAQjrth0aA/cTyXtWo=\n", "0gK69FcDU+I=\n");

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f998 = StringFog.decrypt("jafZL2AWd7yprsQaYgFRv4Ohxi17E3G4g6zKNWABZg==\n", "6sKteQlyEtM=\n");

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f997 = StringFog.decrypt("+GjDDxuwLGPxZNgiN7E1YfRZ3z4bqDtq\n", "nw23THTdXAI=\n");

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static final String f996 = StringFog.decrypt("MlHeGTYZsV48Qs8ZKxGgSztdxTQFGKM=\n", "VTSqWkR80Co=\n");

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static final String f995 = StringFog.decrypt("1PH7YTALXO3W1/1NPxNc9dbn\n", "s5SPKF5nNYM=\n");

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static final String f994 = StringFog.decrypt("bAHYIBlxUmJvN8MDCmFDYHkBzQIRdENQ\n", "C2SsdngCJiM=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f993 = StringFog.decrypt("8Hl45Cgw/avRdWDMGTHsvg==\n", "lxwMqU1UlMo=\n");

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static final String f992 = StringFog.decrypt("piLCE+x9ER+iFdMz92kXFaQT0zjs\n", "wUe2QJgcZXY=\n");

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static final String f991 = StringFog.decrypt("XAoAWWmcIRdYPRF5cognHV4sBm98iTwIXjsNeng=\n", "O290Ch39VX4=\n");

    /* JADX INFO: renamed from: ᖅ, reason: contains not printable characters */
    public static final String f990 = StringFog.decrypt("pyPPZa4BtFWlNPhAuQGwTLYjyA==\n", "wEa7MtxgxCU=\n");

    /* JADX INFO: renamed from: ᕆ, reason: contains not printable characters */
    public static final String f989 = StringFog.decrypt("ftusRI0x68t8zI5SrATa303fv0atGQ==\n", "Gb7YE/9Qm7s=\n");

    /* JADX INFO: renamed from: ᕄ, reason: contains not printable characters */
    public static final String f988 = StringFog.decrypt("ICHkwATVKNguMvXTF8IowTQH4uYXxCDaIgDx9xc=\n", "R0SQg3awSaw=\n");

    /* JADX INFO: renamed from: ᕃ, reason: contains not printable characters */
    public static final String f987 = StringFog.decrypt("grooE3mkW3mMqTkAarNbYJaaMiZis1VjiLoyJF2gSH4=\n", "5d9cUAvBOg0=\n");

    /* JADX INFO: renamed from: ᕂ, reason: contains not printable characters */
    public static final String f986 = StringFog.decrypt("8Bkaytk=\n", "uGBYo71Dea8=\n");

    /* JADX INFO: renamed from: ᔽ, reason: contains not printable characters */
    public static final String f985 = StringFog.decrypt("BZ6a3USXxA==\n", "RPrZvCf/oY0=\n");

    /* JADX INFO: renamed from: ᔺ, reason: contains not printable characters */
    public static final String f984 = StringFog.decrypt("UkmtilpcBtxKW6aZeVgA\n", "BzrI+B49cr0=\n");

    /* JADX INFO: renamed from: ᔹ, reason: contains not printable characters */
    public static final String f983 = StringFog.decrypt("ee80jwzuUutf7AmcB/xG50I=\n", "MIJE/WmdIYI=\n");

    /* JADX INFO: renamed from: ᔲ, reason: contains not printable characters */
    public static final String f982 = StringFog.decrypt("rg4QsN4oX6+dBQCi3ik=\n", "/GthxbtbK+I=\n");

    /* JADX INFO: renamed from: ᔱ, reason: contains not printable characters */
    public static final String f981 = StringFog.decrypt("4cNMlQJEnePjyHGcHlE=\n", "oKcf+nc2/oY=\n");

    /* JADX INFO: renamed from: ᓮ, reason: contains not printable characters */
    public static final String f980 = StringFog.decrypt("Nk8smEaTEYMRQxySRw==\n", "fjZu8SLSddA=\n");

    /* JADX INFO: renamed from: ᐱ, reason: contains not printable characters */
    public static final String f979 = StringFog.decrypt("h68m0u9mfTa1nTrTyWR/\n", "0c5VprsHGnc=\n");

    /* JADX INFO: renamed from: Ꮭ, reason: contains not printable characters */
    public static final String f978 = StringFog.decrypt("alY9OgxyWw==\n", "KyNeTmUdNRo=\n");

    /* JADX INFO: renamed from: Ꮧ, reason: contains not printable characters */
    public static final String f977 = StringFog.decrypt("16r1S7CTxBPwuP5LoYTmJ/So70qnmA==\n", "lcubJdXhlGE=\n");

    /* JADX INFO: renamed from: პ, reason: contains not printable characters */
    public static final String f976 = StringFog.decrypt("o1EuD+++fL6cRjwD5Yt9nA==\n", "7iNPZov/GO4=\n");

    /* JADX INFO: renamed from: ე, reason: contains not printable characters */
    public static final String f975 = StringFog.decrypt("DZf47lCo7Yo+he70ZanP\n", "W/aLmhHMvfg=\n");

    /* JADX INFO: renamed from: ງ, reason: contains not printable characters */
    public static final String f974 = StringFog.decrypt("FVJySzWIgmY2TnxbI58=\n", "VyAdPEbt8Cs=\n");

    /* JADX INFO: renamed from: อ, reason: contains not printable characters */
    public static final String f973 = StringFog.decrypt("pXNk0anKCBmIeFXMpPcPDIFLQg==\n", "7QomuM2DZm0=\n");

    /* JADX INFO: renamed from: ม, reason: contains not printable characters */
    public static final String f972 = StringFog.decrypt("oR5vHvtc+KyMFV4D9mH/uYUlXxj+cfW5mhN/Evxw/66MFQ==\n", "6Wctd58Vltg=\n");

    /* JADX INFO: renamed from: น, reason: contains not printable characters */
    public static final String f971 = StringFog.decrypt("fjZeUtApLO5TPW9P3RQr+1oNblTVBCH7RTtPXtoEJ+g=\n", "Nk8cO7RgQpo=\n");

    /* JADX INFO: renamed from: ต, reason: contains not printable characters */
    public static final String f970 = StringFog.decrypt("xJ2imA1qrvvgup+fGGOd7A==\n", "lNPr9nkP3Ig=\n");

    /* JADX INFO: renamed from: ฑ, reason: contains not printable characters */
    public static final String f969 = StringFog.decrypt("0ORjNQykap7t43Y8LqV7hPzkYzUMk3uU9vh2JBGl\n", "mYoXUH7XHvc=\n");

    /* JADX INFO: renamed from: ঢ়, reason: contains not printable characters */
    public static final String f968 = StringFog.decrypt("P3pIhoi8eU0CfV2Pqr1oVxN6SIaIiWxHAntOmg==\n", "dhQ84/rPDSQ=\n");

    /* JADX INFO: renamed from: ষ, reason: contains not printable characters */
    public static final String f967 = StringFog.decrypt("Y2HqVrC5pUVLYfhLvYSiUEJD+VqnlaVFS2E=\n", "LhOLP9TwyzE=\n");

    /* JADX INFO: renamed from: ঘ, reason: contains not printable characters */
    public static final String f966 = StringFog.decrypt("AQZOtfLGGHMlFEmoz8ENegcVWLLexhhzJQ==\n", "V2c9wbuobBY=\n");

    /* JADX INFO: renamed from: খ, reason: contains not printable characters */
    public static final String f965 = StringFog.decrypt("Ziq6tWII0i1pO6ftd1PcKnwq4Oh2Fp4qZjur6WEJ2TdhLqK1cx7EKn4muuI8NckBYSuH9WYYwjB8\nJrrycxHxIHwmuPJmBA==\n", "CE/OmxJ9sEM=\n");

    /* JADX INFO: renamed from: এ, reason: contains not printable characters */
    public static final String f964 = StringFog.decrypt("vK8aqoWzggmRpCu3iI6FHJiXO7eIjIUJjQ==\n", "9NZYw+H67H0=\n");

    /* JADX INFO: renamed from: ऱ, reason: contains not printable characters */
    public static final String f963 = StringFog.decrypt("VCB3MZ1Z8FpbMWppiAL+XU4gLWyJR7xdVDFmbZ5Y+0BTJG8xjE/mXUwsd2bDYeBVUyFKcZlJ4EdO\nLHd2jEDTV04sdXaZVQ==\n", "OkUDH+0skjQ=\n");

    /* JADX INFO: renamed from: ܟ, reason: contains not printable characters */
    public static final String f962 = StringFog.decrypt("wVP5OVJdJ4jpU+skX2AgneBg+yRfYiCI9Q==\n", "jCGYUDYUSfw=\n");

    /* JADX INFO: renamed from: ܘ, reason: contains not printable characters */
    public static final String f961 = StringFog.decrypt("h3E0rDWL5TuIYCn0INDrPJ1xbvEhlak8h2Al8DaK7iGAdSysJJ3zPJ99NPtrqOYmnV0u9iCM9CGA\nYCnjKb/kIYBiKfY8\n", "6RRAgkX+h1U=\n");

    /* JADX INFO: renamed from: ے, reason: contains not printable characters */
    public static final String f960 = StringFog.decrypt("168CeZlD2K/zvQVkpETNpsCtBWSmRNiz\n", "gc5xDdAtrMo=\n");

    /* JADX INFO: renamed from: ۉ, reason: contains not printable characters */
    public static final String f959 = StringFog.decrypt("pVw=\n", "5DjmdZ4sqO8=\n");

    /* JADX INFO: renamed from: ۅ, reason: contains not printable characters */
    public static final String f958 = StringFog.decrypt("DXAF3fDL\n", "TBRBvISqB4A=\n");

    /* JADX INFO: renamed from: ڑ, reason: contains not printable characters */
    public static final String f957 = StringFog.decrypt("IphKbQc=\n", "Y/wPFXMAevo=\n");

    /* JADX INFO: renamed from: پ, reason: contains not printable characters */
    public static final String f956 = StringFog.decrypt("t6+UwZSnMsCFrg==\n", "9svGpOfXXa4=\n");

    /* JADX INFO: renamed from: ٽ, reason: contains not printable characters */
    public static final String f955 = StringFog.decrypt("N9Y0e1dmkqgf3CVXS3SU\n", "drJCHiUS+9s=\n");

    /* JADX INFO: renamed from: ث, reason: contains not printable characters */
    public static final String f954 = StringFog.decrypt("8QXzxotzmo3NBvfOvmapq80G8Q==\n", "o2Ceqf8W2eI=\n");

    /* JADX INFO: renamed from: ת, reason: contains not printable characters */
    public static final String f953 = StringFog.decrypt("r5Rzi4Shbg==\n", "+dUg3/DACUE=\n");

    /* JADX INFO: renamed from: ק, reason: contains not printable characters */
    public static final String f952 = StringFog.decrypt("UbHewrcyEaVr\n", "HOOfi/NkeMA=\n");

    /* JADX INFO: renamed from: פ, reason: contains not printable characters */
    public static final String f951 = StringFog.decrypt("lrrY0i0Iof2+murvADWm6Lc=\n", "2+iZm2lBz4k=\n");

    /* JADX INFO: renamed from: ս, reason: contains not printable characters */
    public static final String f950 = StringFog.decrypt("c92vBpQwfTBQ6pw=\n", "Po/uT9ByHF4=\n");

    /* JADX INFO: renamed from: ո, reason: contains not printable characters */
    public static final String f949 = StringFog.decrypt("/DbrlsqoYsLJN8mgyrho3twm1JY=\n", "vVK75K/bB6w=\n");

    /* JADX INFO: renamed from: յ, reason: contains not printable characters */
    public static final String f948 = StringFog.decrypt("sPjiRSf23WaSzOZVNvfbeg==\n", "4IqHNkKYqQM=\n");

    /* JADX INFO: renamed from: Ն, reason: contains not printable characters */
    public static final String f947 = StringFog.decrypt("mb5c/wzRuRywtXrzDMK4\n", "0ccelmiD3Gs=\n");

    /* JADX INFO: renamed from: Ԇ, reason: contains not printable characters */
    public static final String f946 = StringFog.decrypt("KzxVFSynvLkCN3MZLLeroQIhdB07gYurACB+Ci2H\n", "Y0UXfEj12c4=\n");

    /* JADX INFO: renamed from: Ӵ, reason: contains not printable characters */
    public static final String f945 = StringFog.decrypt("Ft9uNaVHUck/1Eg5pVdG0T/CTz2yYWfbMMJJLg==\n", "XqYsXMEVNL4=\n");

    /* JADX INFO: renamed from: ӟ, reason: contains not printable characters */
    public static final String f944 = StringFog.decrypt("JuShWqntPZQk87NIvucslQbFs1i0+zmEG/M=\n", "dIHWO9uJWPA=\n");

    /* JADX INFO: renamed from: Ҭ, reason: contains not printable characters */
    public static final String f943 = StringFog.decrypt("M0jmyIZqTrcxX/TakWBfthNr8MqAYVmq\n", "YS2RqfQOK9M=\n");

    /* JADX INFO: renamed from: Ғ, reason: contains not printable characters */
    public static final String f942 = StringFog.decrypt("nhfEnMesZmm6EtKMxbt0e60Yw43n\n", "yHa36JXJEQg=\n");

    /* JADX INFO: renamed from: ѵ, reason: contains not printable characters */
    public static final String f941 = StringFog.decrypt("A3z3QaHHYLgMbeoZtJxuvxl8rRy12SykCG7iHbXXZvgMevcGp9t2r0NR+i241lCzGnjxC7TWQ7UZ\ncPUGpcs=\n", "bRmDb9GyAtY=\n");

    /* JADX INFO: renamed from: п, reason: contains not printable characters */
    public static final String f940 = StringFog.decrypt("PN3uEYzDx8MV1sgdjNDBwB3SxQyR\n", "dKSseOiRorQ=\n");

    /* JADX INFO: renamed from: н, reason: contains not printable characters */
    public static final String f939 = StringFog.decrypt("gFYthYuEK7aPRzDdnt8lsZpWd9ifmmeqi0Q42Z+ULfaPUC3CjZg9ocBlONiPoyyvj0E9zp+wKqyH\nRTDfgg==\n", "7jNZq/vxSdg=\n");

    /* JADX INFO: renamed from: У, reason: contains not printable characters */
    public static final String f938 = StringFog.decrypt("m2ZmUUwmYQW/Y3BBXyBiDbtuYVw=\n", "zQcVJR5DFmQ=\n");

    /* JADX INFO: renamed from: С, reason: contains not printable characters */
    public static final String f937 = StringFog.decrypt("BfKfuyEuFsg=\n", "Vbze33dHc78=\n");

    /* JADX INFO: renamed from: Ϲ, reason: contains not printable characters */
    public static final String f936 = StringFog.decrypt("NfPqAWwIMqcU798=\n", "fYqoaAhJVvE=\n");

    /* JADX INFO: renamed from: ϵ, reason: contains not printable characters */
    public static final String f935 = StringFog.decrypt("cW599hyi28FXck3eHLbTyk4=\n", "ORc/n3jguq8=\n");

    /* JADX INFO: renamed from: ϯ, reason: contains not printable characters */
    public static final String f934 = StringFog.decrypt("JTuVqmlumNcJJ6WhYkOP0iwmgapoVQ==\n", "bULXww0i/bY=\n");

    /* JADX INFO: renamed from: Ϯ, reason: contains not printable characters */
    public static final String f933 = StringFog.decrypt("pEDH9Gi3CrqPTcT5WpM9qA==\n", "7DmFnQz6WN8=\n");

    /* JADX INFO: renamed from: ϝ, reason: contains not printable characters */
    public static final String f932 = StringFog.decrypt("ersEpJ0M0ANekCuAnSHZAnycIIM=\n", "KvVF9NRPv20=\n");

    /* JADX INFO: renamed from: ϙ, reason: contains not printable characters */
    public static final String f931 = StringFog.decrypt("vgvhu4tPXdmvIfWzgFY=\n", "7kWj2uUhOKs=\n");

    /* JADX INFO: renamed from: Λ, reason: contains not printable characters */
    public static final String f930 = StringFog.decrypt("Z0tfcLUjV0hTU3tHpw==\n", "NwUSItBAIwk=\n");

    /* JADX INFO: renamed from: Κ, reason: contains not printable characters */
    public static final String f929 = StringFog.decrypt("j3m3ygRZMS+o\n", "3zfgr2YPWEo=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f928 = StringFog.decrypt("psJeAAJYhw==\n", "8Ks6ZW0Z45Y=\n");

    /* JADX INFO: renamed from: ʜ, reason: contains not printable characters */
    public static final String f927 = StringFog.decrypt("vvBNh2USvgmB6l2HZDao\n", "6Jkp4gpT2kU=\n");

    /* JADX INFO: renamed from: Ȳ, reason: contains not printable characters */
    public static final String f926 = StringFog.decrypt("u1ygkS1pfMqEULM=\n", "7TXE9EIoGJw=\n");

    /* JADX INFO: renamed from: ȝ, reason: contains not printable characters */
    public static final String f925 = StringFog.decrypt("UJre9eOmghJjiN7uwQ==\n", "BvutgbPU7XE=\n");

    /* JADX INFO: renamed from: ƈ, reason: contains not printable characters */
    public static final String f924 = StringFog.decrypt("2dAkl0qWt7nv0w==\n", "ibxF7i/k/tc=\n");

    /* JADX INFO: renamed from: Ɔ, reason: contains not printable characters */
    public static final String f923 = StringFog.decrypt("0YEN1ArY5hX8ijzJB+XhAPW5K/EH4vwE9509\n", "mfhPvW6RiGE=\n");

    /* JADX INFO: renamed from: Ť, reason: contains not printable characters */
    public static final String f922 = StringFog.decrypt("EhfnTlB6SN07HMFCUGlJ5jMd0UJaTV8=\n", "Wm6lJzQoLao=\n");

    /* JADX INFO: renamed from: ţ, reason: contains not printable characters */
    public static final String f921 = StringFog.decrypt("f7sYA2VaFL1epy0maGgEjlmnKA==\n", "N8JaagEbcOs=\n");

    /* JADX INFO: renamed from: ō, reason: contains not printable characters */
    public static final String f920 = StringFog.decrypt("i6NrLDs+oD67rVQ2Kz6hGq0=\n", "3+E9RV9bz38=\n");

    /* JADX INFO: renamed from: Ł, reason: contains not printable characters */
    public static final String f919 = StringFog.decrypt("c22u6xjzM/g=\n", "Mgn+imqSXos=\n");

    /* JADX INFO: renamed from: Ĵ, reason: contains not printable characters */
    public static final String f918 = StringFog.decrypt("9ufONiIf8xXS4cctBALLANP6\n", "oI6rQWFwnWE=\n");

    /* JADX INFO: renamed from: ﾓ, reason: contains not printable characters */
    public static final String f1043 = StringFog.decrypt("Xdx6HFgt1ipk22oLWADeDHk=\n", "C7UeeTdssmk=\n");

    /* JADX INFO: renamed from: ﾊ, reason: contains not printable characters */
    public static final String f1042 = StringFog.decrypt("flTU0C7tOktLVsM=\n", "KD2wtUGuViI=\n");

    /* JADX INFO: renamed from: ﾁ, reason: contains not printable characters */
    public static final String f1041 = StringFog.decrypt("8bjuoX20MArdoeCq\n", "stSHwhbgWHg=\n");

    /* JADX INFO: renamed from: ｽ, reason: contains not printable characters */
    public static final String f1040 = StringFog.decrypt("Ckgx4uvIkaUqTzHv5w==\n", "SSRYgYCc48Q=\n");

    /* JADX INFO: renamed from: ｹ, reason: contains not printable characters */
    public static final String f1039 = StringFog.decrypt("2H1K+QLmC/z1\n", "mxIniWOIYpM=\n");

    /* JADX INFO: renamed from: ｸ, reason: contains not printable characters */
    public static final String f1038 = StringFog.decrypt("sBAdUS+Jv22dPhRS\n", "839wIU7n1gI=\n");

    /* JADX INFO: renamed from: ｷ, reason: contains not printable characters */
    public static final String f1037 = StringFog.decrypt("hjyK5ommfv2rEIv/i6ND+rc8kvGA\n", "xVPnlujIF5I=\n");

    /* JADX INFO: renamed from: ｳ, reason: contains not printable characters */
    public static final String f1036 = StringFog.decrypt("cpiT+P24jJRftJLh/72xiVCUleHysQ==\n", "Mff+iJzW5fs=\n");

    /* JADX INFO: renamed from: ｦ, reason: contains not printable characters */
    public static final String f1035 = StringFog.decrypt("ICO7/Pfksaw=\n", "Y1HenYONx8k=\n");

    /* JADX INFO: renamed from: ｓ, reason: contains not printable characters */
    public static final String f1034 = StringFog.decrypt("PCT1KbXO9LkM\n", "f1aQSMGngtw=\n");

    /* JADX INFO: renamed from: ｒ, reason: contains not printable characters */
    public static final String f1033 = StringFog.decrypt("XYg6Adn4\n", "FOZ2aLedfIc=\n");

    /* JADX INFO: renamed from: ｎ, reason: contains not printable characters */
    public static final String f1032 = StringFog.decrypt("qsUqyxvWYl6J1jra\n", "/KRZv1qyMTE=\n");

    /* JADX INFO: renamed from: ｌ, reason: contains not printable characters */
    public static final String f1031 = StringFog.decrypt("mFiTaeT7pcWw\n", "1T33AIW9zKk=\n");

    /* JADX INFO: renamed from: Ｉ, reason: contains not printable characters */
    public static final String f1030 = StringFog.decrypt("Nif+FtVK7nEeMQ==\n", "e0Kaf7QMhx0=\n");

    /* JADX INFO: renamed from: Ｆ, reason: contains not printable characters */
    public static final String f1029 = StringFog.decrypt("yc9awtf2eKvp1E7E3fA=\n", "mrs7tr6VKs4=\n");

    /* JADX INFO: renamed from: ﻢ, reason: contains not printable characters */
    public static final String f1028 = StringFog.decrypt("xgiHAQ==\n", "kGn0da6iQBw=\n");

    /* JADX INFO: renamed from: ﻌ, reason: contains not printable characters */
    public static final String f1027 = StringFog.decrypt("BapDaBxMmg==\n", "UtgiGGwp6H8=\n");

    /* JADX INFO: renamed from: ﻋ, reason: contains not printable characters */
    public static final String f1026 = StringFog.decrypt("m5hdi+FKLkqqjFyW\n", "zdkO36Aueis=\n");

    /* JADX INFO: renamed from: ﺧ, reason: contains not printable characters */
    public static final String f1025 = StringFog.decrypt("hmBrEOtxKcaVc3wQ8ms=\n", "xRIOcZ8YX6M=\n");

    public C0176(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        return HyBid.getHyBidVersion();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f1024, new C0768(this));
        map.put(f1023, new C0626(this));
        map.put(f1022, new C0291(this));
        map.put(f1021, new C0284(this));
        map.put(f1020, new C0254(this));
        map.put(f1019, new C0207(this));
        map.put(f1018, new C0203(this));
        map.put(f1017, new C0188(this));
        map.put(f1016, new C0187(this));
        map.put(f1015, new C0925(this));
        map.put(f1014, new C0921(this));
        map.put(f1013, new C0898(this));
        map.put(f1012, new C0896(this));
        map.put(f1011, new C0895(this));
        map.put(f1010, new C0883(this));
        map.put(f1009, new C0813(this));
        map.put(f1008, new C0812(this));
        map.put(f1007, new C0783(this));
        map.put(f1006, new C0777(this));
        map.put(f1005, new C0746(this));
        map.put(f1004, new C0745(this));
        map.put(f1003, new C0741(this));
        map.put(f1002, new C0739(this));
        map.put(f1001, new C0737(this));
        map.put(f1000, new C0734(this));
        map.put(f999, new C0722(this));
        map.put(f998, new C0721(this));
        map.put(f997, new C0717(this));
        map.put(f996, new C0705(this));
        map.put(f995, new C0589(this));
        map.put(f994, new C0585(this));
        map.put(f993, new C0550(this));
        map.put(f992, new C0532(this));
        map.put(f991, new C0488(this));
        map.put(f990, new C0473(this));
        map.put(f989, new C0432(this));
        map.put(f988, new C0399(this));
        map.put(f987, new C0380(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:269:0x0418  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -2115104349:
                if (!str.equals(f926)) {
                    b = -1;
                } else {
                    b = 60;
                }
                break;
            case -2101083431:
                if (!str.equals(f1033)) {
                    b = -1;
                } else {
                    b = 79;
                }
                break;
            case -2095699225:
                if (!str.equals(f960)) {
                    b = -1;
                } else {
                    b = Ascii.SUB;
                }
                break;
            case -2049897434:
                if (!str.equals(f1042)) {
                    b = -1;
                } else {
                    b = 70;
                }
                break;
            case -2030915791:
                if (!str.equals(f939)) {
                    b = -1;
                } else {
                    b = 47;
                }
                break;
            case -2022878658:
                if (!str.equals(f982)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case -1973009238:
                if (!str.equals(f1032)) {
                    b = -1;
                } else {
                    b = 80;
                }
                break;
            case -1867123455:
                if (!str.equals(f941)) {
                    b = -1;
                } else {
                    b = 45;
                }
                break;
            case -1758764491:
                if (!str.equals(f1025)) {
                    b = -1;
                } else {
                    b = 87;
                }
                break;
            case -1741983831:
                if (!str.equals(f919)) {
                    b = -1;
                } else {
                    b = 67;
                }
                break;
            case -1692490108:
                if (!str.equals(f1034)) {
                    b = -1;
                } else {
                    b = 78;
                }
                break;
            case -1668741680:
                if (!str.equals(f966)) {
                    b = -1;
                } else {
                    b = Ascii.DC4;
                }
                break;
            case -1474059205:
                if (!str.equals(f929)) {
                    b = -1;
                } else {
                    b = 57;
                }
                break;
            case -1454339106:
                if (!str.equals(f971)) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case -1305745411:
                if (!str.equals(f947)) {
                    b = -1;
                } else {
                    b = 39;
                }
                break;
            case -1042733280:
                if (!str.equals(f981)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case -1040143378:
                if (!str.equals(f976)) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case -1034806157:
                if (!str.equals(f1027)) {
                    b = -1;
                } else {
                    b = 85;
                }
                break;
            case -1007287447:
                if (!str.equals(f940)) {
                    b = -1;
                } else {
                    b = 46;
                }
                break;
            case -917597044:
                if (!str.equals(f963)) {
                    b = -1;
                } else {
                    b = Ascii.ETB;
                }
                break;
            case -889171374:
                if (!str.equals(f962)) {
                    b = -1;
                } else {
                    b = Ascii.CAN;
                }
                break;
            case -844922724:
                if (!str.equals(f952)) {
                    b = -1;
                } else {
                    b = 34;
                }
                break;
            case -801627293:
                if (!str.equals(f950)) {
                    b = -1;
                } else {
                    b = 36;
                }
                break;
            case -747024196:
                if (!str.equals(f945)) {
                    b = -1;
                } else {
                    b = 41;
                }
                break;
            case -729230458:
                if (!str.equals(f925)) {
                    b = -1;
                } else {
                    b = Base64.padSymbol;
                }
                break;
            case -709708726:
                if (!str.equals(f980)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case -617879491:
                if (!str.equals(f1041)) {
                    b = -1;
                } else {
                    b = 71;
                }
                break;
            case -594285390:
                if (!str.equals(f927)) {
                    b = -1;
                } else {
                    b = 59;
                }
                break;
            case -589715152:
                if (!str.equals(f932)) {
                    b = -1;
                } else {
                    b = 54;
                }
                break;
            case -587420703:
                if (!str.equals(f1026)) {
                    b = -1;
                } else {
                    b = 86;
                }
                break;
            case -567645543:
                if (!str.equals(f934)) {
                    b = -1;
                } else {
                    b = 52;
                }
                break;
            case -520974940:
                if (!str.equals(f956)) {
                    b = -1;
                } else {
                    b = Ascii.RS;
                }
                break;
            case -514201671:
                if (!str.equals(f975)) {
                    b = -1;
                } else {
                    b = Ascii.VT;
                }
                break;
            case -385055469:
                if (!str.equals(f1030)) {
                    b = -1;
                } else {
                    b = 82;
                }
                break;
            case -348198615:
                if (!str.equals(f1037)) {
                    b = -1;
                } else {
                    b = 75;
                }
                break;
            case -242952691:
                if (!str.equals(f970)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case -232966702:
                if (!str.equals(f955)) {
                    b = -1;
                } else {
                    b = Ascii.US;
                }
                break;
            case -217201711:
                if (!str.equals(f922)) {
                    b = -1;
                } else {
                    b = SignedBytes.MAX_POWER_OF_TWO;
                }
                break;
            case -205981873:
                if (!str.equals(f924)) {
                    b = -1;
                } else {
                    b = 62;
                }
                break;
            case -150968480:
                if (!str.equals(f1031)) {
                    b = -1;
                } else {
                    b = 81;
                }
                break;
            case -133293208:
                if (!str.equals(f921)) {
                    b = -1;
                } else {
                    b = 65;
                }
                break;
            case -114588646:
                if (!str.equals(f1043)) {
                    b = -1;
                } else {
                    b = 69;
                }
                break;
            case 2115:
                if (!str.equals(f959)) {
                    b = -1;
                } else {
                    b = Ascii.ESC;
                }
                break;
            case 2658924:
                if (!str.equals(f1028)) {
                    b = -1;
                } else {
                    b = 84;
                }
                break;
            case 22955995:
                if (!str.equals(f930)) {
                    b = -1;
                } else {
                    b = 56;
                }
                break;
            case 63078110:
                if (!str.equals(f957)) {
                    b = -1;
                } else {
                    b = Ascii.GS;
                }
                break;
            case 70165004:
                if (!str.equals(f986)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case 152629510:
                if (!str.equals(f937)) {
                    b = -1;
                } else {
                    b = 49;
                }
                break;
            case 254077974:
                if (!str.equals(f949)) {
                    b = -1;
                } else {
                    b = 37;
                }
                break;
            case 271735736:
                if (!str.equals(f984)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 282218207:
                if (!str.equals(f969)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case 287435653:
                if (!str.equals(f974)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case 353872196:
                if (!str.equals(f983)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case 378666444:
                if (!str.equals(f979)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case 424904237:
                if (!str.equals(f918)) {
                    b = -1;
                } else {
                    b = 68;
                }
                break;
            case 441957133:
                if (!str.equals(f933)) {
                    b = -1;
                } else {
                    b = 53;
                }
                break;
            case 476474561:
                if (!str.equals(f965)) {
                    b = -1;
                } else {
                    b = Ascii.NAK;
                }
                break;
            case 482776408:
                if (!str.equals(f972)) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            case 485976319:
                if (!str.equals(f985)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 504900231:
                if (!str.equals(f964)) {
                    b = -1;
                } else {
                    b = Ascii.SYN;
                }
                break;
            case 591135468:
                if (!str.equals(f1039)) {
                    b = -1;
                } else {
                    b = 73;
                }
                break;
            case 606183598:
                if (!str.equals(f968)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            case 676623548:
                if (!str.equals(f1029)) {
                    b = -1;
                } else {
                    b = 83;
                }
                break;
            case 767767497:
                if (!str.equals(f938)) {
                    b = -1;
                } else {
                    b = 48;
                }
                break;
            case 789926062:
                if (!str.equals(f977)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case 862687632:
                if (!str.equals(f943)) {
                    b = -1;
                } else {
                    b = 43;
                }
                break;
            case 956069326:
                if (!str.equals(f953)) {
                    b = -1;
                } else {
                    b = 33;
                }
                break;
            case 1002796579:
                if (!str.equals(f978)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case 1044987291:
                if (!str.equals(f973)) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case 1150879268:
                if (!str.equals(f1038)) {
                    b = -1;
                } else {
                    b = 74;
                }
                break;
            case 1164559907:
                if (!str.equals(f951)) {
                    b = -1;
                } else {
                    b = 35;
                }
                break;
            case 1199380782:
                if (!str.equals(f942)) {
                    b = -1;
                } else {
                    b = 44;
                }
                break;
            case 1228519789:
                if (!str.equals(f961)) {
                    b = -1;
                } else {
                    b = Ascii.EM;
                }
                break;
            case 1241891335:
                if (!str.equals(f954)) {
                    b = -1;
                } else {
                    b = 32;
                }
                break;
            case 1250739860:
                if (!str.equals(f936)) {
                    b = -1;
                } else {
                    b = 50;
                }
                break;
            case 1296210799:
                if (!str.equals(f923)) {
                    b = -1;
                } else {
                    b = 63;
                }
                break;
            case 1373883333:
                if (!str.equals(f967)) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            case 1402445010:
                if (!str.equals(f931)) {
                    b = -1;
                } else {
                    b = 55;
                }
                break;
            case 1506578400:
                if (!str.equals(f935)) {
                    b = -1;
                } else {
                    b = 51;
                }
                break;
            case 1521679714:
                if (!str.equals(f948)) {
                    b = -1;
                } else {
                    b = 38;
                }
                break;
            case 1607572150:
                if (!str.equals(f946)) {
                    b = -1;
                } else {
                    b = 40;
                }
                break;
            case 1877773523:
                if (!str.equals(f1036)) {
                    b = -1;
                } else {
                    b = 76;
                }
                break;
            case 1885066191:
                if (!str.equals(f1035)) {
                    b = -1;
                } else {
                    b = 77;
                }
                break;
            case 1955369613:
                if (!str.equals(f958)) {
                    b = -1;
                } else {
                    b = Ascii.FS;
                }
                break;
            case 1969459009:
                if (!str.equals(f944)) {
                    b = -1;
                } else {
                    b = 42;
                }
                break;
            case 2079062148:
                if (!str.equals(f920)) {
                    b = -1;
                } else {
                    b = 66;
                }
                break;
            case 2107600959:
                if (!str.equals(f1040)) {
                    b = -1;
                } else {
                    b = 72;
                }
                break;
            case 2117435870:
                if (!str.equals(f928)) {
                    b = -1;
                } else {
                    b = 58;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return HyBid.class;
            case 1:
                return AdCache.class;
            case 2:
                return UserDataManager.class;
            case 3:
                return ImpressionManager.class;
            case 4:
                return RequestManager.class;
            case 5:
                return AdSourceConfig.class;
            case 6:
                return HyBidAdSource.class;
            case 7:
                return VastTagAdSource.class;
            case 8:
                return Auction.class;
            case 9:
                return BannerPresenterFactory.class;
            case 10:
                return MraidAdPresenter.class;
            case 11:
                return VastAdPresenter.class;
            case 12:
                return BrowserManager.class;
            case 13:
                return HyBidInterstitialAd.class;
            case 14:
                return HyBidInterstitialBroadcastReceiver.class;
            case 15:
                return HyBidInterstitialBroadcastSender.class;
            case 16:
                return PNInterstitialAd.class;
            case 17:
                return InterstitialPresenterDecorator.class;
            case 18:
                return InterstitialPresenterFactory.class;
            case 19:
                return MraidInterstitialPresenter.class;
            case 20:
                return VastInterstitialPresenter.class;
            case 21:
            case 22:
                return HyBidInterstitialActivity.class;
            case 23:
            case 24:
                return MraidInterstitialActivity.class;
            case 25:
            case 26:
                return VastInterstitialActivity.class;
            case 27:
                return Ad.class;
            case 28:
                return AdData.class;
            case 29:
                return AdExt.class;
            case 30:
                return AdResponse.class;
            case 31:
                return AdvertisingInfo.class;
            case 32:
                return RemoteConfigAppInfo.class;
            case 33:
                return VASTtag.class;
            case 34:
                return MRAIDView.class;
            case 35:
                return MRAIDInterstitial.class;
            case 36:
                return MRAIDBanner.class;
            case 37:
                return AdPresenterDecorator.class;
            case 38:
                return PresenterFactory.class;
            case 39:
                return HyBidRewardedAd.class;
            case 40:
                return HyBidRewardedBroadcastReceiver.class;
            case 41:
                return HyBidRewardedBroadcastSender.class;
            case 42:
                return RewardedPresenterDecorator.class;
            case 43:
                return RewardedPresenterFactory.class;
            case 44:
                return VastRewardedPresenter.class;
            case 45:
            case 46:
                return HyBidRewardedActivity.class;
            case 47:
            case 48:
                return VastRewardedActivity.class;
            case 49:
                return PNAdView.class;
            case 50:
                return HyBidAdView.class;
            case 51:
                return HyBidBannerAdView.class;
            case 52:
                return HyBidLeaderboardAdView.class;
            case 53:
                return HyBidMRectAdView.class;
            case 54:
                return PNAPIContentInfoView.class;
            case 55:
                return PNBannerAdView.class;
            case 56:
                return PNMRectAdView.class;
            case 57:
                return PNWebView.class;
            case 58:
                return VideoAd.class;
            case 59:
                return VideoAdListener.class;
            case 60:
                return VideoAdView.class;
            case 61:
                return VastProcessor.class;
            case 62:
                return PlayerInfo.class;
            case 63:
                return HyBidInterstitialAd.Listener.class;
            case 64:
                return HyBidRewardedAd.Listener.class;
            case 65:
                return HyBidAdView.Listener.class;
            case 66:
                return C0178.class;
            case 67:
                return AdParams.class;
            case 68:
                return ViewControllerVast.class;
            case 69:
                return VideoAdController.class;
            case 70:
                return VideoClicks.class;
            case 71:
                return ClickThrough.class;
            case 72:
                return ClickTracking.class;
            case 73:
                return Companion.class;
            case 74:
                return CompanionAds.class;
            case 75:
                return CompanionClickThrough.class;
            case 76:
                return CompanionClickTracking.class;
            case 77:
                return Creative.class;
            case 78:
                return Creatives.class;
            case 79:
                return InLine.class;
            case 80:
                return VastAdSource.class;
            case 81:
                return MediaFile.class;
            case 82:
                return MediaFiles.class;
            case 83:
                return StaticResource.class;
            case 84:
                return Vast.class;
            case 85:
                return Wrapper.class;
            case 86:
                return VASTAdTagURI.class;
            case 87:
                return CreativeParams.class;
            default:
                return null;
        }
    }
}
