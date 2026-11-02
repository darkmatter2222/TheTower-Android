package kotlin;

import com.ironsource.C3510b4;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class th1 extends fp2 {
    public final CoroutineScope c;
    public final CoroutineScope d;
    public final ex0 e;
    public final zd3 f;
    public final g83 g;
    public final eh1 h;

    public th1(CoroutineScope backgroundScope, CoroutineScope uiScope, ex0 flags, zd3 sharedSettingsDataStore, g83 rootTraceCreator, eh1 installReferrerClientProxy) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(sharedSettingsDataStore, "sharedSettingsDataStore");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(installReferrerClientProxy, "installReferrerClientProxy");
        this.c = backgroundScope;
        this.d = uiScope;
        this.e = flags;
        this.f = sharedSettingsDataStore;
        this.g = rootTraceCreator;
        this.h = installReferrerClientProxy;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.nc1
    public final Object u(Continuation continuation) {
        qh1 qh1Var;
        th1 th1Var;
        if (continuation instanceof qh1) {
            qh1Var = (qh1) continuation;
            int i = qh1Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                qh1Var.d = i - Integer.MIN_VALUE;
            } else {
                qh1Var = new qh1(this, continuation);
            }
        } else {
            qh1Var = new qh1(this, continuation);
        }
        Object objC = qh1Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = qh1Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objC);
            ex0 ex0Var = this.e;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:install_referrer_details:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var.a("gads:install_referrer_details:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                zd3 zd3Var = this.f;
                qh1Var.a = this;
                qh1Var.d = 1;
                zd3Var.getClass();
                objC = zd3.c(zd3Var, qh1Var);
                if (objC == coroutine_suspended) {
                    return coroutine_suspended;
                }
                th1Var = this;
            }
            return new q01(p005kotlin.Unit.INSTANCE);
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        th1Var = qh1Var.a;
        p005kotlin.ResultKt.throwOnFailure(objC);
        if (!((od3) objC).x()) {
            BuildersKt__Builders_commonKt.launch$default(th1Var.d, null, null, new sh1(th1Var, null), 3, null);
        }
        return new q01(p005kotlin.Unit.INSTANCE);
    }
}
