package kotlin;

import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class pl3 extends nc1 implements rh3 {
    public v01 c;

    public /* synthetic */ pl3() {
        this(null);
    }

    public pl3(s11 s11Var) {
        super(s11Var, 2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(pl3 pl3Var, Continuation continuation) {
        ol3 ol3Var;
        if (continuation instanceof ol3) {
            ol3Var = (ol3) continuation;
            int i = ol3Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                ol3Var.d = i - Integer.MIN_VALUE;
            } else {
                ol3Var = new ol3(pl3Var, continuation);
            }
        } else {
            ol3Var = new ol3(pl3Var, continuation);
        }
        Object objS = ol3Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ol3Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objS);
            ol3Var.a = pl3Var;
            ol3Var.d = 1;
            objS = pl3Var.s(ol3Var);
            if (objS == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            pl3Var = ol3Var.a;
            p005kotlin.ResultKt.throwOnFailure(objS);
        }
        pl3Var.c = (v01) objS;
        return new q01(p005kotlin.Unit.INSTANCE);
    }

    @Override // kotlin.rh3
    public final Object b(Continuation continuation) {
        s11 s11Var = s11.CUI_NAME_SIGNAL;
        WeakHashMap weakHashMap = hs3.a;
        rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
        try {
            hs3.a().e().t = new gh3(f(), q11.CACHED, 4);
            v01 v01Var = this.c;
            if (v01Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("result");
                v01Var = null;
            }
            if (v01Var instanceof i01) {
                xs3.a((i01) v01Var, false);
            }
            CloseableKt.closeFinally(rr3VarA, null);
            return v01Var;
        } catch (Throwable th) {
            try {
                rr3VarA.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                    rr3VarA.a(th);
                }
                if (th instanceof TimeoutCancellationException) {
                    throw new i21(th);
                }
                if (th instanceof CancellationException) {
                    throw new wz0(th);
                }
                if (th instanceof w01) {
                    throw th;
                }
                throw new b01(th);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.closeFinally(rr3VarA, th2);
                    throw th3;
                }
            }
        }
    }

    @Override // kotlin.nc1
    public final Object u(Continuation continuation) {
        return a(this, continuation);
    }
}
