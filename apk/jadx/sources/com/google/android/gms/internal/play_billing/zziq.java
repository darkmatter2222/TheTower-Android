package com.google.android.gms.internal.play_billing;

import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zziq extends zzir {
    zziq(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.play_billing.zzir
    public final double zza(Object obj, long j) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j));
    }

    @Override // com.google.android.gms.internal.play_billing.zzir
    public final float zzb(Object obj, long j) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j));
    }

    /* JADX WARN: Failed to inline method: com.google.android.gms.internal.play_billing.zzis.zzi(java.lang.Object, long, boolean):void */
    /* JADX WARN: Failed to inline method: com.google.android.gms.internal.play_billing.zzis.zzj(java.lang.Object, long, boolean):void */
    /* JADX WARN: Unknown register number '(r5v0 'z' boolean)' in method call: com.google.android.gms.internal.play_billing.zzis.zzj(java.lang.Object, long, boolean):void */
    /* JADX WARN: Unknown register number '(r5v0 boolean)' in method call: com.google.android.gms.internal.play_billing.zzis.zzi(java.lang.Object, long, boolean):void */
    @Override // com.google.android.gms.internal.play_billing.zzir
    public final void zzc(Object obj, long j, boolean z) {
        if (zzis.zzb) {
            zzis.zzi(obj, j, z);
        } else {
            zzis.zzj(obj, j, z);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzir
    public final void zzd(Object obj, long j, byte b) {
        if (zzis.zzb) {
            zzis.zzC(obj, j, b);
        } else {
            zzis.zzD(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzir
    public final void zze(Object obj, long j, double d) {
        this.zza.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.play_billing.zzir
    public final void zzf(Object obj, long j, float f) {
        this.zza.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.play_billing.zzir
    public final boolean zzg(Object obj, long j) {
        return zzis.zzb ? zzis.zzt(obj, j) : zzis.zzu(obj, j);
    }
}
