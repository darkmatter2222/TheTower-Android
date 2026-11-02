package kotlin;

import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class pu extends sh3 {
    public final ou f;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ pu(ou ouVar, long j) {
        ph3 ph3Var = ph3.BACKGROUND;
        qf3 qf3Var = qf3.ASYNC;
        lg3 lg3Var = lg3.REQUIRED;
        this(ouVar, qf3Var, ph3Var, j, null, 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public pu(ou source, qf3 executionType, ph3 scope, long j, Function0 function0) {
        lg3 importance = lg3.OPTIONAL;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(importance, "importance");
        Intrinsics.checkNotNullParameter(executionType, "executionType");
        Intrinsics.checkNotNullParameter(scope, "scope");
        super(source, importance, executionType, scope, j, function0, 0);
        this.f = source;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ pu(ou ouVar, qf3 qf3Var, ph3 ph3Var, long j, Function0 function0, int i) {
        this(ouVar, qf3Var, ph3Var, j, function0);
        lg3 lg3Var = lg3.REQUIRED;
    }

    @Override // kotlin.sh3
    public final rh3 b() {
        return this.f;
    }
}
