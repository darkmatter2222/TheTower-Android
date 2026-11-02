package com.google.android.gms.internal.nearby;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.facebook.ads.AdError;
import com.ironsource.M9;
import com.ironsource.mediationsdk.logger.IronSourceError;

/* JADX INFO: compiled from: com.google.android.gms:play-services-nearby@@18.5.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzkd extends zza implements IInterface {
    zzkd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
    }

    public final void zzd(zzfj zzfjVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzfjVar);
        zzu(2006, parcelZza);
    }

    public final void zze(zzfn zzfnVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzfnVar);
        zzu(2012, parcelZza);
    }

    public final void zzf(zzfp zzfpVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzfpVar);
        zzu(2011, parcelZza);
    }

    public final void zzg(zzjl zzjlVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzjlVar);
        zzu(AdError.INTERSTITIAL_AD_TIMEOUT, parcelZza);
    }

    public final void zzh(zzmg zzmgVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzmgVar);
        zzu(2007, parcelZza);
    }

    public final void zzi(zzmk zzmkVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzmkVar);
        zzu(M9.a.d, parcelZza);
    }

    public final void zzj(zzmo zzmoVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzmoVar);
        zzu(AdError.REMOTE_ADS_SERVICE_ERROR, parcelZza);
    }

    public final void zzk(zzms zzmsVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzmsVar);
        zzu(AdError.INTERNAL_ERROR_CODE, parcelZza);
    }

    public final void zzl(zzmw zzmwVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzmwVar);
        zzu(2003, parcelZza);
    }

    public final void zzm(zzmy zzmyVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzmyVar);
        zzu(2002, parcelZza);
    }

    public final void zzn(zzna zznaVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zznaVar);
        zzu(IronSourceError.ERROR_OLD_INIT_API_APP_KEY_IS_NULL, parcelZza);
    }

    public final void zzo(zznc zzncVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzncVar);
        zzu(AdError.INTERNAL_ERROR_2004, parcelZza);
    }
}
