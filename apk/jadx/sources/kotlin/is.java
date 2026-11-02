package kotlin;

import java.lang.ref.WeakReference;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class is implements ox0 {
    public final WeakReference a;
    public final f0 b;

    public is(WeakReference monitorReference, f0 activityTracker) {
        Intrinsics.checkNotNullParameter(monitorReference, "monitorReference");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        this.a = monitorReference;
        this.b = activityTracker;
    }

    @Override // kotlin.ox0
    public final Object b(long j, Continuation continuation) throws InterruptedException {
        ms msVar = (ms) this.a.get();
        if (msVar != null) {
            Object objB = msVar.b(j, continuation);
            return objB == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : p005kotlin.Unit.INSTANCE;
        }
        this.b.a(this);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.ox0
    public final Object d(long j, Continuation continuation) throws InterruptedException {
        ms msVar = (ms) this.a.get();
        if (msVar != null) {
            Object objD = msVar.d(j, continuation);
            return objD == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objD : p005kotlin.Unit.INSTANCE;
        }
        this.b.a(this);
        return p005kotlin.Unit.INSTANCE;
    }
}
