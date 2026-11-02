package com.google.android.play.deku;

import android.graphics.Rect;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class r extends b implements s {
    r(IBinder iBinder) {
        super(iBinder, "com.google.android.play.deku.protocol.IDekuServiceController");
    }

    @Override // com.google.android.play.deku.s
    public final void c(int i, String str, String str2, Bundle bundle) {
        Parcel parcelA = a();
        parcelA.writeInt(i);
        parcelA.writeString(str);
        parcelA.writeString(str2);
        d.c(parcelA, bundle);
        b(2, parcelA);
    }

    @Override // com.google.android.play.deku.s
    public final void d(String str, Bundle bundle) {
        Parcel parcelA = a();
        parcelA.writeString(str);
        d.c(parcelA, bundle);
        b(3, parcelA);
    }

    @Override // com.google.android.play.deku.s
    public final void e(String str, Bundle bundle) {
        Parcel parcelA = a();
        parcelA.writeString(str);
        d.c(parcelA, bundle);
        b(8, parcelA);
    }

    @Override // com.google.android.play.deku.s
    public final void f(String str, Bundle bundle) {
        Parcel parcelA = a();
        parcelA.writeString(str);
        d.c(parcelA, bundle);
        b(6, parcelA);
    }

    @Override // com.google.android.play.deku.s
    public final void g(String str, IBinder iBinder, Bundle bundle) {
        Parcel parcelA = a();
        parcelA.writeString(str);
        parcelA.writeStrongBinder(iBinder);
        d.c(parcelA, bundle);
        b(5, parcelA);
    }

    @Override // com.google.android.play.deku.s
    public final void h(String str, Bundle bundle) {
        Parcel parcelA = a();
        parcelA.writeString(str);
        d.c(parcelA, bundle);
        b(4, parcelA);
    }

    @Override // com.google.android.play.deku.s
    public final void i(String str, Bundle bundle) {
        Parcel parcelA = a();
        parcelA.writeString(str);
        d.c(parcelA, bundle);
        b(7, parcelA);
    }

    @Override // com.google.android.play.deku.s
    public final void j(Rect rect, int i, Bundle bundle) {
        Parcel parcelA = a();
        d.c(parcelA, rect);
        parcelA.writeInt(i);
        d.c(parcelA, bundle);
        b(9, parcelA);
    }

    @Override // com.google.android.play.deku.s
    public final void k(IBinder iBinder, Bundle bundle) {
        Parcel parcelA = a();
        parcelA.writeStrongBinder(iBinder);
        d.c(parcelA, bundle);
        b(1, parcelA);
    }
}
