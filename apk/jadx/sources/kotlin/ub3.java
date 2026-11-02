package kotlin;

import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ub3 {
    public final ur3 a;
    public final Channel b;

    public ub3(ur3 traceLogger, CoroutineScope backgroundScope) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = traceLogger;
        this.b = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
        xs3.a(backgroundScope, new tb3(this, null));
    }

    public final void a(Function1 task) {
        Intrinsics.checkNotNullParameter(task, "task");
        this.b.mo4525trySendJP2dKIU(task);
    }
}
