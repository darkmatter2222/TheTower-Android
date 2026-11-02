package com.google.android.play.deku;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes.dex */
public abstract class n extends c implements o {
    public static o b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.deku.protocol.IDekuBrokerService");
        return iInterfaceQueryLocalInterface instanceof o ? (o) iInterfaceQueryLocalInterface : new m(iBinder);
    }
}
