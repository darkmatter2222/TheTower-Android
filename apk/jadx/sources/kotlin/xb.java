package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import com.ironsource.Ue;
import java.io.Closeable;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xb implements nt3 {
    public final jb3 a;
    public final String b;
    public final tf3 c;
    public final BaseRequest d;
    public final Gson e;
    public final ex0 f;
    public final ej1 g;
    public final String h;

    public xb(jb3 javascriptEngine, String adResponseBlob, tf3 signalGenerationData, BaseRequest baseRequest, Gson gson, ex0 flags, ej1 internalAdRequestEventEmitter) {
        String str;
        Intrinsics.checkNotNullParameter(javascriptEngine, "javascriptEngine");
        Intrinsics.checkNotNullParameter(adResponseBlob, "adResponseBlob");
        Intrinsics.checkNotNullParameter(signalGenerationData, "signalGenerationData");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(internalAdRequestEventEmitter, "internalAdRequestEventEmitter");
        this.a = javascriptEngine;
        this.b = adResponseBlob;
        this.c = signalGenerationData;
        this.d = baseRequest;
        this.e = gson;
        this.f = flags;
        this.g = internalAdRequestEventEmitter;
        if (flags.b() && signalGenerationData.b.getN() == x11.SCAR_REQUEST_TYPE_GAM_S2S) {
            str = "https://pubads.g.doubleclick.net/gampad/ads?gsig=" + signalGenerationData.d;
        } else {
            str = "";
        }
        this.h = str;
    }

    public final JsonObject a() {
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonObject2 = new JsonObject();
        JsonObject jsonObject3 = new JsonObject();
        jsonObject2.addProperty("ad_request_url", this.h);
        jsonObject2.addProperty("ad_request_post_body", "");
        jsonObject2.addProperty("base_url", "");
        jsonObject2.add("signals", this.e.toJsonTree(this.c.c).getAsJsonObject());
        jsonObject3.addProperty(C3510b4.i.E0, this.b);
        jsonObject3.add("headers", new JsonObject());
        jsonObject.add("request", jsonObject2);
        jsonObject.add(Ue.n, jsonObject3);
        jsonObject.add("flags", new JsonObject());
        return jsonObject;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x010e A[Catch: all -> 0x003b, TRY_LEAVE, TryCatch #5 {all -> 0x003b, blocks: (B:13:0x0036, B:45:0x0105, B:46:0x010a, B:48:0x010e), top: B:88:0x0036 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0124 A[Catch: all -> 0x0153, TryCatch #1 {all -> 0x0153, blocks: (B:54:0x011d, B:56:0x0124, B:58:0x0128, B:60:0x012c, B:61:0x012f, B:63:0x0133, B:65:0x0137, B:67:0x013b, B:68:0x013c, B:69:0x0141, B:70:0x0142, B:71:0x0149, B:72:0x014a, B:73:0x0151, B:74:0x0152), top: B:82:0x011d }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0128 A[Catch: all -> 0x0153, TryCatch #1 {all -> 0x0153, blocks: (B:54:0x011d, B:56:0x0124, B:58:0x0128, B:60:0x012c, B:61:0x012f, B:63:0x0133, B:65:0x0137, B:67:0x013b, B:68:0x013c, B:69:0x0141, B:70:0x0142, B:71:0x0149, B:72:0x014a, B:73:0x0151, B:74:0x0152), top: B:82:0x011d }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0133 A[Catch: all -> 0x0153, TryCatch #1 {all -> 0x0153, blocks: (B:54:0x011d, B:56:0x0124, B:58:0x0128, B:60:0x012c, B:61:0x012f, B:63:0x0133, B:65:0x0137, B:67:0x013b, B:68:0x013c, B:69:0x0141, B:70:0x0142, B:71:0x0149, B:72:0x014a, B:73:0x0151, B:74:0x0152), top: B:82:0x011d }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0137 A[Catch: all -> 0x0153, TryCatch #1 {all -> 0x0153, blocks: (B:54:0x011d, B:56:0x0124, B:58:0x0128, B:60:0x012c, B:61:0x012f, B:63:0x0133, B:65:0x0137, B:67:0x013b, B:68:0x013c, B:69:0x0141, B:70:0x0142, B:71:0x0149, B:72:0x014a, B:73:0x0151, B:74:0x0152), top: B:82:0x011d }] */
    /* JADX WARN: Code duplicated, block: B:67:0x013b A[Catch: all -> 0x0153, TryCatch #1 {all -> 0x0153, blocks: (B:54:0x011d, B:56:0x0124, B:58:0x0128, B:60:0x012c, B:61:0x012f, B:63:0x0133, B:65:0x0137, B:67:0x013b, B:68:0x013c, B:69:0x0141, B:70:0x0142, B:71:0x0149, B:72:0x014a, B:73:0x0151, B:74:0x0152), top: B:82:0x011d }] */
    /* JADX WARN: Code duplicated, block: B:68:0x013c A[Catch: all -> 0x0153, TryCatch #1 {all -> 0x0153, blocks: (B:54:0x011d, B:56:0x0124, B:58:0x0128, B:60:0x012c, B:61:0x012f, B:63:0x0133, B:65:0x0137, B:67:0x013b, B:68:0x013c, B:69:0x0141, B:70:0x0142, B:71:0x0149, B:72:0x014a, B:73:0x0151, B:74:0x0152), top: B:82:0x011d }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0142 A[Catch: all -> 0x0153, TryCatch #1 {all -> 0x0153, blocks: (B:54:0x011d, B:56:0x0124, B:58:0x0128, B:60:0x012c, B:61:0x012f, B:63:0x0133, B:65:0x0137, B:67:0x013b, B:68:0x013c, B:69:0x0141, B:70:0x0142, B:71:0x0149, B:72:0x014a, B:73:0x0151, B:74:0x0152), top: B:82:0x011d }] */
    /* JADX WARN: Code duplicated, block: B:72:0x014a A[Catch: all -> 0x0153, TryCatch #1 {all -> 0x0153, blocks: (B:54:0x011d, B:56:0x0124, B:58:0x0128, B:60:0x012c, B:61:0x012f, B:63:0x0133, B:65:0x0137, B:67:0x013b, B:68:0x013c, B:69:0x0141, B:70:0x0142, B:71:0x0149, B:72:0x014a, B:73:0x0151, B:74:0x0152), top: B:82:0x011d }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0152 A[Catch: all -> 0x0153, TRY_LEAVE, TryCatch #1 {all -> 0x0153, blocks: (B:54:0x011d, B:56:0x0124, B:58:0x0128, B:60:0x012c, B:61:0x012f, B:63:0x0133, B:65:0x0137, B:67:0x013b, B:68:0x013c, B:69:0x0141, B:70:0x0142, B:71:0x0149, B:72:0x014a, B:73:0x0151, B:74:0x0152), top: B:82:0x011d }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v9, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v6, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v9, types: [ads_mobile_sdk.rr3] */
    @Override // kotlin.nt3
    public final Object b(Continuation continuation) {
        wb wbVar;
        Closeable closeableA;
        ?? r6;
        xb xbVar;
        Object j01Var;
        ec3 ec3Var;
        Closeable closeable;
        ?? r1;
        Object q01Var;
        ?? r2;
        if (continuation instanceof wb) {
            wbVar = (wb) continuation;
            int i = wbVar.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                wbVar.f = i - Integer.MIN_VALUE;
            } else {
                wbVar = new wb(this, continuation);
            }
        } else {
            wbVar = new wb(this, continuation);
        }
        Object objA = wbVar.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = wbVar.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            s11 s11Var = s11.CUI_NAME_ADREQUEST_NORMALIZE_RESPONSE;
            WeakHashMap weakHashMap = hs3.a;
            closeableA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                JsonObject jsonObjectA = a();
                Object obj = this.a;
                wbVar.a = this;
                wbVar.b = closeableA;
                wbVar.c = closeableA;
                wbVar.f = 1;
                obj.getClass();
                String string = jsonObjectA.toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                objA = ((rp0) obj).a("google.afma.response.normalize", string, wbVar);
                if (objA != coroutine_suspended) {
                    xbVar = this;
                    r6 = closeableA;
                }
                return coroutine_suspended;
            } catch (Throwable th) {
                th = th;
                r6 = closeableA;
                r6.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    r6.a(th);
                }
                if (th instanceof TimeoutCancellationException) {
                    throw new i21(th);
                }
                if (th instanceof CancellationException) {
                    throw new wz0(th);
                }
                if (th instanceof w01) {
                    throw th;
                }
                throw new b01(th);
            }
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ec3Var = (ec3) wbVar.c;
            closeable = wbVar.b;
            r2 = (rr3) wbVar.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(objA);
                r1 = r2;
                q01Var = new q01(ec3Var);
                r2 = r1;
                if (q01Var instanceof i01) {
                    xs3.a((i01) q01Var, false);
                }
                CloseableKt.closeFinally(closeable, null);
                return q01Var;
            } catch (Throwable th2) {
                th = th2;
                r6 = r2;
                closeableA = closeable;
                try {
                    r6.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        r6.a(th);
                    }
                    if (th instanceof TimeoutCancellationException) {
                        throw new i21(th);
                    }
                    if (th instanceof CancellationException) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        CloseableKt.closeFinally(closeableA, th3);
                        throw th4;
                    }
                }
            }
        }
        closeableA = (Closeable) wbVar.c;
        r6 = (rr3) wbVar.b;
        xbVar = (xb) wbVar.a;
        try {
            p005kotlin.ResultKt.throwOnFailure(objA);
            r6 = r6;
        } catch (Throwable th5) {
            th = th5;
            r6.b(th);
            if (th instanceof v24) {
                throw th;
            }
            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                r6.a(th);
            }
            if (th instanceof TimeoutCancellationException) {
                throw new i21(th);
            }
            if (th instanceof CancellationException) {
                throw new wz0(th);
            }
            if (th instanceof w01) {
                throw th;
            }
            throw new b01(th);
        }
        v01 v01Var = (v01) objA;
        if (v01Var instanceof i01) {
            q01Var = (i01) v01Var;
        } else {
            Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
            JsonObject json = (JsonObject) ((q01) v01Var).b;
            ex0 ex0Var = xbVar.f;
            Intrinsics.checkNotNullParameter(json, "json");
            zb3 block = new zb3(ex0Var, json, null);
            Intrinsics.checkNotNullParameter(block, "block");
            try {
                j01Var = new q01(block.invoke());
            } catch (Exception e) {
                j01Var = new j01(e, null, null, 6);
            }
            if (!(j01Var instanceof i01)) {
                Intrinsics.checkNotNull(j01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                ac3 ac3Var = (ac3) ((q01) j01Var).b;
                hs3.a().a.b.b = ac3Var.b.h;
                ec3Var = new ec3(new wb3(xbVar.d), ac3Var, false, null);
                ej1 ej1Var = xbVar.g;
                wbVar.a = r6;
                wbVar.b = closeableA;
                wbVar.c = ec3Var;
                wbVar.f = 2;
                if (ej1Var.a(ec3Var, wbVar) != coroutine_suspended) {
                    closeable = closeableA;
                    r1 = r6;
                    q01Var = new q01(ec3Var);
                    r2 = r1;
                    if (q01Var instanceof i01) {
                        xs3.a((i01) q01Var, false);
                    }
                    CloseableKt.closeFinally(closeable, null);
                    return q01Var;
                }
                return coroutine_suspended;
            }
            q01Var = (i01) j01Var;
        }
        closeable = closeableA;
        r2 = r6;
        if (q01Var instanceof i01) {
            xs3.a((i01) q01Var, false);
        }
        CloseableKt.closeFinally(closeable, null);
        return q01Var;
    }
}
