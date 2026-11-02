package kotlin;

import java.util.Map;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class jc0 implements r41 {
    public final CoroutineScope a;

    public jc0(CoroutineScope uiScope) {
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        this.a = uiScope;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        boolean zAreEqual = Intrinsics.areEqual(map.get("custom_close"), "1");
        CoroutineScope coroutineScope = this.a;
        ic0 block = new ic0(r31Var, zAreEqual, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_CUSTOM_CLOSE;
    }
}
