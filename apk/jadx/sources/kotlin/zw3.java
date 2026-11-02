package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.text.MatchResult;
import p005kotlin.text.Regex;

/* JADX INFO: loaded from: classes.dex */
public interface zw3 {
    static {
        Regex regex = xw3.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    static /* synthetic */ Object a(zw3 zw3Var, Continuation continuation) {
        yw3 yw3Var;
        MatchResult matchResultFind$default;
        MatchResult.Destructured destructured;
        if (continuation instanceof yw3) {
            yw3Var = (yw3) continuation;
            int i = yw3Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                yw3Var.c = i - Integer.MIN_VALUE;
            } else {
                yw3Var = new yw3(zw3Var, continuation);
            }
        } else {
            yw3Var = new yw3(zw3Var, continuation);
        }
        Object objA = yw3Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = yw3Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            yw3Var.c = 1;
            objA = zw3Var.a();
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        String str = (String) objA;
        if (str == null || (matchResultFind$default = Regex.find$default(xw3.a, str, 0, 2, null)) == null || (destructured = matchResultFind$default.getDestructured()) == null) {
            return null;
        }
        return destructured.getMatch().getGroupValues().get(1);
    }

    default Object a() {
        return null;
    }

    Object a(ContinuationImpl continuationImpl);

    Object b(ContinuationImpl continuationImpl);
}
