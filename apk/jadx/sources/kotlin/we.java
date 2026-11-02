package kotlin;

import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationStatus;
import com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener;
import java.util.Set;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class we extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ OnAdapterInitializationCompleteListener b;
    public final /* synthetic */ hf c;
    public final /* synthetic */ Set d;
    public OnAdapterInitializationCompleteListener e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public we(Continuation continuation, OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener, hf hfVar, Set set) {
        super(2, continuation);
        this.b = onAdapterInitializationCompleteListener;
        this.c = hfVar;
        this.d = set;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new we(continuation, this.b, this.c, this.d);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((we) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener2 = this.b;
            hf hfVar = this.c;
            Set set = this.d;
            this.e = onAdapterInitializationCompleteListener2;
            this.a = 1;
            hfVar.getClass();
            Object objA = hf.a(hfVar, set, this);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            onAdapterInitializationCompleteListener = onAdapterInitializationCompleteListener2;
            obj = objA;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            onAdapterInitializationCompleteListener = this.e;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        onAdapterInitializationCompleteListener.onAdapterInitializationComplete((InitializationStatus) obj);
        return p005kotlin.Unit.INSTANCE;
    }
}
