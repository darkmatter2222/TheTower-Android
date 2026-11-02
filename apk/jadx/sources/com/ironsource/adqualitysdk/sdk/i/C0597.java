package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.FairBid;
import com.fyber.fairbid.ads.ImpressionData;
import com.fyber.fairbid.ads.Interstitial;
import com.fyber.fairbid.ads.PlacementType;
import com.fyber.fairbid.ads.Rewarded;
import com.fyber.fairbid.ads.ShowOptions;
import com.fyber.fairbid.ads.interstitial.InterstitialListener;
import com.fyber.fairbid.ads.rewarded.RewardedListener;
import com.fyber.fairbid.common.lifecycle.EventStream;
import com.fyber.fairbid.internal.Constants;
import com.fyber.fairbid.mediation.MediationManager;
import com.fyber.fairbid.mediation.abstr.CachedAd;
import com.fyber.fairbid.mediation.abstr.NetworkAdapter;
import com.fyber.fairbid.mediation.adapter.AdapterConfiguration;
import com.fyber.fairbid.mediation.adapter.AdapterPool;
import com.fyber.fairbid.mediation.config.MediationConfig;
import com.fyber.fairbid.sdk.placements.Placement;
import com.fyber.fairbid.sdk.placements.PlacementsHandler;
import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᓚ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0597 extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f2426 = StringFog.decrypt("yjfdtC7y4+fZO8aXBvfk58o327Al5f7nwzHM\n", "rVKp+UuWioY=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f2425 = StringFog.decrypt("awkmVaAgM4tpPD51pxEnnmIYBm20EQ==\n", "DGxSFMR0Svs=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f2424 = StringFog.decrypt("tM2fR1EQkEWg24JhUiSDVLL4h29fBY9Fvdy/d0wF\n", "06jrDjxg4iA=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f2423 = StringFog.decrypt("VWPnc8mpr+hBdfpVyp28+VNU9lTAvK/kXGHAXs8=\n", "MgaTOqTZ3Y0=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f2422 = StringFog.decrypt("6GUEv7Yx7Mv8cxmZtQX/2u5SFZi/JOzH4WcjkrAX+9z8aR+Y\n", "jwBw9ttBnq4=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f2421 = StringFog.decrypt("mO9bkGcI8puM+Ua2ZDzhip7OSrRrFuStkP9dum8=\n", "/4ov2Qp4gP4=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f2420 = StringFog.decrypt("0yoSAu4H1AHHPA8k7TPHENUZBznqFsgQ/Ss=\n", "tE9mS4N3pmQ=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f2419 = StringFog.decrypt("dDASxSlvI55gJg/jKlswj3IbA/gUfiiUZiE=\n", "E1VmjEQfUfs=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f2418 = StringFog.decrypt("lyjfN94pUFKDPsIR3R1DQ5EO2RvSLUtBlQTP\n", "8E2rfrNZIjc=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f2417 = StringFog.decrypt("oleTSCaXd+22QY5uJaNk/KRzg3culXHhtleVRSSKZOGr\n", "xTLnAUvnBYg=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f2416 = StringFog.decrypt("zecunQzGArbZ8TO7D/IRp8vBO7kR1xm0xMs+\n", "qoJa1GG2cNM=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f2415 = StringFog.decrypt("3oQ0wVfO9pg=\n", "ueFAgCe+v/w=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f2414 = StringFog.decrypt("xkThBDmZAsM=\n", "oSGVV032cKY=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f2413 = StringFog.decrypt("CqSkBcEjN1sIs5MryyQuSBizsTDMLSlc\n", "bcHQRKVCRy8=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f2412 = StringFog.decrypt("3v1KnL3IfKXU/VC4kM1Lucn9\n", "uZg+zNGpH8A=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f2411 = StringFog.decrypt("NG7sMIGM1y0+bvYUo4zZLQ==\n", "UwuYYO3ttEg=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f2410 = StringFog.decrypt("epArl0KV3+twkDGzXbzd4HmZOrU=\n", "HfVfxy70vI4=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f2409 = StringFog.decrypt("O3MB8Vf4mf45UxvFXg==\n", "XBZ1sDOs4I4=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f2408 = StringFog.decrypt("9dupvLnXtAr1yrSBvsK9NO/NqZC5xqM=\n", "hr7d9dej0Xg=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f2407 = StringFog.decrypt("pYG8DMUXeOKygawSyRNt9biBug==\n", "1uTIXqBgGZA=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f2406 = StringFog.decrypt("W8lmHCGUz4JbyGEcNw==\n", "OroVeVPgnPY=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f2405 = StringFog.decrypt("5Rrh4mSMaA==\n", "o3uIkCblDCI=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f2404 = StringFog.decrypt("Uq/GLS02Q65xh8MqLSVPsw==\n", "H8qiRExCKsE=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f2403 = StringFog.decrypt("w+AcyEm4\n", "goRIsTndg8o=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f2402 = StringFog.decrypt("TuOTayT+4pNo\n", "D4fgKEuQhPo=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f2401 = StringFog.decrypt("JRqWkyXFbK0GPJ2UIthi\n", "aH/y+kSxBcI=\n");

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f2400 = StringFog.decrypt("QboSUrwsUTBlpTtQtyVYO2M=\n", "EdZzMdlBNF4=\n");

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f2399 = StringFog.decrypt("oqalqxMXv++G\n", "8srEyHZ62oE=\n");

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static final String f2398 = StringFog.decrypt("3Zimylv0sxfgn7PDZe60CvGYt90=\n", "lPbSrymHx34=\n");

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static final String f2397 = StringFog.decrypt("KZYariKlXyE3mh67Na9fNw==\n", "e/Ntz1DBOkU=\n");

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static final String f2396 = StringFog.decrypt("o3zEzC8bGYqFf/DfPgk=\n", "6hG0vkpoauM=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f2395 = StringFog.decrypt("IaPUjoYIXDUcpMGH\n", "aM2g6/R7KFw=\n");

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static final String f2394 = StringFog.decrypt("UP9Q2+8jvzJ0x0jI7w==\n", "AJMxuIpO2lw=\n");

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static final String f2393 = StringFog.decrypt("BJTs7jb79Yw=\n", "VvGbj0SfkOg=\n");

    /* JADX INFO: renamed from: ᖅ, reason: contains not printable characters */
    public static final String f2392 = StringFog.decrypt("V+IFdKwt4cVr5Bk=\n", "BIpqA+Ndlaw=\n");

    /* JADX INFO: renamed from: ᕆ, reason: contains not printable characters */
    public static final String f2391 = StringFog.decrypt("6vE54QxMa4s=\n", "qZBaiWkoKu8=\n");

    /* JADX INFO: renamed from: ᕄ, reason: contains not printable characters */
    public static final String f2390 = StringFog.decrypt("85oSNi3XyHvZnhY1J9c=\n", "vf9mQUKlozo=\n");

    /* JADX INFO: renamed from: ᕃ, reason: contains not printable characters */
    public static final String f2389 = StringFog.decrypt("5oYK01jlhcLIjQc=\n", "p+JroyyA95I=\n");

    /* JADX INFO: renamed from: ᕂ, reason: contains not printable characters */
    public static final String f2388 = StringFog.decrypt("B70Mbah3wx0ptwt0u2fDPzKwAnM=\n", "RtltHdwSsV4=\n");

    /* JADX INFO: renamed from: ᔽ, reason: contains not printable characters */
    public static final String f2387 = StringFog.decrypt("eo5VrKg7vVRamV0=\n", "P/gwwtxoySY=\n");

    public C0597(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        try {
            try {
                return (String) FairBid.class.getDeclaredField(StringFog.decrypt("rBzjKEdXd6C2F+Y=\n", "/1iodxESJfM=\n")).get(null);
            } catch (Exception unused) {
                return null;
            }
        } catch (Exception unused2) {
            C0632 c0632 = C0793.m2275().f2974;
            String strDecrypt = StringFog.decrypt("DaRV01rkXTgOpFXTWuRdOA6kVdNa5CI=\n", "U/8JtwfPBhY=\n");
            c0632.getClass();
            return C0632.m2159((Object) null, FairBid.class, strDecrypt);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(f2426, new C0688(this));
        map.put(f2425, new C0635(this));
        map.put(f2424, new C0633(this));
        map.put(f2423, new C0623(this));
        map.put(f2422, new C0622(this));
        map.put(f2421, new C0619(this));
        map.put(f2420, new C0618(this));
        map.put(f2419, new C0615(this));
        map.put(f2418, new C0614(this));
        map.put(f2417, new C0799(this));
        map.put(f2416, new C0797(this));
        map.put(f2415, new C0781(this));
        map.put(f2414, new C0780(this));
        map.put(f2413, new C0738(this));
        map.put(f2412, new C0712(this));
        map.put(f2411, new C0711(this));
        map.put(f2410, new C0702(this));
        map.put(f2409, new C0698(this));
        map.put(f2408, new C0696(this));
        map.put(f2407, new C0640(this));
        map.put(f2406, new C0636(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:62:0x00dc  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -2041833493:
                if (!str.equals(f2389)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case -1598046662:
                if (!str.equals(f2401)) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case -1115843213:
                if (!str.equals(f2396)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case -847426041:
                if (!str.equals(f2388)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case -498060603:
                if (!str.equals(f2399)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case -368841467:
                if (!str.equals(f2391)) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            case -174936018:
                if (!str.equals(f2393)) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case 99044255:
                if (!str.equals(f2394)) {
                    b = -1;
                } else {
                    b = Ascii.VT;
                }
                break;
            case 438795617:
                if (!str.equals(f2390)) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case 578208537:
                if (!str.equals(f2405)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case 769047372:
                if (!str.equals(f2395)) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case 806552769:
                if (!str.equals(f2392)) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case 1062384924:
                if (!str.equals(f2400)) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case 1212533506:
                if (!str.equals(f2397)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case 1297340448:
                if (!str.equals(f2398)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case 1775008410:
                if (!str.equals(f2387)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            case 1884304309:
                if (!str.equals(f2404)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 1955869213:
                if (!str.equals(f2403)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 1969669106:
                if (!str.equals(f2402)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return FairBid.class;
            case 1:
                return MediationManager.class;
            case 2:
                return Constants.AdType.class;
            case 3:
                return FairBid.AdsConfig.class;
            case 4:
                return MediationConfig.class;
            case 5:
                return PlacementsHandler.class;
            case 6:
                return Placement.class;
            case 7:
                return InterstitialListener.class;
            case 8:
                return RewardedListener.class;
            case 9:
                return ImpressionData.class;
            case 10:
                return Interstitial.class;
            case 11:
                return PlacementType.class;
            case 12:
                return Rewarded.class;
            case 13:
                return ShowOptions.class;
            case 14:
                return CachedAd.class;
            case 15:
                return NetworkAdapter.class;
            case 16:
                return AdapterPool.class;
            case 17:
                return AdapterConfiguration.class;
            case 18:
                return EventStream.class;
            default:
                return null;
        }
    }
}
