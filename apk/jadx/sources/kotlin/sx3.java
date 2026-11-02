package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class sx3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Map a;
    public final /* synthetic */ q41 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sx3(Map map, q41 q41Var, Continuation continuation) {
        super(2, continuation);
        this.a = map;
        this.b = q41Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new sx3(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new sx3(this.a, this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        String str = (String) this.a.get("src");
        if (str != null && !StringsKt.isBlank(str)) {
            this.b.a(str);
            return p005kotlin.Unit.INSTANCE;
        }
        xs3.a("Src parameter missing from video GMSG: " + this.a, null, 6);
        this.b.a((String) null);
        return p005kotlin.Unit.INSTANCE;
    }
}
