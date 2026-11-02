package kotlin;

import com.google.common.collect.ImmutableMap;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class jp2 implements zr1 {
    public final /* synthetic */ Map a;

    public jp2(ImmutableMap immutableMap) {
        this.a = immutableMap;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(nr1 nr1Var, Continuation continuation) {
        ip2 ip2Var;
        if (continuation instanceof ip2) {
            ip2Var = (ip2) continuation;
            int i = ip2Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                ip2Var.c = i - Integer.MIN_VALUE;
            } else {
                ip2Var = new ip2(this, continuation);
            }
        } else {
            ip2Var = new ip2(this, continuation);
        }
        Object obj = ip2Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ip2Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            t41 t41Var = new t41(this.a);
            ip2Var.c = 1;
            if (t41Var.a(nr1Var, ip2Var) == coroutine_suspended) {
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
        return a((nr1) obj, (Continuation) or1Var);
    }
}
