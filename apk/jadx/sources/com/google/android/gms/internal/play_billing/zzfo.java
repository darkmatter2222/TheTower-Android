package com.google.android.gms.internal.play_billing;

import java.io.IOException;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzfo extends zzex {
    public static final /* synthetic */ int zzb = 0;
    private static final boolean zzc = zzis.zzx();
    Object zza;

    private zzfo() {
        throw null;
    }

    /* synthetic */ zzfo(zzfn zzfnVar) {
    }

    public static int zzx(zzhm zzhmVar) {
        int iZzn = zzhmVar.zzn();
        return zzy(iZzn) + iZzn;
    }

    public static int zzy(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public static int zzz(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    public final void zzA() {
        if (zza() > 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
        if (zza() < 0) {
            throw new IllegalStateException("Wrote more data than expected.");
        }
    }

    public abstract int zza();

    public abstract void zzb(byte b) throws IOException;

    public abstract void zzd(int i, boolean z) throws IOException;

    abstract void zze(byte[] bArr, int i, int i2) throws IOException;

    public abstract void zzf(int i, zzfg zzfgVar) throws IOException;

    public abstract void zzg(zzfg zzfgVar) throws IOException;

    public abstract void zzh(int i, int i2) throws IOException;

    public abstract void zzi(int i) throws IOException;

    public abstract void zzj(int i, long j) throws IOException;

    public abstract void zzk(long j) throws IOException;

    public abstract void zzl(int i, int i2) throws IOException;

    public abstract void zzm(int i) throws IOException;

    public abstract void zzn(zzhm zzhmVar) throws IOException;

    public abstract void zzo(int i, zzhm zzhmVar) throws IOException;

    public abstract void zzp(int i, zzfg zzfgVar) throws IOException;

    public abstract void zzq(int i, String str) throws IOException;

    public abstract void zzr(String str) throws IOException;

    public abstract void zzs(int i, int i2) throws IOException;

    public abstract void zzt(int i, int i2) throws IOException;

    public abstract void zzu(int i) throws IOException;

    public abstract void zzv(int i, long j) throws IOException;

    public abstract void zzw(long j) throws IOException;
}
