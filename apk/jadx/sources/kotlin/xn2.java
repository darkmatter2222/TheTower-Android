package kotlin;

import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class xn2 extends Lambda implements Function0 {
    public final /* synthetic */ ao2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xn2(ao2 ao2Var) {
        super(0);
        this.a = ao2Var;
    }

    @Override // p005kotlin.jvm.functions.Function0
    public final Object invoke() {
        g83 g83Var = this.a.e;
        s11 s11Var = s11.CUI_NAME_USER_CLOSED_PIP_AD;
        List listEmptyList = CollectionsKt.emptyList();
        ao2 ao2Var = this.a;
        ks3 ks3Var = ao2Var.f;
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                ao2Var.a();
                Object obj = p005kotlin.Unit.INSTANCE;
                if (obj instanceof i01) {
                    xs3.a((i01) obj, false);
                }
                CloseableKt.closeFinally(tu2VarA, null);
            } catch (Throwable th) {
                try {
                    tu2VarA.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        tu2VarA.a(th);
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
                        CloseableKt.closeFinally(tu2VarA, th2);
                        throw th3;
                    }
                }
            }
        } else {
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                ao2Var.a();
                Object obj2 = p005kotlin.Unit.INSTANCE;
                if (obj2 instanceof i01) {
                    xs3.a((i01) obj2, false);
                }
                CloseableKt.closeFinally(rr3VarA, null);
            } catch (Throwable th4) {
                try {
                    rr3VarA.b(th4);
                    if (th4 instanceof v24) {
                        throw th4;
                    }
                    if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                        rr3VarA.a(th4);
                    }
                    if (th4 instanceof TimeoutCancellationException) {
                        throw new i21(th4);
                    }
                    if (th4 instanceof CancellationException) {
                        throw new wz0(th4);
                    }
                    if (th4 instanceof w01) {
                        throw th4;
                    }
                    throw new b01(th4);
                } catch (Throwable th5) {
                    try {
                        throw th5;
                    } catch (Throwable th6) {
                        CloseableKt.closeFinally(rr3VarA, th5);
                        throw th6;
                    }
                }
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
