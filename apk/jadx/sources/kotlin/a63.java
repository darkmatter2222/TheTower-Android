package kotlin;

import android.net.Uri;
import java.util.Map;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class a63 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ c63 b;
    public final /* synthetic */ Uri c;
    public final /* synthetic */ i2 d;
    public final /* synthetic */ zy e;
    public final /* synthetic */ v3 f;
    public final /* synthetic */ Boolean g;
    public final /* synthetic */ ks3 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a63(c63 c63Var, Uri uri, i2 i2Var, zy zyVar, v3 v3Var, Boolean bool, ks3 ks3Var, Continuation continuation) {
        super(2, continuation);
        this.b = c63Var;
        this.c = uri;
        this.d = i2Var;
        this.e = zyVar;
        this.f = v3Var;
        this.g = bool;
        this.h = ks3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new a63(this.b, this.c, this.d, this.e, this.f, this.g, this.h, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((a63) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            c63 c63Var = this.b;
            Uri uri = this.c;
            ga2 ga2Var = this.d.x0;
            Intrinsics.checkNotNull(ga2Var);
            ha2 ha2Var = ga2Var.a;
            Duration.Companion companion = Duration.INSTANCE;
            long duration = DurationKt.toDuration(0, DurationUnit.MILLISECONDS);
            String str = this.e.h;
            c63 c63Var2 = this.b;
            Map mapA = c63Var2.g.a(this.c);
            v3 v3Var = this.f;
            i2 i2Var = this.d;
            Boolean bool = this.g;
            ks3 ks3Var = this.h;
            this.a = 1;
            if (c63Var.a(uri, ha2Var, 1, duration, str, mapA, v3Var, i2Var, bool, ks3Var, this) == coroutine_suspended) {
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
