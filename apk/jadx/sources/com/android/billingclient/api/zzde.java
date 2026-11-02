package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.zzjn;
import com.google.android.gms.internal.play_billing.zzju;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzde {
    static void zza(zzjn zzjnVar, BillingResult billingResult, zzcz zzczVar, int i, int i2) {
        int i3 = zzcy.zza;
        zzczVar.zzb(zzcy.zzb(zzjnVar, i, billingResult, null, zzju.BROADCAST_ACTION_UNSPECIFIED), i2);
    }

    static void zzb(zzjn zzjnVar, BillingResult billingResult, zzcz zzczVar, int i, int i2, String str) {
        int i3 = zzcy.zza;
        zzczVar.zzb(zzcy.zzb(zzjnVar, i, billingResult, str, zzju.BROADCAST_ACTION_UNSPECIFIED), i2);
    }
}
