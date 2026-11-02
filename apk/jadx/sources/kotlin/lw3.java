package kotlin;

import com.google.common.io.BaseEncoding;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class lw3 implements r41 {
    public final g30 a;
    public final ur3 b;

    public lw3(g30 consentManager, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = consentManager;
        this.b = traceLogger;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        kw3 kw3Var;
        lw3 lw3Var;
        if (continuation instanceof kw3) {
            kw3Var = (kw3) continuation;
            int i = kw3Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                kw3Var.d = i - Integer.MIN_VALUE;
            } else {
                kw3Var = new kw3(this, continuation);
            }
        } else {
            kw3Var = new kw3(this, continuation);
        }
        Object obj = kw3Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = kw3Var.d;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            lw3Var = kw3Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                return p005kotlin.Unit.INSTANCE;
            } catch (np1 e) {
                e = e;
                xs3.a(xs3.a, e);
                ((as3) lw3Var.b).a("Allowlist proto deserialization failed.", (Throwable) e);
                return p005kotlin.Unit.INSTANCE;
            }
        }
        p005kotlin.ResultKt.throwOnFailure(obj);
        String str = (String) map.get("allowlist");
        if (str == null) {
            xs3.a("Allowlist is missing from an updateAllowlist GMSG: " + map, null, 6);
            return p005kotlin.Unit.INSTANCE;
        }
        try {
            byte[] bArrDecode = BaseEncoding.base64Url().decode(str);
            Intrinsics.checkNotNullExpressionValue(bArrDecode, "decode(...)");
            try {
                g30 g30Var = this.a;
                u00 u00VarA = u00.a(bArrDecode);
                Intrinsics.checkNotNullExpressionValue(u00VarA, "parseFrom(...)");
                kw3Var.a = this;
                kw3Var.d = 1;
                if (g30Var.b(u00VarA, kw3Var) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return p005kotlin.Unit.INSTANCE;
            } catch (np1 e2) {
                e = e2;
                lw3Var = this;
                xs3.a(xs3.a, e);
                ((as3) lw3Var.b).a("Allowlist proto deserialization failed.", (Throwable) e);
                return p005kotlin.Unit.INSTANCE;
            }
        } catch (IllegalArgumentException e3) {
            xs3.a(xs3.a, e3);
            ((as3) this.b).a("Allowlist gmsg param is not a valid encoded string.", (Throwable) e3);
            return p005kotlin.Unit.INSTANCE;
        }
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_UPDATE_CONSENT_ALLOWLIST;
    }
}
