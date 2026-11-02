package kotlin;

import java.util.Set;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class oa1 implements lm0 {
    public final /* synthetic */ f0 a;
    public final /* synthetic */ Set b;

    public oa1(f0 f0Var, Set set) {
        this.a = f0Var;
        this.b = set;
    }

    @Override // kotlin.lm0
    public final p005kotlin.Unit a() {
        f0 f0Var = this.a;
        Set newForegroundStateChangeListeners = this.b;
        f0Var.getClass();
        Intrinsics.checkNotNullParameter(newForegroundStateChangeListeners, "newForegroundStateChangeListeners");
        synchronized (f0Var) {
            f0Var.h.addAll(newForegroundStateChangeListeners);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
