package com.ironsource.adqualitysdk.sdk.i;

import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import com.unity3d.ads.AdFormat;
import com.unity3d.ads.IUnityAdsListener;
import com.unity3d.ads.IUnityAdsShowListener;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.UnityAdsBaseOptions;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer;
import com.unity3d.ads.adplayer.FullScreenWebViewDisplay;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.mediation.IUnityAdsExtendedListener;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import com.unity3d.services.banners.BannerErrorCode;
import com.unity3d.services.banners.BannerErrorInfo;
import com.unity3d.services.banners.BannerHide;
import com.unity3d.services.banners.BannerShow;
import com.unity3d.services.banners.BannerView;
import com.unity3d.services.banners.BannerViewCache;
import com.unity3d.services.banners.IUnityBannerListener;
import com.unity3d.services.banners.UnityBannerSize;
import com.unity3d.services.banners.UnityBanners;
import com.unity3d.services.banners.api.Banner;
import com.unity3d.services.banners.api.BannerListener;
import com.unity3d.services.banners.configuration.BannersModuleConfiguration;
import com.unity3d.services.banners.properties.BannerProperties;
import com.unity3d.services.banners.view.BannerEvent;
import com.unity3d.services.banners.view.BannerPosition;
import com.unity3d.services.banners.view.BannerWebPlayerContainer;
import com.unity3d.services.core.properties.ClientProperties;
import com.unity3d.services.core.request.WebRequest;
import com.unity3d.services.core.request.WebRequestEvent;
import com.unity3d.services.core.webview.WebView;
import com.unity3d.services.core.webview.WebViewApp;
import com.unity3d.services.core.webview.WebViewEventCategory;
import com.unity3d.services.monetization.UnityMonetization;
import com.unity3d.services.monetization.placementcontent.ads.ShowAdListenerAdapter;
import com.unity3d.services.monetization.placementcontent.core.CustomEvent;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3483m extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f360 = StringFog.decrypt("2YwfywP2tu3QnTztFNKt7cmoG/g=\n", "vulriHaExIg=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f359 = StringFog.decrypt("lAz8TufLULigG/t5+stzu4cO\n", "936ZL5OuBPo=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f358 = StringFog.decrypt("wLyDV0jhgBXdraBxX8WbFcSYh2Q=\n", "s9n3FD2T8nA=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f357 = StringFog.decrypt("x1sYtFzAKCLE\n", "oD5s8z2tTWs=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f356 = StringFog.decrypt("JIyTl4oBNPkCjZSOjRs05S2MlQ==\n", "Q+nnwuRoQIA=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f355 = StringFog.decrypt("qZDoh5ERBe2bke+elgsF8bSQ7g==\n", "2vWc0v94cZQ=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f354 = StringFog.decrypt("u31cIGLQ/o+gbEgOcMbniLpsVCFxxw==\n", "yRgxTxS1q+E=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f353 = StringFog.decrypt("xznvPGkg8tDnOfglbjryzMg4+Q==\n", "pl2LaQdJhqk=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f352 = StringFog.decrypt("hsWp8Qvg9HqE15jQC+zWUIDUuMEB8Ns=\n", "4aDdpm6CohM=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f351 = StringFog.decrypt("YGJoUqRFrGd2cnl2tWKIZ2lz\n", "BwccBcEn/gI=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f350 = StringFog.decrypt("TS5Xw6+1uuNHLk3nirA=\n", "Kksjk8PU2YY=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f349 = StringFog.decrypt("JxyxP5nLa9UyNawOjMBr1TI=\n", "QHnFffilBbA=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f348 = StringFog.decrypt("hRwmQMkMGQCENTtx3AcZAIQ=\n", "9nlSAqhid2U=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f347 = StringFog.decrypt("S7vnx6hFRfxLu+fHqEVF/A==\n", "HtWOs9EEIY8=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f346 = StringFog.decrypt("X0QfNGLLhf1Dfxgpb/Og6nlmHzNv74/reA==\n", "Cip2QBuK4Y4=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f345 = StringFog.decrypt("GxyetioNfuYHJ5mrJzVb8T03j7Y2In7wKj6esScpdPA8\n", "TnL3wlNMGpU=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f344 = StringFog.decrypt("rHO8anrva4uueLdIast4uYlt\n", "+R3VHgOuD/g=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f343 = StringFog.decrypt("lkA8yg7hS3K1Qxvf\n", "wgJrr2y3Ihc=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f342 = StringFog.decrypt("5pan4d+n4W/Ch4DF37jg\n", "sfPFs7rWlAo=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f341 = StringFog.decrypt("S3yOW61vHRlqfIJ5h2seOXt2nnQ=\n", "HBnsDcQKalw=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f340 = StringFog.decrypt("w0iw/IBIgcfzUrDymHGHxvg=\n", "libZiPkF7qk=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f339 = StringFog.decrypt("YQo5BQkUUoVBFjMcLQJfiFMSIhc6\n", "MmJWckhwHuw=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f338 = StringFog.decrypt("qaBREZY1+p2Pu1Y=\n", "6tUiZflYv+s=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f337 = StringFog.decrypt("Enffe8lBhyc2Zg==\n", "RRK9Kaww8kI=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f336 = StringFog.decrypt("etjaTwCLjRl409FtEK+e\n", "L7azO3nK6Wo=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f335 = StringFog.decrypt("O+FTEy7zHykO7HAUM/4=\n", "eoUGfUeHXko=\n");

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f334 = StringFog.decrypt("fBnf+lPX\n", "PnixlDal3lc=\n");

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f333 = StringFog.decrypt("RsIA9eXOliN9yRvy\n", "E6xpgZyM900=\n");

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static final String f332 = StringFog.decrypt("U8vU5qD2+JdowM/BsM78\n", "BqW9ktm0mfk=\n");

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static final String f331 = StringFog.decrypt("JiW9wnzW5kILMw==\n", "ZETTrBmktSo=\n");

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static final String f330 = StringFog.decrypt("mAM9x5lEzR2+Bw==\n", "2mJTqfw2hXQ=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f329 = StringFog.decrypt("/2qlxAA++EPYZb8=\n", "vQvLqmVMvTU=\n");

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static final String f328 = StringFog.decrypt("knPDRMD+1YyjZshEwP4=\n", "0BKtKqWMmeU=\n");

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static final String f327 = StringFog.decrypt("lCNUnndifs25Jk+cd1Ni7rArXYVgcXnpuSw=\n", "1kI68BIQDYA=\n");

    /* JADX INFO: renamed from: ᖅ, reason: contains not printable characters */
    public static final String f326 = StringFog.decrypt("rslxTxQheXqD2HpTBTpMew==\n", "7KgfIXFTKQg=\n");

    /* JADX INFO: renamed from: ᕆ, reason: contains not printable characters */
    public static final String f325 = StringFog.decrypt("3uAQvjmNMYvv6Aq5M5E=\n", "nIF+0Fz/YeQ=\n");

    /* JADX INFO: renamed from: ᕄ, reason: contains not printable characters */
    public static final String f324 = StringFog.decrypt("9Hlu19QJWgHUSGzYyB5/J9l2dNjYFWgW\n", "thgAubF7DWQ=\n");

    /* JADX INFO: renamed from: ᕃ, reason: contains not printable characters */
    public static final String f323 = StringFog.decrypt("EJtOdGncQxMglVJZY8pj\n", "UvogGgyuBmE=\n");

    /* JADX INFO: renamed from: ᕂ, reason: contains not printable characters */
    public static final String f322 = StringFog.decrypt("2N6s0Ixgaszo0LD3h3RA\n", "mr/CvukSL74=\n");

    /* JADX INFO: renamed from: ᔽ, reason: contains not printable characters */
    public static final String f321 = StringFog.decrypt("E58+Ix/8gss0iQ==\n", "Uf5QTXqO1KI=\n");

    /* JADX INFO: renamed from: ᔺ, reason: contains not printable characters */
    public static final String f320 = StringFog.decrypt("c5u8wFHDnNppx7XAV8iH2HmXtJ0Kz5TAfpGjnQrvlMB+kaO4TciC\n", "EPTR7iSt9a4=\n");

    /* JADX INFO: renamed from: ᔹ, reason: contains not printable characters */
    public static final String f319 = StringFog.decrypt("oqAM/TKQzqKFti3/Mw==\n", "4MFik1fimMs=\n");

    /* JADX INFO: renamed from: ᔲ, reason: contains not printable characters */
    public static final String f318 = StringFog.decrypt("dx5MHyLal3dtQkUfJNGMdX0SREJ51p9tehRTQnnCl2ZjX2NQOdqbcUIYREY=\n", "FHEhMVe0/gM=\n");

    /* JADX INFO: renamed from: ᔱ, reason: contains not printable characters */
    public static final String f317 = StringFog.decrypt("TWlqWuVh5btqf0dV43vW\n", "DwgENIATs9I=\n");

    /* JADX INFO: renamed from: ᓮ, reason: contains not printable characters */
    public static final String f316 = StringFog.decrypt("4FpGf8f/s27HYU1k/++Ce8xhTWQ=\n", "qQ8oFrOG8Q8=\n");

    /* JADX INFO: renamed from: ᐱ, reason: contains not printable characters */
    public static final String f315 = StringFog.decrypt("daSdA2NGIr9Ssrohb0cAs1mggQ==\n", "N8XzbQY0dNY=\n");

    /* JADX INFO: renamed from: Ꮭ, reason: contains not printable characters */
    public static final String f314 = StringFog.decrypt("kkmYylVOxuu1X7rNQ0j17LVa\n", "0Cj2pDA8kII=\n");

    /* JADX INFO: renamed from: Ꮧ, reason: contains not printable characters */
    public static final String f313 = StringFog.decrypt("9HpPhBaPHNrXYXSNB7oH2sVLSpsVgA/G\n", "sg8j6GXsbr8=\n");

    /* JADX INFO: renamed from: პ, reason: contains not printable characters */
    public static final String f312 = StringFog.decrypt("LmdR9Wawl1I0O1j1crqNCCxsTLdyp5tUY05Jt3+NnVQobVKMdryoTyh/eLJgrpJHNA==\n", "TQg82xPe/iY=\n");

    /* JADX INFO: renamed from: ე, reason: contains not printable characters */
    public static final String f311 = StringFog.decrypt("MP4DdyKLAdE=\n", "cZpMFUjuYqU=\n");

    /* JADX INFO: renamed from: ງ, reason: contains not printable characters */
    public static final String f310 = StringFog.decrypt("/ysT4NJcm4/LKRvh3kearNASEvDrXJq+/yEn/txMmrs=\n", "vkV3kr01/8k=\n");

    /* JADX INFO: renamed from: อ, reason: contains not printable characters */
    public static final String f309 = StringFog.decrypt("NGQEmGF2ibMtZQyIV0eZqQ5kHg==\n", "YQpt7Bg37cA=\n");

    /* JADX INFO: renamed from: ม, reason: contains not printable characters */
    public static final String f308 = StringFog.decrypt("+/c0UiwXlGLs+C5DGiaEeMH3Lg==\n", "rpldJlVW8BE=\n");

    /* JADX INFO: renamed from: น, reason: contains not printable characters */
    public static final String f307 = StringFog.decrypt("bPwOkfDehFc=\n", "LZhI/oKz5SM=\n");

    /* JADX INFO: renamed from: ต, reason: contains not printable characters */
    public static final String f306 = StringFog.decrypt("VAjsEixDi5d4FOAFNl6+lg==\n", "F2SFd0I32+U=\n");

    /* JADX INFO: renamed from: ฑ, reason: contains not printable characters */
    public static final String f305 = StringFog.decrypt("jLmirQ0XvcShs4a8Bha6\n", "yNDDymN4zrA=\n");

    /* JADX INFO: renamed from: ঢ়, reason: contains not printable characters */
    public static final String f304 = StringFog.decrypt("jDdlES6PVcO2MWMXLbp91LEHZR0o\n", "xWILeFr2FKc=\n");

    /* JADX INFO: renamed from: ষ, reason: contains not printable characters */
    public static final String f303 = StringFog.decrypt("5NCXdu1qfGL3wI1Q6WNadA==\n", "g7XjOZ0aExA=\n");

    /* JADX INFO: renamed from: ঘ, reason: contains not printable characters */
    public static final String f302 = StringFog.decrypt("IEC06Gj2RQEqQK7MTfNgFihIgdxL9UwBJFE=\n", "RyXAuASXJmQ=\n");

    /* JADX INFO: renamed from: খ, reason: contains not printable characters */
    public static final String f301 = StringFog.decrypt("dd0IOVMgAaxizBUaUjI=\n", "Erh8dTxBZeM=\n");

    /* JADX INFO: renamed from: এ, reason: contains not printable characters */
    public static final String f300 = StringFog.decrypt("Og/qLmMYPQ==\n", "XWqeagJsXMw=\n");

    /* JADX INFO: renamed from: ऱ, reason: contains not printable characters */
    public static final String f299 = StringFog.decrypt("BOoUb91PwDIHyRJH0WHJEgbhFHjOTdUeEfsJTc8=\n", "Y49gKLwipXs=\n");

    /* JADX INFO: renamed from: ܟ, reason: contains not printable characters */
    public static final String f298 = StringFog.decrypt("uPSvFB2sqp2y9LUwOKmPirD8ny0QqqeXrOWyJzS7rJar\n", "35HbRHHNyfg=\n");

    /* JADX INFO: renamed from: ܘ, reason: contains not printable characters */
    public static final String f297 = StringFog.decrypt("XT41IevFs+ddDyAV7A==\n", "OltBcp+32ok=\n");

    /* JADX INFO: renamed from: ے, reason: contains not printable characters */
    public static final String f296 = StringFog.decrypt("W6JfD3zfzH1VqUwPYdXKeA==\n", "PMcrWw6+rxY=\n");

    public C3483m(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        String version = UnityAds.getVersion();
        if (version != null) {
            return version.split(StringFog.decrypt("jA==\n", "ofNBEHbt72A=\n"))[0];
        }
        return null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f360, new C0229(this));
        map.put(f359, new C3463c(this));
        map.put(f358, new C3465d(this));
        map.put(f357, new C3467e(this));
        map.put(f356, new C3469f(this));
        map.put(f355, new C3471g(this));
        map.put(f353, new C3473h(this));
        map.put(f354, new C3475i(this));
        map.put(f352, new C3477j(this));
        map.put(f351, new C0221(this));
        map.put(f350, new C0837(this));
        map.put(f349, new C0243(this));
        map.put(f348, new C0220(this));
        map.put(f303, new C0219(this));
        map.put(f302, new C0218(this));
        map.put(f301, new C0523(this));
        map.put(f300, new C0234(this));
        map.put(f299, new C0233(this));
        map.put(f298, new C0230(this));
        map.put(f297, new C3459a(this));
        map.put(f296, new C3461b(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:137:0x0208  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -2043984616:
                if (!str.equals(f324)) {
                    b = -1;
                } else {
                    b = Ascii.ETB;
                }
                break;
            case -2015334886:
                if (!str.equals(f307)) {
                    b = -1;
                } else {
                    b = 40;
                }
                break;
            case -1797664962:
                if (!str.equals(f340)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case -1769924254:
                if (!str.equals(f311)) {
                    b = -1;
                } else {
                    b = 36;
                }
                break;
            case -1719935914:
                if (!str.equals(f319)) {
                    b = -1;
                } else {
                    b = 32;
                }
                break;
            case -1673897431:
                if (!str.equals(f323)) {
                    b = -1;
                } else {
                    b = Ascii.CAN;
                }
                break;
            case -1673719574:
                if (!str.equals(f322)) {
                    b = -1;
                } else {
                    b = Ascii.EM;
                }
                break;
            case -1627944928:
                if (!str.equals(f328)) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            case -1543737546:
                if (!str.equals(f347)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case -1347165098:
                if (!str.equals(f343)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case -1258512514:
                if (!str.equals(f306)) {
                    b = -1;
                } else {
                    b = 41;
                }
                break;
            case -1251710408:
                if (!str.equals(f318)) {
                    b = -1;
                } else {
                    b = 33;
                }
                break;
            case -858834302:
                if (!str.equals(f332)) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case -800280637:
                if (!str.equals(f327)) {
                    b = -1;
                } else {
                    b = Ascii.DC4;
                }
                break;
            case -618035586:
                if (!str.equals(f336)) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case -598903877:
                if (!str.equals(f339)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case -553681069:
                if (!str.equals(f310)) {
                    b = -1;
                } else {
                    b = 37;
                }
                break;
            case -327500225:
                if (!str.equals(f341)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case -324825325:
                if (!str.equals(f305)) {
                    b = -1;
                } else {
                    b = 42;
                }
                break;
            case -324012869:
                if (!str.equals(f337)) {
                    b = -1;
                } else {
                    b = Ascii.VT;
                }
                break;
            case -262912338:
                if (!str.equals(f329)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            case -249507173:
                if (!str.equals(f312)) {
                    b = -1;
                } else {
                    b = 35;
                }
                break;
            case -133620343:
                if (!str.equals(f338)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case -30759555:
                if (!str.equals(f346)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 29694293:
                if (!str.equals(f304)) {
                    b = -1;
                } else {
                    b = 43;
                }
                break;
            case 67119908:
                if (!str.equals(f313)) {
                    b = -1;
                } else {
                    b = 34;
                }
                break;
            case 252148886:
                if (!str.equals(f335)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case 539301490:
                if (!str.equals(f308)) {
                    b = -1;
                } else {
                    b = 39;
                }
                break;
            case 626721475:
                if (!str.equals(f344)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case 692588017:
                if (!str.equals(f317)) {
                    b = -1;
                } else {
                    b = Ascii.FS;
                }
                break;
            case 819533772:
                if (!str.equals(f316)) {
                    b = -1;
                } else {
                    b = Ascii.GS;
                }
                break;
            case 961427118:
                if (!str.equals(f330)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case 961754217:
                if (!str.equals(f331)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case 961844241:
                if (!str.equals(f321)) {
                    b = -1;
                } else {
                    b = Ascii.SUB;
                }
                break;
            case 1067215379:
                if (!str.equals(f320)) {
                    b = -1;
                } else {
                    b = Ascii.ESC;
                }
                break;
            case 1246120607:
                if (!str.equals(f342)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case 1326268204:
                if (!str.equals(f315)) {
                    b = -1;
                } else {
                    b = Ascii.RS;
                }
                break;
            case 1374920114:
                if (!str.equals(f333)) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            case 1407526303:
                if (!str.equals(f326)) {
                    b = -1;
                } else {
                    b = Ascii.NAK;
                }
                break;
            case 1646468069:
                if (!str.equals(f314)) {
                    b = -1;
                } else {
                    b = Ascii.US;
                }
                break;
            case 1658279126:
                if (!str.equals(f345)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 1982491468:
                if (!str.equals(f334)) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case 2020034237:
                if (!str.equals(f309)) {
                    b = -1;
                } else {
                    b = 38;
                }
                break;
            case 2068667541:
                if (!str.equals(f325)) {
                    b = -1;
                } else {
                    b = Ascii.SYN;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return UnityAds.class;
            case 1:
                return IUnityAdsListener.class;
            case 2:
                return IUnityAdsExtendedListener.class;
            case 3:
                return WebViewApp.class;
            case 4:
                return C3479k.class;
            case 5:
                return WebRequestEvent.class;
            case 6:
                return WebViewEventCategory.class;
            case 7:
                return UnityMonetization.class;
            case 8:
                return ShowAdListenerAdapter.class;
            case 9:
                return CustomEvent.class;
            case 10:
                return WebView.class;
            case 11:
                return WebRequest.class;
            case 12:
                return AdUnitActivity.class;
            case 13:
                return Banner.class;
            case 14:
                return UnityBanners.class;
            case 15:
                return UnityBannerSize.class;
            case 16:
                return BannerShow.class;
            case 17:
                return BannerHide.class;
            case 18:
                return BannerEvent.class;
            case 19:
                return BannerListener.class;
            case 20:
                return BannersModuleConfiguration.class;
            case 21:
                return BannerProperties.class;
            case 22:
                return BannerPosition.class;
            case 23:
                return BannerWebPlayerContainer.class;
            case 24:
                return BannerErrorCode.class;
            case 25:
                return BannerErrorInfo.class;
            case 26:
            case 27:
                return BannerView.class;
            case 28:
                return BannerViewCache.class;
            case 29:
                return IUnityBannerListener.class;
            case 30:
                return BannerView.IListener.class;
            case 31:
                return BannerView.Listener.class;
            case 32:
            case 33:
                return com.unity3d.services.banners.view.BannerView.class;
            case 34:
            case 35:
                return FullScreenWebViewDisplay.class;
            case 36:
                return AdObject.class;
            case 37:
                return AndroidFullscreenWebViewAdPlayer.class;
            case 38:
                return UnityAdsLoadOptions.class;
            case 39:
                return UnityAdsBaseOptions.class;
            case 40:
                return AdFormat.class;
            case 41:
                return ClientProperties.class;
            case 42:
                return DiagnosticEventRequestOuterClass.DiagnosticEvent.class;
            case 43:
                return IUnityAdsShowListener.class;
            default:
                return null;
        }
    }
}
