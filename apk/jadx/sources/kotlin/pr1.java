package kotlin;

import com.google.common.base.Splitter;
import com.ironsource.C3510b4;
import java.util.Iterator;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class pr1 {
    public final Map a;

    public pr1(Map modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.a = modifiers;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(nr1 nr1Var, Continuation continuation) {
        or1 or1Var;
        Object obj;
        Iterator it;
        if (continuation instanceof or1) {
            or1Var = (or1) continuation;
            int i = or1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                or1Var.e = i - Integer.MIN_VALUE;
            } else {
                or1Var = new or1(this, continuation);
            }
        } else {
            or1Var = new or1(this, continuation);
        }
        Object obj2 = or1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = or1Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj2);
            obj = nr1Var;
            it = this.a.entrySet().iterator();
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            it = or1Var.b;
            obj = or1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj2);
        }
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            zr1 zr1Var = (zr1) entry.getValue();
            Splitter splitter = f01.a;
            f01.b("Configuring JsContext with modifier [" + str + C3510b4.j.e, null);
            or1Var.a = obj;
            or1Var.b = it;
            or1Var.e = 1;
            if (zr1Var.a(obj, or1Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
