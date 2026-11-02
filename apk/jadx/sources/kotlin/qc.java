package kotlin;

import android.os.SystemClock;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import java.util.concurrent.ConcurrentHashMap;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class qc implements li1 {
    public final String a;
    public final BaseRequest b;
    public final pc c;
    public final tx d;

    public qc(String requestId, BaseRequest baseRequest, pc adUnitStatsTracker, tx clock) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(adUnitStatsTracker, "adUnitStatsTracker");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.a = requestId;
        this.b = baseRequest;
        this.c = adUnitStatsTracker;
        this.d = clock;
    }

    @Override // kotlin.li1
    public final Object a(ec3 ec3Var, i2 i2Var, ResponseInfo responseInfo, Continuation continuation) {
        pc pcVar = this.c;
        String requestId = this.a;
        String adUnitId = this.b.getAdUnitId();
        this.d.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        pcVar.getClass();
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Duration duration = (Duration) pcVar.c.get(requestId);
        if (duration != null) {
            duration.getRawValue();
            if (adUnitId != null) {
                ConcurrentHashMap concurrentHashMap = pcVar.d;
                Duration.Companion companion = Duration.INSTANCE;
                concurrentHashMap.put(adUnitId, Duration.m4365boximpl(Duration.m4395minusLRDsOJo(DurationKt.toDuration(jElapsedRealtime, DurationUnit.MILLISECONDS), duration.getRawValue())));
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
