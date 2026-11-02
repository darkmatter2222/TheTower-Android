package com.ironsource.adqualitysdk.sdk.i;

import com.google.common.base.Ascii;
import com.hyprmx.android.BuildConfig;
import com.hyprmx.android.sdk.activity.HyprMXBaseViewController;
import com.hyprmx.android.sdk.activity.HyprMXMraidViewController;
import com.hyprmx.android.sdk.activity.HyprMXNoOffersActivity;
import com.hyprmx.android.sdk.activity.HyprMXOfferViewerActivity;
import com.hyprmx.android.sdk.activity.HyprMXOfferWebViewController;
import com.hyprmx.android.sdk.activity.HyprMXRequiredInformationActivity;
import com.hyprmx.android.sdk.activity.HyprMXVastViewController;
import com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController;
import com.hyprmx.android.sdk.activity.HyprMXWebView;
import com.hyprmx.android.sdk.activity.HyprMXWebViewClient;
import com.hyprmx.android.sdk.activity.OfferViewerHandler;
import com.hyprmx.android.sdk.api.data.Ad;
import com.hyprmx.android.sdk.api.data.OfferCacheEntity;
import com.hyprmx.android.sdk.api.data.WebTrafficObject;
import com.hyprmx.android.sdk.core.DependencyHolder;
import com.hyprmx.android.sdk.core.HyprMX;
import com.hyprmx.android.sdk.core.HyprMXController;
import com.hyprmx.android.sdk.graphics.HyprMXLearnMoreController;
import com.hyprmx.android.sdk.graphics.HyprMXSkipController;
import com.hyprmx.android.sdk.graphics.HyprMXWebViewWithClosableNavBar;
import com.hyprmx.android.sdk.model.PreloadedVastData;
import com.hyprmx.android.sdk.overlay.HyprMXBrowserActivity;
import com.hyprmx.android.sdk.placement.PlacementType;
import com.hyprmx.android.sdk.utility.HyprMXProperties;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᓶ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0610 extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f2487 = StringFog.decrypt("4plegmEvkK3kmky8ZwKmteCfXoB2Ibc=\n", "hfwq1QRNxN8=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f2486 = StringFog.decrypt("SriTYSz9T2JuvIRGL9hGeU62s0Y49F93RYiVQg==\n", "Ld3nLkqbKhA=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f2485 = StringFog.decrypt("1UdCjGpp\n", "nT4y/icx/2g=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f2484 = StringFog.decrypt("1MN7aAAXWCDyznl1ISN+PQ==\n", "nLoLGk1PG08=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f2483 = StringFog.decrypt("TmwjNfCVTlJqVDsm8A==\n", "HgBCVpX4Kzw=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f2482 = StringFog.decrypt("VAE=\n", "FWUn0K3I8S8=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f2481 = StringFog.decrypt("DQIJVaMtwZ4qHjFfoS3Bgg==\n", "SWd5MM1JpPA=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f2480 = StringFog.decrypt("mU+50DRIBkmta73PL20DWKg=\n", "yT3cvFspYiw=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f2479 = StringFog.decrypt("IfUNPRoxV8YG/Bg9IwBixw==\n", "aYx9T1dpB7Q=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f2478 = StringFog.decrypt("lre40OgPFBW8mKHH0gAqBLaNpM3WNiEcu4Cp1Oc2MQ==\n", "3s7IoqVXQ3A=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f2477 = StringFog.decrypt("LJllCMmQbsAijiZHz41s3SaSJlXFgjDVPZd4TsiKbZwHj3hU7LFJ1y2gYUPWvnfGJ7VkSdKIfN4q\nuGlQ44hs\n", "T/YIJqHpHrI=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f2476 = StringFog.decrypt("2h37hE+lgDndAu2TcI6PNeYN/Z92hA==\n", "kmSL9gL9zlY=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f2475 = StringFog.decrypt("V5COlHP9ApNZh83bdeAAjl2bzcl/71yAV4uKzHLwC898hpPIVtw8jnuZhd9p9zOCQJaV02/9\n", "NP/juhuEcuE=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f2474 = StringFog.decrypt("4l9zX8LHl6bMQ3F75vqvpdhnYFnm6bG00w==\n", "qiYDLY+f2MA=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f2473 = StringFog.decrypt("vYzgZb4KtCWzm6MquBe2OLeHoziyGOo2vZfkPb8HvXmWmv05myuLMbiG/x2/FrMyrKLuP78FrSOn\n", "3uONS9ZzxFc=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f2472 = StringFog.decrypt("LRESRiwqI4QUHQtGBBY4jwMHEFkABhiOCykBQAgEGJUc\n", "ZWhiNGFyceE=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f2471 = StringFog.decrypt("NPJyvuLym5o65THx5O+Zhz75MePu4MWJNOl25uP/ksYf5G/ix9O5jSboduLv76KGMfJt/ev/goc5\n3Hzk4/2CnC4=\n", "V50fkIqL6+g=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f2470 = StringFog.decrypt("fU9Ypx+0pE1GU368N5ulQ1tCWro+gINe\n", "NTYo1VLs5iw=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f2469 = StringFog.decrypt("wdeFn5+VNB362qOEt7ohE+fah4K+oQcO\n", "ia717dLNYnw=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f2468 = StringFog.decrypt("14NOC6i1rBL9rkwYg4uSFMmTWw6mgpUD7ZVSFYCf\n", "n/o+eeXt+3c=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f2467 = StringFog.decrypt("0Hh3wtdkMg73e1TJ0U4nFA==\n", "nx4Rp6UnU20=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f2466 = StringFog.decrypt("jpOVk3Psik+wlbila+iPXQ==\n", "2fb3xwGN7Ck=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f2465 = StringFog.decrypt("73eRQG4mmx/RcaZGUA==\n", "uBLzFBxH/Xk=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f2464 = StringFog.decrypt("JPjwgvxWyLMN8+693nzhlQPv9ILeYuizHg==\n", "bIGA8LEOhNY=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f2463 = StringFog.decrypt("AKIdWZOMnAopsgl9t7GmOye1GVmxuL0dOg==\n", "SNttK97U0Xg=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f2462 = StringFog.decrypt("WsUMuIwr2/902Q6dpBHC8HfLP6WvB+b2ftAZuA==\n", "Erx8ysFzlJk=\n");

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f2461 = StringFog.decrypt("ZiuJZ4BANXBMBJBwug==\n", "LlL5Fc0YYhU=\n");

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f2460 = StringFog.decrypt("3FqzEtv/RxH2daoF4eR8HfFNtw==\n", "lCPDYJanEHQ=\n");

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static final String f2459 = StringFog.decrypt("Lt+onZ+7sYcAw6q5u4aJhBTuuYG2j5uT\n", "ZqbY79Lj/uE=\n");

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static final String f2458 = StringFog.decrypt("MVSvU2uOt+IJV7t+eLa66xtAhV9qrLvpG0A=\n", "fjLJNhnY3oc=\n");

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static final String f2457 = StringFog.decrypt("fxHCtrv8flVeGPGrmNBfUVsE17Y=\n", "N2iyxPakLT4=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f2456 = StringFog.decrypt("aO9cW+WurdxJ5m9GxoKM2Ez6SVvkn43DRfhJWw==\n", "IJYsKaj2/rc=\n");

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static final String f2455 = StringFog.decrypt("+qaNqa5blp/4\n", "ncP56MoP7+8=\n");

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static final String f2454 = StringFog.decrypt("uONISwCqt52y41JvOLKknZroSXY=\n", "34Y8G2zL1Pg=\n");

    /* JADX INFO: renamed from: ᖅ, reason: contains not printable characters */
    public static final String f2453 = StringFog.decrypt("8Jt0LFgOjnbzm24LRDaEdPObciFTDZ95+Z1l\n", "l/4AaD1+6xg=\n");

    /* JADX INFO: renamed from: ᕆ, reason: contains not printable characters */
    public static final String f2452 = StringFog.decrypt("CysltKHJcvgFLCSEp8hP7g==\n", "bE5R8Mi6Boo=\n");

    /* JADX INFO: renamed from: ᕄ, reason: contains not printable characters */
    public static final String f2451 = StringFog.decrypt("sifkmBJMAfS4J/68PUIM5act/KQbXw==\n", "1UKQyH4tYpE=\n");

    /* JADX INFO: renamed from: ᕃ, reason: contains not printable characters */
    public static final String f2450 = StringFog.decrypt("lkIZ7f3A2yuQQwjZy8TDJQ==\n", "8SdtvY+lt0Q=\n");

    /* JADX INFO: renamed from: ᕂ, reason: contains not printable characters */
    public static final String f2449 = StringFog.decrypt("tOMjeTJ6xnS28jJbIA==\n", "04ZXKVMIpxk=\n");

    /* JADX INFO: renamed from: ᔽ, reason: contains not printable characters */
    public static final String f2448 = StringFog.decrypt("WdLsYJrWOBB+3O93pc8ZFnjd9Wau\n", "EaucEteOemI=\n");

    /* JADX INFO: renamed from: ᔺ, reason: contains not printable characters */
    public static final String f2447 = StringFog.decrypt("NCWiWuIOmSg6MuEV5BObNT4u4QfuHMc1IS+9GOsOxxIuOr050jWbNSA5qgbLFJ0zISO7DQ==\n", "V0rPdIp36Vo=\n");

    public C0610(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        try {
            try {
                return (String) BuildConfig.class.getDeclaredField(StringFog.decrypt("8iGU8sH9urDqJYvk\n", "pGTGoYiy9O8=\n")).get(null);
            } catch (Exception unused) {
                return null;
            }
        } catch (Exception unused2) {
            C0632 c0632 = C0793.m2275().f2974;
            String strDecrypt = StringFog.decrypt("XDVBwx9i70YpNUG8\n", "AmklmEMGwRs=\n");
            c0632.getClass();
            return C0632.m2159((Object) null, BuildConfig.class, strDecrypt);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f2487, new C0634(this));
        map.put(f2486, new C0624(this));
        map.put(f2455, new C0621(this));
        map.put(f2454, new C0620(this));
        map.put(f2453, new C0617(this));
        map.put(f2452, new C0616(this));
        map.put(f2451, new C0613(this));
        map.put(f2450, new C0612(this));
        map.put(f2449, new C0611(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:101:0x0177  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -2118473762:
                if (!str.equals(f2485)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case -2115661176:
                if (!str.equals(f2468)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case -2082076211:
                if (!str.equals(f2456)) {
                    b = -1;
                } else {
                    b = Ascii.GS;
                }
                break;
            case -2060981001:
                if (!str.equals(f2481)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case -1783324338:
                if (!str.equals(f2475)) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case -1711062568:
                if (!str.equals(f2478)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case -1632261541:
                if (!str.equals(f2461)) {
                    b = -1;
                } else {
                    b = Ascii.CAN;
                }
                break;
            case -1625751435:
                if (!str.equals(f2471)) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            case -1429076201:
                if (!str.equals(f2462)) {
                    b = -1;
                } else {
                    b = Ascii.ETB;
                }
                break;
            case -1345825871:
                if (!str.equals(f2479)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case -1289932600:
                if (!str.equals(f2466)) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            case -1102538544:
                if (!str.equals(f2458)) {
                    b = -1;
                } else {
                    b = Ascii.ESC;
                }
                break;
            case -1056910325:
                if (!str.equals(f2477)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case -793729563:
                if (!str.equals(f2476)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case -684201479:
                if (!str.equals(f2457)) {
                    b = -1;
                } else {
                    b = Ascii.FS;
                }
                break;
            case -411143178:
                if (!str.equals(f2473)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case -352824194:
                if (!str.equals(f2480)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case -58290677:
                if (!str.equals(f2469)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case -52302939:
                if (!str.equals(f2447)) {
                    b = -1;
                } else {
                    b = Ascii.US;
                }
                break;
            case -48720897:
                if (!str.equals(f2474)) {
                    b = -1;
                } else {
                    b = Ascii.VT;
                }
                break;
            case 2115:
                if (!str.equals(f2482)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case 5206681:
                if (!str.equals(f2448)) {
                    b = -1;
                } else {
                    b = Ascii.RS;
                }
                break;
            case 99044255:
                if (!str.equals(f2483)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 217655834:
                if (!str.equals(f2484)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 748493318:
                if (!str.equals(f2460)) {
                    b = -1;
                } else {
                    b = Ascii.EM;
                }
                break;
            case 902272186:
                if (!str.equals(f2463)) {
                    b = -1;
                } else {
                    b = Ascii.SYN;
                }
                break;
            case 1056638846:
                if (!str.equals(f2472)) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case 1527993897:
                if (!str.equals(f2467)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            case 1564846544:
                if (!str.equals(f2470)) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case 1575934042:
                if (!str.equals(f2459)) {
                    b = -1;
                } else {
                    b = Ascii.SUB;
                }
                break;
            case 1775126662:
                if (!str.equals(f2465)) {
                    b = -1;
                } else {
                    b = Ascii.DC4;
                }
                break;
            case 1872662391:
                if (!str.equals(f2464)) {
                    b = -1;
                } else {
                    b = Ascii.NAK;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return HyprMX.class;
            case 1:
                return HyprMXController.class;
            case 2:
                return PlacementType.class;
            case 3:
                return Ad.class;
            case 4:
                return DependencyHolder.class;
            case 5:
                return PreloadedVastData.class;
            case 6:
                return HyprMXProperties.class;
            case 7:
            case 8:
                return HyprMXWebViewWithClosableNavBar.class;
            case 9:
            case 10:
                return HyprMXNoOffersActivity.class;
            case 11:
            case 12:
                return HyprMXOfferViewerActivity.class;
            case 13:
            case 14:
                return HyprMXRequiredInformationActivity.class;
            case 15:
                return HyprMXBaseViewController.class;
            case 16:
                return HyprMXVastViewController.class;
            case 17:
                return HyprMXWebTrafficViewController.class;
            case 18:
                return OfferCacheEntity.class;
            case 19:
                return WebTrafficObject.class;
            case 20:
                return WebTrafficObject.WebTrafficURL.class;
            case 21:
                return HyprMXLearnMoreController.class;
            case 22:
                return HyprMXMraidViewController.class;
            case 23:
                return HyprMXOfferWebViewController.class;
            case 24:
                return HyprMXWebView.class;
            case 25:
                return HyprMXWebViewClient.class;
            case 26:
                return OfferViewerHandler.class;
            case 27:
                return OfferViewerHandler.OfferViewerHandlerListener.class;
            case 28:
                return HyprMXSkipController.class;
            case 29:
                return HyprMXSkipController.Listener.class;
            case 30:
            case 31:
                return HyprMXBrowserActivity.class;
            default:
                return null;
        }
    }
}
