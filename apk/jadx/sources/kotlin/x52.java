package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class x52 implements ai1 {
    public final q52 a;

    public x52(q52 nativeJavascriptEngine) {
        Intrinsics.checkNotNullParameter(nativeJavascriptEngine, "nativeJavascriptEngine");
        this.a = nativeJavascriptEngine;
    }

    @Override // kotlin.ai1
    public final Object a(Continuation continuation) {
        Object objA = this.a.a(continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }
}
