package kotlin;

import android.content.Context;
import android.os.Looper;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import kotlinx.coroutines.BuildersKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class uo extends SuspendLambda implements Function2 {
    public int a;
    public /* synthetic */ Object b;

    public uo(Continuation continuation) {
        super(2, continuation);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        uo uoVar = new uo(continuation);
        uoVar.b = obj;
        return uoVar;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        uo uoVar = new uo((Continuation) obj2);
        uoVar.b = (ck1) obj;
        return uoVar.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objWithContext;
        Object obj2;
        ck1 ck1Var;
        Object obj3;
        o53 o53Var;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ck1 ck1Var2 = (ck1) this.b;
            a01.a.getClass();
            CoroutineContext coroutineContext = (CoroutineContext) ((vf0) zz0.a()).w.get();
            this.b = ck1Var2;
            this.a = 1;
            if (Intrinsics.areEqual(Looper.getMainLooper(), Looper.myLooper())) {
                AdSize adSizeM = ck1Var2.m();
                Context context = ck1Var2.n.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                o53Var = new o53(context, adSizeM);
                o53Var.addView(ck1Var2.n);
            } else {
                objWithContext = BuildersKt.withContext(coroutineContext, new di1(ck1Var2, null), this);
            }
            if (obj2 == coroutine_suspended) {
                obj2 = objWithContext;
                obj2 = o53Var;
                return coroutine_suspended;
            }
            obj2 = objWithContext;
            obj2 = o53Var;
            ck1Var = ck1Var2;
            obj3 = obj2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ck1Var = (ck1) this.b;
            p005kotlin.ResultKt.throwOnFailure(obj);
            obj3 = obj;
        }
        return new wo(ck1Var, (o53) obj3);
    }
}
