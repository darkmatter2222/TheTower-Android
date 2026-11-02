package com.ironsource.adqualitysdk.sdk.i;

import com.google.common.base.Ascii;
import com.inmobi.ads.AdContainer;
import com.inmobi.ads.AdUnit;
import com.inmobi.ads.InMobiAdRequest;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.ads.InMobiInterstitial;
import com.inmobi.ads.NativeRecyclerViewAdapter;
import com.inmobi.ads.NativeVideoView;
import com.inmobi.ads.ViewableAd;
import com.inmobi.ads.listeners.BannerAdEventListener;
import com.inmobi.ads.listeners.InterstitialAdEventListener;
import com.inmobi.ads.listeners.NativeAdEventListener;
import com.inmobi.ads.listeners.VideoEventListener;
import com.inmobi.media.ads.network.common.model.Ad;
import com.inmobi.media.ads.network.common.model.AdResponse;
import com.inmobi.media.ads.network.common.model.AdSet;
import com.inmobi.media.ads.network.common.model.ContextData;
import com.inmobi.rendering.InMobiAdActivity;
import com.inmobi.sdk.InMobiSdk;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﾝ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1099 extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f3905 = StringFog.decrypt("To8wS3MVMKVEjypvSw0jpWyEMXY=\n", "KepEGx90U8A=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f3904 = StringFog.decrypt("JKlWmIOUNS4ouVKNnqkxGS25Tw==\n", "Q8wi2efZVFw=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f3903 = StringFog.decrypt("pDTsCH52WvSsNf0g\n", "w1GYTB8CO7k=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f3902 = StringFog.decrypt("iuwhQzQWxG2M/Tx0NQHPeIg=\n", "7YlVAlBVtgg=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f3901 = StringFog.decrypt("8fyHCm0sTs758b4MeSx70w==\n", "uJLKZQ9FD6o=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f3900 = StringFog.decrypt("QyL2M/mbfcpCJLVv9Zt0wFIk9Xq+vH7oTy/yXPS0c9FJO/Jp6Q==\n", "IE2bHZD1EKU=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f3899 = StringFog.decrypt("9ROBlCUXyUj9HriSMRf8VepF\n", "vH3M+0d+iCw=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f3898 = StringFog.decrypt("Jca3ductfCIkwPQ56jA/PyPHvj38Kn8qaOC0FeEheAwi6Lks5zV4OT8=\n", "RqnaWI5DEU0=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f3897 = StringFog.decrypt("fRNQaN470qdXF0tXwTvz\n", "M3IkAahehM4=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f3896 = StringFog.decrypt("Raz4q5tNUSJQscWv\n", "BMi1yukmJFI=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f3895 = StringFog.decrypt("q3ZSpS/GWICEd2M=\n", "6hIRykGyOek=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f3894 = StringFog.decrypt("hvAzGaDOeCSzxS8StdljPr3wLg==\n", "1JVdfcW8EUo=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f3893 = StringFog.decrypt("seM0MetWfDWV2ywi6w==\n", "4Y9VUo47GVs=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f3892 = StringFog.decrypt("IzjN4yoqgWoD\n", "Zk6ojV5++Bo=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f3891 = StringFog.decrypt("VZAeP0lIHz1ykDYi\n", "HP5TUCshXVw=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f3890 = StringFog.decrypt("6TcSElaPEtTuIBkSR7E6w98zEhlB\n", "q1Z8fDP9U7A=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f3889 = StringFog.decrypt("jaFHE/fw+OKwqngP4fDF5aWj\n", "xM8KfJWZsYw=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f3888 = StringFog.decrypt("YTSfOpB0o65cM4ozo2OSsU00nxOLdKOiRj+Z\n", "KFrrX+IH18c=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f3887 = StringFog.decrypt("Zw73HrKH+MBsGeYZsK7Q110K7RK2\n", "KW+Dd8TiuaQ=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f3886 = StringFog.decrypt("ZODr57uWm+Fc/cPrp6eI6lf7\n", "MomPgtTT7YQ=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f3885 = StringFog.decrypt("oSsF5D2SxCGD\n", "6EVIi1/7l0U=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f3884 = StringFog.decrypt("sdjOPCNFh1mq0/ImJF+y\n", "+LaDU0Esxj0=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f3883 = StringFog.decrypt("Ns5DCewoCR0hww==\n", "YKcmfo1KZXg=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f3882 = StringFog.decrypt("SpAvQPjl\n", "C/R6LpGRSk4=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f3881 = StringFog.decrypt("CRTKub6o41wkDN28rb/nUCIC/7SpvcVcNQ==\n", "R3W+0MjNsTk=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f3880 = StringFog.decrypt("aobHtDk8FSlght2QHDk=\n", "DeOz5FVddkw=\n");

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f3879 = StringFog.decrypt("9Va/R9ggLF3h\n", "kjPLBrxzSSk=\n");

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f3878 = StringFog.decrypt("SN4FiH49PplEyQ==\n", "Ia1X7QlcTP0=\n");

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static final String f3877 = StringFog.decrypt("PVadBjxq\n", "WjPpR1gZ2Pg=\n");

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static final String f3876 = StringFog.decrypt("HBv+AV1KMv8DCs4jRkU=\n", "e36KQjIkRpo=\n");

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static final String f3875 = StringFog.decrypt("vuyO0wX6roS9+g==\n", "2Yn6gWCNz/Y=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f3874 = StringFog.decrypt("3Z0beP4ZtDPJjA==\n", "uvhvL5t74lI=\n");

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static final String f3873 = StringFog.decrypt("rMDFuIwwBpqi09Symg==\n", "y6Wx+/5VZ+4=\n");

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static final String f3872 = StringFog.decrypt("uLJO/Q/xAS+rvknZD8QLM6uyVMg=\n", "39c6vGuHZF0=\n");

    /* JADX INFO: renamed from: ᖅ, reason: contains not printable characters */
    public static final String f3871 = StringFog.decrypt("zRIZwFTzpe7/Ew==\n", "jHZLpSeDyoA=\n");

    /* JADX INFO: renamed from: ᕆ, reason: contains not printable characters */
    public static final String f3870 = StringFog.decrypt("q5yreAI=\n", "6vj4HXZ0g0U=\n");

    /* JADX INFO: renamed from: ᕄ, reason: contains not printable characters */
    public static final String f3869 = StringFog.decrypt("yhY=\n", "i3ITTjtfoHw=\n");

    /* JADX INFO: renamed from: ᕃ, reason: contains not printable characters */
    public static final String f3868 = StringFog.decrypt("kB869ror29KyBDU=\n", "03BUgt9Tr5Y=\n");

    public C1099(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        return InMobiSdk.getVersion();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f3905, new C0192(this));
        map.put(f3904, new C0179(this));
        map.put(f3903, new C0158(this));
        map.put(f3902, new C0134(this));
        map.put(f3880, new C0127(this));
        map.put(f3879, new C0123(this));
        map.put(f3878, new C0121(this));
        map.put(f3877, new C0120(this));
        map.put(f3876, new C0119(this));
        map.put(f3875, new C0282(this));
        map.put(f3874, new C0275(this));
        map.put(f3873, new C0253(this));
        map.put(f3872, new C0194(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:80:0x0123  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -2044438337:
                if (!str.equals(f3894)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case -1769689844:
                if (!str.equals(f3885)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case -1716191362:
                if (!str.equals(f3895)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case -1405271692:
                if (!str.equals(f3881)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case -1401317165:
                if (!str.equals(f3886)) {
                    b = -1;
                } else {
                    b = Ascii.DC4;
                }
                break;
            case -1304544044:
                if (!str.equals(f3887)) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            case -1062227179:
                if (!str.equals(f3900)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case -808014786:
                if (!str.equals(f3884)) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case -595852006:
                if (!str.equals(f3891)) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case -560158238:
                if (!str.equals(f3899)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case -541364416:
                if (!str.equals(f3901)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case -520974940:
                if (!str.equals(f3871)) {
                    b = -1;
                } else {
                    b = Ascii.NAK;
                }
                break;
            case -235933147:
                if (!str.equals(f3896)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case -204096109:
                if (!str.equals(f3898)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case -93733047:
                if (!str.equals(f3897)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case -32161126:
                if (!str.equals(f3889)) {
                    b = -1;
                } else {
                    b = Ascii.VT;
                }
                break;
            case 2115:
                if (!str.equals(f3869)) {
                    b = -1;
                } else {
                    b = Ascii.ETB;
                }
                break;
            case 63090975:
                if (!str.equals(f3870)) {
                    b = -1;
                } else {
                    b = Ascii.SYN;
                }
                break;
            case 99044255:
                if (!str.equals(f3893)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case 515339810:
                if (!str.equals(f3883)) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            case 957243679:
                if (!str.equals(f3890)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            case 1228411167:
                if (!str.equals(f3888)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case 1564529113:
                if (!str.equals(f3868)) {
                    b = -1;
                } else {
                    b = Ascii.CAN;
                }
                break;
            case 1955888231:
                if (!str.equals(f3882)) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case 2035398868:
                if (!str.equals(f3892)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
            case 1:
                return InMobiAdActivity.class;
            case 2:
            case 3:
                return com.inmobi.ads.rendering.InMobiAdActivity.class;
            case 4:
                return NativeVideoView.class;
            case 5:
                return AdUnit.AdMarkupType.class;
            case 6:
                return AdContainer.class;
            case 7:
                return AdContainer.RenderingProperties.class;
            case 8:
                return AdContainer.RenderingProperties.PlacementType.class;
            case 9:
                return AdContainer.EventType.class;
            case 10:
                return InMobiBanner.class;
            case 11:
                return InMobiInterstitial.class;
            case 12:
                return InMobiSdk.class;
            case 13:
                return InMobiAdRequest.class;
            case 14:
                return ViewableAd.class;
            case 15:
                return AdUnit.class;
            case 16:
                return NativeRecyclerViewAdapter.class;
            case 17:
                return InterstitialAdEventListener.class;
            case 18:
                return BannerAdEventListener.class;
            case 19:
                return NativeAdEventListener.class;
            case 20:
                return VideoEventListener.class;
            case 21:
                return AdResponse.class;
            case 22:
                return AdSet.class;
            case 23:
                return Ad.class;
            case 24:
                return ContextData.class;
            default:
                return null;
        }
    }
}
