package kotlin;

import com.ironsource.C3510b4;
import kotlinx.coroutines.DelayKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class j0 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ k0 b;
    public final /* synthetic */ int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j0(k0 k0Var, int i, Continuation continuation) {
        super(2, continuation);
        this.b = k0Var;
        this.c = i;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new j0(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new j0(this.b, this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ex0 ex0Var = this.b.b;
            ex0Var.getClass();
            Duration.Companion companion = Duration.INSTANCE;
            long rawValue = ((Duration) ex0Var.a("gads:ad_activity_delegate_map_retain_duration", wm2.a(60, DurationUnit.SECONDS, "gads:ad_activity_delegate_map_retain_duration", C3510b4.i.W), yr.l)).getRawValue();
            this.a = 1;
            if (DelayKt.m4512delayVtjQ1oo(rawValue, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        this.b.d.remove(Boxing.boxInt(this.c));
        return p005kotlin.Unit.INSTANCE;
    }
}
