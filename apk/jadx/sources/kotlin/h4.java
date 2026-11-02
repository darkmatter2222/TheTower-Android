package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class h4 extends pl3 {
    public final g30 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h4(g30 consentManager) {
        super(s11.CUI_NAME_SDKINIT_INIT_AD_ID_PERMISSION);
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        this.d = consentManager;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.AD_ID_PERMISSION;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        g4 g4Var;
        if (continuation instanceof g4) {
            g4Var = (g4) continuation;
            int i = g4Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                g4Var.c = i - Integer.MIN_VALUE;
            } else {
                g4Var = new g4(this, continuation);
            }
        } else {
            g4Var = new g4(this, continuation);
        }
        Object objBoxBoolean = g4Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = g4Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objBoxBoolean);
            g30 g30Var = this.d;
            g4Var.c = 1;
            g30Var.getClass();
            m21 m21Var = o21.f;
            objBoxBoolean = Boxing.boxBoolean(m21.a(g30Var.c, "com.google.android.gms.permission.AD_ID"));
            if (objBoxBoolean == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objBoxBoolean);
        }
        return new q01(new f4(((Boolean) objBoxBoolean).booleanValue()));
    }
}
