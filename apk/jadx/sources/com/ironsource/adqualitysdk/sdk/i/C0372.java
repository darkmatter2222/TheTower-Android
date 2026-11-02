package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import com.ogury.ad.OguryInterstitialAd;
import com.ogury.ad.OguryInterstitialAdListener;
import com.ogury.ad.OguryReward;
import com.ogury.ad.OguryRewardedAd;
import com.ogury.ad.OguryRewardedAdListener;
import com.ogury.ad.interstitial.ui.InterstitialActivity;
import com.ogury.sdk.Ogury;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ױ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0372 extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f1820 = StringFog.decrypt("QUJZ2pBzkiNBU0Tnl2abEFZrROCKYpk0QA==\n", "Mictk/4H91E=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f1819 = StringFog.decrypt("R78pd4DqEqFQvzlkgdEaoEC/M0CX\n", "NNpdJeWdc9M=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f1818 = StringFog.decrypt("7rmHdx47SI/0+Is9XzVTieikmS0YKFSc4fifMF8VU4nopJktGChUnOGXiS0YKlSJ9A==\n", "jdbqWXFcPf0=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f1817 = StringFog.decrypt("MGGahNY00eoNZo+N5STR6g9mmpg=\n", "eQ/u4aRHpYM=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f1816 = StringFog.decrypt("5envWnM=\n", "qo6aKAoebWs=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f1815 = StringFog.decrypt("JgNQBs+LyOQMFlYA37bP8QUlQQ==\n", "aWQldLbCppA=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f1814 = StringFog.decrypt("C+U9G9IgtA8h8Dsdwh2zGijDLCXCGq4eKuc6\n", "RIJIaatp2ns=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f1813 = StringFog.decrypt("GPsZyLg+oMs27gjfpS2h\n", "V5xsusFsxbw=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f1812 = StringFog.decrypt("KsboMwQjGCQE0/kkGTAZHwzS6SQTFA8=\n", "ZaGdQX1xfVM=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f1811 = StringFog.decrypt("gO74RC4BhhGu++k=\n", "z4mNNldT42Y=\n");

    public C0372(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        try {
            return Ogury.getSdkVersion();
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f1820, new C0402(this));
        map.put(f1819, new C0401(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:29:0x0058  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -1704786309:
                if (!str.equals(f1817)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case -734879533:
                if (!str.equals(f1811)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case 76142724:
                if (!str.equals(f1816)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 82913255:
                if (!str.equals(f1814)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case 186993737:
                if (!str.equals(f1812)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case 1169123445:
                if (!str.equals(f1813)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case 1789379091:
                if (!str.equals(f1815)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case 1866202823:
                if (!str.equals(f1818)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
            case 1:
                return InterstitialActivity.class;
            case 2:
                return Ogury.class;
            case 3:
                return OguryInterstitialAd.class;
            case 4:
                return OguryInterstitialAdListener.class;
            case 5:
                return OguryRewardedAd.class;
            case 6:
                return OguryRewardedAdListener.class;
            case 7:
                return OguryReward.class;
            default:
                return null;
        }
    }
}
