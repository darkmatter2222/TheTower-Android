package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xs0 implements rh3 {
    public final g30 a;
    public final ls0 b;

    public xs0(g30 consentManager, ls0 firebaseAnalyticsAdapter) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        Intrinsics.checkNotNullParameter(firebaseAnalyticsAdapter, "firebaseAnalyticsAdapter");
        this.a = consentManager;
        this.b = firebaseAnalyticsAdapter;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.FIREBASE_ANALYTICS;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0092  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:35:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        ws0 ws0Var;
        xs0 xs0Var;
        String str;
        String str2;
        Object objF;
        String str3;
        xs0 xs0Var2;
        String str4;
        String str5;
        if (continuation instanceof ws0) {
            ws0Var = (ws0) continuation;
            int i = ws0Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                ws0Var.f = i - Integer.MIN_VALUE;
            } else {
                ws0Var = new ws0(this, continuation);
            }
        } else {
            ws0Var = new ws0(this, continuation);
        }
        Object objG = ws0Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ws0Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objG);
            if (this.b.e.getValue() == null) {
                return new q01(new vs0(null, null, null, null, false));
            }
            g30 g30Var = this.a;
            ws0Var.a = this;
            ws0Var.f = 1;
            objG = g30Var.G(ws0Var);
            if (objG != coroutine_suspended) {
                xs0Var = this;
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            xs0Var = ws0Var.a;
            p005kotlin.ResultKt.throwOnFailure(objG);
        } else {
            if (i2 == 2) {
                String str6 = ws0Var.b;
                xs0 xs0Var3 = ws0Var.a;
                p005kotlin.ResultKt.throwOnFailure(objG);
                str = str6;
                xs0Var = xs0Var3;
                str2 = (String) objG;
                g30 g30Var2 = xs0Var.a;
                ws0Var.a = xs0Var;
                ws0Var.b = str;
                ws0Var.c = str2;
                ws0Var.f = 3;
                objF = g30Var2.F(ws0Var);
                if (objF != coroutine_suspended) {
                    str3 = str2;
                    objG = objF;
                    xs0Var2 = xs0Var;
                    str4 = str;
                }
                return coroutine_suspended;
            }
            if (i2 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            String str7 = ws0Var.c;
            str4 = ws0Var.b;
            xs0Var2 = ws0Var.a;
            p005kotlin.ResultKt.throwOnFailure(objG);
            str3 = str7;
        }
        String str8 = (String) objG;
        if (xs0Var2.b.e.getValue() != null) {
            str5 = "fa";
        } else {
            str5 = null;
        }
        return new q01(new vs0(str4, str3, str8, str5, true));
        String str9 = (String) objG;
        g30 g30Var3 = xs0Var.a;
        ws0Var.a = xs0Var;
        ws0Var.b = str9;
        ws0Var.f = 2;
        Object objH = g30Var3.H(ws0Var);
        if (objH != coroutine_suspended) {
            str = str9;
            objG = objH;
            str2 = (String) objG;
            g30 g30Var4 = xs0Var.a;
            ws0Var.a = xs0Var;
            ws0Var.b = str;
            ws0Var.c = str2;
            ws0Var.f = 3;
            objF = g30Var4.F(ws0Var);
            if (objF != coroutine_suspended) {
                str3 = str2;
                objG = objF;
                xs0Var2 = xs0Var;
                str4 = str;
                String str10 = (String) objG;
                if (xs0Var2.b.e.getValue() != null) {
                    str5 = "fa";
                } else {
                    str5 = null;
                }
                return new q01(new vs0(str4, str3, str10, str5, true));
            }
        }
        return coroutine_suspended;
    }
}
