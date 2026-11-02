package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;
import jp.maio.sdk.android.AdFullscreenActivity;
import jp.maio.sdk.android.HtmlBasedAdActivity;
import jp.maio.sdk.android.MaioAds;
import jp.maio.sdk.android.MaioAdsInstance;
import jp.maio.sdk.android.MaioAdsListener;
import jp.maio.sdk.android.MaioAdsListenerInterface;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｭ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1064 extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f3797 = StringFog.decrypt("u/ZECjkPMCys4HwuKxI6A63h\n", "yJMwR1hmX20=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f3796 = StringFog.decrypt("Jiv5BSO7PA==\n", "a0qQamLfTwI=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f3795 = StringFog.decrypt("U6cfRmSZsxBwtQJIS56l\n", "HsZ2KSX9wFk=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f3794 = StringFog.decrypt("U7IYRTs50S53oAVPFDjQ\n", "HtNxKnpdomI=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f3793 = StringFog.decrypt("c5DJCKRarxBXgtQCi1uuFVCFxRWDX785\n", "PvGgZ+U+3Fw=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f3792 = StringFog.decrypt("s2w6ZmkMU66AbRl9RANUpIRhCGo=\n", "8gh8EwVgIM0=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f3791 = StringFog.decrypt("ZHNt3yf9i7l9ZyicJ/qA5WFqJ5wH8KLiYm8w0TTxgflPYDfbMP2Q7g==\n", "DgNDskaU5Jc=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f3790 = StringFog.decrypt("uj1HAO0K1f2WCE4tzB/P7ps9Uw==\n", "8kkqbK9rppg=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f3789 = StringFog.decrypt("ycMbjRuH9IPQ117OG4D/38zaUc4ymvbB4dJGhR6v/+zAx1yWE5ri\n", "o7M14Hrum60=\n");

    public C1064(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        return MaioAds.getSdkVersion();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f3797, new C0110(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:29:0x0058  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -1799290762:
                if (!str.equals(f3796)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case -1455130644:
                if (!str.equals(f3791)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case -1303622385:
                if (!str.equals(f3793)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case -1069735125:
                if (!str.equals(f3795)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case -278703286:
                if (!str.equals(f3794)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case 357386522:
                if (!str.equals(f3790)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case 1819361677:
                if (!str.equals(f3792)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 1914325723:
                if (!str.equals(f3789)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return MaioAds.class;
            case 1:
            case 2:
                return AdFullscreenActivity.class;
            case 3:
            case 4:
                return HtmlBasedAdActivity.class;
            case 5:
                return MaioAdsInstance.class;
            case 6:
                return MaioAdsListener.class;
            case 7:
                return MaioAdsListenerInterface.class;
            default:
                return null;
        }
    }
}
