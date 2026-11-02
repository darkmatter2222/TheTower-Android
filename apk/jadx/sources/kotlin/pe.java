package kotlin;

import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationStatus;
import java.util.Map;
import p005kotlin.jvm.internal.Ref;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class pe implements InitializationStatus {
    public final int a;
    public final Map b;

    public pe(Ref.LongRef longRef, Map map) {
        this.a = (int) Duration.m4378getInWholeMillisecondsimpl(longRef.element);
        this.b = map;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.initialization.InitializationStatus
    public final Map getAdapterStatusMap() {
        return this.b;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.initialization.InitializationStatus
    public final int getTotalLatency() {
        return this.a;
    }
}
