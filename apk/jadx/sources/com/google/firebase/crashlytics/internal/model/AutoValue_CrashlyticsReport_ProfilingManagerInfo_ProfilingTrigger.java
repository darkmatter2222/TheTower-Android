package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_CrashlyticsReport_ProfilingManagerInfo_ProfilingTrigger extends CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger {
    private final int trigger;

    static final class Builder extends CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger.Builder {
        private byte set$0;
        private int trigger;

        Builder() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger.Builder
        public CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger build() {
            if (this.set$0 == 1) {
                return new AutoValue_CrashlyticsReport_ProfilingManagerInfo_ProfilingTrigger(this.trigger);
            }
            throw new IllegalStateException("Missing required properties: trigger");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger.Builder
        public CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger.Builder setTrigger(int i) {
            this.trigger = i;
            this.set$0 = (byte) (this.set$0 | 1);
            return this;
        }
    }

    private AutoValue_CrashlyticsReport_ProfilingManagerInfo_ProfilingTrigger(int i) {
        this.trigger = i;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger) && this.trigger == ((CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger) obj).getTrigger();
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger
    public int getTrigger() {
        return this.trigger;
    }

    public int hashCode() {
        return 1000003 ^ this.trigger;
    }

    public String toString() {
        return "ProfilingTrigger{trigger=" + this.trigger + "}";
    }
}
