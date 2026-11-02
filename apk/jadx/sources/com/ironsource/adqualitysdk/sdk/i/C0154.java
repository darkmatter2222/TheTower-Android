package com.ironsource.adqualitysdk.sdk.i;

import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import com.moloco.sdk.BuildConfig;
import com.moloco.sdk.publisher.AdFormatType;
import com.moloco.sdk.publisher.AdShowListener;
import com.moloco.sdk.publisher.Banner;
import com.moloco.sdk.publisher.BannerAdShowListener;
import com.moloco.sdk.publisher.FullscreenAd;
import com.moloco.sdk.publisher.InterstitialAd;
import com.moloco.sdk.publisher.InterstitialAdShowListener;
import com.moloco.sdk.publisher.MediationInfo;
import com.moloco.sdk.publisher.Moloco;
import com.moloco.sdk.publisher.MolocoAd;
import com.moloco.sdk.publisher.RewardedInterstitialAd;
import com.moloco.sdk.publisher.RewardedInterstitialAdShowListener;
import com.moloco.sdk.publisher.init.MolocoInitParams;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidActivity;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastActivity;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ǀ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0154 extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f889 = StringFog.decrypt("2S6MRpd1C6TRGJxgsXcXs98lm24=\n", "vkv4C/gZZMc=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f888 = StringFog.decrypt("cBeXN8vGyKZlM4cmwsfRj34BlxDEzdQ=\n", "F3LjdaqopsM=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f887 = StringFog.decrypt("z7uOoqtwHtzOn56zonEH9dWtjoWkewI=\n", "vN764MoecLk=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f886 = StringFog.decrypt("QhyKN8IUro5mB7Y50xqKkw==\n", "D3PmWKF75+A=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f885 = StringFog.decrypt("xso6QfD1\n", "i6VWLpOaRt4=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f884 = StringFog.decrypt("x6H9DFt7CU0=\n", "is6RYzgUSCk=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f883 = StringFog.decrypt("JTfpjGpSe8gwKt+G\n", "ZFOv4xg/Grw=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f882 = StringFog.decrypt("NNJtjRH+KPAGwluLG/s=\n", "dbY+5X6JZJk=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f881 = StringFog.decrypt("1u8k1ajL\n", "lI5Ku825YCA=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f880 = StringFog.decrypt("WsEEasK36mNawUc3y7OofEzMBS3csON+F+wIKsG99A==\n", "Oa5pRK/Yhgw=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f879 = StringFog.decrypt("e9dnDXbY2z9q3mYUX8PpL1zYbBE=\n", "ObYJYxOqmls=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f878 = StringFog.decrypt("NuJQwaMdxlsV+X3J\n", "cJc8rdB+tD4=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f877 = StringFog.decrypt("gV1DeLCAZmi8WlZxg5c=\n", "yDM3HcLzEgE=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f876 = StringFog.decrypt("R/Hthg5EC4569viPPVMsj2Ho1YoPQxqJa+0=\n", "Dp+Z43w3f+c=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f875 = StringFog.decrypt("f7uLDGDs/59cl4EDbg==\n", "Mt7vZQGYlvA=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f874 = StringFog.decrypt("k4MkxMEp/5KIiCfAwT7un7WPMsnyKQ==\n", "weZTpbNNmvY=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f873 = StringFog.decrypt("z+dEplAZOQHU7EeiUA4oDOnrUqtjGQ8N8vV/rlEJOQv48A==\n", "nYIzxyJ9XGU=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f872 = StringFog.decrypt("YnAUM8gWUzRGdBwu1Q==\n", "LwJ1WqxXMEA=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f871 = StringFog.decrypt("rwaJVuIkHgivBsoL6yBcH6kHiwv8ZQEDpw2BDuQiBkmtB4AK4CIWSa0Nlh3hLxcVqRvKEeE/FxWi\nCIhW4jkTDqhHqQruIhYmrx2NDuY/Cw==\n", "zGnkeI9Lcmc=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f870 = StringFog.decrypt("Ovv0qEOdc0Qo7OG1XJdGWQ==\n", "aY+V3Cr+MiA=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f869 = StringFog.decrypt("G+uMeJQr7Okb688lnS+u/h3qjiWKavPiE+CEIJIt9KgZ6oUkli3kqBngkzOXIOX0HfbPP5cw5fQW\n5Y14ijDh8hHnkzOXIOX0HfbPBY0l9O8bxYUXmjDp8BHwmA==\n", "eIThVvlEgIY=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f868 = StringFog.decrypt("Bo3KqTWh2uAmhc2k\n", "UOy53XTCrok=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f867 = StringFog.decrypt("z6DRp1KDMt3PoJL6W4dwysmh0/pMwi3Wx6vZ/1SFKpzNodj7UIU6nM2rzuxRiDvAyb2S4FGYO8DC\nrtCnSY0txoKZ3fpLrT3GxbnV/UY=\n", "rM+8iT/sXrI=\n");

    public C0154(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        try {
            C0632 c0632 = C0793.m2275().f2974;
            String strDecrypt = StringFog.decrypt("uWDwI923FZXMEr4=\n", "5zyUeIHTO8g=\n");
            c0632.getClass();
            return C0632.m2159((Object) null, BuildConfig.class, strDecrypt);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f889, new C0183(this));
        map.put(f888, new C0173(this));
        map.put(f887, new C0170(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:65:0x00e7  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -1984684559:
                if (!str.equals(f885)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case -1940439161:
                if (!str.equals(f886)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case -1921270373:
                if (!str.equals(f868)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            case -1483746188:
                if (!str.equals(f883)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case -1473265726:
                if (!str.equals(f880)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case -1435839138:
                if (!str.equals(f878)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case -1413560652:
                if (!str.equals(f882)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case -1323289850:
                if (!str.equals(f869)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case -789262976:
                if (!str.equals(f870)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case -671875674:
                if (!str.equals(f875)) {
                    b = -1;
                } else {
                    b = Ascii.VT;
                }
                break;
            case -556413696:
                if (!str.equals(f876)) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case -543102915:
                if (!str.equals(f874)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case -517600968:
                if (!str.equals(f871)) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case -316379660:
                if (!str.equals(f884)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 320151695:
                if (!str.equals(f877)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case 664452134:
                if (!str.equals(f867)) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            case 704479150:
                if (!str.equals(f873)) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case 1395486086:
                if (!str.equals(f872)) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            case 1928690944:
                if (!str.equals(f879)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case 1982491468:
                if (!str.equals(f881)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return MolocoInitParams.class;
            case 1:
                return Moloco.class;
            case 2:
                return MolocoAd.class;
            case 3:
                return AdFormatType.class;
            case 4:
                return AdShowListener.class;
            case 5:
            case 6:
                return Banner.class;
            case 7:
                return BannerAdShowListener.class;
            case 8:
                return FullscreenAd.class;
            case 9:
                return InterstitialAd.class;
            case 10:
                return InterstitialAdShowListener.class;
            case 11:
                return MediationInfo.class;
            case 12:
                return RewardedInterstitialAd.class;
            case 13:
                return RewardedInterstitialAdShowListener.class;
            case 14:
            case 15:
                return MraidActivity.class;
            case 16:
            case 17:
                return StaticAdActivity.class;
            case 18:
            case 19:
                return VastActivity.class;
            default:
                return null;
        }
    }
}
