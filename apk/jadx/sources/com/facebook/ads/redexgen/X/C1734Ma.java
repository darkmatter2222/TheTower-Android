package com.facebook.ads.redexgen.X;

import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ma, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1734Ma extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {
    public static String[] A01 = {"qJ49io2EbpxURWUKkMAdMHlA9JYN5Nx4", "mfwonON7wXzSPnH255f9j8pE1fefvDwu", "FvYkXdUo0reKOi4up0muwTRn3FqaqpLa", "c6GPrSjIoHZjgGAXu1GV7xSWA7eqy98w", "JEE49BVEpsHR3WAFPo4mVlXWEy9GYai5", "WI1VXowVkYo8LKiTqFwx9ewX2jx", "4YwPPYvSx3JtrtRsePNFwywRSMcRfEvC", "iRVdC"};
    public final C1738Me A00;

    public C1734Ma(C1738Me c1738Me) {
        this.A00 = c1738Me;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0033  */
    @Override // android.telephony.TelephonyCallback.DisplayInfoListener
    public final void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
        boolean z;
        int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
        if (overrideNetworkType != 3) {
            String[] strArr = A01;
            if (strArr[3].charAt(26) != strArr[1].charAt(26)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[3] = "Aye3dtDH7Uo1HR1wrzzbgtOGJKeq1ANF";
            strArr2[1] = "zcbTySA6e1TwkaXxCT9LVPuVYYe2fXuv";
            if (overrideNetworkType == 4 || overrideNetworkType == 5) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = true;
        }
        this.A00.A07(z ? 10 : 5);
    }
}
