package kotlin;

import android.os.SystemClock;
import com.google.common.base.Splitter;
import com.ironsource.C3510b4;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class w extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ f0 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(f0 f0Var, Continuation continuation) {
        super(2, continuation);
        this.b = f0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new w(this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new w(this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        p005kotlin.Unit unit;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ex0 ex0Var = this.b.f;
            ex0Var.getClass();
            Duration.Companion companion = Duration.INSTANCE;
            long rawValue = ((Duration) ex0Var.a("gads:app_activity_tracker:notify_background_listeners_delay_ms", wm2.a(500, DurationUnit.MILLISECONDS, "gads:app_activity_tracker:notify_background_listeners_delay_ms", C3510b4.i.W), yr.j)).getRawValue();
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
        f0 f0Var = this.b;
        synchronized (f0Var) {
            if (f0Var.l && !f0Var.i()) {
                Splitter splitter = f01.a;
                f01.b("App is now backgrounded", null);
                f0Var.o = true;
                Duration.Companion companion2 = Duration.INSTANCE;
                f0Var.g.getClass();
                long duration = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
                for (ox0 ox0Var : f0Var.h) {
                    CoroutineScope coroutineScope = f0Var.e;
                    v block = new v(ox0Var, duration, null);
                    EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                    Intrinsics.checkNotNullParameter(context, "context");
                    Intrinsics.checkNotNullParameter(block, "block");
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                }
            }
            unit = p005kotlin.Unit.INSTANCE;
        }
        return unit;
    }
}
