package com.google.android.play.deku;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class p extends c implements q {
    @Override // com.google.android.play.deku.c
    protected final boolean a(int i, Parcel parcel) {
        s rVar = null;
        t tVar = null;
        t tVar2 = null;
        switch (i) {
            case 1:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.play.deku.protocol.IDekuServiceController");
                    rVar = iInterfaceQueryLocalInterface instanceof s ? (s) iInterfaceQueryLocalInterface : new r(strongBinder);
                }
                Bundle bundle = (Bundle) d.a(parcel, Bundle.CREATOR);
                d.b(parcel);
                c(rVar, bundle);
                return true;
            case 2:
                int i2 = parcel.readInt();
                d.b(parcel);
                e(i2);
                return true;
            case 3:
                Bundle bundle2 = (Bundle) d.a(parcel, Bundle.CREATOR);
                d.b(parcel);
                b(bundle2);
                return true;
            case 4:
                Bundle bundle3 = (Bundle) d.a(parcel, Bundle.CREATOR);
                d.b(parcel);
                d(bundle3);
                return true;
            case 5:
                int i3 = parcel.readInt();
                d.b(parcel);
                f(i3);
                return true;
            case 6:
                int i4 = d.a;
                boolean z = parcel.readInt() != 0;
                d.b(parcel);
                g(z);
                return true;
            case 7:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.play.deku.protocol.IGameStateListener");
                    tVar2 = iInterfaceQueryLocalInterface2 instanceof t ? (t) iInterfaceQueryLocalInterface2 : new t(strongBinder2);
                }
                String string = parcel.readString();
                Bundle bundle4 = (Bundle) d.a(parcel, Bundle.CREATOR);
                d.b(parcel);
                h(tVar2, string, bundle4);
                return true;
            case 8:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.play.deku.protocol.IGameStateListener");
                    tVar = iInterfaceQueryLocalInterface3 instanceof t ? (t) iInterfaceQueryLocalInterface3 : new t(strongBinder3);
                }
                String string2 = parcel.readString();
                d.b(parcel);
                i(tVar, string2);
                return true;
            default:
                return false;
        }
    }
}
