package kotlin;

import android.content.Context;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class z32 extends ms {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z32(Context context, CoroutineScope uiScope, jd viewabilityEventEmitter, ao0 displayUtil, tx clock, ex0 flags, f0 activityTracker, i2 adConfiguration) {
        super(context, uiScope, viewabilityEventEmitter, displayUtil, clock, flags, j53.i, activityTracker, adConfiguration);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(viewabilityEventEmitter, "viewabilityEventEmitter");
        Intrinsics.checkNotNullParameter(displayUtil, "displayUtil");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
    }
}
