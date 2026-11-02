package com.google.android.gms.internal.play_billing;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjt implements zzgj {
    static final zzgj zza = new zzjt();

    private zzjt() {
    }

    @Override // com.google.android.gms.internal.play_billing.zzgj
    public final boolean zza(int i) {
        zzju zzjuVar;
        if (i == 0) {
            zzjuVar = zzju.BROADCAST_ACTION_UNSPECIFIED;
        } else if (i == 1) {
            zzjuVar = zzju.PURCHASES_UPDATED_ACTION;
        } else if (i == 2) {
            zzjuVar = zzju.LOCAL_PURCHASES_UPDATED_ACTION;
        } else if (i == 3) {
            zzjuVar = zzju.ALTERNATIVE_BILLING_ACTION;
        } else if (i != 4) {
            zzjuVar = i != 5 ? null : zzju.PLAY_BILLING_ACTIVITY_CREATED_ACTION;
        } else {
            zzjuVar = zzju.IN_APP_BILLING_RESULT_UPDATE_ACTION;
        }
        return zzjuVar != null;
    }
}
