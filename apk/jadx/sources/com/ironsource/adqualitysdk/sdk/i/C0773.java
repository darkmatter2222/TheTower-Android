package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.inneractive.sdk.R;
import com.fyber.inneractive.sdk.activities.InneractiveFullscreenAdActivity;
import com.fyber.inneractive.sdk.activities.InneractiveInternalBrowserActivity;
import com.fyber.inneractive.sdk.activities.InneractiveRichMediaVideoPlayerActivityCore;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.enums.Tap;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.external.ImpressionData;
import com.fyber.inneractive.sdk.external.InneractiveAdManager;
import com.fyber.inneractive.sdk.external.InneractiveAdRenderer;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import com.fyber.inneractive.sdk.external.InneractiveAdViewEventsListenerWithImpressionData;
import com.fyber.inneractive.sdk.external.InneractiveAdViewUnitController;
import com.fyber.inneractive.sdk.external.InneractiveAdViewVideoContentController;
import com.fyber.inneractive.sdk.external.InneractiveContentController;
import com.fyber.inneractive.sdk.external.InneractiveFullscreenAdEventsListener;
import com.fyber.inneractive.sdk.external.InneractiveFullscreenAdEventsListenerAdapter;
import com.fyber.inneractive.sdk.external.InneractiveFullscreenAdEventsListenerWithImpressionData;
import com.fyber.inneractive.sdk.external.InneractiveFullscreenUnitController;
import com.fyber.inneractive.sdk.external.InneractiveFullscreenVideoContentController;
import com.fyber.inneractive.sdk.external.InneractiveMediationName;
import com.fyber.inneractive.sdk.external.InneractiveUnitController;
import com.fyber.inneractive.sdk.external.VideoContentListener;
import com.fyber.inneractive.sdk.external.VideoContentListenerAdapter;
import com.fyber.inneractive.sdk.mraid.IAMraidKit;
import com.fyber.inneractive.sdk.ui.IAmraidWebViewController;
import com.fyber.inneractive.sdk.ui.IArichMediaVideoView;
import com.fyber.inneractive.sdk.video.IAVideoKit;
import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0773 extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f2893 = StringFog.decrypt("HMkEA6naa9sV2CAys8t8zQjJFBK52WzbCNg=\n", "e6xwQNyoGb4=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f2892 = StringFog.decrypt("S/GN0dge17ZI\n", "LJT5gqhxo/8=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f2891 = StringFog.decrypt("xYNkH8Q3+pPWg34q\n", "ouYQXqB0lf0=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f2890 = StringFog.decrypt("KSJT1Nvej30yNHDP9tY=\n", "QFEVobey/B4=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f2889 = StringFog.decrypt("FWnA72p2kYcY\n", "fBqWhg4T/sY=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f2888 = StringFog.decrypt("1FVcQ8m1NFfnWFpv0Ls/acFc\n", "szAoAKXcVzw=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f2887 = StringFog.decrypt("9Bh6l3e/Edvn\n", "k30O2xbGfq4=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f2886 = StringFog.decrypt("oBQAMbvB8HmzFBA3sMThWagfABCxwfl/tQ==\n", "x3F0Yt6tlRo=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f2885 = StringFog.decrypt("R8No5Vche+BUw3j1XSNq5k7SX9lcOWzsTMp5xA==\n", "IKYctjJNHoM=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f2884 = StringFog.decrypt("/v5RSRf5UgTq10x/FflSFes=\n", "mZslDGGcPHA=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f2883 = StringFog.decrypt("+GM95HJc1Jf4SiDScFzUhvk=\n", "iwZJoQQ5uuM=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f2882 = StringFog.decrypt("OiWctaTshmgp\n", "XUDo9MC/9gc=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f2881 = StringFog.decrypt("m7y0Wboh8qeVqrBgtTHSmoy8hWKhJQ==\n", "/NnADNRIhuM=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f2880 = StringFog.decrypt("s5iAB9BtrIiWnJokx36ThbGKvS4=\n", "1P30SqIMxew=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f2879 = StringFog.decrypt("GWJI7vfwGfINdFXI9MQK4x9DU8r76QU=\n", "fgc8p5qAa5c=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f2878 = StringFog.decrypt("yLGKVm2IvqXoqYF6cZ24o+++iHFthqqi5K2lUGuAq7j1pg==\n", "gd/kMx/p3dE=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f2877 = StringFog.decrypt("rX558hGJTpa8P32yGZVekq1lfaoS3l+XpT91vwOZWpq6eHGvWblCnatjdb8DmVqWh39guQWeTZ+M\nY3urBJVesq1lfaoehFU=\n", "zhEU3HfwLPM=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f2876 = StringFog.decrypt("1saVELSBG2D23p4zs4wUZ/zanhCooRxV/NySA6+UAQ==\n", "n6j7dcbgeBQ=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f2875 = StringFog.decrypt("mo1kstwCWmKLzGDy1B5KZpqWYOrfVUtjksxo/84STm6Ni2zvlDJWaZyQaP/OEk5iv5dl8MkYSmKc\njEj4+xhMbo+LfeU=\n", "+eIJnLp7OAc=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f2874 = StringFog.decrypt("hlSi7pIygfemTKnZiTCKzqpepeq2OobmoGqg6pk2kMKsTqX9iSebwKBIqQ==\n", "zzrMi+BT4oM=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f2873 = StringFog.decrypt("uPl+UlPDDQKpuHoSW98dBrjiegpQlBwDsLhyH0HTGQ6v/3YPG/MBCb7kch9B0xkCif9wFHjfCw66\nwHoYUNU/C7rvdg502RsOrf9nBXbVHQI=\n", "25YTfDW6b2c=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f2872 = StringFog.decrypt("oxASPNiNyAyDCBkYzr/bF54=\n", "6n58Warsq3g=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f2871 = StringFog.decrypt("BUpQSS2HU1slUlttO7RVXjlBTVg=\n", "TCQ+LF/mMC8=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f2870 = StringFog.decrypt("zJ1FBIHOJVjshU4gl/0jQuGWWQSB\n", "hfMrYfOvRiw=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f2869 = StringFog.decrypt("usQaTr6YjUqa3BFmqZ2HX4fDG0WCmINb\n", "86p0K8z57j4=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f2868 = StringFog.decrypt("C8sQTnjyi3UP6z1AcfGQ\n", "QopTIRaU4hI=\n");

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f2867 = StringFog.decrypt("ouT0mj5fvJiC/P+8I1CriYX+2ZAiSq2Dh+b/jQ==\n", "64qa/0w+3+w=\n");

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f2866 = StringFog.decrypt("2uYZD8Yd3OT6/hI/2hXL0/zmAxjbENP14Q==\n", "k4h3arR8v5A=\n");

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static final String f2865 = StringFog.decrypt("CDhz+77y7P0oIHjfqMXm7DYDc/e40ODnNSRy8qD2/Q==\n", "QVYdnsyTj4k=\n");

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static final String f2864 = StringFog.decrypt("gexPk1VJ3J2441+zaFDK\n", "1IIm5xEgr+0=\n");

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static final String f2863 = StringFog.decrypt("pWhVAoSqjg6TalUClas=\n", "4B4wbPDZwmc=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f2862 = StringFog.decrypt("KA==\n", "eu3tUfWmi4U=\n");

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static final String f2861 = StringFog.decrypt("DT3A/tRMzvQtJcvd00HB8ychy/7Ie8TkITzt9MhZyO4wEMH10l/C7Cg23A==\n", "RFOum6YtrYA=\n");

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static final String f2860 = StringFog.decrypt("UqgV+Se0Y/hysB7aILls/3i0Hvk7lGTJbaMV6CaZaf9voxX5Jw==\n", "G8Z7nFXVAIw=\n");

    /* JADX INFO: renamed from: ᖅ, reason: contains not printable characters */
    public static final String f2859 = StringFog.decrypt("PjkUS9KdBI0cNR5a8bcYlw0+FVw=\n", "aFBwLr3ea+M=\n");

    /* JADX INFO: renamed from: ᕆ, reason: contains not printable characters */
    public static final String f2858 = StringFog.decrypt("aiETO2zPwJVhPQgpbcTTtUo8EztwxNM=\n", "I09nXh6hofk=\n");

    /* JADX INFO: renamed from: ᕄ, reason: contains not printable characters */
    public static final String f2857 = StringFog.decrypt("VSojXunhwJF4HTleyMTNh2MuPl7N\n", "F0tQO7+IpPQ=\n");

    /* JADX INFO: renamed from: ᕃ, reason: contains not printable characters */
    public static final String f2856 = StringFog.decrypt("+w+m\n", "r27WD7iJz9A=\n");

    /* JADX INFO: renamed from: ᕂ, reason: contains not printable characters */
    public static final String f2855 = StringFog.decrypt("9Njch47SPcLUwNekid8yxd7E14eS8jrzy9Pclo//N8XJ09yHjvI6183C15A=\n", "vbay4vyzXrY=\n");

    /* JADX INFO: renamed from: ᔽ, reason: contains not printable characters */
    public static final String f2854 = StringFog.decrypt("sKEUoybx6TyQuR+AIfzmO5q9H6M6xeQhjYwVqCDi5SSVqgg=\n", "+c96xlSQikg=\n");

    /* JADX INFO: renamed from: ᔺ, reason: contains not printable characters */
    public static final String f2853 = StringFog.decrypt("8++tmBDOXN3T96a8BvlWzM3XqpkHwHzG1PWmkxbsUMfO86yRDspN\n", "uoHD/WKvP6k=\n");

    /* JADX INFO: renamed from: ᔹ, reason: contains not printable characters */
    public static final String f2852 = StringFog.decrypt("QAT9fKhHyDx2Bv18uUbFMWQC7Heu\n", "BXKYEtw0hFU=\n");

    /* JADX INFO: renamed from: ᔲ, reason: contains not printable characters */
    public static final String f2851 = StringFog.decrypt("Say42O0hIB5roLLJzgs8BHqruc/DBi4Aa6Cu\n", "H8XcvYJiT3A=\n");

    /* JADX INFO: renamed from: ᔱ, reason: contains not printable characters */
    public static final String f2850 = StringFog.decrypt("oxdWDnJ64uSDIg==\n", "6lYbfBMThq8=\n");

    /* JADX INFO: renamed from: ᓮ, reason: contains not printable characters */
    public static final String f2849 = StringFog.decrypt("JIxFo/hOK50Ir364/FAMpQO5Wr71Syq4\n", "bc0o0ZknT8o=\n");

    /* JADX INFO: renamed from: ᐱ, reason: contains not printable characters */
    public static final String f2848 = StringFog.decrypt("eOA6o7pxkudY1Q==\n", "MaFsyt4U/aw=\n");

    /* JADX INFO: renamed from: Ꮭ, reason: contains not printable characters */
    public static final String f2847 = StringFog.decrypt("PrFB1jec4IQYsnXFJo4=\n", "d9wxpFLvk+0=\n");

    /* JADX INFO: renamed from: Ꮧ, reason: contains not printable characters */
    public static final String f2846 = StringFog.decrypt("h1Vv6c8LcHaqfXzWxQdYfJh9ePc=\n", "zhQdgKxjPRM=\n");

    /* JADX INFO: renamed from: პ, reason: contains not printable characters */
    public static final String f2845 = StringFog.decrypt("I4vkI/YZydIDk+8A8RTG1QmX7yPqOc7jHIDkMvc0w9UegOQj9i/D0gKs5zb2HdnVA4rkAuUMyw==\n", "auWKRoR4qqY=\n");

    /* JADX INFO: renamed from: ე, reason: contains not printable characters */
    public static final String f2844 = StringFog.decrypt("gWj0aV36TyKhcP9NS81FM79D7GlB718aoXXuaUH+XgGhcvJFQuteM7t182NB300iqQ==\n", "yAaaDC+bLFY=\n");

    public C0773(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        return InneractiveAdManager.getVersion();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f2893, new C0930(this));
        map.put(f2892, new C0908(this));
        map.put(f2891, new C0906(this));
        map.put(f2890, new C0905(this));
        map.put(f2889, new C0891(this));
        map.put(f2888, new C0878(this));
        map.put(f2887, new C0877(this));
        map.put(f2886, new C0804(this));
        map.put(f2885, new C0803(this));
        map.put(f2884, new C1027(this));
        map.put(f2883, new C1018(this));
        map.put(f2882, new C0980(this));
        map.put(f2881, new C0978(this));
        map.put(f2880, new C0959(this));
        map.put(f2879, new C0957(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:110:0x019b  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -1764994669:
                if (!str.equals(f2848)) {
                    b = -1;
                } else {
                    b = Ascii.GS;
                }
                break;
            case -1757761411:
                if (!str.equals(f2851)) {
                    b = -1;
                } else {
                    b = Ascii.SUB;
                }
                break;
            case -1751837367:
                if (!str.equals(f2876)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case -1661930846:
                if (!str.equals(f2873)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case -1611796569:
                if (!str.equals(f2860)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            case -1452673136:
                if (!str.equals(f2871)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case -1264220508:
                if (!str.equals(f2865)) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case -1205203919:
                if (!str.equals(f2861)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case -1190251081:
                if (!str.equals(f2854)) {
                    b = -1;
                } else {
                    b = Ascii.ETB;
                }
                break;
            case -1115843213:
                if (!str.equals(f2847)) {
                    b = -1;
                } else {
                    b = Ascii.RS;
                }
                break;
            case -955341033:
                if (!str.equals(f2850)) {
                    b = -1;
                } else {
                    b = Ascii.ESC;
                }
                break;
            case -758374370:
                if (!str.equals(f2853)) {
                    b = -1;
                } else {
                    b = Ascii.CAN;
                }
                break;
            case -587023626:
                if (!str.equals(f2849)) {
                    b = -1;
                } else {
                    b = Ascii.FS;
                }
                break;
            case -312786562:
                if (!str.equals(f2878)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case -233888832:
                if (!str.equals(f2845)) {
                    b = -1;
                } else {
                    b = 33;
                }
                break;
            case -50587944:
                if (!str.equals(f2864)) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            case 82:
                if (!str.equals(f2862)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case 83843:
                if (!str.equals(f2856)) {
                    b = -1;
                } else {
                    b = Ascii.NAK;
                }
                break;
            case 114221977:
                if (!str.equals(f2867)) {
                    b = -1;
                } else {
                    b = Ascii.VT;
                }
                break;
            case 218220615:
                if (!str.equals(f2869)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case 294386593:
                if (!str.equals(f2872)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case 305774826:
                if (!str.equals(f2844)) {
                    b = -1;
                } else {
                    b = 34;
                }
                break;
            case 334157136:
                if (!str.equals(f2846)) {
                    b = -1;
                } else {
                    b = Ascii.US;
                }
                break;
            case 598324252:
                if (!str.equals(f2866)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case 652259752:
                if (!str.equals(f2855)) {
                    b = -1;
                } else {
                    b = Ascii.SYN;
                }
                break;
            case 778319234:
                if (!str.equals(f2852)) {
                    b = -1;
                } else {
                    b = Ascii.EM;
                }
                break;
            case 809010015:
                if (!str.equals(f2858)) {
                    b = -1;
                } else {
                    b = Ascii.DC4;
                }
                break;
            case 986039922:
                if (!str.equals(f2859)) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            case 996606931:
                if (!str.equals(f2868)) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case 1840053850:
                if (!str.equals(f2877)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 1945237502:
                if (!str.equals(f2874)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case 1956883725:
                if (!str.equals(f2863)) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case 2019288557:
                if (!str.equals(f2875)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case 2082429859:
                if (!str.equals(f2857)) {
                    b = -1;
                } else {
                    b = 32;
                }
                break;
            case 2110184418:
                if (!str.equals(f2870)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
            case 1:
                return InneractiveInternalBrowserActivity.class;
            case 2:
            case 3:
                return InneractiveFullscreenAdActivity.class;
            case 4:
            case 5:
                return InneractiveRichMediaVideoPlayerActivityCore.class;
            case 6:
                return InneractiveAdSpot.class;
            case 7:
                return InneractiveAdRequest.class;
            case 8:
                return InneractiveAdRenderer.class;
            case 9:
                return InneractiveMediationName.class;
            case 10:
                return IAConfigManager.class;
            case 11:
                return InneractiveContentController.class;
            case 12:
                return InneractiveUnitController.class;
            case 13:
                return InneractiveAdViewUnitController.class;
            case 14:
                return UnitDisplayType.class;
            case 15:
                return InneractiveUnitController.EventsListener.class;
            case 16:
                return R.class;
            case 17:
                return InneractiveFullscreenVideoContentController.class;
            case 18:
                return InneractiveFullscreenAdEventsListener.class;
            case 19:
                return VideoContentListener.class;
            case 20:
                return InneractiveInternalBrowserActivity.InternalBrowserListener.class;
            case 21:
                return Tap.class;
            case 22:
                return InneractiveFullscreenAdEventsListenerAdapter.class;
            case 23:
                return InneractiveFullscreenUnitController.class;
            case 24:
                return InneractiveAdViewVideoContentController.class;
            case 25:
                return InneractiveUnitController.EventsListenerAdapter.class;
            case 26:
                return VideoContentListenerAdapter.class;
            case 27:
                return IAMraidKit.class;
            case 28:
                return IAmraidWebViewController.class;
            case 29:
                return IAVideoKit.class;
            case 30:
                return ImpressionData.class;
            case 31:
                return IArichMediaVideoView.class;
            case 32:
                return IArichMediaVideoView.BaseVideoViewListener.class;
            case 33:
                return InneractiveFullscreenAdEventsListenerWithImpressionData.class;
            case 34:
                return InneractiveAdViewEventsListenerWithImpressionData.class;
            default:
                return null;
        }
    }
}
