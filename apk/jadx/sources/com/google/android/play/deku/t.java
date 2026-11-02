package com.google.android.play.deku;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class t extends b implements IInterface {
    t(IBinder iBinder) {
        super(iBinder, "com.google.android.play.deku.protocol.IGameStateListener");
    }

    public final void c(String str, Bundle bundle) {
        Parcel parcelA = a();
        parcelA.writeString(str);
        d.c(parcelA, bundle);
        b(1, parcelA);
    }
}
