package com.ironsource.adqualitysdk.sdk.i;

import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import com.vungle.ads.BannerAd;
import com.vungle.ads.BannerAdListener;
import com.vungle.ads.BannerAdSize;
import com.vungle.ads.BannerView;
import com.vungle.ads.BaseAd;
import com.vungle.ads.BaseAdListener;
import com.vungle.ads.BaseFullscreenAd;
import com.vungle.ads.BuildConfig;
import com.vungle.ads.FullscreenAd;
import com.vungle.ads.FullscreenAdListener;
import com.vungle.ads.InterstitialAd;
import com.vungle.ads.InterstitialAdListener;
import com.vungle.ads.RewardedAd;
import com.vungle.ads.RewardedAdListener;
import com.vungle.ads.VungleAds;
import com.vungle.ads.internal.AdInternal;
import com.vungle.ads.internal.model.AdAsset;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.AppNode;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.ui.AdActivity;
import com.vungle.ads.internal.ui.VungleActivity;
import com.vungle.ads.internal.ui.VungleWebClient;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class V extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f227 = StringFog.decrypt("wEbsNfhD4qz1Ww==\n", "gSKtVowqlMU=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f226 = StringFog.decrypt("lX4J9CL5PDaadEq7MP98OJhlAag67T5/g3hKmzDNMSWfZw2uLQ==\n", "9hFk2lSMUlE=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f225 = StringFog.decrypt("h37MOjKRbg==\n", "xhqNSUH0Gug=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f224 = StringFog.decrypt("U/Pr3l6qM6Vz+w==\n", "EpeisCrPQcs=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f223 = StringFog.decrypt("80tWHHx74AbW\n", "si8GfQUXj2c=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f222 = StringFog.decrypt("V80JytioWw==\n", "Fr15hLfMPn4=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f221 = StringFog.decrypt("XpfwVytSejI=\n", "HPaeOU4gO1Y=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f220 = StringFog.decrypt("s9cSJWtyLc293w8/a24J2w==\n", "8bZ8Sw4AbKk=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f219 = StringFog.decrypt("rWJrhCA8UW68an+P\n", "7wMF6kVOEAo=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f218 = StringFog.decrypt("NPstGEU0hoET7Q==\n", "dppDdiBG0Og=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f217 = StringFog.decrypt("8p6Wf9ahH3z9lNUwxKdfWfCflTTSghh+5g==\n", "kfH7UaDUcRs=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f216 = StringFog.decrypt("0E4FnaOE\n", "ki92+OLgjoM=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f215 = StringFog.decrypt("YxzLJqcdh99SCd0tgws=\n", "IX24Q+Z5y7Y=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f214 = StringFog.decrypt("UVT51IHSkIlgVvjUosm9gQ==\n", "EzWKscen/OU=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f213 = StringFog.decrypt("9Gkw90qkZsHSWjbvQ6RnyNptPes=\n", "twhTny/FBK0=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f212 = StringFog.decrypt("88nxh5Ir0AnQ0tyP\n", "tbyd6+FIomw=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f211 = StringFog.decrypt("VtncSJICFaJ1wvFArQgUs3XC1VY=\n", "EKywJOFhZ8c=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f210 = StringFog.decrypt("66J0IIoLkJTWpWEpuRw=\n", "oswARfh45P0=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f209 = StringFog.decrypt("kF3ls/jgbsitWvC6y/dWyKpH9Ljv4Q==\n", "2TOR1oqTGqE=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f208 = StringFog.decrypt("vBTS2mXDqqiCI/3nROE=\n", "8UaTkyGT2M0=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f207 = StringFog.decrypt("oBaNsQZNCrSE\n", "8Hrs0mMgb9o=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f206 = StringFog.decrypt("3kcnYGn7utnNRg==\n", "jCJQARuf370=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f205 = StringFog.decrypt("+iIIgFo5Nw3pIzOIWyk3B801\n", "qEd/4ShdUmk=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f204 = StringFog.decrypt("/gm8apnI7grcFaRkgdQ=\n", "qHzSDfWtr2k=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f203 = StringFog.decrypt("Bggh3Az+d4wJAmKTHvg3ggsTKYAU6nXFEA5ipA/lfocAJi+GE/1wnxw=\n", "ZWdM8nqLGes=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f202 = StringFog.decrypt("bssgEqS2B9xL\n", "OL5OdcjTRrg=\n");

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f201 = StringFog.decrypt("oNkgM8QTmhWf7yI9zRiv\n", "9qxOVKh222U=\n");

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f200 = StringFog.decrypt("o8g+XsiLU7KX/jxQwYBw\n", "9b1QOaTuBNc=\n");

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static final String f199 = StringFog.decrypt("hJCkepDdfz2X\n", "4/XQO/SIEVQ=\n");

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static final String f198 = StringFog.decrypt("kJjobMXj0rQ=\n", "9/2cLbWTm9A=\n");

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static final String f197 = StringFog.decrypt("hO/zFLdJhw2C6OsyhE+fBILp4jqzRJs9keY=\n", "44qHV9Yq72g=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f196 = StringFog.decrypt("638IeqgZtLjlfRI=\n", "jBp8Ocl0xNk=\n");

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static final String f195 = StringFog.decrypt("QemN8z9bmLlL6ZfXGl4=\n", "Joz5o1M6+9w=\n");

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static final String f194 = StringFog.decrypt("6vfMyTmqeaHs5t3OObN9pOP1yw==\n", "jZK4nVzHCc0=\n");

    /* JADX INFO: renamed from: ᖅ, reason: contains not printable characters */
    public static final String f193 = StringFog.decrypt("tN/BuPxOQJC4yMW070pd\n", "3ayT3YsvMvQ=\n");

    public V(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        try {
            return mo1850().split(StringFog.decrypt("gg==\n", "r/TDdmEdMfY=\n"))[0];
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f199, new N(this));
        map.put(f198, new O(this));
        map.put(f197, new P(this));
        map.put(f196, new Q(this));
        map.put(f195, new S(this));
        map.put(f194, new T(this));
        map.put(f193, new U(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:89:0x0148  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -1836618638:
                if (!str.equals(f227)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case -1791176561:
                if (!str.equals(f221)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case -1560947009:
                if (!str.equals(f217)) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case -1494265129:
                if (!str.equals(f203)) {
                    b = -1;
                } else {
                    b = Ascii.CAN;
                }
                break;
            case -1435839138:
                if (!str.equals(f212)) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case -1179107681:
                if (!str.equals(f202)) {
                    b = -1;
                } else {
                    b = Ascii.EM;
                }
                break;
            case -609786639:
                if (!str.equals(f206)) {
                    b = -1;
                } else {
                    b = Ascii.NAK;
                }
                break;
            case -498709917:
                if (!str.equals(f209)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            case -498060603:
                if (!str.equals(f207)) {
                    b = -1;
                } else {
                    b = Ascii.DC4;
                }
                break;
            case -486531311:
                if (!str.equals(f208)) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            case -393802555:
                if (!str.equals(f205)) {
                    b = -1;
                } else {
                    b = Ascii.SYN;
                }
                break;
            case -43797322:
                if (!str.equals(f213)) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            case 307971376:
                if (!str.equals(f219)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case 320151695:
                if (!str.equals(f210)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case 324239304:
                if (!str.equals(f215)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case 389759008:
                if (!str.equals(f224)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case 484680813:
                if (!str.equals(f225)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 870529955:
                if (!str.equals(f222)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case 961844241:
                if (!str.equals(f218)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case 989853769:
                if (!str.equals(f226)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 1205766784:
                if (!str.equals(f204)) {
                    b = -1;
                } else {
                    b = Ascii.ETB;
                }
                break;
            case 1208038126:
                if (!str.equals(f200)) {
                    b = -1;
                } else {
                    b = Ascii.ESC;
                }
                break;
            case 1442693170:
                if (!str.equals(f211)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case 1505622627:
                if (!str.equals(f220)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case 1839869899:
                if (!str.equals(f223)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case 1853648591:
                if (!str.equals(f214)) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case 1930966324:
                if (!str.equals(f201)) {
                    b = -1;
                } else {
                    b = Ascii.SUB;
                }
                break;
            case 1982630644:
                if (!str.equals(f216)) {
                    b = -1;
                } else {
                    b = Ascii.VT;
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
                return AdAsset.class;
            case 3:
                return AdInternal.class;
            case 4:
                return AdPayload.class;
            case 5:
                return AppNode.class;
            case 6:
                return BannerAd.class;
            case 7:
                return BannerAdListener.class;
            case 8:
                return BannerAdSize.class;
            case 9:
            case 10:
                return BannerView.class;
            case 11:
                return BaseAd.class;
            case 12:
                return BaseAdListener.class;
            case 13:
                return BaseFullscreenAd.class;
            case 14:
                return AdPayload.CacheableReplacement.class;
            case 15:
                return FullscreenAd.class;
            case 16:
                return FullscreenAdListener.class;
            case 17:
                return InterstitialAd.class;
            case 18:
                return InterstitialAdListener.class;
            case 19:
                return MRAIDPresenter.class;
            case 20:
                return Placement.class;
            case 21:
                return RewardedAd.class;
            case 22:
                return RewardedAdListener.class;
            case 23:
            case 24:
                return VungleActivity.class;
            case 25:
                return VungleAds.class;
            case 26:
                return VungleApiClient.class;
            case 27:
                return VungleWebClient.class;
            default:
                return null;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final String mo1850() {
        try {
            C0632 c0632 = C0793.m2275().f2974;
            String strDecrypt = StringFog.decrypt("9BNQBXRvtpGBE1BwAi8=\n", "qk80XigLmMw=\n");
            c0632.getClass();
            return C0632.m2159((Object) null, BuildConfig.class, strDecrypt);
        } catch (Throwable unused) {
            return null;
        }
    }
}
