package kotlin;

import java.util.Set;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class fc1 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public fc1(dw2 dw2Var, sc3 sc3Var) {
        this.a = dw2Var;
        this.b = sc3Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        f0 activityTracker = (f0) this.a.get();
        Set foregroundStateChangeListeners = (Set) this.b.get();
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(foregroundStateChangeListeners, "foregroundStateChangeListeners");
        return new oa1(activityTracker, foregroundStateChangeListeners);
    }
}
