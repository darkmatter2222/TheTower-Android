package com.ironsource.adqualitysdk.sdk.i;

import com.amazon.aps.ads.Aps;
import com.amazon.aps.ads.ApsAd;
import com.amazon.aps.ads.ApsAdController;
import com.amazon.aps.ads.ApsAdRequest;
import com.amazon.aps.ads.ApsAdView;
import com.amazon.aps.ads.activity.ApsAdActivity;
import com.amazon.aps.ads.activity.ApsInterstitialActivity;
import com.amazon.aps.ads.listeners.ApsAdListener;
import com.amazon.aps.ads.listeners.ApsAdRequestListener;
import com.amazon.aps.ads.model.ApsAdFormat;
import com.amazon.aps.ads.model.ApsAdType;
import com.amazon.device.ads.AdRegistration;
import com.amazon.device.ads.DTBActivity;
import com.amazon.device.ads.DTBAdActivity;
import com.amazon.device.ads.DTBAdBannerListener;
import com.amazon.device.ads.DTBAdBaseBannerListener;
import com.amazon.device.ads.DTBAdBaseInterstitialListener;
import com.amazon.device.ads.DTBAdCallback;
import com.amazon.device.ads.DTBAdExpandedListener;
import com.amazon.device.ads.DTBAdInterstitial;
import com.amazon.device.ads.DTBAdInterstitialListener;
import com.amazon.device.ads.DTBAdListener;
import com.amazon.device.ads.DTBAdLoader;
import com.amazon.device.ads.DTBAdRequest;
import com.amazon.device.ads.DTBAdResponse;
import com.amazon.device.ads.DTBAdSize;
import com.amazon.device.ads.DTBAdView;
import com.amazon.device.ads.DTBAdViewSupportClient;
import com.amazon.device.ads.DTBFetchFactory;
import com.amazon.device.ads.DTBFetchManager;
import com.amazon.device.ads.DTBInterstitialActivity;
import com.amazon.device.ads.DTBRenderer;
import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.宀, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0909 extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f3258 = StringFog.decrypt("smvdfw24VoOs\n", "1Q6pPn3IHeY=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f3257 = StringFog.decrypt("/k1pLpBJKVXfSX4cmk8zdPdbaQmbXi8=\n", "mSgdaPU9Sj0=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f3256 = StringFog.decrypt("sqrlr0AvEEmloP+dQT8cXpyr\n", "1c+R7iR9dTo=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f3255 = StringFog.decrypt("i9jtjY44m36c0ve/jyOTfZ7Y6r+DBZBYntE=\n", "7L2ZzOpq/g0=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f3254 = StringFog.decrypt("VtNeVJRE4nxB2URmlUTiYVXTWHyeccpuQQ==\n", "MbYqFfAWhw8=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f3253 = StringFog.decrypt("QHH4Weqo9a1Xe+Jr66j1sENx/nHgndKrSXDgfQ==\n", "JxSMGI76kN4=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f3252 = StringFog.decrypt("PbKpPNLTo2A2o4sR09CtVD6kjx3GwKdmLpSoC8Par0U7pbwVxA==\n", "WtfdeLe1whU=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f3251 = StringFog.decrypt("03gtulyGCKvEcjeIXZUJqw==\n", "tB1Z+zjUbdg=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f3250 = StringFog.decrypt("5gFZ+goT1JLxC0PICxHDiOIBfdQHL8U=\n", "gWQtu25BseE=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f3249 = StringFog.decrypt("zOGt/KzP8VTO17XSvMnNZ+8=\n", "q4TZvcicmC4=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f3248 = StringFog.decrypt("PrpZJ9Fj2Bo8nkkyzEDU\n", "Wd8tZrUwsWA=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f3247 = StringFog.decrypt("4VsPuo2w24jjbg6ZuobGhu9QHIg=\n", "hj57++njsvI=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f3246 = StringFog.decrypt("+3sSfudgZLjbZid/xnpqtOZhMnb1bQ==\n", "kghTGrQJHt0=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f3245 = StringFog.decrypt("HiltkZ7hgag7PnyTgsK0iQk0eomn5buLGj56vYv0\n", "fVsI8OqE1eo=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f3244 = StringFog.decrypt("VrlBH922ZJZws0Ed3KdfpmauVgjAsFU=\n", "NcskfqnTMNQ=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f3243 = StringFog.decrypt("84WrA6IWUkLkj7ExowdFVPWUtjSjDVM=\n", "lODfQsZENzE=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f3242 = StringFog.decrypt("b5LCk6apz2xcl+Sfrq4=\n", "LvaQ9sHAvBg=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f3241 = StringFog.decrypt("tse8VM7RRFub54c=\n", "8pP+Fa2lLS0=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f3240 = StringFog.decrypt("/JbhHJP6w97wl6JWl+HLx/rX7VaBuebw3bjvRpvhy9Dm\n", "n/mMMvKXoqQ=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f3239 = StringFog.decrypt("ucwtp8rxB4eO7AaazeQOtJ7sBpjN8Rs=\n", "/Zhv7qSFYvU=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f3238 = StringFog.decrypt("+eAnzEQrzr/14WSGQDDGpv+hK4ZWaOuR2MYklkA03LHz+yODSQfMsfP5I5Zc\n", "mo9K4iVGr8U=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f3237 = StringFog.decrypt("PIgZGLeQZZURqjItqg==\n", "eNxbWdPRBuE=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f3236 = StringFog.decrypt("xbJs8IMH/IrJsy+6hxz0k8PzYLqRRNmk5Jxln4Ee9IbPqXg=\n", "pt0B3uJqnfA=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f3235 = StringFog.decrypt("zIkIQ6K2tP/trzl2r4uz6uQ=\n", "iN1KAsb/2os=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f3234 = StringFog.decrypt("zqhIbVpFVBTumXg=\n", "ivwKLD4JO3U=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f3233 = StringFog.decrypt("JW+cVeX7sWUUXq1g\n", "YTveFIGp1BQ=\n");

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f3232 = StringFog.decrypt("okIRvHMhQUSWeT2Ocg==\n", "5hZT/RdzJDc=\n");

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f3231 = StringFog.decrypt("CJJl2/ILidk7\n", "TMYnmpZd4Lw=\n");

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static final String f3230 = StringFog.decrypt("f13ehTghf1pe\n", "OwmcxFxyFiA=\n");

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static final String f3229 = StringFog.decrypt("PRENxjCSKPcxEE6MNIkg7jtQAYwi0Q3ZHD8EvjiaPg==\n", "Xn5g6FH/SY0=\n");

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static final String f3228 = StringFog.decrypt("71KvKXCDZKXcVZgYZLp/tOhqhA16oQ==\n", "qwbtaBTVDcA=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f3227 = StringFog.decrypt("p13itrd0ShylaMOEvXJQ\n", "4wmg8NIAKXQ=\n");

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static final String f3226 = StringFog.decrypt("65mPBjLsdDDirKMhMP1l\n", "r83NQFeYF1g=\n");

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static final String f3225 = StringFog.decrypt("Nmx4+8+v1PsAXUg=\n", "cjg6qarBsJ4=\n");

    /* JADX INFO: renamed from: ᖅ, reason: contains not printable characters */
    public static final String f3224 = StringFog.decrypt("5PSm8hA+2ezOxZb/HQ/M587Flg==\n", "oKDks3R8uII=\n");

    /* JADX INFO: renamed from: ᕆ, reason: contains not printable characters */
    public static final String f3223 = StringFog.decrypt("eCU36DRL3EFZMxTHPmzPflUCAcw+bM8=\n", "PHF1qVAJvTI=\n");

    /* JADX INFO: renamed from: ᕄ, reason: contains not printable characters */
    public static final String f3222 = StringFog.decrypt("9xGxXjFgIyfWDJ1rMFAxINoxmn45bisnxyCdeic=\n", "s0XzH1UiQlQ=\n");

    /* JADX INFO: renamed from: ᕃ, reason: contains not printable characters */
    public static final String f3221 = StringFog.decrypt("yaNIXOgeZ9LhlWt+5w==\n", "jfcKHYxdBr4=\n");

    /* JADX INFO: renamed from: ᕂ, reason: contains not printable characters */
    public static final String f3220 = StringFog.decrypt("oUQq1w+Q9XyEfgzzD5nkf5F1BvMZ\n", "5RBolmvVjQw=\n");

    /* JADX INFO: renamed from: ᔽ, reason: contains not printable characters */
    public static final String f3219 = StringFog.decrypt("DPQd1bKMgmMt0izgv7GFdiTsNueioIJyOg==\n", "SKBflNbF7Bc=\n");

    /* JADX INFO: renamed from: ᔺ, reason: contains not printable characters */
    public static final String f3218 = StringFog.decrypt("qXCXHknZy2+ZQbs6Xw==\n", "7STVXy2Vohw=\n");

    /* JADX INFO: renamed from: ᔹ, reason: contains not printable characters */
    public static final String f3217 = StringFog.decrypt("C1StsFh7BrYtXoGiXlcAow==\n", "Xxbg0TYaYdM=\n");

    /* JADX INFO: renamed from: ᔲ, reason: contains not printable characters */
    public static final String f3216 = StringFog.decrypt("+8iCloJxo0/A+JSLlWS/WMo=\n", "r4rH7ucS1js=\n");

    /* JADX INFO: renamed from: ᔱ, reason: contains not printable characters */
    public static final String f3215 = StringFog.decrypt("OgrHljgCDhEIDt2rPxcHIhgO3ak/AhI=\n", "e3q031Z2a2M=\n");

    /* JADX INFO: renamed from: ᓮ, reason: contains not printable characters */
    public static final String f3214 = StringFog.decrypt("VTgbagSRFHtZOVglFY9bYFIkWCUGiBx3XyMPaiSMBkhYIxM2FogcdV82GgUGiBx3XyMP\n", "Nld2RGX8dQE=\n");

    /* JADX INFO: renamed from: ᐱ, reason: contains not printable characters */
    public static final String f3213 = StringFog.decrypt("wm9QxZ/k6b7qaUrwgg==\n", "gx8jhPuliso=\n");

    /* JADX INFO: renamed from: Ꮭ, reason: contains not printable characters */
    public static final String f3212 = StringFog.decrypt("SSl8vKLUo1dFKD/zs8rsTE41P/OgzatbQzJovILJsWxOB3Lmqs+rWVM=\n", "KkYRksO5wi0=\n");

    /* JADX INFO: renamed from: Ꮧ, reason: contains not printable characters */
    public static final String f3211 = StringFog.decrypt("xCAMtXcYg6vy\n", "hVB/9BNO6s4=\n");

    /* JADX INFO: renamed from: პ, reason: contains not printable characters */
    public static final String f3210 = StringFog.decrypt("Gh1K\n", "W205dBJurcI=\n");

    /* JADX INFO: renamed from: ე, reason: contains not printable characters */
    public static final String f3209 = StringFog.decrypt("W/J4TII=\n", "GoILDeZej00=\n");

    /* JADX INFO: renamed from: ງ, reason: contains not printable characters */
    public static final String f3208 = StringFog.decrypt("i57qh+Fd2aW+nPaq6XvE\n", "yu6ZxoUetss=\n");

    /* JADX INFO: renamed from: อ, reason: contains not printable characters */
    public static final String f3207 = StringFog.decrypt("z9Jset5mBA36x3FeyA==\n", "jqIfO7oqbX4=\n");

    /* JADX INFO: renamed from: ม, reason: contains not printable characters */
    public static final String f3206 = StringFog.decrypt("i0wklrBvOCe/WSSjmFQuIq9SMqU=\n", "yjxX19Q9XVY=\n");

    /* JADX INFO: renamed from: น, reason: contains not printable characters */
    public static final String f3205 = StringFog.decrypt("+mxgHndvgsnWfWc=\n", "uxwTXxMp7bs=\n");

    /* JADX INFO: renamed from: ต, reason: contains not printable characters */
    public static final String f3204 = StringFog.decrypt("ma4hHui+ZsO9\n", "2N5SX4zqH7M=\n");

    /* JADX INFO: renamed from: ฑ, reason: contains not printable characters */
    public static final String f3203 = StringFog.decrypt("KJJv2MSMirwch2/t\n", "aeIcmaDe780=\n");

    /* JADX INFO: renamed from: ঢ়, reason: contains not printable characters */
    public static final String f3202 = StringFog.decrypt("IxzKr4ZYGRoWHM+bk1gs\n", "RHm+7vYrWH4=\n");

    /* JADX INFO: renamed from: ষ, reason: contains not printable characters */
    public static final String f3201 = StringFog.decrypt("EOpQSnxMeYcR4A==\n", "d48kCBUoMOk=\n");

    /* JADX INFO: renamed from: ঘ, reason: contains not printable characters */
    public static final String f3200 = StringFog.decrypt("ajSfQh5EUFNdPoJ8GA==\n", "DVHrEmwtMzY=\n");

    /* JADX INFO: renamed from: খ, reason: contains not printable characters */
    public static final String f3199 = StringFog.decrypt("JNwdZpggNcI20A0=\n", "Q7lpNfRPQZc=\n");

    /* JADX INFO: renamed from: এ, reason: contains not printable characters */
    public static final String f3198 = StringFog.decrypt("5Vnk0hJXKv3EU+L+A1A=\n", "gjyQk2Ika5k=\n");

    /* JADX INFO: renamed from: ऱ, reason: contains not printable characters */
    public static final String f3197 = StringFog.decrypt("ID/7KsPyhU8jP/0=\n", "R1qPa6e+6i4=\n");

    /* JADX INFO: renamed from: ܟ, reason: contains not printable characters */
    public static final String f3196 = StringFog.decrypt("3bbxkwOjaNDN\n", "utOF0mf1AbU=\n");

    public C0909(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        Matcher matcher = Pattern.compile(StringFog.decrypt("9TuuRWE7ViqGOqpDEA==\n", "2xGDbTpnMgQ=\n")).matcher(AdRegistration.getVersion());
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f3258, new C1050(this));
        map.put(f3257, new C1022(this));
        map.put(f3256, new C1021(this));
        map.put(f3243, new C1012(this));
        map.put(f3255, new C1010(this));
        map.put(f3254, new C1004(this));
        map.put(f3253, new C0947(this));
        map.put(f3252, new C0939(this));
        map.put(f3251, new C0937(this));
        map.put(f3250, new C1086(this));
        map.put(f3249, new C1079(this));
        map.put(f3248, new C1077(this));
        map.put(f3247, new C1074(this));
        map.put(f3246, new C1073(this));
        map.put(f3245, new C1072(this));
        map.put(f3244, new C1070(this));
        map.put(f3202, new C1057(this));
        map.put(f3201, new C1052(this));
        map.put(f3200, new C1051(this));
        map.put(f3199, new C1049(this));
        map.put(f3198, new C1040(this));
        map.put(f3197, new C1039(this));
        map.put(f3196, new C1029(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:125:0x01d8  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -2137858584:
                if (!str.equals(f3234)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case -2133119933:
                if (!str.equals(f3208)) {
                    b = -1;
                } else {
                    b = 34;
                }
                break;
            case -1987686071:
                if (!str.equals(f3218)) {
                    b = -1;
                } else {
                    b = Ascii.CAN;
                }
                break;
            case -1885106463:
                if (!str.equals(f3241)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case -1879113962:
                if (!str.equals(f3230)) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case -1879025222:
                if (!str.equals(f3231)) {
                    b = -1;
                } else {
                    b = Ascii.VT;
                }
                break;
            case -1554728876:
                if (!str.equals(f3238)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case -1464660218:
                if (!str.equals(f3222)) {
                    b = -1;
                } else {
                    b = Ascii.DC4;
                }
                break;
            case -1358954558:
                if (!str.equals(f3227)) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case -1293925587:
                if (!str.equals(f3239)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case -1291566264:
                if (!str.equals(f3203)) {
                    b = -1;
                } else {
                    b = 39;
                }
                break;
            case -1092884085:
                if (!str.equals(f3236)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case -1090060454:
                if (!str.equals(f3233)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case -832298225:
                if (!str.equals(f3217)) {
                    b = -1;
                } else {
                    b = Ascii.EM;
                }
                break;
            case -791598050:
                if (!str.equals(f3205)) {
                    b = -1;
                } else {
                    b = 37;
                }
                break;
            case -723985259:
                if (!str.equals(f3225)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case -696695160:
                if (!str.equals(f3240)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case -694845532:
                if (!str.equals(f3237)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case -466918522:
                if (!str.equals(f3223)) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            case -341719851:
                if (!str.equals(f3224)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            case -300800492:
                if (!str.equals(f3216)) {
                    b = -1;
                } else {
                    b = Ascii.SUB;
                }
                break;
            case -197992833:
                if (!str.equals(f3215)) {
                    b = -1;
                } else {
                    b = Ascii.ESC;
                }
                break;
            case -27446238:
                if (!str.equals(f3220)) {
                    b = -1;
                } else {
                    b = Ascii.SYN;
                }
                break;
            case 66052:
                if (!str.equals(f3210)) {
                    b = -1;
                } else {
                    b = 32;
                }
                break;
            case 63478087:
                if (!str.equals(f3209)) {
                    b = -1;
                } else {
                    b = 33;
                }
                break;
            case 355568411:
                if (!str.equals(f3207)) {
                    b = -1;
                } else {
                    b = 35;
                }
                break;
            case 568188517:
                if (!str.equals(f3226)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case 620798166:
                if (!str.equals(f3232)) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case 788901082:
                if (!str.equals(f3221)) {
                    b = -1;
                } else {
                    b = Ascii.NAK;
                }
                break;
            case 1036908700:
                if (!str.equals(f3242)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case 1251356764:
                if (!str.equals(f3212)) {
                    b = -1;
                } else {
                    b = Ascii.RS;
                }
                break;
            case 1306698049:
                if (!str.equals(f3235)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case 1328085269:
                if (!str.equals(f3219)) {
                    b = -1;
                } else {
                    b = Ascii.ETB;
                }
                break;
            case 1340383521:
                if (!str.equals(f3204)) {
                    b = -1;
                } else {
                    b = 38;
                }
                break;
            case 1340427404:
                if (!str.equals(f3211)) {
                    b = -1;
                } else {
                    b = Ascii.US;
                }
                break;
            case 1600627740:
                if (!str.equals(f3206)) {
                    b = -1;
                } else {
                    b = 36;
                }
                break;
            case 1648408950:
                if (!str.equals(f3213)) {
                    b = -1;
                } else {
                    b = Ascii.GS;
                }
                break;
            case 1713728997:
                if (!str.equals(f3214)) {
                    b = -1;
                } else {
                    b = Ascii.FS;
                }
                break;
            case 2019413793:
                if (!str.equals(f3229)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case 2144664800:
                if (!str.equals(f3228)) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return AdRegistration.class;
            case 1:
            case 2:
                return DTBActivity.class;
            case 3:
            case 4:
                return DTBInterstitialActivity.class;
            case 5:
            case 6:
                return DTBAdActivity.class;
            case 7:
                return DTBAdInterstitial.class;
            case 8:
                return DTBAdLoader.class;
            case 9:
                return DTBAdRequest.class;
            case 10:
                return DTBAdResponse.class;
            case 11:
            case 12:
                return DTBAdView.class;
            case 13:
                return DTBAdSize.class;
            case 14:
                return DTBAdViewSupportClient.class;
            case 15:
                return DTBFetchFactory.class;
            case 16:
                return DTBFetchManager.class;
            case 17:
                return DTBRenderer.class;
            case 18:
                return DTBAdBannerListener.class;
            case 19:
                return DTBAdBaseBannerListener.class;
            case 20:
                return DTBAdBaseInterstitialListener.class;
            case 21:
                return DTBAdCallback.class;
            case 22:
                return DTBAdExpandedListener.class;
            case 23:
                return DTBAdInterstitialListener.class;
            case 24:
                return DTBAdListener.class;
            case 25:
                return C0917.class;
            case 26:
                return C0934.class;
            case 27:
            case 28:
                return ApsInterstitialActivity.class;
            case 29:
            case 30:
                return ApsAdActivity.class;
            case 31:
                return ApsAdView.class;
            case 32:
                return Aps.class;
            case 33:
                return ApsAd.class;
            case 34:
                return ApsAdController.class;
            case 35:
                return ApsAdListener.class;
            case 36:
                return ApsAdRequestListener.class;
            case 37:
                return ApsAdFormat.class;
            case 38:
                return ApsAdType.class;
            case 39:
                return ApsAdRequest.class;
            default:
                return null;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final String mo1850() {
        return AdRegistration.getVersion();
    }
}
