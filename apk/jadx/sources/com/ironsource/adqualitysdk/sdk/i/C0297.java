package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.libraries.ads.mobile.sdk.MobileAds;
import com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAd;
import com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.banner.AdView;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAd;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.AdActivity;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAd;
import com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.rewarded.OnUserEarnedRewardListener;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedAd;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.libraries.ads.mobile.sdk.rewardedinterstitial.RewardedInterstitialAdEventCallback;
import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.п, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0297 extends AbstractC0276 {

    /* JADX INFO: renamed from: ᖅ, reason: contains not printable characters */
    public static final String f1497;

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static final String f1498;

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static final String f1499;

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f1500;

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static final String f1501;

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static final String f1502;

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static final String f1503;

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f1504;

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f1505;

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f1531 = StringFog.decrypt("B6eXZjlKVagXgIJJM3lOjAQ=\n", "YMLjJ10cPM0=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f1530 = StringFog.decrypt("GYEooNwzF7EMpTij2Q4Qrhs=\n", "fuRc4r1dedQ=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f1529 = StringFog.decrypt("07v13meMTKvQu+XNZrpJlNGq4Ohjj0w=\n", "tN6BjAL7Ldk=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f1528 = StringFog.decrypt("u1bkeIl0mOG4VvRriFGc5L1B9GOYZpQ=\n", "3DOQKuwD+ZM=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f1527 = StringFog.decrypt("tQzntKI7/Sa2DPevqTj5JqEd+pKuLfAVtij3q6I4/TCzHfI=\n", "0mmT5sdMnFQ=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f1526 = StringFog.decrypt("rSb0Eopq5liuJuQJgWniWLk36TSGfOtrrhHlN45v42O+Ju0=\n", "ykOAQO8dhyo=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f1525 = StringFog.decrypt("xRj+XFvw+TPRCeNhXOXwE8cO+npb9/kIzBvl\n", "on2KFTWEnEE=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f1524 = StringFog.decrypt("vLHh9kEbfGG/sfHlQD54YKu7+9dBJXN1tA==\n", "29SVpCRsHRM=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f1523 = StringFog.decrypt("d1c/djdXffh0Vy9tPFR5+GNGIlA7QXDYdUE7SzxTecN+VCQ=\n", "EDJLJFIgHIo=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f1522 = StringFog.decrypt("CY05NK5gJ/QAmygvrw==\n", "buhNZssTV5s=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f1521 = StringFog.decrypt("71tyBM7IbB/sf2Ibztx6Ge1sYzvRxmYJ7XdoLs4=\n", "iD4GSKGpCHo=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f1520 = StringFog.decrypt("6VBOjJQ3bXT8Vl+DkQln\n", "jjU6zfBkAgE=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f1519 = StringFog.decrypt("35BZV+60uI7qjQ==\n", "nvQYNJrdzuc=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f1518 = StringFog.decrypt("8WDsjgPcRhrU\n", "sBCcwXO5KFs=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f1517 = StringFog.decrypt("N3ogU/oMN3ESTyZ55B0aURpmMn3pAg==\n", "dgpQHIppWTA=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f1516 = StringFog.decrypt("LQlL41oj3H8iAwisUyjBdycCCKFULsF5PA9DvhMt12tgC0mvVCDWNj0CTeNeI951IQgIjFkN0Gwn\nEE+5RA==\n", "TmYmzT1Msxg=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f1515 = StringFog.decrypt("3OWp6vkBsJzi\n", "kYrLg5Vk8fg=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f1514 = StringFog.decrypt("5TlYfsFf\n", "pF0LF7s61LU=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f1513 = StringFog.decrypt("lmZncSh3\n", "1wIxGE0Awnc=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f1512 = StringFog.decrypt("A15r0T7SQ7oMVCieN9lesglVKJMw3168ElhjjHfcSK5OXGmdMNFJ8xNVbdE73EKzBUMovj3rRbgX\n", "YDEG/1m9LN0=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f1511 = StringFog.decrypt("Fpr6CQIxZZw=\n", "VPuUZ2dDJPg=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f1510 = StringFog.decrypt("FEqVYAU2IZETXZ5gFAcBmTpJmm0L\n", "Viv7DmBEYPU=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f1509 = StringFog.decrypt("9LhEeypycFrkvFtgKnNF\n", "ttkqFU8AMT4=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f1508 = StringFog.decrypt("BqzSmn6GneYrpPyUfIk=\n", "R8ie9R/i3oc=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f1507 = StringFog.decrypt("KMA8jSsHcXgd\n", "aaRu6FpyFAs=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f1506 = StringFog.decrypt("qIoVd8CjcDeLkTp0/bRnPJq6C2n8sg==\n", "7v95G5PAAlI=\n");

    static {
        StringFog.decrypt("HdNDQa3ZfuYj01A=\n", "UbwiJey9O5Q=\n");
        f1505 = StringFog.decrypt("15jxpfRJKxzqk+a59k8tPvGU774=\n", "hf2A0JE6X18=\n");
        f1504 = StringFog.decrypt("pmRkibfLAxeVa3mUscQsEYFsZJo=\n", "7woN/d6qb34=\n");
        f1503 = StringFog.decrypt("ldhvM3+lmCKo33o6TLI=\n", "3LYbVg3W7Es=\n");
        f1502 = StringFog.decrypt("uXXokNJKNxCEcv2Z4V0GD5V16LbBVS8bkXj3\n", "8Buc9aA5Q3k=\n");
        f1501 = StringFog.decrypt("6x+y3q6Qc6/WH4LJmYdBr9YVq8S4llOgwQM=\n", "pHHnrcviNs4=\n");
        f1500 = StringFog.decrypt("Ek2EHIMTaPUBTA==\n", "QCjzffF3DZE=\n");
        f1499 = StringFog.decrypt("smNqmutZZTChYliN/FN0F4FqcZn4Xms=\n", "4AYd+5k9AFQ=\n");
        f1498 = StringFog.decrypt("XHB91czPUuJHe37RzNhD73p8a9j/zw==\n", "DhUKtL6rN4Y=\n");
        f1497 = StringFog.decrypt("UeAuaRVK269K6y1tFV3KonfsOGQmSvu9ZustSwZC0qli5jI=\n", "A4VZCGcuvss=\n");
    }

    public C0297(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        return MobileAds.getVersion().toString();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f1531, new C0342(this));
        map.put(f1530, new C0341(this));
        map.put(f1529, new C0339(this));
        map.put(f1528, new C0334(this));
        map.put(f1527, new C0330(this));
        map.put(f1526, new C0326(this));
        map.put(f1525, new C0318(this));
        map.put(f1524, new C0315(this));
        map.put(f1523, new C0311(this));
        map.put(f1522, new C0368(this));
        map.put(f1521, new C0365(this));
        map.put(f1520, new C0344(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:74:0x010b  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -2082809970:
                if (!str.equals(f1499)) {
                    b = -1;
                } else {
                    b = Ascii.DC4;
                }
                break;
            case -1959585521:
                if (!str.equals(f1516)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case -1836618638:
                if (!str.equals(f1519)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case -1791176561:
                if (!str.equals(f1511)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case -1666698098:
                if (!str.equals(f1515)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case -1620193212:
                if (!str.equals(f1512)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case -1394472790:
                if (!str.equals(f1506)) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case -909742738:
                if (!str.equals(f1518)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case -796191954:
                if (!str.equals(f1508)) {
                    b = -1;
                } else {
                    b = Ascii.VT;
                }
                break;
            case -609786639:
                if (!str.equals(f1500)) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            case -572702516:
                if (!str.equals(f1507)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case -561136464:
                if (!str.equals(f1510)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case -543102915:
                if (!str.equals(f1498)) {
                    b = -1;
                } else {
                    b = Ascii.NAK;
                }
                break;
            case -289968976:
                if (!str.equals(f1502)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case -284636416:
                if (!str.equals(f1509)) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case -139181519:
                if (!str.equals(f1517)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case 143003586:
                if (!str.equals(f1497)) {
                    b = -1;
                } else {
                    b = Ascii.SYN;
                }
                break;
            case 320151695:
                if (!str.equals(f1503)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case 474883106:
                if (!str.equals(f1504)) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case 761303268:
                if (!str.equals(f1501)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            case 1334167239:
                if (!str.equals(f1505)) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            case 1955824356:
                if (!str.equals(f1514)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case 1955913096:
                if (!str.equals(f1513)) {
                    b = -1;
                } else {
                    b = 6;
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
                return MobileAds.class;
            case 3:
                return AppOpenAd.class;
            case 4:
                return AppOpenAdEventCallback.class;
            case 5:
                return AdSize.class;
            case 6:
            case 7:
                return AdView.class;
            case 8:
                return BannerAd.class;
            case 9:
                return BannerAdEventCallback.class;
            case 10:
                return BannerAdRequest.class;
            case 11:
                return AdLoadCallback.class;
            case 12:
                return AdRequest.class;
            case 13:
                return FullScreenContentError.class;
            case 14:
                return RequestConfiguration.class;
            case 15:
                return InitializationConfig.class;
            case 16:
                return InterstitialAd.class;
            case 17:
                return InterstitialAdEventCallback.class;
            case 18:
                return OnUserEarnedRewardListener.class;
            case 19:
                return RewardedAd.class;
            case 20:
                return RewardedAdEventCallback.class;
            case 21:
                return RewardedInterstitialAd.class;
            case 22:
                return RewardedInterstitialAdEventCallback.class;
            default:
                return null;
        }
    }
}
