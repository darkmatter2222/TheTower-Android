package com.ironsource.adqualitysdk.sdk.i;

import com.explorestack.iab.mraid.MraidActivity;
import com.explorestack.iab.mraid.MraidAdView;
import com.explorestack.iab.mraid.MraidDialogActivity;
import com.explorestack.iab.mraid.MraidInterstitial;
import com.explorestack.iab.mraid.MraidInterstitialListener;
import com.explorestack.iab.mraid.MraidView;
import com.explorestack.iab.mraid.MraidViewListener;
import com.explorestack.iab.vast.VastViewListener;
import com.explorestack.iab.vast.activity.VastActivity;
import com.explorestack.iab.vast.activity.VastView;
import com.explorestack.protobuf.adcom.Ad;
import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import io.bidmachine.AdContentType;
import io.bidmachine.AdFullScreenListener;
import io.bidmachine.AdListener;
import io.bidmachine.AdRequest;
import io.bidmachine.AdRequestParameters;
import io.bidmachine.AdView;
import io.bidmachine.AdsType;
import io.bidmachine.BidMachine;
import io.bidmachine.BidMachineAd;
import io.bidmachine.CreativeFormat;
import io.bidmachine.FullScreenAd;
import io.bidmachine.ImageData;
import io.bidmachine.MediaAssetType;
import io.bidmachine.banner.BannerListener;
import io.bidmachine.banner.BannerView;
import io.bidmachine.interstitial.InterstitialAd;
import io.bidmachine.interstitial.InterstitialListener;
import io.bidmachine.nativead.NativeAd;
import io.bidmachine.nativead.NativeListener;
import io.bidmachine.nativead.view.MediaView;
import io.bidmachine.nativead.view.NativeMediaView;
import io.bidmachine.nativead.view.VideoPlayerActivity;
import io.bidmachine.protobuf.RequestExtension;
import io.bidmachine.rewarded.RewardedAd;
import io.bidmachine.rewarded.RewardedListener;
import io.bidmachine.richmedia.RichMediaListener;
import io.bidmachine.richmedia.RichMediaView;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.λ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0261 extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f1277 = StringFog.decrypt("fovJVP8Wasp4l/x0+w==\n", "Ge69EJZlGqY=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f1276 = StringFog.decrypt("8Eh5MqGwCsrWSWA=\n", "ly0NZMjUb6U=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f1275 = StringFog.decrypt("TXdpVTxVDY9DfA==\n", "KhIdFFg6YO4=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f1274 = StringFog.decrypt("b9BAsZfKB4Rhw1G7gQ==\n", "CLU08uWvZvA=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f1273 = StringFog.decrypt("LbHdV4YhQH8v\n", "StSpFfNPJBM=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f1272 = StringFog.decrypt("WmHwBIXsTRpcfQ==\n", "PQSEQOyfPXY=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f1271 = StringFog.decrypt("3fd+UMbVTfPb60h1wchY7Q==\n", "upIKFK+mPZ8=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f1270 = StringFog.decrypt("Tl5evEKOr5lbflKKc5KuiEZ3Q41X\n", "KTsq/iPgwfw=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f1269 = StringFog.decrypt("aM1wpD2e8Bw=\n", "D6gE8lT6lXM=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f1268 = StringFog.decrypt("NV0JZhbpo+09TBJvB+6H\n", "Ujh9I26d858=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f1267 = StringFog.decrypt("9MxXbbvtqL/n20pBpQ==\n", "k6kjL8KZzew=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f1266 = StringFog.decrypt("tYbNQz0egIq5mO1JPR6AirmY\n", "1/+5Jm5q8uM=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f1265 = StringFog.decrypt("r91vjkoceX6l3XWqbxk=\n", "yLgb3iZ9Ghs=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f1264 = StringFog.decrypt("nwkDzgYIGSOd\n", "+Gx3j2JcYFM=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f1263 = StringFog.decrypt("VRlFNHwp7ldANVU=\n", "MnwxZxlFgjI=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f1262 = StringFog.decrypt("gpXTJM24a+2ChM4Zyq1i05iD0wjNqXw=\n", "8fCnbaPMDp8=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f1261 = StringFog.decrypt("aULS1UJcZeN+QsLLTlhw9HRC1A==\n", "GiemhycrBJE=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f1260 = StringFog.decrypt("Y/ghrDZ+jhpi0TydI3WOGmI=\n", "EJ1V7lcQ4H8=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f1259 = StringFog.decrypt("CjNhHC4Dp4w/A1sDJQ==\n", "S1cic0B3wuI=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f1258 = StringFog.decrypt("iFs61qVxuHqw\n", "yT9+v9YB1Bs=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f1257 = StringFog.decrypt("AR9Aj4COqw==\n", "QHsW5uTrxDs=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f1256 = StringFog.decrypt("+hQaftEluNbJFTll8SCYwd4eOXk=\n", "u3BcC71J67U=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f1255 = StringFog.decrypt("Q+NJcFkWXoFn9Q==\n", "AocFGSpiO+8=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f1254 = StringFog.decrypt("HEPt9keozZ8p\n", "XSe/kzbdqOw=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f1253 = StringFog.decrypt("qrW5k95gK0efgYqEzngrQI6jmA==\n", "69Hr9q8VTjQ=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f1252 = StringFog.decrypt("huyTrIuHDg==\n", "x4jg+PL3a/w=\n");

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f1251 = StringFog.decrypt("+eBr0tBp\n", "uIQ9u7UeR10=\n");

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f1250 = StringFog.decrypt("sJi/Uzoxdt6BjbRTOjE=\n", "8vnRPV9DOrc=\n");

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static final String f1249 = StringFog.decrypt("63xAoXV/b2HMag==\n", "qR0uzxANOQg=\n");

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static final String f1248 = StringFog.decrypt("S1t/euzWPmJBXDh24JwxYkxaNGqr8DJtTFEjTuzXJA==\n", "IjRRGIWyUwM=\n");

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static final String f1247 = StringFog.decrypt("e+GMHmaCknxX7Q==\n", "OYjoUwfh+hU=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f1246 = StringFog.decrypt("xFN9b8H8k+zoX1hG\n", "hjoZIqCf+4U=\n");

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static final String f1245 = StringFog.decrypt("prghT7llmnKjpTZDrHg=\n", "5cpELs0M7Bc=\n");

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static final String f1244 = StringFog.decrypt("Z4vXCb/Fk5JP\n", "Lua2btqB8uY=\n");

    /* JADX INFO: renamed from: ᖅ, reason: contains not printable characters */
    public static final String f1243 = StringFog.decrypt("jgyVddEFat2zC4B84hI=\n", "x2LhEKN2HrQ=\n");

    /* JADX INFO: renamed from: ᕆ, reason: contains not printable characters */
    public static final String f1242 = StringFog.decrypt("36oysXAmqqXirSe4TjytuPOqI6Y=\n", "lsRG1AJV3sw=\n");

    /* JADX INFO: renamed from: ᕄ, reason: contains not printable characters */
    public static final String f1241 = StringFog.decrypt("rFhACSoJyZuPQ20B\n", "6i0sZXlqu/4=\n");

    /* JADX INFO: renamed from: ᕃ, reason: contains not printable characters */
    public static final String f1240 = StringFog.decrypt("ZqChdamB73JOsZFluKU=\n", "K8XFHMjAnAE=\n");

    /* JADX INFO: renamed from: ᕂ, reason: contains not printable characters */
    public static final String f1239 = StringFog.decrypt("kM2Tik7f2uiq\n", "3aj34y+Js40=\n");

    /* JADX INFO: renamed from: ᔽ, reason: contains not printable characters */
    public static final String f1238 = StringFog.decrypt("WeQfq4Y/FDVT41ininUXNUTiR6yOP1ciWe5G56I+HT1R3VismA==\n", "MIsxye9beVQ=\n");

    /* JADX INFO: renamed from: ᔺ, reason: contains not printable characters */
    public static final String f1237 = StringFog.decrypt("ZqHlrZjdWXY=\n", "KMCRxO64GBI=\n");

    /* JADX INFO: renamed from: ᔹ, reason: contains not printable characters */
    public static final String f1236 = StringFog.decrypt("XL8IVyGaAFRhqhlQMo0=\n", "Et58Plf/TD0=\n");

    /* JADX INFO: renamed from: ᔲ, reason: contains not printable characters */
    public static final String f1235 = StringFog.decrypt("qW8IwdS/tl6DZx3+y7+M\n", "5w58qKLa+zs=\n");

    /* JADX INFO: renamed from: ᔱ, reason: contains not printable characters */
    public static final String f1234 = StringFog.decrypt("gU2i31DfYYKSTA==\n", "0yjVviK7BOY=\n");

    /* JADX INFO: renamed from: ᓮ, reason: contains not printable characters */
    public static final String f1233 = StringFog.decrypt("M+/gMzhE1Hot4+QmL07UbA==\n", "YYqXUkogsR4=\n");

    /* JADX INFO: renamed from: ᐱ, reason: contains not printable characters */
    public static final String f1232 = StringFog.decrypt("W6VIG2jgL91ogEIAUeAl0Xs=\n", "CcwrcyWFS7Q=\n");

    /* JADX INFO: renamed from: Ꮭ, reason: contains not printable characters */
    public static final String f1231 = StringFog.decrypt("Pk8tkV2JzqENcCecZw==\n", "bCZO+RDsqsg=\n");

    /* JADX INFO: renamed from: Ꮧ, reason: contains not printable characters */
    public static final String f1230 = StringFog.decrypt("NYpUQ4qQmqE/jRNPhtqFqT+NF0SHnZbuDowZSa6Rk6k9sxNElA==\n", "XOV6IeP098A=\n");

    /* JADX INFO: renamed from: პ, reason: contains not printable characters */
    public static final String f1229 = StringFog.decrypt("9ajWlslIep3apMCyxWx/isq1yw==\n", "o8Gy86YYFvw=\n");

    /* JADX INFO: renamed from: ე, reason: contains not printable characters */
    public static final String f1228 = StringFog.decrypt("CKUhnYS27GYComaRiPzvZhWjeZqMtq9xCK940bu75WIOmmOelLfzRgK+ZomEpvg=\n", "YcoP/+3SgQc=\n");

    /* JADX INFO: renamed from: ງ, reason: contains not printable characters */
    public static final String f1227 = StringFog.decrypt("PDcH091G3a4WJhPIy1zGhQ==\n", "blJ2prg1qes=\n");

    /* JADX INFO: renamed from: อ, reason: contains not printable characters */
    public static final String f1226 = StringFog.decrypt("ccA=\n", "MKRW9Unz5CA=\n");

    /* JADX INFO: renamed from: ม, reason: contains not printable characters */
    public static final String f1225 = StringFog.decrypt("p+/cnugi0lqD69SD9Q==\n", "6p2994xjsS4=\n");

    /* JADX INFO: renamed from: น, reason: contains not printable characters */
    public static final String f1224 = StringFog.decrypt("U5a2v+5c0Zdfi77i/0XCkB6QuvOlSdOaWZ313PlFyJ9xmq/4/U3Vgg==\n", "MPnbkYskofs=\n");

    /* JADX INFO: renamed from: ต, reason: contains not printable characters */
    public static final String f1223 = StringFog.decrypt("Xlfbe7I/pex/St1TtQ+l+3pRww==\n", "EyW6EtZ7zI0=\n");

    /* JADX INFO: renamed from: ฑ, reason: contains not printable characters */
    public static final String f1222 = StringFog.decrypt("CdnhFTS0GxsFxOlIJa0IHETf7Vl/oRkWA9KidiOtAhMu3+1XPqsqFB7f+lIltQ==\n", "araMO1HMa3c=\n");

    /* JADX INFO: renamed from: ঢ়, reason: contains not printable characters */
    public static final String f1221 = StringFog.decrypt("thjdnE9AHMeeGM+BQn0b0pc=\n", "+2q89SsJcrM=\n");

    /* JADX INFO: renamed from: ষ, reason: contains not printable characters */
    public static final String f1220 = StringFog.decrypt("OOxLuFrTKEsQ7FmlV+4vXhnSQ6JK/yhaBw==\n", "dZ4q0T6aRj8=\n");

    /* JADX INFO: renamed from: ঘ, reason: contains not printable characters */
    public static final String f1219 = StringFog.decrypt("YfczO3f/Hr9b\n", "LIVSUhOpd9o=\n");

    /* JADX INFO: renamed from: খ, reason: contains not printable characters */
    public static final String f1218 = StringFog.decrypt("hUhUxXj0AYSJVVyYae0Sg8hOWIkz4QOJj0MXpm/tGIywTlyc\n", "5ic56x2Mceg=\n");

    /* JADX INFO: renamed from: এ, reason: contains not printable characters */
    public static final String f1217 = StringFog.decrypt("vkQVvzyhuMOEeh2lLJK/w4E=\n", "8zZ01lj30aY=\n");

    /* JADX INFO: renamed from: ऱ, reason: contains not printable characters */
    public static final String f1216 = StringFog.decrypt("yNLQxksXJ5ro2tfL\n", "nrOjsgp0U/M=\n");

    /* JADX INFO: renamed from: ܟ, reason: contains not printable characters */
    public static final String f1215 = StringFog.decrypt("WuVw2ZG7hJ1W+HiEgKKXmhfjfJXatZWCTaR8lICqgphN8zOhlbCAsFr+dIGdt40=\n", "OYod9/TD9PE=\n");

    /* JADX INFO: renamed from: ܘ, reason: contains not printable characters */
    public static final String f1214 = StringFog.decrypt("l3HZjSMPogM=\n", "wRCq+XVmx3Q=\n");

    /* JADX INFO: renamed from: ے, reason: contains not printable characters */
    public static final String f1213 = StringFog.decrypt("sqRLKGpdz5G+uUN1e0Tclv+iR2QhU96OpeVHZXtMyZSlsghQblbLq7iuUQ==\n", "0csmBg8lv/0=\n");

    /* JADX INFO: renamed from: ۉ, reason: contains not printable characters */
    public static final String f1212 = StringFog.decrypt("rZoTkBneHMuJjQU=\n", "4Ohy+X2feJ0=\n");

    /* JADX INFO: renamed from: ۅ, reason: contains not printable characters */
    public static final String f1211 = StringFog.decrypt("7JIMiotlpiDgjwTXmny1J6GUAMbAcKQt5plP6Zx8vyjOmTfNi2o=\n", "j/1hpO4d1kw=\n");

    /* JADX INFO: renamed from: ڑ, reason: contains not printable characters */
    public static final String f1210 = StringFog.decrypt("eX6MMkRf2o1jdowyd1jaiA==\n", "Lx//RhI2v/o=\n");

    public C0261(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        try {
            C0632 c0632 = C0793.m2275().f2974;
            String strDecrypt = StringFog.decrypt("2oU1sQtpUf2vhTXO\n", "hNlR6lcNf6A=\n");
            c0632.getClass();
            return C0632.m2159((Object) null, BidMachine.class, strDecrypt);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f1277, new C0337(this));
        map.put(f1276, new C0329(this));
        map.put(f1273, new C0328(this));
        map.put(f1272, new C0327(this));
        map.put(f1271, new C0307(this));
        map.put(f1270, new C0293(this));
        map.put(f1269, new C0273(this));
        map.put(f1275, new C0269(this));
        map.put(f1274, new C0268(this));
        map.put(f1265, new C0408(this));
        map.put(f1264, new C0394(this));
        map.put(f1263, new C0393(this));
        map.put(f1262, new C0377(this));
        map.put(f1261, new C0364(this));
        map.put(f1260, new C0362(this));
        map.put(f1268, new C0355(this));
        map.put(f1267, new C0343(this));
        map.put(f1266, new C0338(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:155:0x0250  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -2127904484:
                if (!str.equals(f1232)) {
                    b = -1;
                } else {
                    b = Ascii.ESC;
                }
                break;
            case -2032115546:
                if (!str.equals(f1245)) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            case -1921270373:
                if (!str.equals(f1216)) {
                    b = -1;
                } else {
                    b = 42;
                }
                break;
            case -1798479256:
                if (!str.equals(f1215)) {
                    b = -1;
                } else {
                    b = 43;
                }
                break;
            case -1683121555:
                if (!str.equals(f1246)) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case -1628534628:
                if (!str.equals(f1219)) {
                    b = -1;
                } else {
                    b = 39;
                }
                break;
            case -1627944928:
                if (!str.equals(f1250)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case -1518365947:
                if (!str.equals(f1210)) {
                    b = -1;
                } else {
                    b = 48;
                }
                break;
            case -1507727624:
                if (!str.equals(f1238)) {
                    b = -1;
                } else {
                    b = Ascii.NAK;
                }
                break;
            case -1371195010:
                if (!str.equals(f1241)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            case -1246480821:
                if (!str.equals(f1229)) {
                    b = -1;
                } else {
                    b = Ascii.RS;
                }
                break;
            case -1146475727:
                if (!str.equals(f1214)) {
                    b = -1;
                } else {
                    b = 44;
                }
                break;
            case -1087582685:
                if (!str.equals(f1221)) {
                    b = -1;
                } else {
                    b = 37;
                }
                break;
            case -1011229113:
                if (!str.equals(f1222)) {
                    b = -1;
                } else {
                    b = 36;
                }
                break;
            case -838844802:
                if (!str.equals(f1213)) {
                    b = -1;
                } else {
                    b = 45;
                }
                break;
            case -642689680:
                if (!str.equals(f1217)) {
                    b = -1;
                } else {
                    b = 41;
                }
                break;
            case -609786639:
                if (!str.equals(f1234)) {
                    b = -1;
                } else {
                    b = Ascii.EM;
                }
                break;
            case -589219056:
                if (!str.equals(f1259)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case -572702516:
                if (!str.equals(f1254)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case -475472046:
                if (!str.equals(f1256)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case -211807062:
                if (!str.equals(f1247)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case -150492023:
                if (!str.equals(f1239)) {
                    b = -1;
                } else {
                    b = Ascii.DC4;
                }
                break;
            case 2115:
                if (!str.equals(f1226)) {
                    b = -1;
                } else {
                    b = 32;
                }
                break;
            case 1282165:
                if (!str.equals(f1218)) {
                    b = -1;
                } else {
                    b = 40;
                }
                break;
            case 3368703:
                if (!str.equals(f1258)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 141091039:
                if (!str.equals(f1224)) {
                    b = -1;
                } else {
                    b = 34;
                }
                break;
            case 320151695:
                if (!str.equals(f1243)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case 503762424:
                if (!str.equals(f1257)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 529939434:
                if (!str.equals(f1252)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case 625873720:
                if (!str.equals(f1211)) {
                    b = -1;
                } else {
                    b = 47;
                }
                break;
            case 713768498:
                if (!str.equals(f1235)) {
                    b = -1;
                } else {
                    b = Ascii.CAN;
                }
                break;
            case 737636858:
                if (!str.equals(f1228)) {
                    b = -1;
                } else {
                    b = Ascii.US;
                }
                break;
            case 742497451:
                if (!str.equals(f1230)) {
                    b = -1;
                } else {
                    b = Ascii.GS;
                }
                break;
            case 745946635:
                if (!str.equals(f1236)) {
                    b = -1;
                } else {
                    b = Ascii.ETB;
                }
                break;
            case 961844241:
                if (!str.equals(f1249)) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case 1125320581:
                if (!str.equals(f1244)) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case 1165508119:
                if (!str.equals(f1255)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case 1212533506:
                if (!str.equals(f1233)) {
                    b = -1;
                } else {
                    b = Ascii.SUB;
                }
                break;
            case 1297340448:
                if (!str.equals(f1242)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case 1387614166:
                if (!str.equals(f1253)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case 1395486086:
                if (!str.equals(f1225)) {
                    b = -1;
                } else {
                    b = 33;
                }
                break;
            case 1444286894:
                if (!str.equals(f1223)) {
                    b = -1;
                } else {
                    b = 35;
                }
                break;
            case 1461955341:
                if (!str.equals(f1231)) {
                    b = -1;
                } else {
                    b = Ascii.FS;
                }
                break;
            case 1494941328:
                if (!str.equals(f1227)) {
                    b = -1;
                } else {
                    b = 49;
                }
                break;
            case 1917129446:
                if (!str.equals(f1240)) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            case 1955913096:
                if (!str.equals(f1251)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case 2034998687:
                if (!str.equals(f1212)) {
                    b = -1;
                } else {
                    b = 46;
                }
                break;
            case 2110329530:
                if (!str.equals(f1237)) {
                    b = -1;
                } else {
                    b = Ascii.SYN;
                }
                break;
            case 2112955383:
                if (!str.equals(f1220)) {
                    b = -1;
                } else {
                    b = 38;
                }
                break;
            case 2136410007:
                if (!str.equals(f1248)) {
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
                return AdContentType.class;
            case 1:
                return Ad.Display.class;
            case 2:
                return Ad.Video.class;
            case 3:
                return AdFullScreenListener.class;
            case 4:
                return AdListener.class;
            case 5:
                return AdRequest.class;
            case 6:
                return AdRequestParameters.class;
            case 7:
                return AdsType.class;
            case 8:
                return AdView.class;
            case 9:
                return BannerListener.class;
            case 10:
            case 11:
                return BannerView.class;
            case 12:
                return BidMachine.class;
            case 13:
                return BidMachineAd.class;
            case 14:
                return CreativeFormat.class;
            case 15:
                return ImageData.class;
            case 16:
                return InterstitialAd.class;
            case 17:
                return InterstitialListener.class;
            case 18:
                return FullScreenAd.class;
            case 19:
                return MediaAssetType.class;
            case 20:
            case 21:
                return MediaView.class;
            case 22:
                return NativeAd.class;
            case 23:
                return NativeListener.class;
            case 24:
                return NativeMediaView.class;
            case 25:
                return RewardedAd.class;
            case 26:
                return RewardedListener.class;
            case 27:
                return RichMediaListener.class;
            case 28:
            case 29:
                return RichMediaView.class;
            case 30:
            case 31:
                return VideoPlayerActivity.class;
            case 32:
                return Ad.class;
            case 33:
            case 34:
                return MraidActivity.class;
            case 35:
            case 36:
                return MraidDialogActivity.class;
            case 37:
                return MraidInterstitial.class;
            case 38:
                return MraidInterstitialListener.class;
            case 39:
            case 40:
                return MraidView.class;
            case 41:
                return MraidViewListener.class;
            case 42:
            case 43:
                return VastActivity.class;
            case 44:
            case 45:
                return VastView.class;
            case 46:
            case 47:
                return MraidAdView.class;
            case 48:
                return VastViewListener.class;
            case 49:
                return RequestExtension.class;
            default:
                return null;
        }
    }
}
