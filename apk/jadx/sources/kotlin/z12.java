package kotlin;

import com.google.gson.JsonArray;
import java.util.ArrayList;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.channels.ProducerScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class z12 extends SuspendLambda implements Function2 {
    public int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ JsonArray c;
    public final /* synthetic */ int d;
    public final /* synthetic */ c22 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z12(int i, c22 c22Var, JsonArray jsonArray, Continuation continuation) {
        super(2, continuation);
        this.c = jsonArray;
        this.d = i;
        this.e = c22Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        z12 z12Var = new z12(this.d, this.e, this.c, continuation);
        z12Var.b = obj;
        return z12Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((z12) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ProducerScope producerScope = (ProducerScope) this.b;
            int size = this.c.size();
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < this.d; i2++) {
                c22 c22Var = this.e;
                arrayList.add(BuildersKt__Builders_commonKt.launch$default(c22Var.t, null, null, new y12(c22Var, i2, size, this.c, producerScope, null), 3, null));
            }
            this.a = 1;
            if (AwaitKt.joinAll(arrayList, this) == coroutine_suspended) {
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
