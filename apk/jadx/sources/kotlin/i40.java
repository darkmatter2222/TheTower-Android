package kotlin;

import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class i40 {
    public static final void a(CoroutineScope coroutineScope, f40 coroutineSequence, Function2 block) {
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(coroutineSequence, "coroutineSequence");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt.launch(coroutineScope, EmptyCoroutineContext.INSTANCE, CoroutineStart.UNDISPATCHED, new h40(coroutineSequence, block, null));
    }
}
