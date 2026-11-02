package kotlin;

import com.google.common.base.Splitter;
import com.ironsource.C3510b4;
import java.util.Iterator;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class t41 implements zr1 {
    public final Map a;

    public t41(Map handlers) {
        Intrinsics.checkNotNullParameter(handlers, "handlers");
        this.a = handlers;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(nr1 nr1Var, Continuation continuation) {
        s41 s41Var;
        nr1 nr1Var2;
        Iterator it;
        if (continuation instanceof s41) {
            s41Var = (s41) continuation;
            int i = s41Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                s41Var.e = i - Integer.MIN_VALUE;
            } else {
                s41Var = new s41(this, continuation);
            }
        } else {
            s41Var = new s41(this, continuation);
        }
        Object obj = s41Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = s41Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            nr1Var2 = nr1Var;
            it = this.a.entrySet().iterator();
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            it = s41Var.b;
            nr1Var2 = s41Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            r41 r41Var = (r41) entry.getValue();
            Splitter splitter = f01.a;
            f01.b("Installing gmsg handler for [" + str + "] adKey: [" + r41Var.k() + C3510b4.j.e, null);
            s41Var.a = nr1Var2;
            s41Var.b = it;
            s41Var.e = 1;
            if (nr1Var2.a(str, r41Var, s41Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.zr1
    public final /* bridge */ /* synthetic */ Object a(Object obj, or1 or1Var) {
        return a((nr1) obj, (Continuation) or1Var);
    }
}
