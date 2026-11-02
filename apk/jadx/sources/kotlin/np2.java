package kotlin;

import com.google.common.collect.ImmutableMap;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class np2 implements zr1 {
    public final /* synthetic */ Map a;

    public np2(ImmutableMap immutableMap) {
        this.a = immutableMap;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(a04 a04Var, Continuation continuation) {
        mp2 mp2Var;
        if (continuation instanceof mp2) {
            mp2Var = (mp2) continuation;
            int i = mp2Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                mp2Var.c = i - Integer.MIN_VALUE;
            } else {
                mp2Var = new mp2(this, continuation);
            }
        } else {
            mp2Var = new mp2(this, continuation);
        }
        Object obj = mp2Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = mp2Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            t41 t41Var = new t41(this.a);
            mp2Var.c = 1;
            if (t41Var.a(a04Var, mp2Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.zr1
    public final /* bridge */ /* synthetic */ Object a(Object obj, or1 or1Var) {
        return a((a04) obj, (Continuation) or1Var);
    }
}
