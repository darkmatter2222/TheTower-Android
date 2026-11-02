package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import com.unity3d.ads.UnityAds;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import com.unity3d.services.banners.BannerView;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3481l extends AbstractC0276 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f291 = StringFog.decrypt("BCaQy/BPNOkxK7PM7UI=\n", "RULFpZk7dYo=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f290 = StringFog.decrypt("QOqYDem8eSBatpEN77diIkrmkFCys3QnDeSRVvK7ZHpi4aBN9aZRN1fsg0roqw==\n", "I4X1I5zSEFQ=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f289 = StringFog.decrypt("PB4/kNwU78sbCA==\n", "fn9R/rlmuaI=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f288 = StringFog.decrypt("DHrqtbttSVoWJuO1vWZSWAZ24ujgYUFAAXD16OBBQUABcPXNp2ZX\n", "bxWHm84DIC4=\n");

    public C3481l(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        String version = UnityAds.getVersion();
        if (version != null) {
            return version.split(StringFog.decrypt("Vg==\n", "e2zSKQe7FjE=\n"))[0];
        }
        return null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        return new HashMap();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0044  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        int iHashCode = str.hashCode();
        if (iHashCode != 252148886) {
            if (iHashCode != 961844241) {
                if (iHashCode != 1067215379) {
                    if (iHashCode == 1531208100 && str.equals(f290)) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                } else if (str.equals(f288)) {
                    b = 3;
                } else {
                    b = -1;
                }
            } else if (str.equals(f289)) {
                b = 2;
            } else {
                b = -1;
            }
        } else if (str.equals(f291)) {
            b = 0;
        } else {
            b = -1;
        }
        if (b == 0 || b == 1) {
            return AdUnitActivity.class;
        }
        if (b == 2 || b == 3) {
            return BannerView.class;
        }
        return null;
    }
}
