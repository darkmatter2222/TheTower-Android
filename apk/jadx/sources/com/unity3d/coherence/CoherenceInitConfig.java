package com.unity3d.coherence;

import android.content.Context;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class CoherenceInitConfig {
    public static final int SOURCE_ADS = 2;
    private final Context context;
    private final int source;

    public static final class Builder {
        private final Context context;
        private int source;

        public Builder(Context context) {
            Context applicationContext = ((Context) Objects.requireNonNull(context, "context must not be null")).getApplicationContext();
            this.context = applicationContext != null ? applicationContext : context;
        }

        public CoherenceInitConfig build() {
            return new CoherenceInitConfig(this.context, this.source);
        }

        public Builder setSource(int i) {
            this.source = i;
            return this;
        }
    }

    private CoherenceInitConfig(Context context, int i) {
        this.context = context;
        this.source = i;
    }

    Context getContext() {
        return this.context;
    }

    int getSource() {
        return this.source;
    }
}
