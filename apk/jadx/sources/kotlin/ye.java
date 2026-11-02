package kotlin;

import java.util.Map;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class ye extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ hf b;
    public final /* synthetic */ Map.Entry c;
    public final /* synthetic */ Ref.LongRef d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ye(hf hfVar, Map.Entry entry, Ref.LongRef longRef, Continuation continuation) {
        super(2, continuation);
        this.b = hfVar;
        this.c = entry;
        this.d = longRef;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ye(this.b, this.c, this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ye) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            hf hfVar = this.b;
            Object key = this.c.getKey();
            Intrinsics.checkNotNullExpressionValue(key, "<get-key>(...)");
            Object value = this.c.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
            long j = this.d.element;
            this.a = 1;
            if (hf.a(hfVar, (String) key, (be) value, j, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
