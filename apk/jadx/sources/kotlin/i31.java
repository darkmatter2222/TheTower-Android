package kotlin;

import android.os.SystemClock;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class i31 extends SuspendLambda implements Function2 {
    public r31 a;
    public int b;
    public final /* synthetic */ r31 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i31(r31 r31Var, Continuation continuation) {
        super(2, continuation);
        this.c = r31Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new i31(this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new i31(this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005e  */
    /* JADX WARN: Code duplicated, block: B:24:0x0070  */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        i31 i31Var;
        r31 r31Var;
        ir3 ir3Var;
        Object objA;
        r31 r31Var2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        if (i != 0) {
            if (i == 1) {
                p005kotlin.ResultKt.throwOnFailure(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                r31Var2 = this.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
            }
            ir3Var = (ir3) obj;
            r31Var = r31Var2;
            r31Var.w = ir3Var;
            return p005kotlin.Unit.INSTANCE;
        }
        p005kotlin.ResultKt.throwOnFailure(obj);
        r31 r31Var3 = this.c;
        ir3 ir3Var2 = r31Var3.v;
        if (ir3Var2 != null) {
            mb0 mb0Var = r31Var3.d;
            this.b = 1;
            mb0Var.getClass();
            String str = ir3Var2.a;
            Duration.Companion companion = Duration.INSTANCE;
            mb0Var.c.getClass();
            i31Var = this;
            Object objA2 = mb0Var.a("awfllc", str, DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), i31Var);
            if (objA2 != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objA2 = p005kotlin.Unit.INSTANCE;
            }
            if (objA2 != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        r31Var = i31Var.c;
        ir3Var = r31Var.w;
        if (ir3Var == null) {
            mb0 mb0Var2 = r31Var.d;
            i31Var.a = r31Var;
            i31Var.b = 2;
            mb0Var2.getClass();
            objA = mb0.a(mb0Var2, "native:view_load", this);
            if (objA != coroutine_suspended) {
                r31Var2 = r31Var;
                obj = objA;
                ir3Var = (ir3) obj;
                r31Var = r31Var2;
            }
            return coroutine_suspended;
        }
        r31Var.w = ir3Var;
        return p005kotlin.Unit.INSTANCE;
        i31Var = this;
        r31Var = i31Var.c;
        ir3Var = r31Var.w;
        if (ir3Var == null) {
            mb0 mb0Var3 = r31Var.d;
            i31Var.a = r31Var;
            i31Var.b = 2;
            mb0Var3.getClass();
            objA = mb0.a(mb0Var3, "native:view_load", this);
            if (objA != coroutine_suspended) {
                r31Var2 = r31Var;
                obj = objA;
                ir3Var = (ir3) obj;
                r31Var = r31Var2;
            }
            return coroutine_suspended;
        }
        r31Var.w = ir3Var;
        return p005kotlin.Unit.INSTANCE;
    }
}
