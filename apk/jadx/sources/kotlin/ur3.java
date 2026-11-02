package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public interface ur3 {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    static /* synthetic */ Object a(ur3 ur3Var, String str, ed2 ed2Var, Continuation continuation) {
        tr3 tr3Var;
        if (continuation instanceof tr3) {
            tr3Var = (tr3) continuation;
            int i = tr3Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                tr3Var.e = i - Integer.MIN_VALUE;
            } else {
                tr3Var = new tr3(ur3Var, continuation);
            }
        } else {
            tr3Var = new tr3(ur3Var, continuation);
        }
        Object obj = tr3Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = tr3Var.e;
        try {
            if (i2 != 0) {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                String str2 = tr3Var.b;
                ur3 ur3Var2 = tr3Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                return obj;
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
            tr3Var.a = ur3Var;
            tr3Var.b = str;
            tr3Var.e = 1;
            Object objInvoke = ed2Var.invoke(tr3Var);
            return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
        } catch (Exception e) {
            ((as3) ur3Var).a(str, (Throwable) e);
            return null;
        }
    }

    default Object a(String label, Function0 block) {
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            return block.invoke();
        } catch (Exception e) {
            ((as3) this).a(label, (Throwable) e);
            return null;
        }
    }
}
