package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sl implements rh3 {
    public final f0 a;

    public sl(f0 activityTracker) {
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        this.a = activityTracker;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.APP_OPEN;
    }

    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        boolean z;
        f0 f0Var = this.a;
        synchronized (f0Var) {
            z = f0Var.n;
        }
        return new q01(new rl(z));
    }
}
