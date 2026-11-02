package com.appsflyer.internal.connector.purcahse;

/* JADX INFO: loaded from: classes2.dex */
public class AFPurchaseConnectorA1m {
    public static void getPackageName(byte[] bArr, byte b, long j) {
        for (int i = 0; i < bArr.length; i++) {
            if (((1 << i) & j) != 0) {
                bArr[i] = (byte) (bArr[i] ^ b);
            }
        }
    }
}
