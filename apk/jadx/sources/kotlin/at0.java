package kotlin;

import android.content.Context;
import android.widget.FrameLayout;
import com.google.gson.JsonObject;
import com.tapjoy.TapjoyConstants;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public interface at0 {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    static Object a(at0 at0Var, h41 h41Var, i2 i2Var, tk0 tk0Var, Continuation continuation) {
        zs0 zs0Var;
        if (continuation instanceof zs0) {
            zs0Var = (zs0) continuation;
            int i = zs0Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                zs0Var.f = i - Integer.MIN_VALUE;
            } else {
                zs0Var = new zs0(at0Var, continuation);
            }
        } else {
            zs0Var = new zs0(at0Var, continuation);
        }
        Object obj = zs0Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zs0Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            r31 r31Var = h41Var.a;
            zs0Var.a = h41Var;
            zs0Var.b = i2Var;
            zs0Var.c = tk0Var;
            zs0Var.f = 1;
            at0Var.getClass();
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("app_muted", String.valueOf(at0Var.a().d));
            jsonObject.addProperty("app_volume", String.valueOf(at0Var.a().c));
            Object objA = r31Var.a(jsonObject, TapjoyConstants.TJC_VOLUME, zs0Var);
            if (objA != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objA = p005kotlin.Unit.INSTANCE;
            }
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            tk0Var = zs0Var.c;
            i2Var = zs0Var.b;
            h41Var = zs0Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        h41Var.b = tk0Var;
        if (i2Var.d0) {
            Context context = h41Var.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            zn3 zn3Var = new zn3(context);
            h41Var.addView(zn3Var, new FrameLayout.LayoutParams(-2, -2, 49));
            h41Var.bringChildToFront(zn3Var);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    km a();
}
