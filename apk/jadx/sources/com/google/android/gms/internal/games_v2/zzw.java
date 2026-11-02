package com.google.android.gms.internal.games_v2;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzw extends zza implements IInterface {
    zzw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.games.internal.connect.IGamesConnectService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzd(zzv zzvVar, zzq zzqVar) throws RemoteException {
        Parcel parcelZza = zza();
        int i = zzc.zza;
        parcelZza.writeStrongBinder(zzvVar);
        zzc.zzc(parcelZza, zzqVar);
        zzc(2, parcelZza);
    }
}
