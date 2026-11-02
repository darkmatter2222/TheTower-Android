package kotlin;

import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class mu0 implements by1 {
    public final r31 a;
    public final CoroutineScope b;

    public mu0(r31 gmaWebView, CoroutineScope uiScope) {
        Intrinsics.checkNotNullParameter(gmaWebView, "gmaWebView");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        this.a = gmaWebView;
        this.b = uiScope;
    }

    @Override // kotlin.by1
    public final Object d(Continuation continuation) {
        ay0 ay0Var = this.a.p;
        if (ay0Var != null) {
            CoroutineScope coroutineScope = this.b;
            lu0 block = new lu0(ay0Var, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
