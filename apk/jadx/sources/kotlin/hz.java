package kotlin;

import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class hz implements jr0 {
    public final dw2 a;

    public hz(ol0 ol0Var) {
        this.a = ol0Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        CoroutineContext context = (CoroutineContext) this.a.get();
        Intrinsics.checkNotNullParameter(context, "context");
        return (CoroutineScope) kq2.b(CoroutineScopeKt.CoroutineScope(context.plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))));
    }
}
