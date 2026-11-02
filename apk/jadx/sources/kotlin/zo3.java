package kotlin;

import com.google.android.gms.ads.rewarded.RewardItem;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class zo3 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ gp3 b;
    public final /* synthetic */ RewardItem c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zo3(gp3 gp3Var, RewardItem rewardItem, Continuation continuation) {
        super(2, continuation);
        this.b = gp3Var;
        this.c = rewardItem;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zo3(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new zo3(this.b, this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            f73 f73Var = this.b.d;
            yo3 yo3Var = new yo3(this.c);
            this.a = 1;
            if (f73Var.a(yo3Var, this) == coroutine_suspended) {
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
