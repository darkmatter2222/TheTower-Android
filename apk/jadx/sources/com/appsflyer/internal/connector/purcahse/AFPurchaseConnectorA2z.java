package com.appsflyer.internal.connector.purcahse;

/* JADX INFO: loaded from: classes2.dex */
public final class AFPurchaseConnectorA2z {
    public int getOneTimePurchaseOfferDetails;
    public int getPackageName;

    public static char[] getOneTimePurchaseOfferDetails(long j, char[] cArr, int i) {
        int length = cArr.length;
        char[] cArr2 = new char[length];
        int i2 = 0;
        int i3 = 0;
        int i4 = 4;
        while (i2 < cArr.length) {
            if ((((j >>> i2) & 1) != i || i3 >= 4) && i4 < length) {
                cArr2[i4] = cArr[i2];
                i4++;
            } else {
                cArr2[i3] = cArr[i2];
                i3++;
            }
            i2++;
        }
        return cArr2;
    }
}
