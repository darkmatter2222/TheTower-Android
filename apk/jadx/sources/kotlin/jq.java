package kotlin;

import kotlinx.coroutines.BuildersKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class jq {
    public static final jq a = new jq();

    /* JADX WARN: Code duplicated, block: B:32:0x009c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(px2 px2Var, Function2 function2, Continuation continuation) {
        gq gqVar;
        Function2 function3;
        Object objInvoke;
        if (continuation instanceof gq) {
            gqVar = (gq) continuation;
            int i = gqVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                gqVar.e = i - Integer.MIN_VALUE;
            } else {
                gqVar = new gq(this, continuation);
            }
        } else {
            gqVar = new gq(this, continuation);
        }
        Object objWithContext = gqVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = gqVar.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objWithContext);
            a01.a.getClass();
            cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
            gqVar.a = px2Var;
            gqVar.b = function2;
            gqVar.e = 1;
            Object objJoin = cm1Var.z.join(gqVar);
            if (objJoin != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objJoin = p005kotlin.Unit.INSTANCE;
            }
            if (objJoin != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            function2 = gqVar.b;
            px2Var = (px2) gqVar.a;
            p005kotlin.ResultKt.throwOnFailure(objWithContext);
        } else {
            if (i2 != 2) {
                if (i2 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(objWithContext);
                return objWithContext;
            }
            function3 = (Function2) gqVar.a;
            p005kotlin.ResultKt.throwOnFailure(objWithContext);
        }
        gqVar.a = null;
        gqVar.e = 3;
        objInvoke = function3.invoke(objWithContext, gqVar);
        if (objInvoke != coroutine_suspended) {
            return coroutine_suspended;
        }
        return objInvoke;
        gqVar.a = function2;
        gqVar.b = null;
        gqVar.e = 2;
        objWithContext = BuildersKt.withContext(px2Var.a.getCoroutineContext(), new xw2(px2Var, null), gqVar);
        if (objWithContext != coroutine_suspended) {
            function3 = function2;
            gqVar.a = null;
            gqVar.e = 3;
            objInvoke = function3.invoke(objWithContext, gqVar);
            if (objInvoke != coroutine_suspended) {
                return objInvoke;
            }
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0094 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(px2 px2Var, Function2 function2, Continuation continuation) {
        hq hqVar;
        Function2 function3;
        Object objInvoke;
        if (continuation instanceof hq) {
            hqVar = (hq) continuation;
            int i = hqVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                hqVar.e = i - Integer.MIN_VALUE;
            } else {
                hqVar = new hq(this, continuation);
            }
        } else {
            hqVar = new hq(this, continuation);
        }
        Object objA = hqVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = hqVar.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            a01.a.getClass();
            cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
            hqVar.a = px2Var;
            hqVar.b = function2;
            hqVar.e = 1;
            Object objJoin = cm1Var.z.join(hqVar);
            if (objJoin != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objJoin = p005kotlin.Unit.INSTANCE;
            }
            if (objJoin != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            function2 = hqVar.b;
            px2Var = (px2) hqVar.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
        } else {
            if (i2 != 2) {
                if (i2 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(objA);
                return objA;
            }
            function3 = (Function2) hqVar.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        hqVar.a = null;
        hqVar.e = 3;
        objInvoke = function3.invoke(objA, hqVar);
        if (objInvoke != coroutine_suspended) {
            return coroutine_suspended;
        }
        return objInvoke;
        hqVar.a = function2;
        hqVar.b = null;
        hqVar.e = 2;
        px2Var.getClass();
        objA = px2.a(px2Var, hqVar);
        if (objA != coroutine_suspended) {
            function3 = function2;
            hqVar.a = null;
            hqVar.e = 3;
            objInvoke = function3.invoke(objA, hqVar);
            if (objInvoke != coroutine_suspended) {
                return objInvoke;
            }
        }
        return coroutine_suspended;
    }
}
