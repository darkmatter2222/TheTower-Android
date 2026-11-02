package com.ironsource.adqualitysdk.sdk.i;

import com.chartboost.sdk.CBImpressionActivity;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.ChartboostActivity;
import com.chartboost.sdk.InPlay.CBInPlay;
import com.chartboost.sdk.Networking.requests.models.MediationModel;
import com.chartboost.sdk.ads.Ad;
import com.chartboost.sdk.ads.Interstitial;
import com.chartboost.sdk.ads.Rewarded;
import com.chartboost.sdk.callbacks.AdCallback;
import com.chartboost.sdk.callbacks.DismissibleAdCallback;
import com.chartboost.sdk.callbacks.InterstitialCallback;
import com.chartboost.sdk.callbacks.RewardedCallback;
import com.chartboost.sdk.callbacks.StartCallback;
import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ṫ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0796 extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f3013 = StringFog.decrypt("vV/stFgGw7erXfmUXw==\n", "zjqY4DpCpts=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f3012 = StringFog.decrypt("Mw3+qG5s74kiB+WYckn4kSUP659j\n", "QGiK6wYNnf0=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f3011 = StringFog.decrypt("Z1LmEdBz8LdiWP0hzFbnr2VQ8ybd\n", "ADeSUrgSgsM=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f3010 = StringFog.decrypt("uW11MjW1H9y8Z24CKYJV9+pXMTU4uAjPv3xk\n", "3ggBcV3Ubag=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f3009 = StringFog.decrypt("PkSjBr+hf/seXqcVv6ZE1i5CggKnoUzYKVM=\n", "XTbGZ8vEK7k=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f3008 = StringFog.decrypt("wRRTnmOfuoLfImqaY6W2gw==\n", "qGcE+wHJ0+c=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f3007 = StringFog.decrypt("m1Xix2tHdviVX/g=\n", "/DCWiwQkF4w=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f3006 = StringFog.decrypt("W7nIw2DOXG9RuQ==\n", "PNy8ghC+Eg4=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f3005 = StringFog.decrypt("2wvm6pK/QlzVGcbt\n", "sniyiNbaLjk=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f3004 = StringFog.decrypt("1SdDWeoBoa7lO2NI6gq4qOI2\n", "lk8iK55jzsE=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f3003 = StringFog.decrypt("iz8nd7ImqwO7FAF0gze6Gb4UGmM=\n", "yH1uGsJUznA=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f3002 = StringFog.decrypt("Nhs8JnKs0VsGBw==\n", "dXNdVAbOvjQ=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f3001 = StringFog.decrypt("TVIzvzxLbkk=\n", "DhB60WwnDzA=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f3000 = StringFog.decrypt("cjqX7nnaqYZYF7Q=\n", "MXjaix2zyPI=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f2999 = StringFog.decrypt("nlVDzvsQvwm9fUjD/wg=\n", "0zAnp5pk1mY=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f2998 = StringFog.decrypt("HpvDWPM/X3Mhqspa5ClcfyWa1n/zMVt3K53H\n", "SumiO5ZdPhA=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f2997 = StringFog.decrypt("LxKwRtReXoYfOZZF6ElclA8puEjQRU2cGCk=\n", "bFD5K6QsO/U=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f2996 = StringFog.decrypt("YbiP/PSUWgJ2tY295IgVA2a8zL7ym1oTe/mhkN6RSwJnpJG7+JJ6E3a+lLvjhQ==\n", "Atfi0pf8O3A=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f2995 = StringFog.decrypt("Bds=\n", "RL86waT8rJ0=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f2994 = StringFog.decrypt("tVuDwMY1o2yIXJbJ\n", "/DX3pbRG1wU=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f2993 = StringFog.decrypt("aQByDM966DM=\n", "O2UFbb0ejVc=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f2992 = StringFog.decrypt("Se26331J8B9r4g==\n", "CIn5vhElkn4=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f2991 = StringFog.decrypt("8ZaK1cEiygTXk5z5zBLYAdmdmNvD\n", "tf/5uKhRuW0=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f2990 = StringFog.decrypt("7qKWOJXOHaTTpYMxpNwFocWtgTY=\n", "p8ziXee9ac0=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f2989 = StringFog.decrypt("SAPa1s9pGGdZB8Hb32weaA==\n", "Gmatt70NfQM=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f2988 = StringFog.decrypt("mZ+3pGVwMXemibe1eg==\n", "yuvW1hEzUBs=\n");

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f2987 = StringFog.decrypt("xzDCItrQwEn3G+Qh/MvATcUR/ybcy9FD\n", "hHKLT6qipTo=\n");

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f2986 = StringFog.decrypt("2v43yaefeePN8zWIt4M24t36dJGtkm+/+tMTirSFfeLK+DWJhZRs+M/4Lp4=\n", "uZFa58T3GJE=\n");

    public C0796(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        try {
            return Chartboost.getSDKVersion();
        } catch (Error unused) {
            return StringFog.decrypt("Oen2cvs=\n", "D8fHXMuJWoE=\n");
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f3013, new C0910(this));
        map.put(f3011, new C0887(this));
        map.put(f3010, new C0884(this));
        map.put(f3009, new C0865(this));
        map.put(f3012, new C0858(this));
        map.put(f3008, new C0843(this));
        map.put(f3007, new C0825(this));
        map.put(f3006, new C0824(this));
        map.put(f3005, new C0816(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:62:0x00db  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -1602236458:
                if (!str.equals(f2998)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case -1251618628:
                if (!str.equals(f2987)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case -921117961:
                if (!str.equals(f3003)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case -869710636:
                if (!str.equals(f3004)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case -513187163:
                if (!str.equals(f3002)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case -416101408:
                if (!str.equals(f2997)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case -371244199:
                if (!str.equals(f3000)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case -352872024:
                if (!str.equals(f2992)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case -305846637:
                if (!str.equals(f2989)) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case -221039695:
                if (!str.equals(f2990)) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            case -174936018:
                if (!str.equals(f2993)) {
                    b = -1;
                } else {
                    b = Ascii.VT;
                }
                break;
            case 2115:
                if (!str.equals(f2995)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case 296803428:
                if (!str.equals(f2991)) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case 544981520:
                if (!str.equals(f2986)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            case 604162924:
                if (!str.equals(f2996)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case 650412337:
                if (!str.equals(f2999)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case 753858215:
                if (!str.equals(f2988)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case 769047372:
                if (!str.equals(f2994)) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case 1443881784:
                if (!str.equals(f3001)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return ChartboostActivity.class;
            case 1:
                return CBImpressionActivity.class;
            case 2:
                return Chartboost.class;
            case 3:
                return CBInPlay.class;
            case 4:
                return Chartboost.CBMediation.class;
            case 5:
                return MediationModel.class;
            case 6:
                return C0815.class;
            case 7:
            case 8:
                return com.chartboost.sdk.legacy.CBImpressionActivity.class;
            case 9:
                return Ad.class;
            case 10:
                return Interstitial.class;
            case 11:
                return Rewarded.class;
            case 12:
                return AdCallback.class;
            case 13:
                return DismissibleAdCallback.class;
            case 14:
                return InterstitialCallback.class;
            case 15:
                return RewardedCallback.class;
            case 16:
                return StartCallback.class;
            case 17:
            case 18:
                return com.chartboost.sdk.view.CBImpressionActivity.class;
            default:
                return null;
        }
    }
}
