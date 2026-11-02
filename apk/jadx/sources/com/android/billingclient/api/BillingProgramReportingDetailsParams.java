package com.android.billingclient.api;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class BillingProgramReportingDetailsParams {
    private final int zza;

    /* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
    public static final class Builder {
        private int zza = 0;

        private Builder() {
        }

        /* synthetic */ Builder(zzda zzdaVar) {
        }

        public BillingProgramReportingDetailsParams build() {
            int i = this.zza;
            if (i == 0) {
                throw new IllegalArgumentException("Billing program is not specified.");
            }
            if (i != 5) {
                return new BillingProgramReportingDetailsParams(this, null);
            }
            throw new IllegalArgumentException("Developer billing type must be specified for side by side billing.");
        }

        public Builder setBillingProgram(int i) {
            this.zza = i;
            return this;
        }
    }

    /* synthetic */ BillingProgramReportingDetailsParams(Builder builder, zzda zzdaVar) {
        this.zza = builder.zza;
    }

    public static Builder newBuilder() {
        return new Builder(null);
    }

    public int getBillingProgram() {
        return this.zza;
    }
}
