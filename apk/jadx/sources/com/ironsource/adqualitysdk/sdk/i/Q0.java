package com.ironsource.adqualitysdk.sdk.i;

import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import com.monetization.ads.base.model.reward.RewardData;
import com.yandex.mobile.ads.banner.BannerAdEventListener;
import com.yandex.mobile.ads.banner.BannerAdView;
import com.yandex.mobile.ads.common.AdActivity;
import com.yandex.mobile.ads.common.AdInfo;
import com.yandex.mobile.ads.common.AdRequest;
import com.yandex.mobile.ads.common.AdType;
import com.yandex.mobile.ads.common.ImpressionData;
import com.yandex.mobile.ads.common.MobileAds;
import com.yandex.mobile.ads.common.VideoController;
import com.yandex.mobile.ads.common.VideoEventListener;
import com.yandex.mobile.ads.interstitial.InterstitialAd;
import com.yandex.mobile.ads.interstitial.InterstitialAdEventListener;
import com.yandex.mobile.ads.rewarded.Reward;
import com.yandex.mobile.ads.rewarded.RewardedAd;
import com.yandex.mobile.ads.rewarded.RewardedAdEventListener;
import com.yandex.mobile.ads.video.playback.VideoAdPlaybackListener;
import com.yandex.mobile.ads.video.playback.model.MediaFile;
import com.yandex.mobile.ads.video.playback.model.VideoAd;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class Q0 extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f189 = StringFog.decrypt("xzdT0J2+LTHUG0M=\n", "oFInkfnrQ1g=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f188 = StringFog.decrypt("1VF7bOLi7nDGVQ==\n", "sjQPPoOVqhE=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f187 = StringFog.decrypt("V6y0tcKTKKFhv6WN37skvVCsrobZ\n", "JMnA46v3Tc4=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f186 = StringFog.decrypt("8UpAqzbiGJLkXECLLPgNm99BUo0=\n", "li804liRbPc=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f185 = StringFog.decrypt("YCWurAcZMaVjAbeRFwAk\n", "B0Da/mJuUNc=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f184 = StringFog.decrypt("aBsWZgs49W5rKhtECw==\n", "D35iNG5PlBw=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f183 = StringFog.decrypt("r4CNENjCWK6sgJ0D2fxXuqc=\n", "yOX5Qr21Odw=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f182 = StringFog.decrypt("YgeJUPXbxHB1B5lD9OnTZ38WsWvj2MBsdBA=\n", "EWL9ApCspQI=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f181 = StringFog.decrypt("3hU8/WLvwKreBCHAZfrJmck1PtFi7+mx3gQt2mnp\n", "rXBItAybpdg=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f180 = StringFog.decrypt("Z4ZhM+wrR3pGinkb3D1C\n", "AOMVfolPLhs=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f179 = StringFog.decrypt("B/ZuO1ypo9sh91cIUaSn8gn/fw==\n", "YJMabTXNxrQ=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f178 = StringFog.decrypt("mk6ALy7JqTi8T70XIcI=\n", "/Sv0eUetzFc=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f177 = StringFog.decrypt("gr1MiFvHN5qDmVyPTMw3i72xS75fxzyN\n", "8dg4yjqpWf8=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f176 = StringFog.decrypt("HDpTz1abuIkpJw==\n", "XV4SrCLyzuA=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f175 = StringFog.decrypt("2bk2UtAVPs/frnURxhY5x9/4OhjaWjPE17s0Eoc1NOrZojIKwAAp\n", "utZbfKl0UKs=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f174 = StringFog.decrypt("GYdpWwrg\n", "WOMgNWyPNIQ=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f173 = StringFog.decrypt("zI5tPM8VzlH5\n", "jeo/Wb5gqyI=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f172 = StringFog.decrypt("Yi0KJm5R\n", "I0leXx409Yw=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f171 = StringFog.decrypt("WmUYchusIBV8ZixhCr4=\n", "EwhoAH7fU3w=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f170 = StringFog.decrypt("50AxbJ2WD4jZ\n", "qi9TBfHzTuw=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f169 = StringFog.decrypt("5w+9q5/Va0PFFLainPN2\n", "sWbZzvCWBC0=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f168 = StringFog.decrypt("kXSVlcWtKnKpab2Z2Zw5eaJv\n", "xx3x8KroXBc=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f167 = StringFog.decrypt("HtKjJdOdUPgZxaglwqN47yjWoy7E\n", "XLPNS7bvEZw=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f166 = StringFog.decrypt("WHIk+5/I3ZVMei/i\n", "GhNKlfq6nPE=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f165 = StringFog.decrypt("3FibUEKTThzaT9gTVJBJFNoZlxpI3EIZ0VmTDBWwQRbRUoQ/X6RJHcg=\n", "vzf2fjvyIHg=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f164 = StringFog.decrypt("sVnMZDIuUXWMXtltATk=\n", "+De4AUBdJRw=\n");

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f163 = StringFog.decrypt("ghH7fZn6AWO/Fu50qu0wfK4R+1SC+gFvpRr9\n", "y3+PGOuJdQo=\n");

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f162 = StringFog.decrypt("b7IbRNDa\n", "PddsJaK+1pg=\n");

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static final String f161 = StringFog.decrypt("kGxt4+IOHkODbQ==\n", "wgkagpBqeyc=\n");

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static final String f160 = StringFog.decrypt("bMnrv5AEEnR/yNmohw4DXFff6LuMBQU=\n", "Pqyc3uJgdxA=\n");

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static final String f159 = StringFog.decrypt("rYwR9maz5YqXhAzxaJHqlpKWAfZnl/M=\n", "++V1kwnygdo=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f158 = StringFog.decrypt("Ezjws/iyyes7\n", "Xl2U2pn0oIc=\n");

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static final String f157 = StringFog.decrypt("g4v60J5FUg==\n", "1eKetfEENtA=\n");

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static final String f156 = StringFog.decrypt("VWJBTeyySwhzZg==\n", "Bwc2LJ7WD2k=\n");

    public Q0(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        return MobileAds.getLibraryVersion();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f189, new H0(this));
        map.put(f188, new I0(this));
        map.put(f187, new J0(this));
        map.put(f186, new K0(this));
        map.put(f185, new L0(this));
        map.put(f184, new M0(this));
        map.put(f183, new N0(this));
        map.put(f182, new O0(this));
        map.put(f181, new P0(this));
        map.put(f180, new D0(this));
        map.put(f179, new E0(this));
        map.put(f178, new F0(this));
        map.put(f177, new G0(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:68:0x00f3  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -1850459313:
                if (!str.equals(f162)) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            case -1836618638:
                if (!str.equals(f176)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case -1666698098:
                if (!str.equals(f170)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case -1401317165:
                if (!str.equals(f168)) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case -1338246468:
                if (!str.equals(f165)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case -1139615429:
                if (!str.equals(f175)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case -1115843213:
                if (!str.equals(f171)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case -650052115:
                if (!str.equals(f159)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case -610771047:
                if (!str.equals(f156)) {
                    b = -1;
                } else {
                    b = Ascii.DC4;
                }
                break;
            case -609786639:
                if (!str.equals(f161)) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case -572702516:
                if (!str.equals(f173)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case -564429827:
                if (!str.equals(f160)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case -150968480:
                if (!str.equals(f158)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            case 308060116:
                if (!str.equals(f166)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case 320151695:
                if (!str.equals(f164)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case 871099991:
                if (!str.equals(f169)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case 957243679:
                if (!str.equals(f167)) {
                    b = -1;
                } else {
                    b = Ascii.VT;
                }
                break;
            case 1228411167:
                if (!str.equals(f163)) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case 1955530641:
                if (!str.equals(f174)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 1955869213:
                if (!str.equals(f172)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case 2117435870:
                if (!str.equals(f157)) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
            case 1:
                return AdActivity.class;
            case 2:
                return AdInfo.class;
            case 3:
                return AdRequest.class;
            case 4:
                return AdType.class;
            case 5:
                return ImpressionData.class;
            case 6:
                return MobileAds.class;
            case 7:
            case 8:
                return BannerAdView.class;
            case 9:
                return VideoController.class;
            case 10:
                return VideoEventListener.class;
            case 11:
                return BannerAdEventListener.class;
            case 12:
                return InterstitialAd.class;
            case 13:
                return InterstitialAdEventListener.class;
            case 14:
                return Reward.class;
            case 15:
                return RewardedAd.class;
            case 16:
                return RewardedAdEventListener.class;
            case 17:
                return VideoAdPlaybackListener.class;
            case 18:
                return MediaFile.class;
            case 19:
                return VideoAd.class;
            case 20:
                return RewardData.class;
            default:
                return null;
        }
    }
}
