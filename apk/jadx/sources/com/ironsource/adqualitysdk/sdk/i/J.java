package com.ironsource.adqualitysdk.sdk.i;

import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import com.vungle.warren.AdActivity;
import com.vungle.warren.AdvertisementPresentationFactory;
import com.vungle.warren.PlayAdCallback;
import com.vungle.warren.Vungle;
import com.vungle.warren.VungleApiClient;
import com.vungle.warren.VungleBanner;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.Placement;
import com.vungle.warren.model.Report;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.ui.VungleActivity;
import com.vungle.warren.ui.VungleWebViewActivity;
import com.vungle.warren.ui.contract.AdContract;
import com.vungle.warren.ui.contract.LocalAdContract;
import com.vungle.warren.ui.contract.WebAdContract;
import com.vungle.warren.ui.presenter.LocalAdPresenter;
import com.vungle.warren.ui.presenter.MRAIDAdPresenter;
import com.vungle.warren.ui.view.LocalAdView;
import com.vungle.warren.ui.view.MRAIDAdView;
import com.vungle.warren.ui.view.VungleBannerView;
import com.vungle.warren.ui.view.VungleNativeView;
import com.vungle.warren.ui.view.VungleWebClient;
import com.vungle.warren.ui.view.WebViewAPI;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class J extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public String f144;

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f143 = StringFog.decrypt("WMGOEWnWkfdYxK4Fb9c=\n", "MbLHfwqz/4M=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f142 = StringFog.decrypt("kGnWaO7gTf2cadZg7g==\n", "9wyiKYqtLI8=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f141 = StringFog.decrypt("hFpH6u3iZyWKWF0=\n", "4z8zqYyPF0Q=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f140 = StringFog.decrypt("/CMbjqpa9G/0Jwurp0H/VukqHA==\n", "m0ZvysUtmgM=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f139 = StringFog.decrypt("+Us2pBy8LgPzSyyA\n", "ni5C9HDdTWY=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f138 = StringFog.decrypt("pJ3ud2ri5q6E\n", "8/iMNg60j8s=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f137 = StringFog.decrypt("CTM67Gm3ytktMzbZaJU=\n", "XlZYrQ3nuLw=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f136 = StringFog.decrypt("A2GknAef2w8ETQ==\n", "VATGym76rE4=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f135 = StringFog.decrypt("eKSgcjFfuIdMkqJ8OFSb\n", "LtHOFV067+I=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f134 = StringFog.decrypt("uiAax0dj5AqeFyw=\n", "93JbjgMigFw=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f133 = StringFog.decrypt("JCBPBoW9WLcMFW87pA==\n", "aXIOT8H5Pds=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f132 = StringFog.decrypt("xOPuLvFVAg7g6v0l93EZGPbi9j/mUzQ48+L2P89IGAng6f05\n", "hYeYS4Mha30=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f131 = StringFog.decrypt("xObvxIcwAXjx+w==\n", "hYKup/NZdxE=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f130 = StringFog.decrypt("kShyaCk4\n", "x10cD0VdQRg=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f129 = StringFog.decrypt("Xe+5oqYILGt/86GsvhQ=\n", "C5rXxcptbQg=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f128 = StringFog.decrypt("o2/QeyaL1F6sZZMiMYzIXK4uyDx+qM9Xp2zYFDOK00+pdMQ=\n", "wAC9VVD+ujk=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f127 = StringFog.decrypt("zeg8JzstG7vp4S8sPQ==\n", "jIxKQklZcsg=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f126 = StringFog.decrypt("IDEijG508kUE\n", "cF1D7wsZlys=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f125 = StringFog.decrypt("c6/cQf2nZqFHjNtD5oNSsEys21Lo\n", "JdqyJpHCMcQ=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f124 = StringFog.decrypt("sMD/9h3RD2m/yryvCtYTa72B57FF8hRgtMP3jw7GN2e22NO7H80XZ6fW\n", "06+S2GukYQ4=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f123 = StringFog.decrypt("fuo6jfkUDWJC6jmV2xs=\n", "LoZb9LhwTgM=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f122 = StringFog.decrypt("7/R8UY4x\n", "vZEMPvxF+R8=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f121 = StringFog.decrypt("yk3wZaldKdvqUQ==\n", "mCiACto0XbQ=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f120 = StringFog.decrypt("zzXPZiowARftJQ==\n", "jlGMCUREc3Y=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f119 = StringFog.decrypt("MXGZVZdkv9oScI5Gmkav\n", "fR76NPsl25k=\n");

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f118 = StringFog.decrypt("5c3mH6wsqJ/Ax/I=\n", "qaKFfsBtzMk=\n");

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f117 = StringFog.decrypt("gnmYi3/GHc65\n", "zhb76hOQdKs=\n");

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static final String f116 = StringFog.decrypt("60E4e7IWH/fUSzVuuzQ=\n", "py5bGt5GbZI=\n");

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static final String f115 = StringFog.decrypt("klr8jEPUcYuwSuCiSdZmmKdXzIZAxW2eg0zakEjOd4+h\n", "0z6/4y2gA+o=\n");

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static final String f114 = StringFog.decrypt("kIecV29wHdS0jo9caVQGwqKGhEZ8cB3Iv6WLUWlrBt4=\n", "0ePqMh0EdKc=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f113 = StringFog.decrypt("OSorE33OjNoHIDsXf/uN+A==\n", "dUVIchGP6Io=\n");

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static final String f112 = StringFog.decrypt("A0kDpy7za8M8fjGLBMZq4Q==\n", "ThtC7mqyD5M=\n");

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static final String f111 = StringFog.decrypt("UxjIJ1vj6tVrA8My\n", "BW2mQDeGqLQ=\n");

    /* JADX INFO: renamed from: ᖅ, reason: contains not printable characters */
    public static final String f110 = StringFog.decrypt("viOIsmsuu0mxKcvrfCmnS7Nis+lzPLlLny2L8ngp\n", "3UzlnB1b1S4=\n");

    /* JADX INFO: renamed from: ᕆ, reason: contains not printable characters */
    public static final String f109 = StringFog.decrypt("B0PRQa9p4lglX8lDlWXJTg==\n", "UTa/JsMMrDk=\n");

    /* JADX INFO: renamed from: ᕄ, reason: contains not printable characters */
    public static final String f108 = StringFog.decrypt("JG/5KEPOdv0rZbpxVMlq/yku4W8bzXH/MC7Cc1vcdP8JYeBvQ95O8yJ3\n", "RwCUBjW7GJo=\n");

    /* JADX INFO: renamed from: ᕃ, reason: contains not printable characters */
    public static final String f107 = StringFog.decrypt("ljp476+/jMCuIXP6lbOr1g==\n", "wE8WiMPazqE=\n");

    /* JADX INFO: renamed from: ᕂ, reason: contains not printable characters */
    public static final String f106 = StringFog.decrypt("/DBHMB9NzOHzOgRpCErQ4/FxX3dHTsvj6HF8awdfzuPdPkRwDEr07/oo\n", "n18qHmk4ooY=\n");

    public J(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String mo1847() {
        String strMo1850 = mo1850();
        if (strMo1850 != null) {
            return strMo1850.split(StringFog.decrypt("KA==\n", "B9dv4iozdSk=\n"))[1];
        }
        return null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f139, new E(this));
        map.put(f143, new F(this));
        map.put(f142, new G(this));
        map.put(f141, new H(this));
        map.put(f140, new I(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:104:0x0184  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -2075872274:
                if (!str.equals(f112)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case -2012803321:
                if (!str.equals(f108)) {
                    b = -1;
                } else {
                    b = 32;
                }
                break;
            case -1853707364:
                if (!str.equals(f106)) {
                    b = -1;
                } else {
                    b = Ascii.RS;
                }
                break;
            case -1850654380:
                if (!str.equals(f122)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case -1836618638:
                if (!str.equals(f131)) {
                    b = -1;
                } else {
                    b = Ascii.SUB;
                }
                break;
            case -1740904301:
                if (!str.equals(f118)) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case -1721428911:
                if (!str.equals(f130)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case -1057659822:
                if (!str.equals(f132)) {
                    b = -1;
                } else {
                    b = Ascii.EM;
                }
                break;
            case -965507231:
                if (!str.equals(f136)) {
                    b = -1;
                } else {
                    b = Ascii.SYN;
                }
                break;
            case -899612152:
                if (!str.equals(f124)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case -828205665:
                if (!str.equals(f134)) {
                    b = -1;
                } else {
                    b = Ascii.ETB;
                }
                break;
            case -747599243:
                if (!str.equals(f120)) {
                    b = -1;
                } else {
                    b = Ascii.VT;
                }
                break;
            case -498060603:
                if (!str.equals(f126)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case -350701718:
                if (!str.equals(f121)) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case -92732536:
                if (!str.equals(f110)) {
                    b = -1;
                } else {
                    b = Ascii.FS;
                }
                break;
            case 156342925:
                if (!str.equals(f109)) {
                    b = -1;
                } else {
                    b = Ascii.US;
                }
                break;
            case 315438882:
                if (!str.equals(f107)) {
                    b = -1;
                } else {
                    b = Ascii.GS;
                }
                break;
            case 332396988:
                if (!str.equals(f138)) {
                    b = -1;
                } else {
                    b = Ascii.DC4;
                }
                break;
            case 505165239:
                if (!str.equals(f125)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case 670892517:
                if (!str.equals(f127)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case 746354589:
                if (!str.equals(f116)) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case 798818448:
                if (!str.equals(f117)) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            case 1033471823:
                if (!str.equals(f128)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 1110462460:
                if (!str.equals(f133)) {
                    b = -1;
                } else {
                    b = Ascii.CAN;
                }
                break;
            case 1205766784:
                if (!str.equals(f129)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 1208038126:
                if (!str.equals(f135)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case 1230133745:
                if (!str.equals(f137)) {
                    b = -1;
                } else {
                    b = Ascii.NAK;
                }
                break;
            case 1461477995:
                if (!str.equals(f114)) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            case 1611471226:
                if (!str.equals(f113)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case 1731532800:
                if (!str.equals(f119)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case 1766407901:
                if (!str.equals(f111)) {
                    b = -1;
                } else {
                    b = Ascii.ESC;
                }
                break;
            case 1777696764:
                if (!str.equals(f123)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case 1861686093:
                if (!str.equals(f115)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return Vungle.class;
            case 1:
            case 2:
                return VungleActivity.class;
            case 3:
            case 4:
                return VungleWebViewActivity.class;
            case 5:
                return Advertisement.class;
            case 6:
                return Placement.class;
            case 7:
                return VungleWebClient.class;
            case 8:
                return Report.class;
            case 9:
                return PlayAdCallback.class;
            case 10:
                return Repository.class;
            case 11:
                return AdContract.class;
            case 12:
                return LocalAdContract.class;
            case 13:
                return LocalAdView.class;
            case 14:
                return LocalAdContract.LocalView.class;
            case 15:
                return LocalAdContract.LocalPresenter.class;
            case 16:
                return LocalAdPresenter.class;
            case 17:
                return MRAIDAdPresenter.class;
            case 18:
                return AdContract.AdvertisementPresenter.class;
            case 19:
                return AdvertisementPresentationFactory.class;
            case 20:
                return WebAdContract.WebAdView.class;
            case 21:
                return WebAdContract.WebAdPresenter.class;
            case 22:
                return WebViewAPI.class;
            case 23:
                return MRAIDAdView.class;
            case 24:
                return WebViewAPI.MRAIDDelegate.class;
            case 25:
                return AdContract.AdvertisementPresenter.EventListener.class;
            case 26:
                return AdActivity.class;
            case 27:
            case 28:
                return VungleBanner.class;
            case 29:
            case 30:
                return VungleBannerView.class;
            case 31:
            case 32:
                return VungleNativeView.class;
            default:
                return null;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String mo1850() {
        if (this.f144 == null) {
            C0554 c0554 = C0793.m2275().f2975;
            C0591 c0591 = new C0592().f2368;
            c0591.f2363 = String.class;
            c0591.f863 |= 8;
            c0591.f862 |= 16;
            C0554 c0555 = C0793.m2275().f2975;
            ArrayList arrayList = new ArrayList();
            c0555.m2135(VungleApiClient.class, c0591, arrayList);
            String str = null;
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    String str2 = (String) ((Field) it.next()).get(null);
                    if (str2.startsWith(StringFog.decrypt("riMt0r/O1HSZLCzb\n", "+FZDtdOrlRk=\n")) || str2.startsWith(StringFog.decrypt("pt5WGNglHAqfwlw=\n", "8Ks4f7RAWHg=\n"))) {
                        str = str2.split(StringFog.decrypt("mw==\n", "oMizNK39qjQ=\n"))[0];
                        break;
                    }
                }
            } catch (Exception unused) {
            }
            this.f144 = str;
            this.f1384 = str;
        }
        return this.f144;
    }
}
