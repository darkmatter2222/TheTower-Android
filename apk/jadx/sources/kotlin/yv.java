package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.gson.JsonObject;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class yv implements rh3 {
    public final j53 a;
    public final pn b;
    public final BaseRequest c;
    public final o00 d;

    public yv(j53 requestType, pn appState, BaseRequest adRequest, o00 configLoader) {
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(configLoader, "configLoader");
        this.a = requestType;
        this.b = appState;
        this.c = adRequest;
        this.d = configLoader;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.CLD;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:35:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        xv xvVar;
        yv yvVar;
        yv yvVar2;
        String str;
        String str2;
        ds1 ds1Var;
        Object objB;
        String str3;
        JsonObject jsonObjectA;
        Object objB2;
        JsonObject jsonObject;
        String str4;
        String str5;
        if (continuation instanceof xv) {
            xvVar = (xv) continuation;
            int i = xvVar.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                xvVar.g = i - Integer.MIN_VALUE;
            } else {
                xvVar = new xv(this, continuation);
            }
        } else {
            xvVar = new xv(this, continuation);
        }
        Object objB3 = xvVar.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = xvVar.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objB3);
            pn pnVar = this.b;
            String adUnitId = this.c.getAdUnitId();
            String str6 = this.a.a;
            xvVar.a = this;
            xvVar.g = 1;
            objB3 = pnVar.b(adUnitId, str6, xvVar);
            if (objB3 != coroutine_suspended) {
                yvVar = this;
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            yvVar = (yv) xvVar.a;
            p005kotlin.ResultKt.throwOnFailure(objB3);
        } else {
            if (i2 == 2) {
                str = xvVar.b;
                yv yvVar3 = (yv) xvVar.a;
                p005kotlin.ResultKt.throwOnFailure(objB3);
                yvVar2 = yvVar3;
                str2 = (String) objB3;
                ds1Var = ds1.a;
                pn pnVar2 = yvVar2.b;
                xvVar.a = yvVar2;
                xvVar.b = str;
                xvVar.c = str2;
                xvVar.d = ds1Var;
                xvVar.g = 3;
                pnVar2.getClass();
                objB = pn.b(pnVar2, xvVar);
                if (objB != coroutine_suspended) {
                    str3 = str2;
                    objB3 = objB;
                    ds1 ds1Var2 = ds1.a;
                    ds1Var.getClass();
                    jsonObjectA = ds1.a((JsonObject) objB3, "common_settings", (JsonObject) null);
                    o00 o00Var = yvVar2.d;
                    xvVar.a = str;
                    xvVar.b = str3;
                    xvVar.c = jsonObjectA;
                    xvVar.d = null;
                    xvVar.g = 4;
                    o00Var.getClass();
                    objB2 = o00.b(o00Var, xvVar);
                    if (objB2 != coroutine_suspended) {
                        jsonObject = jsonObjectA;
                        objB3 = objB2;
                        str4 = str;
                        str5 = str3;
                    }
                }
                return coroutine_suspended;
            }
            if (i2 == 3) {
                ds1 ds1Var3 = xvVar.d;
                str3 = (String) xvVar.c;
                String str7 = xvVar.b;
                yvVar2 = (yv) xvVar.a;
                p005kotlin.ResultKt.throwOnFailure(objB3);
                ds1Var = ds1Var3;
                str = str7;
                ds1 ds1Var4 = ds1.a;
                ds1Var.getClass();
                jsonObjectA = ds1.a((JsonObject) objB3, "common_settings", (JsonObject) null);
                o00 o00Var2 = yvVar2.d;
                xvVar.a = str;
                xvVar.b = str3;
                xvVar.c = jsonObjectA;
                xvVar.d = null;
                xvVar.g = 4;
                o00Var2.getClass();
                objB2 = o00.b(o00Var2, xvVar);
                if (objB2 != coroutine_suspended) {
                    jsonObject = jsonObjectA;
                    objB3 = objB2;
                    str4 = str;
                    str5 = str3;
                }
                return coroutine_suspended;
            }
            if (i2 != 4) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            JsonObject jsonObject2 = (JsonObject) xvVar.c;
            str5 = xvVar.b;
            String str8 = (String) xvVar.a;
            p005kotlin.ResultKt.throwOnFailure(objB3);
            jsonObject = jsonObject2;
            str4 = str8;
        }
        return new q01(new wv(str4, str5, jsonObject, ((Number) objB3).longValue()));
        String str9 = (String) objB3;
        pn pnVar3 = yvVar.b;
        xvVar.a = yvVar;
        xvVar.b = str9;
        xvVar.g = 2;
        Object objA = pnVar3.a(xvVar);
        if (objA != coroutine_suspended) {
            yvVar2 = yvVar;
            str = str9;
            objB3 = objA;
            str2 = (String) objB3;
            ds1Var = ds1.a;
            pn pnVar4 = yvVar2.b;
            xvVar.a = yvVar2;
            xvVar.b = str;
            xvVar.c = str2;
            xvVar.d = ds1Var;
            xvVar.g = 3;
            pnVar4.getClass();
            objB = pn.b(pnVar4, xvVar);
            if (objB != coroutine_suspended) {
                str3 = str2;
                objB3 = objB;
                ds1 ds1Var5 = ds1.a;
                ds1Var.getClass();
                jsonObjectA = ds1.a((JsonObject) objB3, "common_settings", (JsonObject) null);
                o00 o00Var3 = yvVar2.d;
                xvVar.a = str;
                xvVar.b = str3;
                xvVar.c = jsonObjectA;
                xvVar.d = null;
                xvVar.g = 4;
                o00Var3.getClass();
                objB2 = o00.b(o00Var3, xvVar);
                if (objB2 != coroutine_suspended) {
                    jsonObject = jsonObjectA;
                    objB3 = objB2;
                    str4 = str;
                    str5 = str3;
                    return new q01(new wv(str4, str5, jsonObject, ((Number) objB3).longValue()));
                }
            }
        }
        return coroutine_suspended;
    }
}
