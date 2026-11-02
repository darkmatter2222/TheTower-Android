package kotlin;

import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import com.google.common.base.Splitter;
import com.ironsource.C3510b4;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class a73 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;
    public final /* synthetic */ mq0 d;
    public final /* synthetic */ RewardItem e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a73(String str, String str2, mq0 mq0Var, Continuation continuation, RewardItem rewardItem) {
        super(2, continuation);
        this.b = str;
        this.c = str2;
        this.d = mq0Var;
        this.e = rewardItem;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new a73(this.b, this.c, this.d, continuation, this.e);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((a73) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Splitter splitter = f01.a;
            f01.b("Invoking function [" + this.b + "] asynchronously on listener [" + this.c + C3510b4.j.e, null);
            h73 h73Var = (h73) this.d;
            RewardItem rewardItem = this.e;
            this.a = 1;
            if (h73Var.a(rewardItem, this) == coroutine_suspended) {
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
