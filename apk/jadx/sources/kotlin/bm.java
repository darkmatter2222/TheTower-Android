package kotlin;

import android.content.Context;
import com.google.android.gms.appset.AppSetIdClient;
import kotlinx.coroutines.CancellableContinuationImpl;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugProbesKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class bm {
    public final Context a;
    public final ur3 b;
    public final tx c;
    public final p005kotlin.Lazy d;

    public bm(Context applicationContext, ur3 traceLogger, tx clock) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.a = applicationContext;
        this.b = traceLogger;
        this.c = clock;
        this.d = p005kotlin.LazyKt.lazy(new yl(this));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(bm bmVar, Continuation continuation) {
        zl zlVar;
        if (continuation instanceof zl) {
            zlVar = (zl) continuation;
            int i = zlVar.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                zlVar.d = i - Integer.MIN_VALUE;
            } else {
                zlVar = new zl(bmVar, continuation);
            }
        } else {
            zlVar = new zl(bmVar, continuation);
        }
        Object result = zlVar.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zlVar.d;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(result);
                zlVar.a = bmVar;
                zlVar.d = 1;
                CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(zlVar), 1);
                cancellableContinuationImpl.initCancellability();
                ((AppSetIdClient) bmVar.d.getValue()).getAppSetIdInfo().addOnCompleteListener(new am(bmVar, cancellableContinuationImpl));
                result = cancellableContinuationImpl.getResult();
                if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(zlVar);
                }
                if (result == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                bmVar = zlVar.a;
                p005kotlin.ResultKt.throwOnFailure(result);
            }
            return (v01) result;
        } catch (Exception e) {
            ((as3) bmVar.b).a("Exception while getting AppSet Id", (Throwable) e);
            return new j01(e, null, null, 6);
        }
    }
}
