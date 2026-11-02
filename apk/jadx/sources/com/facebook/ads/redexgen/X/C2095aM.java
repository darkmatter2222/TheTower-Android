package com.facebook.ads.redexgen.X;

import android.os.Parcel;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2095aM {
    public final int A00;
    public final long A01;

    public C2095aM(int i, long j) {
        this.A00 = i;
        this.A01 = j;
    }

    public /* synthetic */ C2095aM(int i, long j, C2094aL c2094aL) {
        this(i, j);
    }

    public static C2095aM A00(Parcel parcel) {
        return new C2095aM(parcel.readInt(), parcel.readLong());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02(Parcel parcel) {
        parcel.writeInt(this.A00);
        parcel.writeLong(this.A01);
    }
}
