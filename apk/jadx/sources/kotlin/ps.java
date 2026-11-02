package kotlin;

import android.content.Context;
import android.os.BatteryManager;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ps extends ou {
    public final BatteryManager l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ps(ex0 flags, Context context, CoroutineScope backgroundScope, tx clock, g83 rootTraceCreator, f0 activityTracker) {
        super(clock, backgroundScope, rootTraceCreator, flags, activityTracker);
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        this.l = (BatteryManager) context.getSystemService(BatteryManager.class);
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.BATTERY;
    }

    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        return new q01(new os(((double) this.l.getIntProperty(4)) / 100.0d, this.l.isCharging()));
    }
}
