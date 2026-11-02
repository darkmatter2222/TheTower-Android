package kotlin;

import com.google.gson.JsonObject;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class qo0 implements q52 {
    public final fl1 a;

    public qo0(fl1 internalJavascriptEngine) {
        Intrinsics.checkNotNullParameter(internalJavascriptEngine, "internalJavascriptEngine");
        this.a = internalJavascriptEngine;
    }

    @Override // kotlin.q52
    public final nr1 a() {
        r31 r31Var = this.a.a;
        Intrinsics.checkNotNull(r31Var);
        return r31Var.c();
    }

    @Override // kotlin.eq1
    public final Object a(JsonObject jsonObject, String str, Continuation continuation) {
        Object objA = this.a.a(jsonObject, "sendMessageToNativeJs", continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.eq1
    public final Object a(String str, String str2, Continuation continuation) {
        return this.a.a(str, str2, continuation);
    }

    @Override // kotlin.q52
    public final Object a(Continuation continuation) {
        Object objC = this.a.c(continuation);
        return objC == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objC : p005kotlin.Unit.INSTANCE;
    }
}
