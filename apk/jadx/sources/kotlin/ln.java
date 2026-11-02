package kotlin;

import androidx.datastore.core.DataStore;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ln extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ pn b;
    public final /* synthetic */ jm c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ln(pn pnVar, jm jmVar, Continuation continuation) {
        super(2, continuation);
        this.b = pnVar;
        this.c = jmVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ln(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new ln(this.b, this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mm mmVar = this.b.b;
            jm jmVar = this.c;
            this.a = 1;
            Object objUpdateData = ((DataStore) mmVar.a.get()).updateData(new lm(jmVar, null), this);
            if (objUpdateData != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objUpdateData = p005kotlin.Unit.INSTANCE;
            }
            if (objUpdateData == coroutine_suspended) {
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
