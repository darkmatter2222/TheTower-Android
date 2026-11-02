package com.ironsource.adqualitysdk.sdk.i;

import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;
import tv.superawesome.lib.samodelspace.saad.SAAd;
import tv.superawesome.lib.samodelspace.saad.SACreative;
import tv.superawesome.lib.samodelspace.saad.SACreativeFormat;
import tv.superawesome.lib.samodelspace.saad.SADetails;
import tv.superawesome.lib.samodelspace.saad.SAMedia;
import tv.superawesome.lib.samodelspace.saad.SAResponse;
import tv.superawesome.lib.samodelspace.vastad.SAVASTAd;
import tv.superawesome.lib.samodelspace.vastad.SAVASTMedia;
import tv.superawesome.lib.sawebplayer.SAWebPlayer;
import tv.superawesome.lib.sawebplayer.SAWebView;
import tv.superawesome.sdk.publisher.AwesomeAds;
import tv.superawesome.sdk.publisher.SABannerAd;
import tv.superawesome.sdk.publisher.SAEvent;
import tv.superawesome.sdk.publisher.SAInterface;
import tv.superawesome.sdk.publisher.SAInterstitialAd;
import tv.superawesome.sdk.publisher.SAVersion;
import tv.superawesome.sdk.publisher.SAVideoActivity;
import tv.superawesome.sdk.publisher.SAVideoAd;
import tv.superawesome.sdk.publisher.SAVideoClick;
import tv.superawesome.sdk.publisher.managed.AdViewJavaScriptBridge;
import tv.superawesome.sdk.publisher.managed.SACustomWebView;
import tv.superawesome.sdk.publisher.managed.SAManagedAdActivity;
import tv.superawesome.sdk.publisher.managed.SAManagedAdView;
import tv.superawesome.sdk.publisher.video.AdVideoPlayerControllerView;
import tv.superawesome.sdk.publisher.videoPlayer.IVideoPlayer;
import tv.superawesome.sdk.publisher.videoPlayer.IVideoPlayerController;
import tv.superawesome.sdk.publisher.videoPlayer.IVideoPlayerControllerView;
import tv.superawesome.sdk.publisher.videoPlayer.VideoPlayerActivity;
import tv.superawesome.sdk.publisher.videoPlayer.VideoPlayerController;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.יִ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0914 extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f3305 = StringFog.decrypt("QB+WQ+4rZFNOMbJe6Q==\n", "IXvBMYdfAQc=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f3304 = StringFog.decrypt("FmrmFNOWNfswa94ryYY1+hR9\n", "cQ+SQrryUJQ=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f3303 = StringFog.decrypt("L2salASFVzMuQgelEY5XMy4=\n", "XA5u1mXrOVY=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f3302 = StringFog.decrypt("BTCPlFY3NCEgNA==\n", "REfq5zlaUWA=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f3301 = StringFog.decrypt("UIUbWeLEsoxvrS5b\n", "A8RNMIah3c8=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f3300 = StringFog.decrypt("QvD860zuXr51\n", "EbGqgiiLMf8=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f3299 = StringFog.decrypt("9mkpkPjJIfXRQRSX7cAS4g==\n", "pShg/oysU4Y=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f3298 = StringFog.decrypt("+eO+XoPP1Mns4vVemdLUlf7x+wOGytPX5Ob4SISR4vrE++RIhMzF0vn88UG32w==\n", "jZWQLfa/sbs=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f3297 = StringFog.decrypt("RAKnSV9exS10N5hWUk/T\n", "F0PxIDs7qmw=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f3296 = StringFog.decrypt("RXPTX4eKoctQcphfnZehl0JhlgKCj6bVWHaVSdyphe9YYZhDs5mw0EdsiVU=\n", "MQX9LPL6xLk=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f3295 = StringFog.decrypt("sov9t/fpNiyapPGh\n", "+92U05KGZkA=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f3294 = StringFog.decrypt("NXdXn8gfSl8dWFuJ4RlpRxlPW4k=\n", "fCE++61wGjM=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f3293 = StringFog.decrypt("13/B79Pm8Uf/UM359ebPX+xGxOfT+/dC+14=\n", "nimoi7aJoSs=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f3292 = StringFog.decrypt("W/Y9fDK+2Z1z2TFqFL7nhWDPOHQyo9+Yd9cYcSSl7J930g==\n", "EqBUGFfRifE=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f3291 = StringFog.decrypt("fcqg+7LOcVFV5aztlM5PSUbzpfOy0w==\n", "NJzJn9ehIT0=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f3290 = StringFog.decrypt("YJ2H5IPHEY5IsovypccvllukguyD2g2LWr+L7oPa\n", "KcvugOaoQeI=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f3289 = StringFog.decrypt("kwDuvwfNPFm8DPibC+k5Tqwd8w==\n", "xWmK2midUDg=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f3288 = StringFog.decrypt("a7fj2MpEsVd+tqjY0FmxC2ylpoXPQbZJdrKlzs0aokx7pKL701WtQG3vm8LbUbt1c6C0zs11t1F2\nt6Tfxg==\n", "H8HNq7801CU=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f3287 = StringFog.decrypt("4ueL7Ls8fP/N653KuwJk7Nvig+ym\n", "tI7vidRsEJ4=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f3286 = StringFog.decrypt("2p/PWWL5Uo33muBVdN9Ss++J9lxq+U+L8p7u\n", "m/uZMAacPd0=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f3285 = StringFog.decrypt("hB3YYJbqStuzHfFXke5a\n", "11yVAfiLLb4=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f3284 = StringFog.decrypt("WCTJmizMOk1vJOC6Idk0XmIR/Q==\n", "C2WE+0KtXSg=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f3283 = StringFog.decrypt("c55/1pT2n79mnzTWjuuf43SMOouR85ihbps5wJOol6xpiTbAhaipjEqJP8SG456MY6ky0Yjwk7l+\n", "B+hRpeGG+s0=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f3282 = StringFog.decrypt("CpdhokF8OnEOs0CBW20i\n", "WdYi1zIIVRw=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f3281 = StringFog.decrypt("Ul3xP40zGKJlWPQ1mi0it1FLzjKPIQ==\n", "EzmnVuhEUsM=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f3280 = StringFog.decrypt("aPm1O3/DaGRf/LAxaN1ScWvvijZ90W5sWumGPH/G\n", "KZ3jUhq0IgU=\n");

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f3279 = StringFog.decrypt("ZRJCIWmU7V9B\n", "NlMVRAvChDo=\n");

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f3278 = StringFog.decrypt("8hee6II8Cf/YM7s=\n", "oVbJjeBsZZ4=\n");

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static final String f3277 = StringFog.decrypt("mELPjmq28iM=\n", "ywOZzznis0c=\n");

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static final String f3276 = StringFog.decrypt("7cIES2t/SJ/a6jM=\n", "voNSCjgrBfo=\n");

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static final String f3275 = StringFog.decrypt("Af/ZdA==\n", "Ur6YEK01W7g=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f3274 = StringFog.decrypt("YmaaRLM9+Q5HQg==\n", "MSfZNtZcjWc=\n");

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static final String f3273 = StringFog.decrypt("wzftzGz8z77mE+jRe/Daow==\n", "kHauvgmdu9c=\n");

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static final String f3272 = StringFog.decrypt("o3PqwQRhzAOD\n", "8DKupHAApW8=\n");

    /* JADX INFO: renamed from: ᖅ, reason: contains not printable characters */
    public static final String f3271 = StringFog.decrypt("3n9PVHAL2w==\n", "jT4CMRRiumw=\n");

    /* JADX INFO: renamed from: ᕆ, reason: contains not printable characters */
    public static final String f3270 = StringFog.decrypt("4hpt8mI27SjCPg==\n", "sVs/lxFGgkY=\n");

    /* JADX INFO: renamed from: ᕄ, reason: contains not printable characters */
    public static final String f3269 = StringFog.decrypt("6JTPbegVp4ratuM=\n", "u9WGA5xw1ew=\n");

    /* JADX INFO: renamed from: ᕃ, reason: contains not printable characters */
    public static final String f3268 = StringFog.decrypt("7iBsEDr2cQr8BQ==\n", "vWEucVSYFHg=\n");

    /* JADX INFO: renamed from: ᕂ, reason: contains not printable characters */
    public static final String f3267 = StringFog.decrypt("ikjcIU1GqA==\n", "2QmZVygo3PA=\n");

    public C0914(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        try {
            return SAVersion.getSDKVersionNumber();
        } catch (Throwable unused) {
            C0632 c0632 = C0793.m2275().f2974;
            String strDecrypt = StringFog.decrypt("lNQjirpsHerh1CP1\n", "yohH0eYIM7c=\n");
            c0632.getClass();
            return C0632.m2159((Object) null, SAVersion.class, strDecrypt);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f3305, new C0527(this));
        map.put(f3304, new C0525(this));
        map.put(f3303, new C0927(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:113:0x01a8  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -1959951430:
                if (!str.equals(f3286)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case -1855458488:
                if (!str.equals(f3292)) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case -1788589794:
                if (!str.equals(f3281)) {
                    b = -1;
                } else {
                    b = Ascii.NAK;
                }
                break;
            case -1718372116:
                if (!str.equals(f3267)) {
                    b = -1;
                } else {
                    b = 35;
                }
                break;
            case -1711491530:
                if (!str.equals(f3271)) {
                    b = -1;
                } else {
                    b = Ascii.US;
                }
                break;
            case -1305374924:
                if (!str.equals(f3283)) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            case -1292741795:
                if (!str.equals(f3277)) {
                    b = -1;
                } else {
                    b = Ascii.EM;
                }
                break;
            case -1246480821:
                if (!str.equals(f3289)) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case -983382056:
                if (!str.equals(f3287)) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case -926853969:
                if (!str.equals(f3270)) {
                    b = -1;
                } else {
                    b = 32;
                }
                break;
            case -877887884:
                if (!str.equals(f3293)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case -844831949:
                if (!str.equals(f3295)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case -499959157:
                if (!str.equals(f3269)) {
                    b = -1;
                } else {
                    b = 33;
                }
                break;
            case -279114759:
                if (!str.equals(f3288)) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            case -258874416:
                if (!str.equals(f3300)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case 2537233:
                if (!str.equals(f3275)) {
                    b = -1;
                } else {
                    b = Ascii.ESC;
                }
                break;
            case 102107741:
                if (!str.equals(f3299)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case 347965699:
                if (!str.equals(f3290)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case 511814123:
                if (!str.equals(f3279)) {
                    b = -1;
                } else {
                    b = Ascii.ETB;
                }
                break;
            case 562364207:
                if (!str.equals(f3291)) {
                    b = -1;
                } else {
                    b = Ascii.VT;
                }
                break;
            case 690451442:
                if (!str.equals(f3280)) {
                    b = -1;
                } else {
                    b = Ascii.SYN;
                }
                break;
            case 816054202:
                if (!str.equals(f3282)) {
                    b = -1;
                } else {
                    b = Ascii.DC4;
                }
                break;
            case 846064660:
                if (!str.equals(f3272)) {
                    b = -1;
                } else {
                    b = Ascii.RS;
                }
                break;
            case 912139882:
                if (!str.equals(f3276)) {
                    b = -1;
                } else {
                    b = Ascii.SUB;
                }
                break;
            case 947295484:
                if (!str.equals(f3297)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case 1067523235:
                if (!str.equals(f3284)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            case 1179812605:
                if (!str.equals(f3298)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case 1233891357:
                if (!str.equals(f3274)) {
                    b = -1;
                } else {
                    b = Ascii.FS;
                }
                break;
            case 1635726011:
                if (!str.equals(f3301)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 1852615901:
                if (!str.equals(f3268)) {
                    b = -1;
                } else {
                    b = 34;
                }
                break;
            case 1864912441:
                if (!str.equals(f3285)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case 1888267954:
                if (!str.equals(f3296)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case 1968274797:
                if (!str.equals(f3302)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case 1976248583:
                if (!str.equals(f3294)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 2044807796:
                if (!str.equals(f3273)) {
                    b = -1;
                } else {
                    b = Ascii.GS;
                }
                break;
            case 2057982119:
                if (!str.equals(f3278)) {
                    b = -1;
                } else {
                    b = Ascii.CAN;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return AwesomeAds.class;
            case 1:
                return IVideoPlayer.Listener.class;
            case 2:
                return SAVideoClick.class;
            case 3:
                return SAVideoAd.class;
            case 4:
            case 5:
                return SAInterstitialAd.class;
            case 6:
            case 7:
                return SAVideoActivity.class;
            case 8:
                return IVideoPlayer.class;
            case 9:
                return IVideoPlayerControllerView.class;
            case 10:
                return IVideoPlayerControllerView.Listener.class;
            case 11:
                return IVideoPlayerController.class;
            case 12:
                return IVideoPlayerController.Listener.class;
            case 13:
            case 14:
                return VideoPlayerActivity.class;
            case 15:
                return VideoPlayerController.class;
            case 16:
                return AdVideoPlayerControllerView.class;
            case 17:
                return SAManagedAdView.class;
            case 18:
            case 19:
                return SAManagedAdActivity.class;
            case 20:
                return SACustomWebView.class;
            case 21:
                return AdViewJavaScriptBridge.class;
            case 22:
                return AdViewJavaScriptBridge.Listener.class;
            case 23:
                return SAWebView.class;
            case 24:
                return SAWebPlayer.class;
            case 25:
                return SAVASTAd.class;
            case 26:
                return SAVASTMedia.class;
            case 27:
                return SAAd.class;
            case 28:
                return SACreative.class;
            case 29:
                return SACreativeFormat.class;
            case 30:
                return SADetails.class;
            case 31:
                return SAMedia.class;
            case 32:
                return SAResponse.class;
            case 33:
                return SAInterface.class;
            case 34:
                return SABannerAd.class;
            case 35:
                return SAEvent.class;
            default:
                return null;
        }
    }
}
