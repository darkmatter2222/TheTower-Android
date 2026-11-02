package kotlin;

import android.net.Uri;
import android.util.Log;
import com.google.common.base.Splitter;
import com.google.common.net.HttpHeaders;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import com.ironsource.adapters.facebook.FacebookConstants;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okhttp3.Call;
import okhttp3.ConnectionPool;
import okhttp3.Dispatcher;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.DebugProbesKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Ref;
import p005kotlin.text.StringsKt;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class o71 implements e01 {
    public final ex0 a;
    public final zw3 b;
    public final CoroutineScope c;
    public final rz d;
    public uv e;
    public vk0 f;
    public final Mutex g;
    public volatile OkHttpClient h;
    public OkHttpClient i;

    public o71(ex0 ex0Var, sz concurrencyObjects, zw3 userAgentProvider, CoroutineScope backgroundScope) {
        Intrinsics.checkNotNullParameter(concurrencyObjects, "concurrencyObjects");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        this.a = ex0Var;
        this.b = userAgentProvider;
        this.c = backgroundScope;
        this.d = concurrencyObjects.a();
        this.g = MutexKt.Mutex$default(false, 1, null);
    }

    @Override // kotlin.e01
    public final Object a(int i, long j, m8 m8Var) {
        long duration;
        OkHttpClient.Builder builderDispatcher = new OkHttpClient.Builder().dispatcher(new Dispatcher(this.d));
        ex0 ex0Var = this.a;
        if (ex0Var != null) {
            duration = ex0Var.C();
        } else {
            Duration.Companion companion = Duration.INSTANCE;
            duration = DurationKt.toDuration(20, DurationUnit.SECONDS);
        }
        this.i = builderDispatcher.callTimeout(Duration.m4378getInWholeMillisecondsimpl(duration), TimeUnit.MILLISECONDS).connectionPool(new ConnectionPool(i, j, TimeUnit.MINUTES)).build();
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(f81 f81Var, Map map, Continuation continuation) {
        a71 a71Var;
        Map mapA;
        e81 e81Var;
        Map map2;
        String str;
        if (continuation instanceof a71) {
            a71Var = (a71) continuation;
            int i = a71Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                a71Var.g = i - Integer.MIN_VALUE;
            } else {
                a71Var = new a71(this, continuation);
            }
        } else {
            a71Var = new a71(this, continuation);
        }
        Object obj = a71Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = a71Var.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            uv uvVar = this.e;
            if (uvVar != null) {
                String string = f81Var.a.toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                mapA = uvVar.a(Uri.parse(string));
            } else {
                mapA = null;
            }
            f81Var.getClass();
            e81Var = new e81(f81Var);
            zw3 zw3Var = this.b;
            a71Var.a = map;
            a71Var.b = mapA;
            a71Var.c = e81Var;
            a71Var.d = HttpHeaders.USER_AGENT;
            a71Var.g = 1;
            Object objA = zw3Var.a(a71Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            map2 = mapA;
            obj = objA;
            str = HttpHeaders.USER_AGENT;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = a71Var.d;
            e81 e81Var2 = a71Var.c;
            map2 = a71Var.b;
            Map map3 = a71Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            e81Var = e81Var2;
            map = map3;
        }
        e81 e81VarA = e81Var.a(str, (String) obj);
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                e81VarA.a((String) entry.getKey(), (String) entry.getValue());
            }
        }
        if (map2 != null) {
            for (Map.Entry entry2 : map2.entrySet()) {
                e81VarA.a((String) entry2.getKey(), (String) entry2.getValue());
            }
        }
        return e81VarA.a();
    }

    @Override // kotlin.e01
    public final Object a(f81 f81Var, Duration duration, ja2 ja2Var) {
        return e01.a((e01) this, f81Var, duration, true, (Continuation) ja2Var, 16);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v5, types: [T, okhttp3.OkHttpClient] */
    /* JADX WARN: Type inference failed for: r14v21 */
    /* JADX WARN: Type inference failed for: r14v22 */
    /* JADX WARN: Type inference failed for: r14v4, types: [T, okhttp3.OkHttpClient] */
    @Override // kotlin.e01
    public final Object a(f81 f81Var, Duration duration, Map map, boolean z, boolean z2, Continuation continuation) {
        i71 i71Var;
        OkHttpClient okHttpClient;
        OkHttpClient okHttpClient2;
        f81 f81Var2;
        Ref.ObjectRef objectRef;
        o71 o71Var;
        OkHttpClient okHttpClient3;
        OkHttpClient okHttpClient4;
        Request request;
        if (continuation instanceof i71) {
            i71Var = (i71) continuation;
            int i = i71Var.h;
            if ((i & Integer.MIN_VALUE) != 0) {
                i71Var.h = i - Integer.MIN_VALUE;
            } else {
                i71Var = new i71(this, continuation);
            }
        } else {
            i71Var = new i71(this, continuation);
        }
        i71 i71Var2 = i71Var;
        Object objA = i71Var2.f;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = i71Var2.h;
        if (i2 != 0) {
            if (i2 == 1) {
                z2 = i71Var2.e;
                z = i71Var2.d;
                Ref.ObjectRef objectRef2 = i71Var2.c;
                f81 f81Var3 = (f81) i71Var2.b;
                o71 o71Var2 = (o71) i71Var2.a;
                p005kotlin.ResultKt.throwOnFailure(objA);
                f81Var2 = f81Var3;
                o71Var = o71Var2;
                objectRef = objectRef2;
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                request = (Request) i71Var2.b;
                objectRef = (Ref.ObjectRef) i71Var2.a;
                p005kotlin.ResultKt.throwOnFailure(objA);
            }
            v01 v01Var = (v01) objA;
            Splitter splitter = f01.a;
            f01.a(new k71(objectRef, request));
            return v01Var;
        }
        p005kotlin.ResultKt.throwOnFailure(objA);
        if (!z ? (okHttpClient = this.h) == null : (okHttpClient3 = this.i) == null && (okHttpClient4 = this.h) == null) {
            okHttpClient2 = okHttpClient;
            okHttpClient2 = okHttpClient3;
            okHttpClient2 = okHttpClient4;
            Intrinsics.throwUninitializedPropertyAccessException("okHttpClient");
            okHttpClient2 = null;
        }
        okHttpClient2 = okHttpClient;
        okHttpClient2 = okHttpClient3;
        okHttpClient2 = okHttpClient4;
        okHttpClient2 = okHttpClient3;
        Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
        ?? Build = okHttpClient2;
        if (duration != null) {
            Build = okHttpClient2.newBuilder().callTimeout(Duration.m4378getInWholeMillisecondsimpl(duration.getRawValue()), TimeUnit.MILLISECONDS).build();
        }
        objectRef3.element = Build;
        if (!z2) {
            objectRef3.element = Build.newBuilder().followRedirects(false).followSslRedirects(false).build();
        }
        i71Var2.a = this;
        i71Var2.b = f81Var;
        i71Var2.c = objectRef3;
        i71Var2.d = z;
        i71Var2.e = z2;
        i71Var2.h = 1;
        objA = a(f81Var, map, i71Var2);
        if (objA != coroutine_suspended) {
            f81Var2 = f81Var;
            objectRef = objectRef3;
            o71Var = this;
        }
        return coroutine_suspended;
        boolean z3 = z;
        boolean z4 = z2;
        Request requestH = ((f81) objA).h();
        Splitter splitter2 = f01.a;
        f01.a(new j71(objectRef, requestH));
        OkHttpClient okHttpClient5 = (OkHttpClient) objectRef.element;
        i71Var2.a = objectRef;
        i71Var2.b = requestH;
        i71Var2.c = null;
        i71Var2.h = 2;
        objA = o71Var.a(requestH, okHttpClient5, z3, f81Var2, z4, i71Var2);
        if (objA != coroutine_suspended) {
            request = requestH;
            v01 v01Var2 = (v01) objA;
            Splitter splitter3 = f01.a;
            f01.a(new k71(objectRef, request));
            return v01Var2;
        }
        return coroutine_suspended;
    }

    @Override // kotlin.e01
    public final Object a(sl1 sl1Var) {
        long duration;
        OkHttpClient.Builder builderDispatcher = new OkHttpClient.Builder().dispatcher(new Dispatcher(this.d));
        ex0 ex0Var = this.a;
        if (ex0Var != null) {
            duration = ex0Var.C();
        } else {
            Duration.Companion companion = Duration.INSTANCE;
            duration = DurationKt.toDuration(20, DurationUnit.SECONDS);
        }
        this.h = builderDispatcher.callTimeout(Duration.m4378getInWholeMillisecondsimpl(duration), TimeUnit.MILLISECONDS).build();
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c4, code lost:
    
        if (r6 == r1) goto L31;
     */
    @Override // kotlin.e01
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r6, java.util.Map r7, p005kotlin.coroutines.Continuation r8) {
        /*
            Method dump skipped, instruction units count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.o71.a(java.lang.String, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object a(String str, UUID uuid, JsonObject jsonObject, Continuation continuation) {
        b71 b71Var;
        Mutex mutex;
        JsonObject jsonObject2;
        if (continuation instanceof b71) {
            b71Var = (b71) continuation;
            int i = b71Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                b71Var.e = i - Integer.MIN_VALUE;
            } else {
                b71Var = new b71(this, continuation);
            }
        } else {
            b71Var = new b71(this, continuation);
        }
        Object obj = b71Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = b71Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            JsonObject jsonObject3 = new JsonObject();
            jsonObject3.addProperty("timestamp", Boxing.boxLong(System.currentTimeMillis()));
            jsonObject3.addProperty("event", str);
            JsonArray jsonArray = new JsonArray();
            jsonArray.add("network_request_" + uuid);
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            jsonObject3.add("components", jsonArray);
            jsonObject3.add("params", jsonObject);
            mutex = this.g;
            b71Var.a = jsonObject3;
            b71Var.b = mutex;
            b71Var.e = 1;
            if (mutex.lock(null, b71Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            jsonObject2 = jsonObject3;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = b71Var.b;
            jsonObject2 = b71Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            f01.a("GMA Debug BEGIN", null, "GoogleMobileAdsNetwork", 2);
            f01.a("GMA Debug CONTENT " + jsonObject2, null, "GoogleMobileAdsNetwork", 2);
            f01.a("GMA Debug FINISH", null, "GoogleMobileAdsNetwork", 2);
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [T, okhttp3.OkHttpClient] */
    /* JADX WARN: Type inference failed for: r7v8, types: [T, okhttp3.OkHttpClient] */
    @Override // kotlin.e01
    public final Object a(URL url, ss0 ss0Var, Continuation continuation) {
        e71 e71Var;
        OkHttpClient okHttpClient;
        ?? Build;
        URL url2;
        Ref.ObjectRef objectRef;
        o71 o71Var;
        boolean z;
        Ref.ObjectRef objectRef2;
        Request request;
        if (continuation instanceof e71) {
            e71Var = (e71) continuation;
            int i = e71Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                e71Var.f = i - Integer.MIN_VALUE;
            } else {
                e71Var = new e71(this, continuation);
            }
        } else {
            e71Var = new e71(this, continuation);
        }
        e71 e71Var2 = e71Var;
        Object objA = e71Var2.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = e71Var2.f;
        if (i2 != 0) {
            if (i2 == 1) {
                boolean z2 = e71Var2.c;
                Ref.ObjectRef objectRef3 = (Ref.ObjectRef) e71Var2.b;
                o71 o71Var2 = (o71) e71Var2.a;
                p005kotlin.ResultKt.throwOnFailure(objA);
                z = z2;
                objectRef = objectRef3;
                o71Var = o71Var2;
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                request = (Request) e71Var2.b;
                objectRef2 = (Ref.ObjectRef) e71Var2.a;
                p005kotlin.ResultKt.throwOnFailure(objA);
            }
            v01 v01Var = (v01) objA;
            Splitter splitter = f01.a;
            f01.a(new g71(objectRef2, request));
            return v01Var;
        }
        p005kotlin.ResultKt.throwOnFailure(objA);
        ex0 ex0Var = this.a;
        ts0 ts0Var = ex0Var != null ? new ts0(ss0Var, ex0Var) : null;
        Ref.ObjectRef objectRef4 = new Ref.ObjectRef();
        if (ts0Var != null) {
            OkHttpClient okHttpClient2 = this.h;
            if (okHttpClient2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("okHttpClient");
                okHttpClient2 = null;
            }
            Build = okHttpClient2.newBuilder().addNetworkInterceptor(ts0Var).build();
        } else {
            okHttpClient = this.h;
            if (okHttpClient == null) {
                Build = okHttpClient;
                Intrinsics.throwUninitializedPropertyAccessException("okHttpClient");
                Build = 0;
            }
        }
        Build = okHttpClient;
        objectRef4.element = Build;
        objectRef4.element = Build.newBuilder().followRedirects(false).followSslRedirects(false).build();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList<p005kotlin.Pair> arrayList = new ArrayList();
        Intrinsics.checkNotNullParameter(url, "url");
        if (url == null) {
            throw new IllegalStateException("HttpRequest.Builder: URL must be set before calling build()".toString());
        }
        if (arrayList.isEmpty()) {
            url2 = url;
        } else {
            String string = url.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            Uri.Builder builderBuildUpon = Uri.parse(string).buildUpon();
            for (p005kotlin.Pair pair : arrayList) {
                builderBuildUpon.appendQueryParameter((String) pair.component1(), (String) pair.component2());
            }
            url2 = new URL(builderBuildUpon.build().toString());
        }
        f81 f81Var = new f81(url2, "GET", MapsKt.toMap(linkedHashMap), null, null, null);
        e71Var2.a = this;
        e71Var2.b = objectRef4;
        e71Var2.c = false;
        e71Var2.f = 1;
        Object objA2 = a(f81Var, (Map) null, e71Var2);
        if (objA2 != coroutine_suspended) {
            objA = objA2;
            objectRef = objectRef4;
            o71Var = this;
            z = false;
        }
        return coroutine_suspended;
        Request requestH = ((f81) objA).h();
        Splitter splitter2 = f01.a;
        f01.a(new f71(objectRef, requestH));
        OkHttpClient okHttpClient3 = (OkHttpClient) objectRef.element;
        e71Var2.a = objectRef;
        e71Var2.b = requestH;
        e71Var2.f = 2;
        objA = o71Var.a(requestH, okHttpClient3, false, (f81) null, z, (Continuation) e71Var2);
        if (objA != coroutine_suspended) {
            objectRef2 = objectRef;
            request = requestH;
            v01 v01Var2 = (v01) objA;
            Splitter splitter3 = f01.a;
            f01.a(new g71(objectRef2, request));
            return v01Var2;
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.e01
    public final Object a(URL url, Continuation continuation) {
        h71 h71Var;
        Request.Builder builderUrl;
        String str;
        o71 o71Var;
        if (continuation instanceof h71) {
            h71Var = (h71) continuation;
            int i = h71Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                h71Var.f = i - Integer.MIN_VALUE;
            } else {
                h71Var = new h71(this, continuation);
            }
        } else {
            h71Var = new h71(this, continuation);
        }
        h71 h71Var2 = h71Var;
        Object obj = h71Var2.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = h71Var2.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            builderUrl = new Request.Builder().url(url);
            zw3 zw3Var = this.b;
            h71Var2.a = this;
            h71Var2.b = builderUrl;
            h71Var2.c = HttpHeaders.USER_AGENT;
            h71Var2.f = 1;
            Object objA = zw3Var.a(h71Var2);
            if (objA != coroutine_suspended) {
                obj = objA;
                str = HttpHeaders.USER_AGENT;
                o71Var = this;
            }
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
            return obj;
        }
        str = h71Var2.c;
        builderUrl = h71Var2.b;
        o71Var = h71Var2.a;
        p005kotlin.ResultKt.throwOnFailure(obj);
        Request requestBuild = builderUrl.addHeader(str, (String) obj).head().build();
        OkHttpClient okHttpClient = o71Var.i;
        if (okHttpClient == null && (okHttpClient = o71Var.h) == null) {
            Intrinsics.throwUninitializedPropertyAccessException("okHttpClient");
            okHttpClient = null;
        }
        h71Var2.a = null;
        h71Var2.b = null;
        h71Var2.c = null;
        h71Var2.f = 2;
        Object objA2 = o71Var.a(requestBuild, okHttpClient, false, (f81) null, true, (Continuation) h71Var2);
        return objA2 == coroutine_suspended ? coroutine_suspended : objA2;
    }

    @Override // kotlin.e01
    public final Object a(URL url, Duration duration, Map map, boolean z, boolean z2, Continuation continuation) {
        URL url2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList<p005kotlin.Pair> arrayList = new ArrayList();
        Intrinsics.checkNotNullParameter(url, "url");
        if (arrayList.isEmpty()) {
            url2 = url;
        } else {
            String string = url.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            Uri.Builder builderBuildUpon = Uri.parse(string).buildUpon();
            for (p005kotlin.Pair pair : arrayList) {
                builderBuildUpon.appendQueryParameter((String) pair.component1(), (String) pair.component2());
            }
            url2 = new URL(builderBuildUpon.build().toString());
        }
        return a(new f81(url2, "GET", MapsKt.toMap(linkedHashMap), null, null, null), duration, map, z, z2, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:105:0x032b  */
    /* JADX WARN: Code duplicated, block: B:108:0x033b  */
    /* JADX WARN: Code duplicated, block: B:109:0x0350  */
    /* JADX WARN: Code duplicated, block: B:111:0x0353  */
    /* JADX WARN: Code duplicated, block: B:128:0x0398 A[EDGE_INSN: B:128:0x0398->B:129:0x039a BREAK  A[LOOP:0: B:121:0x0371->B:155:0x0371]] */
    /* JADX WARN: Code duplicated, block: B:130:0x039c  */
    /* JADX WARN: Code duplicated, block: B:132:0x03a9  */
    /* JADX WARN: Code duplicated, block: B:139:0x03f2 A[Catch: Exception -> 0x041c, TryCatch #0 {Exception -> 0x041c, blocks: (B:137:0x03ec, B:139:0x03f2, B:141:0x03f8), top: B:148:0x03ec }] */
    /* JADX WARN: Code duplicated, block: B:141:0x03f8 A[Catch: Exception -> 0x041c, TRY_LEAVE, TryCatch #0 {Exception -> 0x041c, blocks: (B:137:0x03ec, B:139:0x03f2, B:141:0x03f8), top: B:148:0x03ec }] */
    /* JADX WARN: Code duplicated, block: B:148:0x03ec A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:150:0x0283 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x0151  */
    /* JADX WARN: Code duplicated, block: B:48:0x017a  */
    /* JADX WARN: Code duplicated, block: B:51:0x0180 A[PHI: r4 r5 r6 r7 r10 r13 r14 r15 r29
  0x0180: PHI (r4v12 int) = (r4v6 int), (r4v6 int), (r4v30 int) binds: [B:44:0x014f, B:49:0x017c, B:20:0x008a] A[DONT_GENERATE, DONT_INLINE]
  0x0180: PHI (r5v11 okhttp3.Request) = (r5v5 okhttp3.Request), (r5v5 okhttp3.Request), (r5v29 okhttp3.Request) binds: [B:44:0x014f, B:49:0x017c, B:20:0x008a] A[DONT_GENERATE, DONT_INLINE]
  0x0180: PHI (r6v8 okhttp3.OkHttpClient) = (r6v2 okhttp3.OkHttpClient), (r6v2 okhttp3.OkHttpClient), (r6v22 okhttp3.OkHttpClient) binds: [B:44:0x014f, B:49:0x017c, B:20:0x008a] A[DONT_GENERATE, DONT_INLINE]
  0x0180: PHI (r7v10 ads_mobile_sdk.o71) = (r7v4 ads_mobile_sdk.o71), (r7v4 ads_mobile_sdk.o71), (r7v22 ads_mobile_sdk.o71) binds: [B:44:0x014f, B:49:0x017c, B:20:0x008a] A[DONT_GENERATE, DONT_INLINE]
  0x0180: PHI (r10v11 boolean) = (r10v5 boolean), (r10v5 boolean), (r10v23 boolean) binds: [B:44:0x014f, B:49:0x017c, B:20:0x008a] A[DONT_GENERATE, DONT_INLINE]
  0x0180: PHI (r13v11 boolean) = (r13v5 boolean), (r13v5 boolean), (r13v18 boolean) binds: [B:44:0x014f, B:49:0x017c, B:20:0x008a] A[DONT_GENERATE, DONT_INLINE]
  0x0180: PHI (r14v11 java.util.UUID) = (r14v5 java.util.UUID), (r14v5 java.util.UUID), (r14v16 java.util.UUID) binds: [B:44:0x014f, B:49:0x017c, B:20:0x008a] A[DONT_GENERATE, DONT_INLINE]
  0x0180: PHI (r15v5 ads_mobile_sdk.f81) = (r15v0 ads_mobile_sdk.f81), (r15v0 ads_mobile_sdk.f81), (r15v10 ads_mobile_sdk.f81) binds: [B:44:0x014f, B:49:0x017c, B:20:0x008a] A[DONT_GENERATE, DONT_INLINE]
  0x0180: PHI (r29v6 int) = (r29v2 int), (r29v2 int), (r29v11 int) binds: [B:44:0x014f, B:49:0x017c, B:20:0x008a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:53:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:56:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:59:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:61:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:63:0x01de  */
    /* JADX WARN: Code duplicated, block: B:76:0x027a A[PHI: r4 r7 r8 r10 r13 r14 r15 r29
  0x027a: PHI (r4v14 int) = (r4v13 int), (r4v13 int), (r4v13 int), (r4v32 int) binds: [B:62:0x01dc, B:64:0x01e0, B:74:0x0277, B:18:0x0053] A[DONT_GENERATE, DONT_INLINE]
  0x027a: PHI (r7v13 boolean) = (r7v12 boolean), (r7v12 boolean), (r7v12 boolean), (r7v24 boolean) binds: [B:62:0x01dc, B:64:0x01e0, B:74:0x0277, B:18:0x0053] A[DONT_GENERATE, DONT_INLINE]
  0x027a: PHI (r8v4 boolean) = (r8v3 boolean), (r8v3 boolean), (r8v3 boolean), (r8v17 boolean) binds: [B:62:0x01dc, B:64:0x01e0, B:74:0x0277, B:18:0x0053] A[DONT_GENERATE, DONT_INLINE]
  0x027a: PHI (r10v14 ads_mobile_sdk.o71) = (r10v13 ads_mobile_sdk.o71), (r10v13 ads_mobile_sdk.o71), (r10v13 ads_mobile_sdk.o71), (r10v26 ads_mobile_sdk.o71) binds: [B:62:0x01dc, B:64:0x01e0, B:74:0x0277, B:18:0x0053] A[DONT_GENERATE, DONT_INLINE]
  0x027a: PHI (r13v14 okhttp3.Response) = (r13v13 okhttp3.Response), (r13v13 okhttp3.Response), (r13v13 okhttp3.Response), (r13v22 okhttp3.Response) binds: [B:62:0x01dc, B:64:0x01e0, B:74:0x0277, B:18:0x0053] A[DONT_GENERATE, DONT_INLINE]
  0x027a: PHI (r14v13 java.util.UUID) = (r14v12 java.util.UUID), (r14v12 java.util.UUID), (r14v12 java.util.UUID), (r14v21 java.util.UUID) binds: [B:62:0x01dc, B:64:0x01e0, B:74:0x0277, B:18:0x0053] A[DONT_GENERATE, DONT_INLINE]
  0x027a: PHI (r15v7 ads_mobile_sdk.f81) = (r15v6 ads_mobile_sdk.f81), (r15v6 ads_mobile_sdk.f81), (r15v6 ads_mobile_sdk.f81), (r15v14 ads_mobile_sdk.f81) binds: [B:62:0x01dc, B:64:0x01e0, B:74:0x0277, B:18:0x0053] A[DONT_GENERATE, DONT_INLINE]
  0x027a: PHI (r29v8 int) = (r29v7 int), (r29v7 int), (r29v7 int), (r29v13 int) binds: [B:62:0x01dc, B:64:0x01e0, B:74:0x0277, B:18:0x0053] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:78:0x027d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:85:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:89:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:93:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:96:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:99:0x02f4 A[ADDED_TO_REGION] */
    public final Object a(Request request, OkHttpClient okHttpClient, boolean z, f81 f81Var, boolean z2, Continuation continuation) {
        l71 l71Var;
        int i;
        UUID uuidRandomUUID;
        f81 f81Var2;
        Request request2;
        boolean z3;
        OkHttpClient okHttpClient2;
        boolean z4;
        int i2;
        o71 o71Var;
        f81 f81Var3;
        UUID uuid;
        boolean z5;
        boolean z6;
        o71 o71Var2;
        OkHttpClient okHttpClient3;
        Request request3;
        int i3;
        Object objA;
        o71 o71Var3;
        boolean z7;
        boolean z8;
        v01 v01Var;
        Response response;
        g9 g9Var;
        Response response2;
        boolean z9;
        boolean z10;
        o71 o71Var4;
        ResponseBody responseBodyBody;
        Response responseBuild;
        int iCode;
        int i4;
        g81 g81Var;
        ex0 ex0Var;
        String str;
        int i5;
        ResponseBody responseBodyBody2;
        byte[] bArrBytes;
        ex0 ex0Var2;
        if (continuation instanceof l71) {
            l71Var = (l71) continuation;
            int i6 = l71Var.k;
            if ((i6 & Integer.MIN_VALUE) != 0) {
                l71Var.k = i6 - Integer.MIN_VALUE;
            } else {
                l71Var = new l71(this, continuation);
            }
        } else {
            l71Var = new l71(this, continuation);
        }
        Object objA2 = l71Var.i;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i7 = l71Var.k;
        int i8 = 1;
        if (i7 != 0) {
            if (i7 == 1) {
                i = 0;
                z3 = l71Var.g;
                z4 = l71Var.f;
                uuidRandomUUID = l71Var.e;
                f81Var2 = (f81) l71Var.d;
                okHttpClient2 = (OkHttpClient) l71Var.c;
                request2 = (Request) l71Var.b;
                o71Var = l71Var.a;
                p005kotlin.ResultKt.throwOnFailure(objA2);
            } else {
                if (i7 == 2) {
                    i = 0;
                    i3 = l71Var.h;
                    z6 = l71Var.g;
                    z5 = l71Var.f;
                    uuid = l71Var.e;
                    f81Var3 = (f81) l71Var.d;
                    okHttpClient3 = (OkHttpClient) l71Var.c;
                    request3 = (Request) l71Var.b;
                    o71Var2 = l71Var.a;
                    p005kotlin.ResultKt.throwOnFailure(objA2);
                    Call callNewCall = okHttpClient3.newCall(request3);
                    l71Var.a = o71Var2;
                    l71Var.b = f81Var3;
                    l71Var.c = uuid;
                    l71Var.d = null;
                    l71Var.e = null;
                    l71Var.f = z5;
                    l71Var.g = z6;
                    l71Var.h = i3;
                    l71Var.k = 3;
                    CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(l71Var), 1);
                    cancellableContinuationImpl.initCancellability();
                    cancellableContinuationImpl.invokeOnCancellation(new u71(callNewCall));
                    callNewCall.enqueue(new x71(cancellableContinuationImpl));
                    objA2 = cancellableContinuationImpl.getResult();
                    if (objA2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(l71Var);
                    }
                    if (objA2 != coroutine_suspended) {
                        boolean z11 = z6;
                        o71Var3 = o71Var2;
                        z7 = z11;
                        z8 = z5;
                        v01Var = (v01) objA2;
                        if (v01Var instanceof i01) {
                            return (i01) v01Var;
                        }
                        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                        response = (Response) ((q01) v01Var).b;
                        if (f81Var3 != null) {
                            response2 = response;
                            if (i3 != 0) {
                                responseBodyBody = response2.body();
                                if (responseBodyBody != null) {
                                    byte[] bArrBytes2 = responseBodyBody.bytes();
                                    Response.Builder builderNewBuilder = response2.newBuilder();
                                    ResponseBody.Companion companion = ResponseBody.INSTANCE;
                                    Response responseBuild2 = builderNewBuilder.body(companion.create(bArrBytes2, responseBodyBody.get$contentType())).build();
                                    responseBuild = response2.newBuilder().body(companion.create(bArrBytes2, responseBodyBody.get$contentType())).build();
                                    response2 = responseBuild2;
                                } else {
                                    responseBuild = response2;
                                }
                                Intrinsics.checkNotNull(uuid);
                                l71Var.a = o71Var3;
                                l71Var.b = f81Var3;
                                l71Var.c = responseBuild;
                                l71Var.d = null;
                                l71Var.f = z8;
                                l71Var.g = z7;
                                l71Var.k = 5;
                                if (o71Var3.a(response2, uuid, l71Var) != coroutine_suspended) {
                                    response2 = responseBuild;
                                }
                            }
                            z9 = z7;
                            z10 = z8;
                            o71Var4 = o71Var3;
                        } else {
                            response2 = response;
                            if (i3 != 0) {
                                responseBodyBody = response2.body();
                                if (responseBodyBody != null) {
                                    byte[] bArrBytes3 = responseBodyBody.bytes();
                                    Response.Builder builderNewBuilder2 = response2.newBuilder();
                                    ResponseBody.Companion companion2 = ResponseBody.INSTANCE;
                                    Response responseBuild3 = builderNewBuilder2.body(companion2.create(bArrBytes3, responseBodyBody.get$contentType())).build();
                                    responseBuild = response2.newBuilder().body(companion2.create(bArrBytes3, responseBodyBody.get$contentType())).build();
                                    response2 = responseBuild3;
                                } else {
                                    responseBuild = response2;
                                }
                                Intrinsics.checkNotNull(uuid);
                                l71Var.a = o71Var3;
                                l71Var.b = f81Var3;
                                l71Var.c = responseBuild;
                                l71Var.d = null;
                                l71Var.f = z8;
                                l71Var.g = z7;
                                l71Var.k = 5;
                                if (o71Var3.a(response2, uuid, l71Var) != coroutine_suspended) {
                                    response2 = responseBuild;
                                }
                            }
                            z9 = z7;
                            z10 = z8;
                            o71Var4 = o71Var3;
                        }
                    }
                    return coroutine_suspended;
                }
                if (i7 == 3) {
                    i = 0;
                    i3 = l71Var.h;
                    boolean z12 = l71Var.g;
                    boolean z13 = l71Var.f;
                    UUID uuid2 = (UUID) l71Var.c;
                    f81 f81Var4 = (f81) l71Var.b;
                    o71 o71Var5 = l71Var.a;
                    p005kotlin.ResultKt.throwOnFailure(objA2);
                    z7 = z12;
                    z8 = z13;
                    o71Var3 = o71Var5;
                    f81Var3 = f81Var4;
                    uuid = uuid2;
                    v01Var = (v01) objA2;
                    if (v01Var instanceof i01) {
                        return (i01) v01Var;
                    }
                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                    response = (Response) ((q01) v01Var).b;
                    if (f81Var3 != null || (g9Var = f81Var3.f) == null) {
                        response2 = response;
                        if (i3 != 0) {
                            responseBodyBody = response2.body();
                            if (responseBodyBody != null) {
                                byte[] bArrBytes4 = responseBodyBody.bytes();
                                Response.Builder builderNewBuilder3 = response2.newBuilder();
                                ResponseBody.Companion companion3 = ResponseBody.INSTANCE;
                                Response responseBuild4 = builderNewBuilder3.body(companion3.create(bArrBytes4, responseBodyBody.get$contentType())).build();
                                responseBuild = response2.newBuilder().body(companion3.create(bArrBytes4, responseBodyBody.get$contentType())).build();
                                response2 = responseBuild4;
                            } else {
                                responseBuild = response2;
                            }
                            Intrinsics.checkNotNull(uuid);
                            l71Var.a = o71Var3;
                            l71Var.b = f81Var3;
                            l71Var.c = responseBuild;
                            l71Var.d = null;
                            l71Var.f = z8;
                            l71Var.g = z7;
                            l71Var.k = 5;
                            if (o71Var3.a(response2, uuid, l71Var) != coroutine_suspended) {
                                response2 = responseBuild;
                            }
                        }
                        z9 = z7;
                        z10 = z8;
                        o71Var4 = o71Var3;
                    } else {
                        Map map = MapsKt.toMap(response.headers());
                        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(map.size()));
                        for (Map.Entry entry : map.entrySet()) {
                            Object key = entry.getKey();
                            CharSequence charSequence = (CharSequence) entry.getValue();
                            String[] strArr = new String[i8];
                            strArr[i] = FacebookConstants.PLACEMENT_IDS_SEPARATOR;
                            List listSplit$default = StringsKt.split$default(charSequence, strArr, false, 0, 6, (Object) null);
                            g9 g9Var2 = g9Var;
                            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listSplit$default, 10));
                            Iterator it = listSplit$default.iterator();
                            while (it.hasNext()) {
                                arrayList.add(StringsKt.trim((CharSequence) it.next()).toString());
                            }
                            linkedHashMap.put(key, arrayList);
                            g9Var = g9Var2;
                            i8 = 1;
                        }
                        l71Var.a = o71Var3;
                        l71Var.b = f81Var3;
                        l71Var.c = uuid;
                        l71Var.d = response;
                        l71Var.f = z8;
                        l71Var.g = z7;
                        l71Var.h = i3;
                        l71Var.k = 4;
                        if (((ej1) g9Var).a(linkedHashMap, l71Var) != coroutine_suspended) {
                            response2 = response;
                            if (i3 != 0) {
                                responseBodyBody = response2.body();
                                if (responseBodyBody != null) {
                                    byte[] bArrBytes5 = responseBodyBody.bytes();
                                    Response.Builder builderNewBuilder4 = response2.newBuilder();
                                    ResponseBody.Companion companion4 = ResponseBody.INSTANCE;
                                    Response responseBuild5 = builderNewBuilder4.body(companion4.create(bArrBytes5, responseBodyBody.get$contentType())).build();
                                    responseBuild = response2.newBuilder().body(companion4.create(bArrBytes5, responseBodyBody.get$contentType())).build();
                                    response2 = responseBuild5;
                                } else {
                                    responseBuild = response2;
                                }
                                Intrinsics.checkNotNull(uuid);
                                l71Var.a = o71Var3;
                                l71Var.b = f81Var3;
                                l71Var.c = responseBuild;
                                l71Var.d = null;
                                l71Var.f = z8;
                                l71Var.g = z7;
                                l71Var.k = 5;
                                if (o71Var3.a(response2, uuid, l71Var) != coroutine_suspended) {
                                    response2 = responseBuild;
                                }
                            }
                            z9 = z7;
                            z10 = z8;
                            o71Var4 = o71Var3;
                        }
                    }
                    return coroutine_suspended;
                }
                if (i7 == 4) {
                    i3 = l71Var.h;
                    z7 = l71Var.g;
                    z8 = l71Var.f;
                    response = (Response) l71Var.d;
                    uuid = (UUID) l71Var.c;
                    f81Var3 = (f81) l71Var.b;
                    i = 0;
                    o71Var3 = l71Var.a;
                    p005kotlin.ResultKt.throwOnFailure(objA2);
                    response2 = response;
                    if (i3 != 0) {
                        responseBodyBody = response2.body();
                        if (responseBodyBody != null) {
                            try {
                                byte[] bArrBytes6 = responseBodyBody.bytes();
                                Response.Builder builderNewBuilder5 = response2.newBuilder();
                                ResponseBody.Companion companion5 = ResponseBody.INSTANCE;
                                Response responseBuild6 = builderNewBuilder5.body(companion5.create(bArrBytes6, responseBodyBody.get$contentType())).build();
                                responseBuild = response2.newBuilder().body(companion5.create(bArrBytes6, responseBodyBody.get$contentType())).build();
                                response2 = responseBuild6;
                            } catch (Exception e) {
                                return new j01(e, null, null, 6);
                            }
                        } else {
                            responseBuild = response2;
                        }
                        Intrinsics.checkNotNull(uuid);
                        l71Var.a = o71Var3;
                        l71Var.b = f81Var3;
                        l71Var.c = responseBuild;
                        l71Var.d = null;
                        l71Var.f = z8;
                        l71Var.g = z7;
                        l71Var.k = 5;
                        if (o71Var3.a(response2, uuid, l71Var) != coroutine_suspended) {
                            response2 = responseBuild;
                        }
                        return coroutine_suspended;
                    }
                    z9 = z7;
                    z10 = z8;
                    o71Var4 = o71Var3;
                } else {
                    if (i7 != 5) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    z9 = l71Var.g;
                    z10 = l71Var.f;
                    response2 = (Response) l71Var.c;
                    o71Var4 = l71Var.a;
                    p005kotlin.ResultKt.throwOnFailure(objA2);
                    i = 0;
                }
            }
            o71Var4.getClass();
            iCode = response2.code();
            if (300 <= iCode || iCode >= 400) {
                i4 = i;
            } else {
                i4 = 1;
            }
            if (response2.isSuccessful() && (i4 == 0 || z9)) {
                response2.close();
                return new k01(response2.code(), response2.message());
            }
            Map headers = MapsKt.toMap(response2.headers());
            g81Var = new g81();
            g81Var.a = response2.code();
            g81Var.b = response2.message();
            response2.protocol().getProtocol();
            if (i4 != 0) {
                g81Var.f = Response.header$default(response2, HttpHeaders.LOCATION, null, 2, null);
            }
            ex0Var = o71Var4.a;
            if (ex0Var != null) {
                Intrinsics.checkNotNullParameter("gads:html_body_header", C3510b4.i.W);
                Intrinsics.checkNotNullParameter("X-Afma-Is-Html-Response", "defaultValue");
                str = (String) ex0Var.a("gads:html_body_header", "X-Afma-Is-Html-Response", yr.o);
            } else {
                str = null;
            }
            if (str == null && str.length() != 0 && z10 && response2.body() != null && !headers.isEmpty()) {
                Iterator it2 = headers.entrySet().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        i5 = i;
                        break;
                    }
                    Map.Entry entry2 = (Map.Entry) it2.next();
                    if (StringsKt.equals((String) entry2.getKey(), str, true) && Boolean.parseBoolean((String) entry2.getValue())) {
                        i5 = 1;
                        break;
                    }
                }
            } else {
                i5 = i;
                break;
            }
            if (i5 != 0) {
                hs3.a().a.b.g = true;
            }
            if (i5 != 0 || (ex0Var2 = o71Var4.a) == null) {
                try {
                    responseBodyBody2 = response2.body();
                    if (responseBodyBody2 != null || (bArrBytes = responseBodyBody2.bytes()) == null) {
                        bArrBytes = new byte[i];
                    }
                    g81Var.d = new p53(bArrBytes);
                } catch (Exception e2) {
                    return new j01(e2, null, null, 6);
                }
            } else {
                Intrinsics.checkNotNullParameter("gads:enable_normalization_before_body", C3510b4.i.W);
                if (((Boolean) ex0Var2.a("gads:enable_normalization_before_body", Boolean.FALSE, yr.b)).booleanValue()) {
                    CoroutineScope coroutineScope = o71Var4.c;
                    m71 block = new m71(response2, null);
                    EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                    Intrinsics.checkNotNullParameter(context, "context");
                    Intrinsics.checkNotNullParameter(block, "block");
                    g81Var.e = BuildersKt__Builders_commonKt.async$default(coroutineScope, context, null, new vs3(block, null), 2, null);
                } else {
                    responseBodyBody2 = response2.body();
                    if (responseBodyBody2 != null) {
                        bArrBytes = new byte[i];
                    } else {
                        bArrBytes = new byte[i];
                    }
                    g81Var.d = new p53(bArrBytes);
                }
            }
            Intrinsics.checkNotNullParameter(headers, "headers");
            g81Var.c.clear();
            g81Var.c.putAll(headers);
            return new q01(g81Var.a());
        }
        i = 0;
        p005kotlin.ResultKt.throwOnFailure(objA2);
        uuidRandomUUID = UUID.randomUUID();
        ex0 ex0Var3 = this.a;
        if (ex0Var3 == null || !ex0Var3.E()) {
            vk0 vk0Var = this.f;
            if (vk0Var != null) {
                l71Var.a = this;
                l71Var.b = request;
                l71Var.c = okHttpClient;
                f81Var2 = f81Var;
                l71Var.d = f81Var2;
                l71Var.e = uuidRandomUUID;
                l71Var.f = z;
                l71Var.g = z2;
                l71Var.k = 1;
                objA2 = if1.a((if1) vk0Var, l71Var);
                if (objA2 != coroutine_suspended) {
                    request2 = request;
                    z3 = z2;
                    okHttpClient2 = okHttpClient;
                    z4 = z;
                    o71Var = this;
                }
            } else {
                f81Var2 = f81Var;
                request2 = request;
                z3 = z2;
                okHttpClient2 = okHttpClient;
                z4 = z;
                i2 = 0;
                o71Var = this;
                if (i2 == 0 || Log.isLoggable("GoogleMobileAdsNetwork", 2)) {
                    Request request4 = request2;
                    z5 = z4;
                    request3 = request4;
                    f81Var3 = f81Var2;
                    o71Var2 = o71Var;
                    uuid = uuidRandomUUID;
                    okHttpClient3 = okHttpClient2;
                    z6 = z3;
                    i3 = 1;
                } else {
                    Request request5 = request2;
                    z5 = z4;
                    request3 = request5;
                    f81Var3 = f81Var2;
                    o71Var2 = o71Var;
                    uuid = uuidRandomUUID;
                    okHttpClient3 = okHttpClient2;
                    z6 = z3;
                    i3 = i;
                }
                if (i3 != 0) {
                    Intrinsics.checkNotNull(uuid);
                    l71Var.a = o71Var2;
                    l71Var.b = request3;
                    l71Var.c = okHttpClient3;
                    l71Var.d = f81Var3;
                    l71Var.e = uuid;
                    l71Var.f = z5;
                    l71Var.g = z6;
                    l71Var.h = i3;
                    l71Var.k = 2;
                    o71Var2.getClass();
                    objA = o71Var2.a("onNetworkRequest", uuid, y61.a(request3), l71Var);
                    if (objA != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        objA = p005kotlin.Unit.INSTANCE;
                    }
                    if (objA != coroutine_suspended) {
                        Call callNewCall2 = okHttpClient3.newCall(request3);
                        l71Var.a = o71Var2;
                        l71Var.b = f81Var3;
                        l71Var.c = uuid;
                        l71Var.d = null;
                        l71Var.e = null;
                        l71Var.f = z5;
                        l71Var.g = z6;
                        l71Var.h = i3;
                        l71Var.k = 3;
                        CancellableContinuationImpl cancellableContinuationImpl2 = new CancellableContinuationImpl(IntrinsicsKt.intercepted(l71Var), 1);
                        cancellableContinuationImpl2.initCancellability();
                        cancellableContinuationImpl2.invokeOnCancellation(new u71(callNewCall2));
                        callNewCall2.enqueue(new x71(cancellableContinuationImpl2));
                        objA2 = cancellableContinuationImpl2.getResult();
                        if (objA2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                            DebugProbesKt.probeCoroutineSuspended(l71Var);
                        }
                        if (objA2 != coroutine_suspended) {
                            boolean z14 = z6;
                            o71Var3 = o71Var2;
                            z7 = z14;
                            z8 = z5;
                            v01Var = (v01) objA2;
                            if (v01Var instanceof i01) {
                                return (i01) v01Var;
                            }
                            Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                            response = (Response) ((q01) v01Var).b;
                            if (f81Var3 != null) {
                                response2 = response;
                                if (i3 != 0) {
                                    responseBodyBody = response2.body();
                                    if (responseBodyBody != null) {
                                        byte[] bArrBytes7 = responseBodyBody.bytes();
                                        Response.Builder builderNewBuilder6 = response2.newBuilder();
                                        ResponseBody.Companion companion6 = ResponseBody.INSTANCE;
                                        Response responseBuild7 = builderNewBuilder6.body(companion6.create(bArrBytes7, responseBodyBody.get$contentType())).build();
                                        responseBuild = response2.newBuilder().body(companion6.create(bArrBytes7, responseBodyBody.get$contentType())).build();
                                        response2 = responseBuild7;
                                    } else {
                                        responseBuild = response2;
                                    }
                                    Intrinsics.checkNotNull(uuid);
                                    l71Var.a = o71Var3;
                                    l71Var.b = f81Var3;
                                    l71Var.c = responseBuild;
                                    l71Var.d = null;
                                    l71Var.f = z8;
                                    l71Var.g = z7;
                                    l71Var.k = 5;
                                    if (o71Var3.a(response2, uuid, l71Var) != coroutine_suspended) {
                                        response2 = responseBuild;
                                    }
                                }
                                z9 = z7;
                                z10 = z8;
                                o71Var4 = o71Var3;
                                o71Var4.getClass();
                                iCode = response2.code();
                                if (300 <= iCode) {
                                    i4 = i;
                                } else {
                                    i4 = i;
                                }
                                if (response2.isSuccessful()) {
                                }
                                Map headers2 = MapsKt.toMap(response2.headers());
                                g81Var = new g81();
                                g81Var.a = response2.code();
                                g81Var.b = response2.message();
                                response2.protocol().getProtocol();
                                if (i4 != 0) {
                                    g81Var.f = Response.header$default(response2, HttpHeaders.LOCATION, null, 2, null);
                                }
                                ex0Var = o71Var4.a;
                                if (ex0Var != null) {
                                    Intrinsics.checkNotNullParameter("gads:html_body_header", C3510b4.i.W);
                                    Intrinsics.checkNotNullParameter("X-Afma-Is-Html-Response", "defaultValue");
                                    str = (String) ex0Var.a("gads:html_body_header", "X-Afma-Is-Html-Response", yr.o);
                                } else {
                                    str = null;
                                }
                                if (str == null) {
                                    i5 = i;
                                    break;
                                }
                                i5 = i;
                                break;
                                if (i5 != 0) {
                                    hs3.a().a.b.g = true;
                                }
                                if (i5 != 0) {
                                    responseBodyBody2 = response2.body();
                                    if (responseBodyBody2 != null) {
                                        bArrBytes = new byte[i];
                                    } else {
                                        bArrBytes = new byte[i];
                                    }
                                    g81Var.d = new p53(bArrBytes);
                                } else {
                                    responseBodyBody2 = response2.body();
                                    if (responseBodyBody2 != null) {
                                        bArrBytes = new byte[i];
                                    } else {
                                        bArrBytes = new byte[i];
                                    }
                                    g81Var.d = new p53(bArrBytes);
                                }
                                Intrinsics.checkNotNullParameter(headers2, "headers");
                                g81Var.c.clear();
                                g81Var.c.putAll(headers2);
                                return new q01(g81Var.a());
                            }
                            response2 = response;
                            if (i3 != 0) {
                                responseBodyBody = response2.body();
                                if (responseBodyBody != null) {
                                    byte[] bArrBytes8 = responseBodyBody.bytes();
                                    Response.Builder builderNewBuilder7 = response2.newBuilder();
                                    ResponseBody.Companion companion7 = ResponseBody.INSTANCE;
                                    Response responseBuild8 = builderNewBuilder7.body(companion7.create(bArrBytes8, responseBodyBody.get$contentType())).build();
                                    responseBuild = response2.newBuilder().body(companion7.create(bArrBytes8, responseBodyBody.get$contentType())).build();
                                    response2 = responseBuild8;
                                } else {
                                    responseBuild = response2;
                                }
                                Intrinsics.checkNotNull(uuid);
                                l71Var.a = o71Var3;
                                l71Var.b = f81Var3;
                                l71Var.c = responseBuild;
                                l71Var.d = null;
                                l71Var.f = z8;
                                l71Var.g = z7;
                                l71Var.k = 5;
                                if (o71Var3.a(response2, uuid, l71Var) != coroutine_suspended) {
                                    response2 = responseBuild;
                                }
                            }
                            z9 = z7;
                            z10 = z8;
                            o71Var4 = o71Var3;
                            o71Var4.getClass();
                            iCode = response2.code();
                            if (300 <= iCode) {
                                i4 = i;
                            } else {
                                i4 = i;
                            }
                            if (response2.isSuccessful()) {
                            }
                            Map headers3 = MapsKt.toMap(response2.headers());
                            g81Var = new g81();
                            g81Var.a = response2.code();
                            g81Var.b = response2.message();
                            response2.protocol().getProtocol();
                            if (i4 != 0) {
                                g81Var.f = Response.header$default(response2, HttpHeaders.LOCATION, null, 2, null);
                            }
                            ex0Var = o71Var4.a;
                            if (ex0Var != null) {
                                Intrinsics.checkNotNullParameter("gads:html_body_header", C3510b4.i.W);
                                Intrinsics.checkNotNullParameter("X-Afma-Is-Html-Response", "defaultValue");
                                str = (String) ex0Var.a("gads:html_body_header", "X-Afma-Is-Html-Response", yr.o);
                            } else {
                                str = null;
                            }
                            if (str == null) {
                                i5 = i;
                                break;
                            }
                            i5 = i;
                            break;
                            if (i5 != 0) {
                                hs3.a().a.b.g = true;
                            }
                            if (i5 != 0) {
                                responseBodyBody2 = response2.body();
                                if (responseBodyBody2 != null) {
                                    bArrBytes = new byte[i];
                                } else {
                                    bArrBytes = new byte[i];
                                }
                                g81Var.d = new p53(bArrBytes);
                            } else {
                                responseBodyBody2 = response2.body();
                                if (responseBodyBody2 != null) {
                                    bArrBytes = new byte[i];
                                } else {
                                    bArrBytes = new byte[i];
                                }
                                g81Var.d = new p53(bArrBytes);
                            }
                            Intrinsics.checkNotNullParameter(headers3, "headers");
                            g81Var.c.clear();
                            g81Var.c.putAll(headers3);
                            return new q01(g81Var.a());
                        }
                    }
                } else {
                    Call callNewCall3 = okHttpClient3.newCall(request3);
                    l71Var.a = o71Var2;
                    l71Var.b = f81Var3;
                    l71Var.c = uuid;
                    l71Var.d = null;
                    l71Var.e = null;
                    l71Var.f = z5;
                    l71Var.g = z6;
                    l71Var.h = i3;
                    l71Var.k = 3;
                    CancellableContinuationImpl cancellableContinuationImpl3 = new CancellableContinuationImpl(IntrinsicsKt.intercepted(l71Var), 1);
                    cancellableContinuationImpl3.initCancellability();
                    cancellableContinuationImpl3.invokeOnCancellation(new u71(callNewCall3));
                    callNewCall3.enqueue(new x71(cancellableContinuationImpl3));
                    objA2 = cancellableContinuationImpl3.getResult();
                    if (objA2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(l71Var);
                    }
                    if (objA2 != coroutine_suspended) {
                        boolean z15 = z6;
                        o71Var3 = o71Var2;
                        z7 = z15;
                        z8 = z5;
                        v01Var = (v01) objA2;
                        if (v01Var instanceof i01) {
                            return (i01) v01Var;
                        }
                        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                        response = (Response) ((q01) v01Var).b;
                        if (f81Var3 != null) {
                            response2 = response;
                            if (i3 != 0) {
                                responseBodyBody = response2.body();
                                if (responseBodyBody != null) {
                                    byte[] bArrBytes9 = responseBodyBody.bytes();
                                    Response.Builder builderNewBuilder8 = response2.newBuilder();
                                    ResponseBody.Companion companion8 = ResponseBody.INSTANCE;
                                    Response responseBuild9 = builderNewBuilder8.body(companion8.create(bArrBytes9, responseBodyBody.get$contentType())).build();
                                    responseBuild = response2.newBuilder().body(companion8.create(bArrBytes9, responseBodyBody.get$contentType())).build();
                                    response2 = responseBuild9;
                                } else {
                                    responseBuild = response2;
                                }
                                Intrinsics.checkNotNull(uuid);
                                l71Var.a = o71Var3;
                                l71Var.b = f81Var3;
                                l71Var.c = responseBuild;
                                l71Var.d = null;
                                l71Var.f = z8;
                                l71Var.g = z7;
                                l71Var.k = 5;
                                if (o71Var3.a(response2, uuid, l71Var) != coroutine_suspended) {
                                    response2 = responseBuild;
                                }
                            }
                            z9 = z7;
                            z10 = z8;
                            o71Var4 = o71Var3;
                            o71Var4.getClass();
                            iCode = response2.code();
                            if (300 <= iCode) {
                                i4 = i;
                            } else {
                                i4 = i;
                            }
                            if (response2.isSuccessful()) {
                            }
                            Map headers4 = MapsKt.toMap(response2.headers());
                            g81Var = new g81();
                            g81Var.a = response2.code();
                            g81Var.b = response2.message();
                            response2.protocol().getProtocol();
                            if (i4 != 0) {
                                g81Var.f = Response.header$default(response2, HttpHeaders.LOCATION, null, 2, null);
                            }
                            ex0Var = o71Var4.a;
                            if (ex0Var != null) {
                                Intrinsics.checkNotNullParameter("gads:html_body_header", C3510b4.i.W);
                                Intrinsics.checkNotNullParameter("X-Afma-Is-Html-Response", "defaultValue");
                                str = (String) ex0Var.a("gads:html_body_header", "X-Afma-Is-Html-Response", yr.o);
                            } else {
                                str = null;
                            }
                            if (str == null) {
                                i5 = i;
                                break;
                            }
                            i5 = i;
                            break;
                            if (i5 != 0) {
                                hs3.a().a.b.g = true;
                            }
                            if (i5 != 0) {
                                responseBodyBody2 = response2.body();
                                if (responseBodyBody2 != null) {
                                    bArrBytes = new byte[i];
                                } else {
                                    bArrBytes = new byte[i];
                                }
                                g81Var.d = new p53(bArrBytes);
                            } else {
                                responseBodyBody2 = response2.body();
                                if (responseBodyBody2 != null) {
                                    bArrBytes = new byte[i];
                                } else {
                                    bArrBytes = new byte[i];
                                }
                                g81Var.d = new p53(bArrBytes);
                            }
                            Intrinsics.checkNotNullParameter(headers4, "headers");
                            g81Var.c.clear();
                            g81Var.c.putAll(headers4);
                            return new q01(g81Var.a());
                        }
                        response2 = response;
                        if (i3 != 0) {
                            responseBodyBody = response2.body();
                            if (responseBodyBody != null) {
                                byte[] bArrBytes10 = responseBodyBody.bytes();
                                Response.Builder builderNewBuilder9 = response2.newBuilder();
                                ResponseBody.Companion companion9 = ResponseBody.INSTANCE;
                                Response responseBuild10 = builderNewBuilder9.body(companion9.create(bArrBytes10, responseBodyBody.get$contentType())).build();
                                responseBuild = response2.newBuilder().body(companion9.create(bArrBytes10, responseBodyBody.get$contentType())).build();
                                response2 = responseBuild10;
                            } else {
                                responseBuild = response2;
                            }
                            Intrinsics.checkNotNull(uuid);
                            l71Var.a = o71Var3;
                            l71Var.b = f81Var3;
                            l71Var.c = responseBuild;
                            l71Var.d = null;
                            l71Var.f = z8;
                            l71Var.g = z7;
                            l71Var.k = 5;
                            if (o71Var3.a(response2, uuid, l71Var) != coroutine_suspended) {
                                response2 = responseBuild;
                            }
                        }
                        z9 = z7;
                        z10 = z8;
                        o71Var4 = o71Var3;
                        o71Var4.getClass();
                        iCode = response2.code();
                        if (300 <= iCode) {
                            i4 = i;
                        } else {
                            i4 = i;
                        }
                        if (response2.isSuccessful()) {
                        }
                        Map headers5 = MapsKt.toMap(response2.headers());
                        g81Var = new g81();
                        g81Var.a = response2.code();
                        g81Var.b = response2.message();
                        response2.protocol().getProtocol();
                        if (i4 != 0) {
                            g81Var.f = Response.header$default(response2, HttpHeaders.LOCATION, null, 2, null);
                        }
                        ex0Var = o71Var4.a;
                        if (ex0Var != null) {
                            Intrinsics.checkNotNullParameter("gads:html_body_header", C3510b4.i.W);
                            Intrinsics.checkNotNullParameter("X-Afma-Is-Html-Response", "defaultValue");
                            str = (String) ex0Var.a("gads:html_body_header", "X-Afma-Is-Html-Response", yr.o);
                        } else {
                            str = null;
                        }
                        if (str == null) {
                            i5 = i;
                            break;
                        }
                        i5 = i;
                        break;
                        if (i5 != 0) {
                            hs3.a().a.b.g = true;
                        }
                        if (i5 != 0) {
                            responseBodyBody2 = response2.body();
                            if (responseBodyBody2 != null) {
                                bArrBytes = new byte[i];
                            } else {
                                bArrBytes = new byte[i];
                            }
                            g81Var.d = new p53(bArrBytes);
                        } else {
                            responseBodyBody2 = response2.body();
                            if (responseBodyBody2 != null) {
                                bArrBytes = new byte[i];
                            } else {
                                bArrBytes = new byte[i];
                            }
                            g81Var.d = new p53(bArrBytes);
                        }
                        Intrinsics.checkNotNullParameter(headers5, "headers");
                        g81Var.c.clear();
                        g81Var.c.putAll(headers5);
                        return new q01(g81Var.a());
                    }
                }
            }
        } else {
            request2 = request;
            okHttpClient2 = okHttpClient;
            z4 = z;
            f81Var2 = f81Var;
            z3 = z2;
            o71Var = this;
            Request request6 = request2;
            z5 = z4;
            request3 = request6;
            f81Var3 = f81Var2;
            o71Var2 = o71Var;
            uuid = uuidRandomUUID;
            okHttpClient3 = okHttpClient2;
            z6 = z3;
            i3 = i;
            if (i3 != 0) {
                Intrinsics.checkNotNull(uuid);
                l71Var.a = o71Var2;
                l71Var.b = request3;
                l71Var.c = okHttpClient3;
                l71Var.d = f81Var3;
                l71Var.e = uuid;
                l71Var.f = z5;
                l71Var.g = z6;
                l71Var.h = i3;
                l71Var.k = 2;
                o71Var2.getClass();
                objA = o71Var2.a("onNetworkRequest", uuid, y61.a(request3), l71Var);
                if (objA != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    objA = p005kotlin.Unit.INSTANCE;
                }
                if (objA != coroutine_suspended) {
                    Call callNewCall4 = okHttpClient3.newCall(request3);
                    l71Var.a = o71Var2;
                    l71Var.b = f81Var3;
                    l71Var.c = uuid;
                    l71Var.d = null;
                    l71Var.e = null;
                    l71Var.f = z5;
                    l71Var.g = z6;
                    l71Var.h = i3;
                    l71Var.k = 3;
                    CancellableContinuationImpl cancellableContinuationImpl4 = new CancellableContinuationImpl(IntrinsicsKt.intercepted(l71Var), 1);
                    cancellableContinuationImpl4.initCancellability();
                    cancellableContinuationImpl4.invokeOnCancellation(new u71(callNewCall4));
                    callNewCall4.enqueue(new x71(cancellableContinuationImpl4));
                    objA2 = cancellableContinuationImpl4.getResult();
                    if (objA2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(l71Var);
                    }
                    if (objA2 != coroutine_suspended) {
                        boolean z16 = z6;
                        o71Var3 = o71Var2;
                        z7 = z16;
                        z8 = z5;
                        v01Var = (v01) objA2;
                        if (v01Var instanceof i01) {
                            return (i01) v01Var;
                        }
                        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                        response = (Response) ((q01) v01Var).b;
                        if (f81Var3 != null) {
                            response2 = response;
                            if (i3 != 0) {
                                responseBodyBody = response2.body();
                                if (responseBodyBody != null) {
                                    byte[] bArrBytes11 = responseBodyBody.bytes();
                                    Response.Builder builderNewBuilder10 = response2.newBuilder();
                                    ResponseBody.Companion companion10 = ResponseBody.INSTANCE;
                                    Response responseBuild11 = builderNewBuilder10.body(companion10.create(bArrBytes11, responseBodyBody.get$contentType())).build();
                                    responseBuild = response2.newBuilder().body(companion10.create(bArrBytes11, responseBodyBody.get$contentType())).build();
                                    response2 = responseBuild11;
                                } else {
                                    responseBuild = response2;
                                }
                                Intrinsics.checkNotNull(uuid);
                                l71Var.a = o71Var3;
                                l71Var.b = f81Var3;
                                l71Var.c = responseBuild;
                                l71Var.d = null;
                                l71Var.f = z8;
                                l71Var.g = z7;
                                l71Var.k = 5;
                                if (o71Var3.a(response2, uuid, l71Var) != coroutine_suspended) {
                                    response2 = responseBuild;
                                }
                            }
                            z9 = z7;
                            z10 = z8;
                            o71Var4 = o71Var3;
                            o71Var4.getClass();
                            iCode = response2.code();
                            if (300 <= iCode) {
                                i4 = i;
                            } else {
                                i4 = i;
                            }
                            if (response2.isSuccessful()) {
                            }
                            Map headers6 = MapsKt.toMap(response2.headers());
                            g81Var = new g81();
                            g81Var.a = response2.code();
                            g81Var.b = response2.message();
                            response2.protocol().getProtocol();
                            if (i4 != 0) {
                                g81Var.f = Response.header$default(response2, HttpHeaders.LOCATION, null, 2, null);
                            }
                            ex0Var = o71Var4.a;
                            if (ex0Var != null) {
                                Intrinsics.checkNotNullParameter("gads:html_body_header", C3510b4.i.W);
                                Intrinsics.checkNotNullParameter("X-Afma-Is-Html-Response", "defaultValue");
                                str = (String) ex0Var.a("gads:html_body_header", "X-Afma-Is-Html-Response", yr.o);
                            } else {
                                str = null;
                            }
                            if (str == null) {
                                i5 = i;
                                break;
                            }
                            i5 = i;
                            break;
                            if (i5 != 0) {
                                hs3.a().a.b.g = true;
                            }
                            if (i5 != 0) {
                                responseBodyBody2 = response2.body();
                                if (responseBodyBody2 != null) {
                                    bArrBytes = new byte[i];
                                } else {
                                    bArrBytes = new byte[i];
                                }
                                g81Var.d = new p53(bArrBytes);
                            } else {
                                responseBodyBody2 = response2.body();
                                if (responseBodyBody2 != null) {
                                    bArrBytes = new byte[i];
                                } else {
                                    bArrBytes = new byte[i];
                                }
                                g81Var.d = new p53(bArrBytes);
                            }
                            Intrinsics.checkNotNullParameter(headers6, "headers");
                            g81Var.c.clear();
                            g81Var.c.putAll(headers6);
                            return new q01(g81Var.a());
                        }
                        response2 = response;
                        if (i3 != 0) {
                            responseBodyBody = response2.body();
                            if (responseBodyBody != null) {
                                byte[] bArrBytes12 = responseBodyBody.bytes();
                                Response.Builder builderNewBuilder11 = response2.newBuilder();
                                ResponseBody.Companion companion11 = ResponseBody.INSTANCE;
                                Response responseBuild12 = builderNewBuilder11.body(companion11.create(bArrBytes12, responseBodyBody.get$contentType())).build();
                                responseBuild = response2.newBuilder().body(companion11.create(bArrBytes12, responseBodyBody.get$contentType())).build();
                                response2 = responseBuild12;
                            } else {
                                responseBuild = response2;
                            }
                            Intrinsics.checkNotNull(uuid);
                            l71Var.a = o71Var3;
                            l71Var.b = f81Var3;
                            l71Var.c = responseBuild;
                            l71Var.d = null;
                            l71Var.f = z8;
                            l71Var.g = z7;
                            l71Var.k = 5;
                            if (o71Var3.a(response2, uuid, l71Var) != coroutine_suspended) {
                                response2 = responseBuild;
                            }
                        }
                        z9 = z7;
                        z10 = z8;
                        o71Var4 = o71Var3;
                        o71Var4.getClass();
                        iCode = response2.code();
                        if (300 <= iCode) {
                            i4 = i;
                        } else {
                            i4 = i;
                        }
                        if (response2.isSuccessful()) {
                        }
                        Map headers7 = MapsKt.toMap(response2.headers());
                        g81Var = new g81();
                        g81Var.a = response2.code();
                        g81Var.b = response2.message();
                        response2.protocol().getProtocol();
                        if (i4 != 0) {
                            g81Var.f = Response.header$default(response2, HttpHeaders.LOCATION, null, 2, null);
                        }
                        ex0Var = o71Var4.a;
                        if (ex0Var != null) {
                            Intrinsics.checkNotNullParameter("gads:html_body_header", C3510b4.i.W);
                            Intrinsics.checkNotNullParameter("X-Afma-Is-Html-Response", "defaultValue");
                            str = (String) ex0Var.a("gads:html_body_header", "X-Afma-Is-Html-Response", yr.o);
                        } else {
                            str = null;
                        }
                        if (str == null) {
                            i5 = i;
                            break;
                        }
                        i5 = i;
                        break;
                        if (i5 != 0) {
                            hs3.a().a.b.g = true;
                        }
                        if (i5 != 0) {
                            responseBodyBody2 = response2.body();
                            if (responseBodyBody2 != null) {
                                bArrBytes = new byte[i];
                            } else {
                                bArrBytes = new byte[i];
                            }
                            g81Var.d = new p53(bArrBytes);
                        } else {
                            responseBodyBody2 = response2.body();
                            if (responseBodyBody2 != null) {
                                bArrBytes = new byte[i];
                            } else {
                                bArrBytes = new byte[i];
                            }
                            g81Var.d = new p53(bArrBytes);
                        }
                        Intrinsics.checkNotNullParameter(headers7, "headers");
                        g81Var.c.clear();
                        g81Var.c.putAll(headers7);
                        return new q01(g81Var.a());
                    }
                }
            } else {
                Call callNewCall5 = okHttpClient3.newCall(request3);
                l71Var.a = o71Var2;
                l71Var.b = f81Var3;
                l71Var.c = uuid;
                l71Var.d = null;
                l71Var.e = null;
                l71Var.f = z5;
                l71Var.g = z6;
                l71Var.h = i3;
                l71Var.k = 3;
                CancellableContinuationImpl cancellableContinuationImpl5 = new CancellableContinuationImpl(IntrinsicsKt.intercepted(l71Var), 1);
                cancellableContinuationImpl5.initCancellability();
                cancellableContinuationImpl5.invokeOnCancellation(new u71(callNewCall5));
                callNewCall5.enqueue(new x71(cancellableContinuationImpl5));
                objA2 = cancellableContinuationImpl5.getResult();
                if (objA2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(l71Var);
                }
                if (objA2 != coroutine_suspended) {
                    boolean z17 = z6;
                    o71Var3 = o71Var2;
                    z7 = z17;
                    z8 = z5;
                    v01Var = (v01) objA2;
                    if (v01Var instanceof i01) {
                        return (i01) v01Var;
                    }
                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                    response = (Response) ((q01) v01Var).b;
                    if (f81Var3 != null) {
                        response2 = response;
                        if (i3 != 0) {
                            responseBodyBody = response2.body();
                            if (responseBodyBody != null) {
                                byte[] bArrBytes13 = responseBodyBody.bytes();
                                Response.Builder builderNewBuilder12 = response2.newBuilder();
                                ResponseBody.Companion companion12 = ResponseBody.INSTANCE;
                                Response responseBuild13 = builderNewBuilder12.body(companion12.create(bArrBytes13, responseBodyBody.get$contentType())).build();
                                responseBuild = response2.newBuilder().body(companion12.create(bArrBytes13, responseBodyBody.get$contentType())).build();
                                response2 = responseBuild13;
                            } else {
                                responseBuild = response2;
                            }
                            Intrinsics.checkNotNull(uuid);
                            l71Var.a = o71Var3;
                            l71Var.b = f81Var3;
                            l71Var.c = responseBuild;
                            l71Var.d = null;
                            l71Var.f = z8;
                            l71Var.g = z7;
                            l71Var.k = 5;
                            if (o71Var3.a(response2, uuid, l71Var) != coroutine_suspended) {
                                response2 = responseBuild;
                            }
                        }
                        z9 = z7;
                        z10 = z8;
                        o71Var4 = o71Var3;
                        o71Var4.getClass();
                        iCode = response2.code();
                        if (300 <= iCode) {
                            i4 = i;
                        } else {
                            i4 = i;
                        }
                        if (response2.isSuccessful()) {
                        }
                        Map headers8 = MapsKt.toMap(response2.headers());
                        g81Var = new g81();
                        g81Var.a = response2.code();
                        g81Var.b = response2.message();
                        response2.protocol().getProtocol();
                        if (i4 != 0) {
                            g81Var.f = Response.header$default(response2, HttpHeaders.LOCATION, null, 2, null);
                        }
                        ex0Var = o71Var4.a;
                        if (ex0Var != null) {
                            Intrinsics.checkNotNullParameter("gads:html_body_header", C3510b4.i.W);
                            Intrinsics.checkNotNullParameter("X-Afma-Is-Html-Response", "defaultValue");
                            str = (String) ex0Var.a("gads:html_body_header", "X-Afma-Is-Html-Response", yr.o);
                        } else {
                            str = null;
                        }
                        if (str == null) {
                            i5 = i;
                            break;
                        }
                        i5 = i;
                        break;
                        if (i5 != 0) {
                            hs3.a().a.b.g = true;
                        }
                        if (i5 != 0) {
                            responseBodyBody2 = response2.body();
                            if (responseBodyBody2 != null) {
                                bArrBytes = new byte[i];
                            } else {
                                bArrBytes = new byte[i];
                            }
                            g81Var.d = new p53(bArrBytes);
                        } else {
                            responseBodyBody2 = response2.body();
                            if (responseBodyBody2 != null) {
                                bArrBytes = new byte[i];
                            } else {
                                bArrBytes = new byte[i];
                            }
                            g81Var.d = new p53(bArrBytes);
                        }
                        Intrinsics.checkNotNullParameter(headers8, "headers");
                        g81Var.c.clear();
                        g81Var.c.putAll(headers8);
                        return new q01(g81Var.a());
                    }
                    response2 = response;
                    if (i3 != 0) {
                        responseBodyBody = response2.body();
                        if (responseBodyBody != null) {
                            byte[] bArrBytes14 = responseBodyBody.bytes();
                            Response.Builder builderNewBuilder13 = response2.newBuilder();
                            ResponseBody.Companion companion13 = ResponseBody.INSTANCE;
                            Response responseBuild14 = builderNewBuilder13.body(companion13.create(bArrBytes14, responseBodyBody.get$contentType())).build();
                            responseBuild = response2.newBuilder().body(companion13.create(bArrBytes14, responseBodyBody.get$contentType())).build();
                            response2 = responseBuild14;
                        } else {
                            responseBuild = response2;
                        }
                        Intrinsics.checkNotNull(uuid);
                        l71Var.a = o71Var3;
                        l71Var.b = f81Var3;
                        l71Var.c = responseBuild;
                        l71Var.d = null;
                        l71Var.f = z8;
                        l71Var.g = z7;
                        l71Var.k = 5;
                        if (o71Var3.a(response2, uuid, l71Var) != coroutine_suspended) {
                            response2 = responseBuild;
                        }
                    }
                    z9 = z7;
                    z10 = z8;
                    o71Var4 = o71Var3;
                    o71Var4.getClass();
                    iCode = response2.code();
                    if (300 <= iCode) {
                        i4 = i;
                    } else {
                        i4 = i;
                    }
                    if (response2.isSuccessful()) {
                    }
                    Map headers9 = MapsKt.toMap(response2.headers());
                    g81Var = new g81();
                    g81Var.a = response2.code();
                    g81Var.b = response2.message();
                    response2.protocol().getProtocol();
                    if (i4 != 0) {
                        g81Var.f = Response.header$default(response2, HttpHeaders.LOCATION, null, 2, null);
                    }
                    ex0Var = o71Var4.a;
                    if (ex0Var != null) {
                        Intrinsics.checkNotNullParameter("gads:html_body_header", C3510b4.i.W);
                        Intrinsics.checkNotNullParameter("X-Afma-Is-Html-Response", "defaultValue");
                        str = (String) ex0Var.a("gads:html_body_header", "X-Afma-Is-Html-Response", yr.o);
                    } else {
                        str = null;
                    }
                    if (str == null) {
                        i5 = i;
                        break;
                    }
                    i5 = i;
                    break;
                    if (i5 != 0) {
                        hs3.a().a.b.g = true;
                    }
                    if (i5 != 0) {
                        responseBodyBody2 = response2.body();
                        if (responseBodyBody2 != null) {
                            bArrBytes = new byte[i];
                        } else {
                            bArrBytes = new byte[i];
                        }
                        g81Var.d = new p53(bArrBytes);
                    } else {
                        responseBodyBody2 = response2.body();
                        if (responseBodyBody2 != null) {
                            bArrBytes = new byte[i];
                        } else {
                            bArrBytes = new byte[i];
                        }
                        g81Var.d = new p53(bArrBytes);
                    }
                    Intrinsics.checkNotNullParameter(headers9, "headers");
                    g81Var.c.clear();
                    g81Var.c.putAll(headers9);
                    return new q01(g81Var.a());
                }
            }
        }
        return coroutine_suspended;
        i2 = ((Boolean) objA2).booleanValue() ? 1 : i;
        if (i2 == 0) {
        }
        Request request7 = request2;
        z5 = z4;
        request3 = request7;
        f81Var3 = f81Var2;
        o71Var2 = o71Var;
        uuid = uuidRandomUUID;
        okHttpClient3 = okHttpClient2;
        z6 = z3;
        i3 = 1;
        if (i3 != 0) {
            Intrinsics.checkNotNull(uuid);
            l71Var.a = o71Var2;
            l71Var.b = request3;
            l71Var.c = okHttpClient3;
            l71Var.d = f81Var3;
            l71Var.e = uuid;
            l71Var.f = z5;
            l71Var.g = z6;
            l71Var.h = i3;
            l71Var.k = 2;
            o71Var2.getClass();
            objA = o71Var2.a("onNetworkRequest", uuid, y61.a(request3), l71Var);
            if (objA != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objA = p005kotlin.Unit.INSTANCE;
            }
            if (objA != coroutine_suspended) {
                Call callNewCall6 = okHttpClient3.newCall(request3);
                l71Var.a = o71Var2;
                l71Var.b = f81Var3;
                l71Var.c = uuid;
                l71Var.d = null;
                l71Var.e = null;
                l71Var.f = z5;
                l71Var.g = z6;
                l71Var.h = i3;
                l71Var.k = 3;
                CancellableContinuationImpl cancellableContinuationImpl6 = new CancellableContinuationImpl(IntrinsicsKt.intercepted(l71Var), 1);
                cancellableContinuationImpl6.initCancellability();
                cancellableContinuationImpl6.invokeOnCancellation(new u71(callNewCall6));
                callNewCall6.enqueue(new x71(cancellableContinuationImpl6));
                objA2 = cancellableContinuationImpl6.getResult();
                if (objA2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(l71Var);
                }
                if (objA2 != coroutine_suspended) {
                    boolean z18 = z6;
                    o71Var3 = o71Var2;
                    z7 = z18;
                    z8 = z5;
                    v01Var = (v01) objA2;
                    if (v01Var instanceof i01) {
                        return (i01) v01Var;
                    }
                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                    response = (Response) ((q01) v01Var).b;
                    if (f81Var3 != null) {
                        response2 = response;
                        if (i3 != 0) {
                            responseBodyBody = response2.body();
                            if (responseBodyBody != null) {
                                byte[] bArrBytes15 = responseBodyBody.bytes();
                                Response.Builder builderNewBuilder14 = response2.newBuilder();
                                ResponseBody.Companion companion14 = ResponseBody.INSTANCE;
                                Response responseBuild15 = builderNewBuilder14.body(companion14.create(bArrBytes15, responseBodyBody.get$contentType())).build();
                                responseBuild = response2.newBuilder().body(companion14.create(bArrBytes15, responseBodyBody.get$contentType())).build();
                                response2 = responseBuild15;
                            } else {
                                responseBuild = response2;
                            }
                            Intrinsics.checkNotNull(uuid);
                            l71Var.a = o71Var3;
                            l71Var.b = f81Var3;
                            l71Var.c = responseBuild;
                            l71Var.d = null;
                            l71Var.f = z8;
                            l71Var.g = z7;
                            l71Var.k = 5;
                            if (o71Var3.a(response2, uuid, l71Var) != coroutine_suspended) {
                                response2 = responseBuild;
                            }
                        }
                        z9 = z7;
                        z10 = z8;
                        o71Var4 = o71Var3;
                        o71Var4.getClass();
                        iCode = response2.code();
                        if (300 <= iCode) {
                            i4 = i;
                        } else {
                            i4 = i;
                        }
                        if (response2.isSuccessful()) {
                        }
                        Map headers10 = MapsKt.toMap(response2.headers());
                        g81Var = new g81();
                        g81Var.a = response2.code();
                        g81Var.b = response2.message();
                        response2.protocol().getProtocol();
                        if (i4 != 0) {
                            g81Var.f = Response.header$default(response2, HttpHeaders.LOCATION, null, 2, null);
                        }
                        ex0Var = o71Var4.a;
                        if (ex0Var != null) {
                            Intrinsics.checkNotNullParameter("gads:html_body_header", C3510b4.i.W);
                            Intrinsics.checkNotNullParameter("X-Afma-Is-Html-Response", "defaultValue");
                            str = (String) ex0Var.a("gads:html_body_header", "X-Afma-Is-Html-Response", yr.o);
                        } else {
                            str = null;
                        }
                        if (str == null) {
                            i5 = i;
                            break;
                        }
                        i5 = i;
                        break;
                        if (i5 != 0) {
                            hs3.a().a.b.g = true;
                        }
                        if (i5 != 0) {
                            responseBodyBody2 = response2.body();
                            if (responseBodyBody2 != null) {
                                bArrBytes = new byte[i];
                            } else {
                                bArrBytes = new byte[i];
                            }
                            g81Var.d = new p53(bArrBytes);
                        } else {
                            responseBodyBody2 = response2.body();
                            if (responseBodyBody2 != null) {
                                bArrBytes = new byte[i];
                            } else {
                                bArrBytes = new byte[i];
                            }
                            g81Var.d = new p53(bArrBytes);
                        }
                        Intrinsics.checkNotNullParameter(headers10, "headers");
                        g81Var.c.clear();
                        g81Var.c.putAll(headers10);
                        return new q01(g81Var.a());
                    }
                    response2 = response;
                    if (i3 != 0) {
                        responseBodyBody = response2.body();
                        if (responseBodyBody != null) {
                            byte[] bArrBytes16 = responseBodyBody.bytes();
                            Response.Builder builderNewBuilder15 = response2.newBuilder();
                            ResponseBody.Companion companion15 = ResponseBody.INSTANCE;
                            Response responseBuild16 = builderNewBuilder15.body(companion15.create(bArrBytes16, responseBodyBody.get$contentType())).build();
                            responseBuild = response2.newBuilder().body(companion15.create(bArrBytes16, responseBodyBody.get$contentType())).build();
                            response2 = responseBuild16;
                        } else {
                            responseBuild = response2;
                        }
                        Intrinsics.checkNotNull(uuid);
                        l71Var.a = o71Var3;
                        l71Var.b = f81Var3;
                        l71Var.c = responseBuild;
                        l71Var.d = null;
                        l71Var.f = z8;
                        l71Var.g = z7;
                        l71Var.k = 5;
                        if (o71Var3.a(response2, uuid, l71Var) != coroutine_suspended) {
                            response2 = responseBuild;
                        }
                    }
                    z9 = z7;
                    z10 = z8;
                    o71Var4 = o71Var3;
                    o71Var4.getClass();
                    iCode = response2.code();
                    if (300 <= iCode) {
                        i4 = i;
                    } else {
                        i4 = i;
                    }
                    if (response2.isSuccessful()) {
                    }
                    Map headers11 = MapsKt.toMap(response2.headers());
                    g81Var = new g81();
                    g81Var.a = response2.code();
                    g81Var.b = response2.message();
                    response2.protocol().getProtocol();
                    if (i4 != 0) {
                        g81Var.f = Response.header$default(response2, HttpHeaders.LOCATION, null, 2, null);
                    }
                    ex0Var = o71Var4.a;
                    if (ex0Var != null) {
                        Intrinsics.checkNotNullParameter("gads:html_body_header", C3510b4.i.W);
                        Intrinsics.checkNotNullParameter("X-Afma-Is-Html-Response", "defaultValue");
                        str = (String) ex0Var.a("gads:html_body_header", "X-Afma-Is-Html-Response", yr.o);
                    } else {
                        str = null;
                    }
                    if (str == null) {
                        i5 = i;
                        break;
                    }
                    i5 = i;
                    break;
                    if (i5 != 0) {
                        hs3.a().a.b.g = true;
                    }
                    if (i5 != 0) {
                        responseBodyBody2 = response2.body();
                        if (responseBodyBody2 != null) {
                            bArrBytes = new byte[i];
                        } else {
                            bArrBytes = new byte[i];
                        }
                        g81Var.d = new p53(bArrBytes);
                    } else {
                        responseBodyBody2 = response2.body();
                        if (responseBodyBody2 != null) {
                            bArrBytes = new byte[i];
                        } else {
                            bArrBytes = new byte[i];
                        }
                        g81Var.d = new p53(bArrBytes);
                    }
                    Intrinsics.checkNotNullParameter(headers11, "headers");
                    g81Var.c.clear();
                    g81Var.c.putAll(headers11);
                    return new q01(g81Var.a());
                }
            }
        } else {
            Call callNewCall7 = okHttpClient3.newCall(request3);
            l71Var.a = o71Var2;
            l71Var.b = f81Var3;
            l71Var.c = uuid;
            l71Var.d = null;
            l71Var.e = null;
            l71Var.f = z5;
            l71Var.g = z6;
            l71Var.h = i3;
            l71Var.k = 3;
            CancellableContinuationImpl cancellableContinuationImpl7 = new CancellableContinuationImpl(IntrinsicsKt.intercepted(l71Var), 1);
            cancellableContinuationImpl7.initCancellability();
            cancellableContinuationImpl7.invokeOnCancellation(new u71(callNewCall7));
            callNewCall7.enqueue(new x71(cancellableContinuationImpl7));
            objA2 = cancellableContinuationImpl7.getResult();
            if (objA2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(l71Var);
            }
            if (objA2 != coroutine_suspended) {
                boolean z19 = z6;
                o71Var3 = o71Var2;
                z7 = z19;
                z8 = z5;
                v01Var = (v01) objA2;
                if (v01Var instanceof i01) {
                    return (i01) v01Var;
                }
                Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                response = (Response) ((q01) v01Var).b;
                if (f81Var3 != null) {
                    response2 = response;
                    if (i3 != 0) {
                        responseBodyBody = response2.body();
                        if (responseBodyBody != null) {
                            byte[] bArrBytes17 = responseBodyBody.bytes();
                            Response.Builder builderNewBuilder16 = response2.newBuilder();
                            ResponseBody.Companion companion16 = ResponseBody.INSTANCE;
                            Response responseBuild17 = builderNewBuilder16.body(companion16.create(bArrBytes17, responseBodyBody.get$contentType())).build();
                            responseBuild = response2.newBuilder().body(companion16.create(bArrBytes17, responseBodyBody.get$contentType())).build();
                            response2 = responseBuild17;
                        } else {
                            responseBuild = response2;
                        }
                        Intrinsics.checkNotNull(uuid);
                        l71Var.a = o71Var3;
                        l71Var.b = f81Var3;
                        l71Var.c = responseBuild;
                        l71Var.d = null;
                        l71Var.f = z8;
                        l71Var.g = z7;
                        l71Var.k = 5;
                        if (o71Var3.a(response2, uuid, l71Var) != coroutine_suspended) {
                            response2 = responseBuild;
                        }
                    }
                    z9 = z7;
                    z10 = z8;
                    o71Var4 = o71Var3;
                    o71Var4.getClass();
                    iCode = response2.code();
                    if (300 <= iCode) {
                        i4 = i;
                    } else {
                        i4 = i;
                    }
                    if (response2.isSuccessful()) {
                    }
                    Map headers12 = MapsKt.toMap(response2.headers());
                    g81Var = new g81();
                    g81Var.a = response2.code();
                    g81Var.b = response2.message();
                    response2.protocol().getProtocol();
                    if (i4 != 0) {
                        g81Var.f = Response.header$default(response2, HttpHeaders.LOCATION, null, 2, null);
                    }
                    ex0Var = o71Var4.a;
                    if (ex0Var != null) {
                        Intrinsics.checkNotNullParameter("gads:html_body_header", C3510b4.i.W);
                        Intrinsics.checkNotNullParameter("X-Afma-Is-Html-Response", "defaultValue");
                        str = (String) ex0Var.a("gads:html_body_header", "X-Afma-Is-Html-Response", yr.o);
                    } else {
                        str = null;
                    }
                    if (str == null) {
                        i5 = i;
                        break;
                    }
                    i5 = i;
                    break;
                    if (i5 != 0) {
                        hs3.a().a.b.g = true;
                    }
                    if (i5 != 0) {
                        responseBodyBody2 = response2.body();
                        if (responseBodyBody2 != null) {
                            bArrBytes = new byte[i];
                        } else {
                            bArrBytes = new byte[i];
                        }
                        g81Var.d = new p53(bArrBytes);
                    } else {
                        responseBodyBody2 = response2.body();
                        if (responseBodyBody2 != null) {
                            bArrBytes = new byte[i];
                        } else {
                            bArrBytes = new byte[i];
                        }
                        g81Var.d = new p53(bArrBytes);
                    }
                    Intrinsics.checkNotNullParameter(headers12, "headers");
                    g81Var.c.clear();
                    g81Var.c.putAll(headers12);
                    return new q01(g81Var.a());
                }
                response2 = response;
                if (i3 != 0) {
                    responseBodyBody = response2.body();
                    if (responseBodyBody != null) {
                        byte[] bArrBytes18 = responseBodyBody.bytes();
                        Response.Builder builderNewBuilder17 = response2.newBuilder();
                        ResponseBody.Companion companion17 = ResponseBody.INSTANCE;
                        Response responseBuild18 = builderNewBuilder17.body(companion17.create(bArrBytes18, responseBodyBody.get$contentType())).build();
                        responseBuild = response2.newBuilder().body(companion17.create(bArrBytes18, responseBodyBody.get$contentType())).build();
                        response2 = responseBuild18;
                    } else {
                        responseBuild = response2;
                    }
                    Intrinsics.checkNotNull(uuid);
                    l71Var.a = o71Var3;
                    l71Var.b = f81Var3;
                    l71Var.c = responseBuild;
                    l71Var.d = null;
                    l71Var.f = z8;
                    l71Var.g = z7;
                    l71Var.k = 5;
                    if (o71Var3.a(response2, uuid, l71Var) != coroutine_suspended) {
                        response2 = responseBuild;
                    }
                }
                z9 = z7;
                z10 = z8;
                o71Var4 = o71Var3;
                o71Var4.getClass();
                iCode = response2.code();
                if (300 <= iCode) {
                    i4 = i;
                } else {
                    i4 = i;
                }
                if (response2.isSuccessful()) {
                }
                Map headers13 = MapsKt.toMap(response2.headers());
                g81Var = new g81();
                g81Var.a = response2.code();
                g81Var.b = response2.message();
                response2.protocol().getProtocol();
                if (i4 != 0) {
                    g81Var.f = Response.header$default(response2, HttpHeaders.LOCATION, null, 2, null);
                }
                ex0Var = o71Var4.a;
                if (ex0Var != null) {
                    Intrinsics.checkNotNullParameter("gads:html_body_header", C3510b4.i.W);
                    Intrinsics.checkNotNullParameter("X-Afma-Is-Html-Response", "defaultValue");
                    str = (String) ex0Var.a("gads:html_body_header", "X-Afma-Is-Html-Response", yr.o);
                } else {
                    str = null;
                }
                if (str == null) {
                    i5 = i;
                    break;
                }
                i5 = i;
                break;
                if (i5 != 0) {
                    hs3.a().a.b.g = true;
                }
                if (i5 != 0) {
                    responseBodyBody2 = response2.body();
                    if (responseBodyBody2 != null) {
                        bArrBytes = new byte[i];
                    } else {
                        bArrBytes = new byte[i];
                    }
                    g81Var.d = new p53(bArrBytes);
                } else {
                    responseBodyBody2 = response2.body();
                    if (responseBodyBody2 != null) {
                        bArrBytes = new byte[i];
                    } else {
                        bArrBytes = new byte[i];
                    }
                    g81Var.d = new p53(bArrBytes);
                }
                Intrinsics.checkNotNullParameter(headers13, "headers");
                g81Var.c.clear();
                g81Var.c.putAll(headers13);
                return new q01(g81Var.a());
            }
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00f2, code lost:
    
        if (r2.a("onNetworkRequestError", r14, r15, r0) == r1) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0157, code lost:
    
        if (r2.a("onNetworkResponseBody", r13, r15, r0) == r1) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(okhttp3.Response r13, java.util.UUID r14, p005kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.o71.a(okhttp3.Response, java.util.UUID, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.e01
    public final void a(uv chromeVariationsProvider) {
        Intrinsics.checkNotNullParameter(chromeVariationsProvider, "chromeVariationsProvider");
        this.e = chromeVariationsProvider;
    }

    @Override // kotlin.e01
    public final void a(vk0 debugModeProvider) {
        Intrinsics.checkNotNullParameter(debugModeProvider, "debugModeProvider");
        this.f = debugModeProvider;
    }
}
