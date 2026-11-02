package kotlin;

import kotlinx.coroutines.CoroutineScope;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class v52 extends yr1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v52(g83 rootTraceCreator, o21 gmaUtil, CoroutineScope backgroundScope, ex0 flags) {
        super(rootTraceCreator, js3.a(), gmaUtil, backgroundScope, flags);
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
    }
}
