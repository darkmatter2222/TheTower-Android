package kotlin;

import com.ironsource.C3510b4;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d4 extends fp2 {
    public final a4 c;
    public final ex0 d;

    public d4(a4 adIdInfoSignalSource, ex0 flags) {
        Intrinsics.checkNotNullParameter(adIdInfoSignalSource, "adIdInfoSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.c = adIdInfoSignalSource;
        this.d = flags;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.nc1
    public final Object u(Continuation continuation) {
        c4 c4Var;
        if (continuation instanceof c4) {
            c4Var = (c4) continuation;
            int i = c4Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                c4Var.c = i - Integer.MIN_VALUE;
            } else {
                c4Var = new c4(this, continuation);
            }
        } else {
            c4Var = new c4(this, continuation);
        }
        Object objA = c4Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c4Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            ex0 ex0Var = this.d;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:ad_id_init_enabled", C3510b4.i.W);
            Boolean bool = Boolean.TRUE;
            ir irVar = yr.b;
            if (((Boolean) ex0Var.a("gads:ad_id_init_enabled", bool, irVar)).booleanValue()) {
                ex0 ex0Var2 = this.d;
                ex0Var2.getClass();
                Intrinsics.checkNotNullParameter("gads:ad_id_init_from_signal_source_enabled", C3510b4.i.W);
                if (!((Boolean) ex0Var2.a("gads:ad_id_init_from_signal_source_enabled", Boolean.FALSE, irVar)).booleanValue()) {
                    a4 a4Var = this.c;
                    c4Var.c = 1;
                    a4Var.getClass();
                    objA = ou.a((ou) a4Var, (Continuation) c4Var);
                    if (objA == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            }
            return new q01(p005kotlin.Unit.INSTANCE);
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        p005kotlin.ResultKt.throwOnFailure(objA);
        return new q01(p005kotlin.Unit.INSTANCE);
    }
}
