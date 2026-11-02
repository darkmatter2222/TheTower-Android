package com.facebook.ads.redexgen.X;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Jr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractBinderC1676Jr extends Binder {
    public static String[] A00 = {"ffE", "sdO4olSjVqEdMqQVERJmpH", "V5ZNgdZxj", "xN21IZnnCVsOAG7", "le9pvkcGozoJcN0rgEGWAi904lq", "iM3YLscjMRqpeZ6LGtl1sZgubTh", "r9D9IxE", "oJWJnsMa3mxPolzWOg5TaX2nVEsKAdwZ"};
    public static final int A01;

    static {
        A01 = N1.A02 >= 30 ? IBinder.getSuggestedMaxIpcSizeBytes() : 65536;
    }

    public static AbstractC14149l<Bundle> A00(IBinder iBinder) {
        C12944e c12944eA01 = AbstractC14149l.A01();
        int i = 0;
        int i2 = 1;
        while (i2 != 0) {
            Parcel parcelObtain = Parcel.obtain();
            if (A00[3].length() == 21) {
                throw new RuntimeException();
            }
            String[] strArr = A00;
            strArr[4] = "ObW4G5OfoNZQaJSbaKlFQzia2U1";
            strArr[1] = "tAZqcWoM2jmMSNwdAp7onK";
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInt(i);
                try {
                    iBinder.transact(1, parcelObtain, parcelObtain2, 0);
                    while (true) {
                        i2 = parcelObtain2.readInt();
                        if (i2 == 1) {
                            c12944eA01.A04((Bundle) AbstractC1722Ln.A01(parcelObtain2.readBundle()));
                            i++;
                        }
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (RemoteException e) {
                    throw new RuntimeException(e);
                }
            } catch (Throwable th) {
                parcelObtain2.recycle();
                parcelObtain.recycle();
                throw th;
            }
        }
        return c12944eA01.A05();
    }
}
