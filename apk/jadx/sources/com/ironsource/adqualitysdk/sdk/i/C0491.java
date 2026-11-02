package com.ironsource.adqualitysdk.sdk.i;

import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import com.ogury.sdk.Ogury;
import io.presage.Presage;
import io.presage.common.AdConfig;
import io.presage.common.PresageSdk;
import io.presage.common.network.models.RewardItem;
import io.presage.interstitial.InterstitialActivity;
import io.presage.interstitial.PresageInterstitial;
import io.presage.interstitial.PresageInterstitialCallback;
import io.presage.interstitial.optinvideo.PresageOptinVideo;
import io.presage.interstitial.optinvideo.PresageOptinVideoCallback;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ฯ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0491 extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f2172 = StringFog.decrypt("I5UcatGTkd0jlSFU0IKD0ieV\n", "RPBoOqP24rw=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f2171 = StringFog.decrypt("HYism4Obi6wdmbGmhI6CnQ+BtLCMjIU=\n", "bu3Y0u3v7t4=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f2170 = StringFog.decrypt("IsQcsSTGZx4HyAybO/FvHD3DCZ0/\n", "UaFo/lSyDnA=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f2169 = StringFog.decrypt("Y+x3v6D+TTFt5nemvO9bInn3MLu7+lJ+Q+0tqqDoSjl+6jijk/hKOXzqLbY=\n", "CoNZz9KbPlA=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f2168 = StringFog.decrypt("Kn7Ce7dPADQXeddyhF8ANBV5wmc=\n", "YxC2HsU8dF0=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f2167 = StringFog.decrypt("muuh3twIEo+U4aHHwBkEnIDw5trHDA3Ahu2h58AZBJyA8ObaxwwNr5Dw5tjHGRg=\n", "84SPrq5tYe4=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f2166 = StringFog.decrypt("TGnxbwd56qdtacxoEnDZt21pzmgHZQ==\n", "GQC4AXMcmNQ=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f2165 = StringFog.decrypt("NpdSGsw=\n", "efAnaLVfnus=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f2164 = StringFog.decrypt("4plox4QHmA==\n", "susNtOVg/Tc=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f2163 = StringFog.decrypt("0lKLi5PZjsLmSw==\n", "giDu+PK+65E=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f2162 = StringFog.decrypt("/k4Hrw0p5cTASAeuHzrp+cddDg==\n", "rjxi3GxOgI0=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f2161 = StringFog.decrypt("lvmH+VEyKy2o/4f4QyEnEK/qjslROSIGp+iJ\n", "xoviijBVTmQ=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f2160 = StringFog.decrypt("uVL45mgeMkqZVPT7XxAzYIY=\n", "6SCdlQl5VwU=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f2159 = StringFog.decrypt("EcskhhTFdUAxzSibI8t0ai76IJkZwHFsKg==\n", "QblB9XWiEA8=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f2158 = StringFog.decrypt("VLfwmKp7ZpNjvw==\n", "BtKH+dgfL+c=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f2157 = StringFog.decrypt("vsRFroGEVFk=\n", "/6AGwe/iPT4=\n");

    public C0491(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        String strMo1850 = mo1850();
        if (strMo1850 != null) {
            return strMo1850.split(StringFog.decrypt("yw==\n", "5l0ww4i7nuA=\n"))[0];
        }
        return null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f2172, new C0588(this));
        map.put(f2171, new C0524(this));
        map.put(f2170, new C0499(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:44:0x0093  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -2101347995:
                if (!str.equals(f2157)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case -1907784110:
                if (!str.equals(f2160)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case -1704786309:
                if (!str.equals(f2168)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case -938422005:
                if (!str.equals(f2163)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case -610604286:
                if (!str.equals(f2158)) {
                    b = -1;
                } else {
                    b = Ascii.VT;
                }
                break;
            case -126768170:
                if (!str.equals(f2169)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case 76142724:
                if (!str.equals(f2165)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case 698887547:
                if (!str.equals(f2162)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case 1067648736:
                if (!str.equals(f2161)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case 1346371759:
                if (!str.equals(f2164)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case 1871097647:
                if (!str.equals(f2166)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case 2109755994:
                if (!str.equals(f2167)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 2128976055:
                if (!str.equals(f2159)) {
                    b = -1;
                } else {
                    b = 10;
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
            case 3:
                return io.presage.interstitial.ui.InterstitialActivity.class;
            case 4:
                return Ogury.class;
            case 5:
                return Presage.class;
            case 6:
                return PresageSdk.class;
            case 7:
                return PresageInterstitial.class;
            case 8:
                return PresageInterstitialCallback.class;
            case 9:
                return PresageOptinVideo.class;
            case 10:
                return PresageOptinVideoCallback.class;
            case 11:
                return RewardItem.class;
            case 12:
                return AdConfig.class;
            default:
                return null;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final String mo1850() {
        try {
            try {
                return (String) Class.forName(StringFog.decrypt("JNDx/v3XVf4q2vHt4N9L8CORtuih5Ef8Jdqt5+HWU/csyqvK4MdE7ADQsfrr/VQ=\n", "Tb/fjo+yJp8=\n")).getMethod(StringFog.decrypt("Jg==\n", "R/aO9okUywc=\n"), null).invoke(null, null);
            } catch (Exception unused) {
                return PresageSdk.getAdsSdkVersion();
            }
        } catch (Throwable unused2) {
            return null;
        }
    }
}
