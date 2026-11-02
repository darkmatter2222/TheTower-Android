package com.facebook.ads.redexgen.X;

import com.facebook.ads.ExtraHints;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.RewardedVideoAd;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.pQ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3012pQ {
    public static byte[] A00;

    static {
        A04();
    }

    public static int A00(C1618Hi c1618Hi, int i) {
        return AbstractC2957oU.A00(c1618Hi).getInt(A01(0, 21, 2), i);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 39);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A02(C1618Hi c1618Hi, String str) {
        int iA00 = A00(c1618Hi, -1);
        if (iA00 == -1) {
            return null;
        }
        try {
            return new ExtraHints.Builder().extraData(A03(str, A01(47, 14, 49), Integer.valueOf(iA00))).build().getHints();
        } catch (JSONException unused) {
            return null;
        }
    }

    public static String A03(String str, String str2, Object obj) throws JSONException {
        String strA01 = A01(61, 2, 86);
        if (str != null) {
            strA01 = new JSONObject(str).getJSONObject(A01(42, 5, 31)).optString(A01(32, 10, 91), strA01);
        }
        JSONObject jSONObject = new JSONObject(strA01);
        jSONObject.put(str2, obj);
        return jSONObject.toString();
    }

    public static void A04() {
        A00 = new byte[]{121, 123, 110, 111, -120, 119, 126, 118, -120, 106, 109, 124, -120, 119, 120, -120, 108, 113, 106, 114, 119, -71, -73, -55, -71, -73, -70, -69, -70, -75, -73, -70, -25, -6, -10, -12, -29, -31, -26, -29, -10, -29, -82, -81, -76, -70, -71, -58, -57, -58, -69, -64, -71, -63, -58, -67, -68, -73, -71, -68, -53, -8, -6};
    }

    public static boolean A05(String str) throws JSONException {
        return str != null && new JSONObject(new JSONObject(str).getJSONObject(A01(42, 5, 31)).optString(A01(32, 10, 91), A01(61, 2, 86))).optBoolean(A01(21, 11, 47), false);
    }

    public final InterstitialAd A06(C1618Hi c1618Hi, String str, String str2) {
        if (c1618Hi == null) {
            return null;
        }
        try {
            InterstitialAd interstitialAd = new InterstitialAd(c1618Hi, str);
            interstitialAd.setExtraHints(new ExtraHints.Builder().extraData(A03(str2, A01(21, 11, 47), true)).build());
            return interstitialAd;
        } catch (JSONException unused) {
            return null;
        }
    }

    public final RewardedVideoAd A07(C1618Hi c1618Hi, String str, String str2) {
        if (c1618Hi == null) {
            return null;
        }
        try {
            RewardedVideoAd rewardedVideoAd = new RewardedVideoAd(c1618Hi, str);
            rewardedVideoAd.setExtraHints(new ExtraHints.Builder().extraData(A03(str2, A01(21, 11, 47), true)).build());
            return rewardedVideoAd;
        } catch (JSONException unused) {
            return null;
        }
    }

    public final void A08(C1618Hi c1618Hi, boolean z) {
        String strA01 = A01(0, 21, 2);
        AbstractC2957oU.A00(c1618Hi).edit().putInt(strA01, z ? 0 : AbstractC2957oU.A00(c1618Hi).getInt(strA01, 0) + 1).apply();
    }

    public final boolean A09(C1618Hi c1618Hi, String str, int i) {
        if (i <= 0) {
            return false;
        }
        try {
            return !A05(str) && A00(c1618Hi, i + (-1)) >= i + (-1);
        } catch (JSONException unused) {
        }
        return false;
    }
}
