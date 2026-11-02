package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.ISAdQualityCustomMediationRevenue;
import com.ironsource.adqualitysdk.sdk.ISAdQualityMediationNetwork;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʈ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0193 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f1066 = StringFog.decrypt("ZauymW4ovgNPvJ6CTjOkHGG8uZ5cM6IeQou4gVgpvhQ=\n", "LNnd9z1Hy3E=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0392 f1067;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public boolean f1068;

    static {
        StringFog.decrypt("Ik0IzlnWvH0hBgPJe9emZiBFPsJO\n", "Tyhspzii1RI=\n");
        StringFog.decrypt("YoG8Ugwi6DhhyrdVITP3MmO0tFoUBOQh\n", "D+TYO21WgVc=\n");
        StringFog.decrypt("dhewL7/lzZB1XLcqu/DKvG4BoCmzw8GJ\n", "G3LURt6RpP8=\n");
    }

    public C0193(C0392 c0392) {
        this.f1067 = c0392;
        C0255 c0255 = new C0255(this);
        AbstractC1081 abstractC1081M2437 = AbstractC1081.m2437();
        synchronized (abstractC1081M2437) {
            abstractC1081M2437.f3816.add(c0255);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1944(ISAdQualityMediationNetwork iSAdQualityMediationNetwork) {
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.ADMOB) {
            return StringFog.decrypt("cyWtwYg=\n", "EkHArupPn48=\n");
        }
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.DT_FAIR_BID) {
            return StringFog.decrypt("bfuQhj5BeQ==\n", "C5r59FwoHTM=\n");
        }
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.HELIUM) {
            return StringFog.decrypt("q4UaP4qA\n", "w+B2Vv/tj6s=\n");
        }
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.LEVEL_PLAY) {
            return StringFog.decrypt("1R3XlqvPFSnPCw==\n", "pmin89m8ekc=\n");
        }
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.MAX) {
            return StringFog.decrypt("XKfSjxtZXxM=\n", "Pdei43QvNn0=\n");
        }
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.UNITY) {
            return StringFog.decrypt("Fat4mUv95Fw=\n", "YMUR7TKcgC8=\n");
        }
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.SELF_MEDIATED) {
            return StringFog.decrypt("vWeRKsdBNoKvdpgo\n", "zgL9TKokUus=\n");
        }
        return iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.OTHER ? StringFog.decrypt("8pLep9Q=\n", "nea2wqYIoo4=\n") : "";
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static JSONObject m1945(C0193 c0193, ISAdQualityCustomMediationRevenue iSAdQualityCustomMediationRevenue) {
        c0193.getClass();
        C1017 c1017 = new C1017();
        c1017.f3614 = true;
        c1017.f3617 = iSAdQualityCustomMediationRevenue.getRevenue();
        c1017.f3619 = m1944(iSAdQualityCustomMediationRevenue.getMediationNetwork());
        c1017.f3615 = iSAdQualityCustomMediationRevenue.getPlacement();
        c1017.f3613 = iSAdQualityCustomMediationRevenue.getCustomData();
        return c1017.m2409();
    }
}
