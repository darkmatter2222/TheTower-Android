package kotlin;

import com.ironsource.C3510b4;
import kotlinx.coroutines.DelayKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Ref;
import p005kotlin.text.StringsKt;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class mq1 extends SuspendLambda implements Function1 {
    public String a;
    public int b;
    public final /* synthetic */ Ref.BooleanRef c;
    public final /* synthetic */ yq1 d;
    public final /* synthetic */ String e;
    public final /* synthetic */ Ref.ObjectRef f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mq1(Ref.BooleanRef booleanRef, yq1 yq1Var, String str, Ref.ObjectRef objectRef, Continuation continuation) {
        super(1, continuation);
        this.c = booleanRef;
        this.d = yq1Var;
        this.e = str;
        this.f = objectRef;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new mq1(this.c, this.d, this.e, this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((mq1) create((Continuation) obj)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        CharSequence charSequence;
        yq1 yq1Var;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            if (!this.c.element) {
                eb3 eb3Var = this.d.f.s;
                eb3Var.getClass();
                Duration.Companion companion = Duration.INSTANCE;
                long rawValue = ((Duration) eb3Var.a("gads:sdk_core_update_delay_sec", wm2.a(120, DurationUnit.SECONDS, "gads:sdk_core_update_delay_sec", C3510b4.i.W), yr.l)).getRawValue();
                this.b = 1;
                if (DelayKt.m4512delayVtjQ1oo(rawValue, this) != coroutine_suspended) {
                }
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            p005kotlin.ResultKt.throwOnFailure(obj);
        } else {
            if (i != 2) {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                String str2 = this.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                return str2;
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        str = (String) obj;
        if (!this.c.element && (charSequence = (CharSequence) this.f.element) != null && !StringsKt.isBlank(charSequence) && str != null && !StringsKt.isBlank(str)) {
            yq1Var = this.d;
            this.a = str;
            this.b = 3;
            if (yq1.a(yq1Var, str, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return str;
        yq1 yq1Var2 = this.d;
        String str3 = this.e;
        this.b = 2;
        obj = yq1.b(yq1Var2, str3, this);
        if (obj != coroutine_suspended) {
            str = (String) obj;
            if (!this.c.element) {
                yq1Var = this.d;
                this.a = str;
                this.b = 3;
                if (yq1.a(yq1Var, str, this) == coroutine_suspended) {
                }
            }
            return str;
        }
        return coroutine_suspended;
    }
}
