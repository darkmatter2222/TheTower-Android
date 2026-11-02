package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.AdUnitQualitySignals;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.AppStats;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class d13 implements rh3 {
    public final pc a;
    public final BaseRequest b;
    public final qn c;
    public final AppStats d;

    public d13(pc adUnitStatsTracker, BaseRequest request, qn appState, AppStats appStats) {
        Intrinsics.checkNotNullParameter(adUnitStatsTracker, "adUnitStatsTracker");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(appStats, "appStats");
        this.a = adUnitStatsTracker;
        this.b = request;
        this.c = appState;
        this.d = appStats;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.QUALITY;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002b  */
    /* JADX WARN: Code duplicated, block: B:13:0x0035  */
    /* JADX WARN: Code duplicated, block: B:14:0x003a  */
    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        Integer num;
        pc pcVar;
        String adUnitId;
        long rawValue;
        Duration duration;
        pc pcVar2 = this.a;
        String adUnitId2 = this.b.getAdUnitId();
        if (adUnitId2 != null) {
            num = (Integer) pcVar2.b.get(adUnitId2);
            if (num == null) {
            }
            int iIntValue = num.intValue();
            pcVar = this.a;
            adUnitId = this.b.getAdUnitId();
            if (adUnitId != null) {
                duration = (Duration) pcVar.d.get(adUnitId);
                if (duration != null) {
                    rawValue = duration.getRawValue();
                }
                return new q01(new c13(this.d, this.c.f.get(), new AdUnitQualitySignals(Boxing.boxInt(iIntValue), Boxing.boxLong(Duration.m4378getInWholeMillisecondsimpl(rawValue)))));
            }
            pcVar.getClass();
            rawValue = pc.e;
            return new q01(new c13(this.d, this.c.f.get(), new AdUnitQualitySignals(Boxing.boxInt(iIntValue), Boxing.boxLong(Duration.m4378getInWholeMillisecondsimpl(rawValue)))));
        }
        pcVar2.getClass();
        num = 0;
        int iIntValue2 = num.intValue();
        pcVar = this.a;
        adUnitId = this.b.getAdUnitId();
        if (adUnitId != null) {
            duration = (Duration) pcVar.d.get(adUnitId);
            if (duration != null) {
                rawValue = duration.getRawValue();
            }
            return new q01(new c13(this.d, this.c.f.get(), new AdUnitQualitySignals(Boxing.boxInt(iIntValue2), Boxing.boxLong(Duration.m4378getInWholeMillisecondsimpl(rawValue)))));
        }
        pcVar.getClass();
        rawValue = pc.e;
        return new q01(new c13(this.d, this.c.f.get(), new AdUnitQualitySignals(Boxing.boxInt(iIntValue2), Boxing.boxLong(Duration.m4378getInWholeMillisecondsimpl(rawValue)))));
    }
}
