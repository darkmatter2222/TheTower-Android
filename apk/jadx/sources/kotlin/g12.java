package kotlin;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.ironsource.C3510b4;
import com.tapjoy.TapjoyConstants;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class g12 {
    public final Context a;
    public final CoroutineContext b;
    public final v42 c;
    public final g52 d;
    public final NativeRequest e;
    public final ex0 f;
    public final ur3 g;

    public g12(Context context, CoroutineContext backgroundContext, v42 nativeAssetsLoader, g52 nativeCustomAssetsLoader, NativeRequest nativeRequest, ex0 flags, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(nativeAssetsLoader, "nativeAssetsLoader");
        Intrinsics.checkNotNullParameter(nativeCustomAssetsLoader, "nativeCustomAssetsLoader");
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = context;
        this.b = backgroundContext;
        this.c = nativeAssetsLoader;
        this.d = nativeCustomAssetsLoader;
        this.e = nativeRequest;
        this.f = flags;
        this.g = traceLogger;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0072 A[Catch: all -> 0x0031, TRY_LEAVE, TryCatch #1 {all -> 0x0031, blocks: (B:12:0x002d, B:27:0x006c, B:29:0x0072, B:34:0x0081, B:35:0x008f), top: B:68:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public static final Object a(g12 g12Var, s02 s02Var, r31 r31Var, Continuation continuation) {
        e12 e12Var;
        ?? r10;
        ?? r7;
        TimeoutCancellationException e;
        rr3 rr3Var;
        Object obj;
        g12Var.getClass();
        if (continuation instanceof e12) {
            e12Var = (e12) continuation;
            int i = e12Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                e12Var.e = i - Integer.MIN_VALUE;
            } else {
                e12Var = new e12(g12Var, continuation);
            }
        } else {
            e12Var = new e12(g12Var, continuation);
        }
        Object obj2 = e12Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = e12Var.e;
        try {
            if (i2 != 0) {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                rr3 rr3Var2 = e12Var.b;
                rr3 rr3Var3 = e12Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj2);
                    rr3Var = rr3Var2;
                    obj = p005kotlin.Unit.INSTANCE;
                    if (obj instanceof i01) {
                        xs3.a((i01) obj, false);
                    }
                    CloseableKt.closeFinally(rr3Var, null);
                    return obj;
                } catch (TimeoutCancellationException e2) {
                    e = e2;
                    throw new w01(new j01(e, kk1.TIMEOUT, "Immersive video media data timed out."));
                }
            }
            p005kotlin.ResultKt.throwOnFailure(obj2);
            s11 s11Var = s11.CUI_NAME_LOAD_NATIVE_IMMERSIVE_VIDEO_MEDIA_DATA;
            WeakHashMap weakHashMap = hs3.a;
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                q41 q41VarD = r31Var.d();
                if (q41VarD == null) {
                    throw new w01(new m01("Video controller is null.", kk1.INTERNAL_ERROR));
                }
                try {
                    long jY = g12Var.f.Y();
                    f12 f12Var = new f12(q41VarD, s02Var, null);
                    e12Var.a = rr3VarA;
                    e12Var.b = rr3VarA;
                    e12Var.e = 1;
                    if (TimeoutKt.m4522withTimeoutKLykuaI(jY, f12Var, e12Var) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    rr3Var = rr3VarA;
                    obj = p005kotlin.Unit.INSTANCE;
                    if (obj instanceof i01) {
                        xs3.a((i01) obj, false);
                    }
                    CloseableKt.closeFinally(rr3Var, null);
                    return obj;
                } catch (TimeoutCancellationException e3) {
                    e = e3;
                    throw new w01(new j01(e, kk1.TIMEOUT, "Immersive video media data timed out."));
                }
            } catch (Throwable th) {
                th = th;
                r7 = rr3VarA;
                r10 = rr3VarA;
                try {
                    r10.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        r10.a(th);
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
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.closeFinally(r7, th2);
                        throw th3;
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
            r10 = s02Var;
            r7 = g12Var;
        }
    }

    public final v01 a(Context context, s02 s02Var, i2 i2Var, JsonObject jsonObject) {
        String asString;
        String asString2;
        String asString3;
        String asString4;
        String asString5;
        String asString6;
        String strA = ds1.a(jsonObject, "extra_response_info", "");
        if (strA.length() > 0) {
            try {
                s02Var.w = JsonParser.parseString(strA).getAsJsonObject();
            } catch (Exception e) {
                ((as3) this.g).a("Failed to parse extra_response_info", (Throwable) e);
            }
        }
        ds1 ds1Var = ds1.a;
        int iA = ds1.a(jsonObject, "template_id", -1);
        s02Var.a = iA;
        if (iA == 3) {
            s02Var.b = q02.CUSTOM_NATIVE;
        } else {
            if (iA != 6) {
                return new m01("Invalid native ad template id!");
            }
            s02Var.b = q02.NATIVE;
        }
        JsonElement jsonElement = jsonObject.get("custom_template_id");
        String asString7 = jsonElement != null ? jsonElement.getAsString() : null;
        s02Var.c = asString7;
        if (s02Var.b == q02.CUSTOM_NATIVE && asString7 == null) {
            return new m01("No custom template id for custom template ad response.");
        }
        s02Var.e = Double.valueOf(Double.parseDouble(ds1.a(jsonObject, "rating", "-1.0")));
        JsonElement jsonElement2 = jsonObject.get("headline");
        String asString8 = jsonElement2 != null ? jsonElement2.getAsString() : null;
        if (i2Var.d0) {
            int i = zn3.a;
            asString8 = yn3.a(context) + ": " + asString8;
        }
        if (asString8 != null) {
            s02Var.d.put("headline", asString8);
        }
        JsonElement jsonElement3 = jsonObject.get(C3510b4.i.E0);
        if (jsonElement3 != null && (asString6 = jsonElement3.getAsString()) != null) {
            s02Var.d.put(C3510b4.i.E0, asString6);
        }
        JsonElement jsonElement4 = jsonObject.get("call_to_action");
        if (jsonElement4 != null && (asString5 = jsonElement4.getAsString()) != null) {
            s02Var.d.put("call_to_action", asString5);
        }
        JsonElement jsonElement5 = jsonObject.get("store");
        if (jsonElement5 != null && (asString4 = jsonElement5.getAsString()) != null) {
            s02Var.d.put("store", asString4);
        }
        JsonElement jsonElement6 = jsonObject.get("price");
        if (jsonElement6 != null && (asString3 = jsonElement6.getAsString()) != null) {
            s02Var.d.put("price", asString3);
        }
        JsonElement jsonElement7 = jsonObject.get(C3510b4.i.F0);
        if (jsonElement7 != null && (asString2 = jsonElement7.getAsString()) != null) {
            s02Var.d.put(C3510b4.i.F0, asString2);
        }
        JsonElement jsonElement8 = jsonObject.get("creative_summary");
        if (jsonElement8 != null && (asString = jsonElement8.getAsString()) != null) {
            s02Var.d.put("creative_summary", asString);
        }
        String strA2 = ds1.a(jsonObject, TapjoyConstants.TJC_APP_ID, "");
        if (strA2.length() > 0) {
            s02Var.d.put(C3510b4.i.V, strA2);
        }
        s02Var.u = this.e.getAdChoicesPlacement();
        return new q01(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0074 A[Catch: all -> 0x00a3, TryCatch #0 {all -> 0x00a3, blocks: (B:31:0x006d, B:33:0x0074, B:35:0x0078, B:37:0x007c, B:38:0x007f, B:40:0x0083, B:42:0x0087, B:44:0x008b, B:45:0x008c, B:46:0x0091, B:47:0x0092, B:48:0x0099, B:49:0x009a, B:50:0x00a1, B:51:0x00a2), top: B:57:0x006d }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0083 A[Catch: all -> 0x00a3, TryCatch #0 {all -> 0x00a3, blocks: (B:31:0x006d, B:33:0x0074, B:35:0x0078, B:37:0x007c, B:38:0x007f, B:40:0x0083, B:42:0x0087, B:44:0x008b, B:45:0x008c, B:46:0x0091, B:47:0x0092, B:48:0x0099, B:49:0x009a, B:50:0x00a1, B:51:0x00a2), top: B:57:0x006d }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0087 A[Catch: all -> 0x00a3, TryCatch #0 {all -> 0x00a3, blocks: (B:31:0x006d, B:33:0x0074, B:35:0x0078, B:37:0x007c, B:38:0x007f, B:40:0x0083, B:42:0x0087, B:44:0x008b, B:45:0x008c, B:46:0x0091, B:47:0x0092, B:48:0x0099, B:49:0x009a, B:50:0x00a1, B:51:0x00a2), top: B:57:0x006d }] */
    /* JADX WARN: Code duplicated, block: B:44:0x008b A[Catch: all -> 0x00a3, TryCatch #0 {all -> 0x00a3, blocks: (B:31:0x006d, B:33:0x0074, B:35:0x0078, B:37:0x007c, B:38:0x007f, B:40:0x0083, B:42:0x0087, B:44:0x008b, B:45:0x008c, B:46:0x0091, B:47:0x0092, B:48:0x0099, B:49:0x009a, B:50:0x00a1, B:51:0x00a2), top: B:57:0x006d }] */
    /* JADX WARN: Code duplicated, block: B:45:0x008c A[Catch: all -> 0x00a3, TryCatch #0 {all -> 0x00a3, blocks: (B:31:0x006d, B:33:0x0074, B:35:0x0078, B:37:0x007c, B:38:0x007f, B:40:0x0083, B:42:0x0087, B:44:0x008b, B:45:0x008c, B:46:0x0091, B:47:0x0092, B:48:0x0099, B:49:0x009a, B:50:0x00a1, B:51:0x00a2), top: B:57:0x006d }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0092 A[Catch: all -> 0x00a3, TryCatch #0 {all -> 0x00a3, blocks: (B:31:0x006d, B:33:0x0074, B:35:0x0078, B:37:0x007c, B:38:0x007f, B:40:0x0083, B:42:0x0087, B:44:0x008b, B:45:0x008c, B:46:0x0091, B:47:0x0092, B:48:0x0099, B:49:0x009a, B:50:0x00a1, B:51:0x00a2), top: B:57:0x006d }] */
    /* JADX WARN: Code duplicated, block: B:49:0x009a A[Catch: all -> 0x00a3, TryCatch #0 {all -> 0x00a3, blocks: (B:31:0x006d, B:33:0x0074, B:35:0x0078, B:37:0x007c, B:38:0x007f, B:40:0x0083, B:42:0x0087, B:44:0x008b, B:45:0x008c, B:46:0x0091, B:47:0x0092, B:48:0x0099, B:49:0x009a, B:50:0x00a1, B:51:0x00a2), top: B:57:0x006d }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00a2 A[Catch: all -> 0x00a3, TRY_LEAVE, TryCatch #0 {all -> 0x00a3, blocks: (B:31:0x006d, B:33:0x0074, B:35:0x0078, B:37:0x007c, B:38:0x007f, B:40:0x0083, B:42:0x0087, B:44:0x008b, B:45:0x008c, B:46:0x0091, B:47:0x0092, B:48:0x0099, B:49:0x009a, B:50:0x00a1, B:51:0x00a2), top: B:57:0x006d }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(i2 i2Var, JsonObject jsonObject, eo2 eo2Var, Continuation continuation) {
        t02 t02Var;
        rr3 rr3VarA;
        TimeoutCancellationException th;
        rr3 rr3Var;
        rr3 rr3Var2;
        if (continuation instanceof t02) {
            t02Var = (t02) continuation;
            int i = t02Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                t02Var.e = i - Integer.MIN_VALUE;
            } else {
                t02Var = new t02(this, continuation);
            }
        } else {
            t02Var = new t02(this, continuation);
        }
        Object obj = t02Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = t02Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s11 s11Var = s11.CUI_NAME_LOAD_NATIVE_ASSETS;
            WeakHashMap weakHashMap = hs3.a;
            rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                t02Var.a = rr3VarA;
                t02Var.b = rr3VarA;
                t02Var.e = 1;
                Object objB = b(i2Var, jsonObject, eo2Var, t02Var);
                if (objB == coroutine_suspended) {
                    return coroutine_suspended;
                }
                rr3Var2 = rr3VarA;
                obj = objB;
                rr3Var = rr3Var2;
            } catch (Throwable th2) {
                th = th2;
                rr3Var = rr3VarA;
                rr3VarA.b(th);
                if (!(th instanceof v24)) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                    rr3VarA.a(th);
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    throw new i21(th);
                }
                if (!(th instanceof CancellationException)) {
                    throw new wz0(th);
                }
                if (th instanceof w01) {
                    throw th;
                }
                throw new b01(th);
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3Var = t02Var.b;
            rr3Var2 = t02Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
            } catch (Throwable th3) {
                th = th3;
                rr3VarA = rr3Var2;
                try {
                    rr3VarA.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA.a(th);
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        throw new i21(th);
                    }
                    if (!(th instanceof CancellationException)) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } catch (Throwable th5) {
                        CloseableKt.closeFinally(rr3Var, th4);
                        throw th5;
                    }
                }
            }
        }
        v01 v01Var = (v01) obj;
        if (v01Var instanceof i01) {
            xs3.a((i01) v01Var, false);
        }
        CloseableKt.closeFinally(rr3Var, null);
        return v01Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(i2 i2Var, JsonObject jsonObject, eo2 eo2Var, Continuation continuation) {
        u02 u02Var;
        s02 s02Var;
        if (continuation instanceof u02) {
            u02Var = (u02) continuation;
            int i = u02Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                u02Var.d = i - Integer.MIN_VALUE;
            } else {
                u02Var = new u02(this, continuation);
            }
        } else {
            u02Var = new u02(this, continuation);
        }
        Object obj = u02Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = u02Var.d;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                s02 s02Var2 = new s02();
                v01 v01VarA = a(this.a, s02Var2, i2Var, jsonObject);
                if (v01VarA instanceof i01) {
                    return (i01) v01VarA;
                }
                Intrinsics.checkNotNull(v01VarA, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                d12 d12Var = new d12(eo2Var, s02Var2, this, jsonObject, null);
                u02Var.a = s02Var2;
                u02Var.d = 1;
                if (CoroutineScopeKt.coroutineScope(d12Var, u02Var) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                s02Var = s02Var2;
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                s02Var = u02Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
            }
            return new q01(s02Var);
        } catch (w01 e) {
            return e.a;
        }
    }
}
