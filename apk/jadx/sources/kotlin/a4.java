package kotlin;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.ironsource.C3510b4;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a4 extends ou {
    public final g30 l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a4(g30 consentManager, ex0 flags, f0 activityTracker, g83 rootTraceCreator, tx clock, CoroutineScope backgroundScope) {
        super(clock, backgroundScope, rootTraceCreator, flags, activityTracker);
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        this.l = consentManager;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(a4 a4Var, Continuation continuation) {
        y3 y3Var;
        if (continuation instanceof y3) {
            y3Var = (y3) continuation;
            int i = y3Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                y3Var.c = i - Integer.MIN_VALUE;
            } else {
                y3Var = new y3(a4Var, continuation);
            }
        } else {
            y3Var = new y3(a4Var, continuation);
        }
        Object objAwait = y3Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = y3Var.c;
        AdvertisingIdClient.Info info = null;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objAwait);
            CoroutineScope coroutineScope = a4Var.d;
            z3 block = new z3(a4Var, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            Deferred deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, context, null, new vs3(block, null), 2, null);
            y3Var.c = 1;
            objAwait = deferredAsync$default.await(y3Var);
            if (objAwait == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objAwait);
        }
        v01 v01Var = (v01) objAwait;
        if (v01Var != null) {
            if (v01Var instanceof i01) {
                return (i01) v01Var;
            }
            info = (AdvertisingIdClient.Info) ((q01) v01Var).b;
        }
        return new q01(new x3(info));
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.AD_ID_INFO;
    }

    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        return a(this, continuation);
    }

    @Override // kotlin.ou, kotlin.nc1
    public final Object u(Continuation continuation) {
        ex0 ex0Var = this.f;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:ad_id_init_from_signal_source_enabled", C3510b4.i.W);
        return ((Boolean) ex0Var.a("gads:ad_id_init_from_signal_source_enabled", Boolean.FALSE, yr.b)).booleanValue() ? ou.c(this, continuation) : new q01(p005kotlin.Unit.INSTANCE);
    }
}
