package com.ironsource.adqualitysdk.sdk.i;

import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdView;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.BuildConfig;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeAdView;
import com.facebook.ads.NativeBannerAd;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.RewardedVideoAdListener;
import com.facebook.ads.internal.DisplayAdController;
import com.facebook.ads.internal.adapters.AdAdapter;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.facebook.ads.internal.settings.AdSdkVersion;
import com.facebook.ads.internal.view.component.CircularProgressView;
import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ẗ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0808 extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f3057 = StringFog.decrypt("dVo98QYYQPl/WifVIx1l7n1SCMU8EEbr\n", "Ej9JoWp5I5w=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f3056 = StringFog.decrypt("KSoqnwQQb5wjKjC7IRVKiyEiH6s=\n", "Tk9ez2hxDPk=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f3055 = StringFog.decrypt("8BgmgG+EF8r3GDykeQ==\n", "g31SwQvIfrk=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f3054 = StringFog.decrypt("OOBUeR72RGsx5kV2DuZaYS3uYVsf+1tnK/x2UQ7leXcv4GtdEg==\n", "X4UgOGuSLQ4=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f3053 = StringFog.decrypt("2f4PjIoxjSvQ+B6DmiGTIczwOq6LPJInyuI+o5sWhTza1hq/lCCUBdvi\n", "vpt7zf9V5E4=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f3052 = StringFog.decrypt("NLPq60OQle00ovfWTIix+wu/7dZIipXt\n", "R9aeoi3k8J8=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f3051 = StringFog.decrypt("vb9kV0UlAl+zuVx8XS8GQA==\n", "2toQEzxLYzI=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f3050 = StringFog.decrypt("suS/soe0jp645KWWv6ydng==\n", "1YHL4uvV7fs=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f3049 = StringFog.decrypt("+yX2j2ci2IvWNueHZSLNrc8y8oVbJv+h1Tbj\n", "mFeT7hNHjMk=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f3048 = StringFog.decrypt("yAU=\n", "iWH79gCHfbk=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f3047 = StringFog.decrypt("qeJ9OJhDelWa\n", "6IY8XPkzDjA=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f3046 = StringFog.decrypt("k7aw+7yj6Q==\n", "0tL1ic7Mm1g=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f3045 = StringFog.decrypt("kIHE7n74r1y0lw==\n", "0eWIhw2MyjI=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f3044 = StringFog.decrypt("m95G7T+K\n", "2roQhFr9V/8=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f3043 = StringFog.decrypt("AeATM/L6Vh4A4BF2uvpRCEzOGkv9/kI=\n", "Yo9+HZSbNXs=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f3042 = StringFog.decrypt("NhiENTMeq58SEqANKw2r\n", "d3zUWVJ9zvI=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f3041 = StringFog.decrypt("koETMQXY1M+yqw8vHcvC4rqNEg==\n", "1uhgQWm5rY4=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f3040 = StringFog.decrypt("yQ612C0B1TvGHqXGJx3dH+sPuMchG88=\n", "iHvRsUhvtl4=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f3039 = StringFog.decrypt("vbJtdU3t+528sm8wBe38i/CcdT9C6fabu5NlL1zj6pOfvnQyXeXsgQ==\n", "3t0AWyuMmPg=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f3038 = StringFog.decrypt("lZjGupQU/7Son9OzpwPHtK+C17GDFQ==\n", "3Pay3+Zni90=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f3037 = StringFog.decrypt("wFQhw8zeJG79UzTK/8k=\n", "iTpVpr6tUAc=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f3036 = StringFog.decrypt("I2dIFqtiDM8na1sStkcN5xhxSxK3Yxs=\n", "cQI/d9kGaas=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f3035 = StringFog.decrypt("Y7+c42TI0whns4/nee3S\n", "Mdrrghastmw=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f3034 = StringFog.decrypt("/9urRb2WzKDUw6FBornOj8/Nt10=\n", "u6LFJND/r+w=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f3033 = StringFog.decrypt("1DmfAdXt1QjYOZgN\n", "mljraKOIlGw=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f3032 = StringFog.decrypt("tlLkCpgVg+2WXfURrxQ=\n", "+DOQY+5wwYw=\n");

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f3031 = StringFog.decrypt("oX8GXiM8ONI=\n", "7x5yN1VZebY=\n");

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f3030 = StringFog.decrypt("FhNWjYQWqi4OG0eT\n", "WHIi5PJz60o=\n");

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static final String f3029 = StringFog.decrypt("BCNrwX7uHiwGK2zcbeU6Og==\n", "SkIfqAiLX0g=\n");

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static final String f3028 = StringFog.decrypt("4obKO0XE+Xjxndc/Qs3refeG3S8=\n", "oe+4WDComAo=\n");

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static final String f3027 = StringFog.decrypt("8W/EvYJefuLkSd25l1xA5tZFx72G\n", "pS2K3PY3CIc=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f3026 = StringFog.decrypt("pmKlt/7Y0ZeLaaW34e7umYRsobPg\n", "6g3G1pKao/g=\n");

    public C0808(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        try {
            try {
                try {
                    return (String) C0793.m2275().f2975.m2134(AdSdkVersion.class, String.class).get(null);
                } catch (Throwable unused) {
                    return null;
                }
            } catch (Throwable unused2) {
                return (String) C0793.m2275().f2975.m2134(AdSdkVersion.class, String.class).get(null);
            }
        } catch (Throwable unused3) {
            C0632 c0632 = C0793.m2275().f2974;
            String strDecrypt = StringFog.decrypt("ihFN5QbBnT//YwM=\n", "1E0pvlqls2I=\n");
            c0632.getClass();
            return C0632.m2159((Object) null, BuildConfig.class, strDecrypt);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f3057, new C1002(this));
        map.put(f3056, new C0962(this));
        map.put(f3055, new C0938(this));
        map.put(f3054, new C0923(this));
        map.put(f3053, new C0907(this));
        map.put(f3052, new C0862(this));
        map.put(f3051, new C0831(this));
        map.put(f3050, new C0830(this));
        map.put(f3049, new C0829(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:74:0x010c  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -2107186802:
                if (!str.equals(f3029)) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            case -1585374524:
                if (!str.equals(f3036)) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case -1513928064:
                if (!str.equals(f3039)) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case -1256969519:
                if (!str.equals(f3028)) {
                    b = -1;
                } else {
                    b = Ascii.DC4;
                }
                break;
            case -501313640:
                if (!str.equals(f3034)) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            case -498709917:
                if (!str.equals(f3038)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case -105717264:
                if (!str.equals(f3035)) {
                    b = -1;
                } else {
                    b = Ascii.VT;
                }
                break;
            case 2115:
                if (!str.equals(f3048)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case 289409084:
                if (!str.equals(f3042)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case 320151695:
                if (!str.equals(f3037)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case 435867927:
                if (!str.equals(f3026)) {
                    b = -1;
                } else {
                    b = Ascii.SYN;
                }
                break;
            case 488344453:
                if (!str.equals(f3046)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 535330969:
                if (!str.equals(f3040)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case 553704929:
                if (!str.equals(f3041)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case 1165508119:
                if (!str.equals(f3045)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case 1237162638:
                if (!str.equals(f3027)) {
                    b = -1;
                } else {
                    b = Ascii.NAK;
                }
                break;
            case 1476063628:
                if (!str.equals(f3047)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 1838933446:
                if (!str.equals(f3032)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case 1908493505:
                if (!str.equals(f3043)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case 1955913096:
                if (!str.equals(f3044)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case 2035065003:
                if (!str.equals(f3033)) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case 2035668095:
                if (!str.equals(f3030)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            case 2110329530:
                if (!str.equals(f3031)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return Ad.class;
            case 1:
                return AdAdapter.class;
            case 2:
                return AdError.class;
            case 3:
                return AdListener.class;
            case 4:
            case 5:
                return AdView.class;
            case 6:
                return AdPlacementType.class;
            case 7:
                return DisplayAdController.class;
            case 8:
                return InterstitialAdListener.class;
            case 9:
                return InterstitialAd.class;
            case 10:
                return RewardedVideoAdListener.class;
            case 11:
                return RewardedVideoAd.class;
            case 12:
            case 13:
                return AudienceNetworkActivity.class;
            case 14:
                return DynamicLoaderFactory.class;
            case 15:
                return NativeAdBase.class;
            case 16:
                return NativeBannerAd.class;
            case 17:
                return NativeAd.class;
            case 18:
                return NativeAdView.class;
            case 19:
                return NativeAdListener.class;
            case 20:
                return CircularProgressView.class;
            case 21:
                return C0828.class;
            case 22:
                int i = AbstractC0132.f817;
                String strDecrypt = StringFog.decrypt("PBa3vfZuOLNzFLys+Gs+uTIZt6z4dCimPBayqPx1cqgyFqeq93NyhzIbsqPbdTOqORuyvO1KPaU8\nH7a9\n", "XXjTz5kHXMs=\n");
                String str2 = AbstractC1059.f3785;
                try {
                    return Class.forName(strDecrypt);
                } catch (Throwable unused) {
                    return null;
                }
            default:
                return null;
        }
    }
}
