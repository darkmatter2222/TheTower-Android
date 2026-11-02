package kotlin;

import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig;
import java.util.Set;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ue extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ hf b;
    public final /* synthetic */ AdapterInitializationConfig c;
    public final /* synthetic */ Set d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ue(hf hfVar, AdapterInitializationConfig adapterInitializationConfig, Set set, Continuation continuation) {
        super(2, continuation);
        this.b = hfVar;
        this.c = adapterInitializationConfig;
        this.d = set;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ue(this.b, this.c, this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ue) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            hf hfVar = this.b;
            AdapterInitializationConfig adapterInitializationConfig = this.c;
            Set set = this.d;
            this.a = 1;
            if (hf.a(hfVar, adapterInitializationConfig, set, this) == coroutine_suspended) {
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
