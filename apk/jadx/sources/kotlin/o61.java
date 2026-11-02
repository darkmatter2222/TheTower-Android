package kotlin;

import com.google.android.play.core.hsdp.service.HsdpDeepLinkService;
import com.google.android.play.core.hsdp.service.HsdpPrewarmRequest;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.CancellableContinuationImpl;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugProbesKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class o61 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ p61 b;
    public final /* synthetic */ HsdpPrewarmRequest c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o61(p61 p61Var, HsdpPrewarmRequest hsdpPrewarmRequest, Continuation continuation) {
        super(2, continuation);
        this.b = p61Var;
        this.c = hsdpPrewarmRequest;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new o61(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new o61(this.b, this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            p61 p61Var = this.b;
            HsdpPrewarmRequest hsdpPrewarmRequest = this.c;
            this.a = 1;
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(this), 1);
            cancellableContinuationImpl.initCancellability();
            n61 n61Var = new n61(new AtomicBoolean(false), cancellableContinuationImpl);
            synchronized (((HsdpDeepLinkService) p61Var.c.getValue())) {
                ((HsdpDeepLinkService) p61Var.c.getValue()).prewarm(CollectionsKt.listOfNotNull(hsdpPrewarmRequest), n61Var);
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            }
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(this);
            }
            if (result == coroutine_suspended) {
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
