package kotlin;

import java.util.UUID;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class x21 extends SuspendLambda implements Function2 {
    public final /* synthetic */ r31 a;
    public final /* synthetic */ String b;
    public final /* synthetic */ UUID c;
    public final /* synthetic */ String d;
    public final /* synthetic */ String e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x21(r31 r31Var, String str, UUID uuid, String str2, String str3, Continuation continuation) {
        super(2, continuation);
        this.a = r31Var;
        this.b = str;
        this.c = uuid;
        this.d = str2;
        this.e = str3;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new x21(this.a, this.b, this.c, this.d, this.e, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((x21) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        this.a.evaluateJavascript(this.b + "({\"id\": \"" + this.c + "\", \"args\": " + this.d + ", \"use_javascript_interface\": \"" + this.e + "\"});", null);
        return p005kotlin.Unit.INSTANCE;
    }
}
