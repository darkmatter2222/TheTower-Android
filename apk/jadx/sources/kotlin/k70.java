package kotlin;

import android.content.Context;
import android.net.Uri;
import com.google.common.net.HttpHeaders;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import org.chromium.net.ConnectionMigrationOptions;
import org.chromium.net.CronetEngine;
import org.chromium.net.QuicOptions;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class k70 implements e01 {
    public final CoroutineScope a;
    public final ex0 b;
    public final zw3 c;
    public final Context d;
    public final g83 e;
    public final ja1 f;
    public final cn0 g;
    public final rz h;
    public uv i;
    public vk0 j;
    public final Mutex k;
    public final AtomicReference l;
    public final AtomicReference m;
    public final CompletableJob n;
    public final CompletableJob o;
    public final AtomicBoolean p;
    public final AtomicBoolean q;
    public final p005kotlin.Lazy r;

    public k70(CoroutineScope backgroundScope, CoroutineContext backgroundContext, ex0 ex0Var, sz concurrencyObjects, zw3 userAgentProvider, Context context, g83 g83Var, ja1 ja1Var, cn0 cn0Var) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(concurrencyObjects, "concurrencyObjects");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = backgroundScope;
        this.b = ex0Var;
        this.c = userAgentProvider;
        this.d = context;
        this.e = g83Var;
        this.f = ja1Var;
        this.g = cn0Var;
        this.h = concurrencyObjects.a();
        this.k = MutexKt.Mutex$default(false, 1, null);
        this.l = new AtomicReference();
        this.m = new AtomicReference();
        this.n = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        this.o = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        this.p = new AtomicBoolean();
        this.q = new AtomicBoolean();
        this.r = p005kotlin.LazyKt.lazy(new a70(this));
    }

    /* JADX WARN: Code duplicated, block: B:24:0x007f  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:49:0x0106  */
    /* JADX WARN: Code duplicated, block: B:57:0x0131  */
    /* JADX WARN: Code duplicated, block: B:62:0x015a  */
    /* JADX WARN: Code duplicated, block: B:67:0x0176  */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(k70 k70Var, CronetEngine.Builder builder, Long l, Continuation continuation) {
        j70 j70Var;
        Object obj;
        Long l2;
        CronetEngine.Builder builder2;
        boolean z;
        boolean z2;
        boolean z3;
        int iIntValue;
        boolean z4;
        k70Var.getClass();
        if (continuation instanceof j70) {
            j70Var = (j70) continuation;
            int i = j70Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                j70Var.g = i - Integer.MIN_VALUE;
            } else {
                j70Var = new j70(k70Var, continuation);
            }
        } else {
            j70Var = new j70(k70Var, continuation);
        }
        Object obj2 = j70Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = j70Var.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj2);
            zw3 zw3Var = k70Var.c;
            j70Var.a = k70Var;
            j70Var.b = builder;
            j70Var.c = l;
            j70Var.d = builder;
            j70Var.g = 1;
            Object objA = zw3Var.a(j70Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            obj = objA;
            l2 = l;
            builder2 = builder;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            builder = j70Var.d;
            Long l3 = j70Var.c;
            CronetEngine.Builder builder3 = j70Var.b;
            k70 k70Var2 = j70Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj2);
            builder2 = builder3;
            k70Var = k70Var2;
            obj = obj2;
            l2 = l3;
        }
        CronetEngine.Builder userAgent = builder.setUserAgent((String) obj);
        ex0 ex0Var = k70Var.b;
        if (ex0Var != null) {
            Intrinsics.checkNotNullParameter("gads:cronet_quic:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var.a("gads:cronet_quic:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = true;
        }
        CronetEngine.Builder builderEnableQuic = userAgent.enableQuic(z);
        ex0 ex0Var2 = k70Var.b;
        if (ex0Var2 != null) {
            Intrinsics.checkNotNullParameter("gads:cronet_http2:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var2.a("gads:cronet_http2:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = true;
        }
        CronetEngine.Builder builderEnableHttp2 = builderEnableQuic.enableHttp2(z2);
        ex0 ex0Var3 = k70Var.b;
        if (ex0Var3 != null) {
            Intrinsics.checkNotNullParameter("gads:cronet_brotli:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var3.a("gads:cronet_brotli:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                z3 = true;
            } else {
                z3 = false;
            }
        } else {
            z3 = true;
        }
        builderEnableHttp2.enableBrotli(z3);
        ex0 ex0Var4 = k70Var.b;
        if (ex0Var4 != null) {
            Intrinsics.checkNotNullParameter("gads:cronet_cache_size_bytes", C3510b4.i.W);
            iIntValue = ((Number) ex0Var4.a("gads:cronet_cache_size_bytes", 3145728, yr.f)).intValue();
        } else {
            iIntValue = 10485760;
        }
        if (iIntValue > 0) {
            builder2.enableHttpCache(1, iIntValue);
        }
        QuicOptions.Builder builder4 = QuicOptions.builder();
        ex0 ex0Var5 = k70Var.b;
        if (ex0Var5 != null) {
            Intrinsics.checkNotNullParameter("gads:cronet_zero_rtt:enabled", C3510b4.i.W);
            z4 = ((Boolean) ex0Var5.a("gads:cronet_zero_rtt:enabled", Boolean.TRUE, yr.b)).booleanValue();
        }
        QuicOptions.Builder builderEnableTlsZeroRtt = builder4.enableTlsZeroRtt(z4);
        if (l2 != null) {
            builderEnableTlsZeroRtt.setIdleConnectionTimeoutSeconds(l2.longValue() * ((long) 60));
        }
        ex0 ex0Var6 = k70Var.b;
        if (ex0Var6 != null) {
            Intrinsics.checkNotNullParameter("gads:cronet_bbr:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var6.a("gads:cronet_bbr:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                builderEnableTlsZeroRtt.addClientConnectionOption("TBBR");
            }
        } else {
            builderEnableTlsZeroRtt.addClientConnectionOption("TBBR");
        }
        builder2.setQuicOptions(builderEnableTlsZeroRtt.build());
        ConnectionMigrationOptions.Builder builder5 = ConnectionMigrationOptions.builder();
        ex0 ex0Var7 = k70Var.b;
        if (ex0Var7 != null) {
            Intrinsics.checkNotNullParameter("gads:cronet_server_migration:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var7.a("gads:cronet_server_migration:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                builder5.allowServerMigration(true);
            }
        } else {
            builder5.allowServerMigration(true);
        }
        ex0 ex0Var8 = k70Var.b;
        if (ex0Var8 != null) {
            Intrinsics.checkNotNullParameter("gads:cronet_path_degradation_migration:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var8.a("gads:cronet_path_degradation_migration:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                builder5.enablePathDegradationMigration(true);
            }
        } else {
            builder5.enablePathDegradationMigration(true);
        }
        builder2.setConnectionMigrationOptions(builder5.build());
        return builder2;
    }

    @Override // kotlin.e01
    public final Object a(int i, long j, m8 m8Var) {
        if (this.q.getAndSet(true)) {
            return p005kotlin.Unit.INSTANCE;
        }
        CoroutineScope coroutineScope = this.a;
        u60 block = new u60(this, j, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.e01
    public final Object a(f81 f81Var, Duration duration, ja2 ja2Var) {
        return e01.a((e01) this, f81Var, duration, true, (Continuation) ja2Var, 20);
    }

    /* JADX WARN: Code duplicated, block: B:66:0x0186  */
    /* JADX WARN: Code duplicated, block: B:68:0x0190  */
    /* JADX WARN: Code duplicated, block: B:70:0x0194  */
    /* JADX WARN: Code duplicated, block: B:71:0x0199  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01bf, code lost:
    
        if (r2 == r4) goto L75;
     */
    @Override // kotlin.e01
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.f81 r24, p005kotlin.time.Duration r25, java.util.Map r26, boolean r27, boolean r28, p005kotlin.coroutines.Continuation r29) {
        /*
            Method dump skipped, instruction units count: 497
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.k70.a(ads_mobile_sdk.f81, kotlin.time.Duration, java.util.Map, boolean, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:117:0x035a  */
    /* JADX WARN: Code duplicated, block: B:123:0x037c  */
    /* JADX WARN: Code duplicated, block: B:126:0x0383  */
    /* JADX WARN: Code duplicated, block: B:129:0x038a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:135:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:44:0x011b  */
    /* JADX WARN: Code duplicated, block: B:45:0x0120  */
    /* JADX WARN: Code duplicated, block: B:48:0x012a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x012c  */
    /* JADX WARN: Code duplicated, block: B:52:0x0157  */
    /* JADX WARN: Code duplicated, block: B:59:0x01ca A[LOOP:2: B:57:0x01c4->B:59:0x01ca, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:62:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:65:0x0209  */
    /* JADX WARN: Code duplicated, block: B:68:0x0210  */
    /* JADX WARN: Code duplicated, block: B:71:0x021f  */
    /* JADX WARN: Code duplicated, block: B:73:0x0222  */
    /* JADX WARN: Code duplicated, block: B:75:0x0235 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x036f, code lost:
    
        if (r15.a(r1, r8, r2) == r3) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0159, code lost:
    
        if (r7 == r3) goto L119;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x0210 -> B:69:0x0219). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.f81 r24, org.chromium.net.CronetEngine r25, boolean r26, boolean r27, p005kotlin.coroutines.Continuation r28) {
        /*
            Method dump skipped, instruction units count: 965
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.k70.a(ads_mobile_sdk.f81, org.chromium.net.CronetEngine, boolean, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:45:0x0105  */
    /* JADX WARN: Code duplicated, block: B:47:0x011f  */
    /* JADX WARN: Code duplicated, block: B:48:0x0135  */
    /* JADX WARN: Code duplicated, block: B:54:0x0157  */
    /* JADX WARN: Code duplicated, block: B:56:0x015a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00f1, code lost:
    
        if (r2.a("onNetworkRequestError", r14, r15, r0) == r1) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0151, code lost:
    
        if (r2.a("onNetworkResponseBody", r13, r15, r0) == r1) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.h81 r13, java.util.UUID r14, p005kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.k70.a(ads_mobile_sdk.h81, java.util.UUID, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.e01
    public final Object a(sl1 sl1Var) {
        if (this.p.getAndSet(true)) {
            return p005kotlin.Unit.INSTANCE;
        }
        CoroutineScope coroutineScope = this.a;
        t60 block = new t60(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c6, code lost:
    
        if (r7 == r1) goto L31;
     */
    @Override // kotlin.e01
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r7, java.util.Map r8, p005kotlin.coroutines.Continuation r9) {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.k70.a(java.lang.String, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object a(String str, UUID uuid, JsonObject jsonObject, Continuation continuation) {
        b70 b70Var;
        Mutex mutex;
        JsonObject jsonObject2;
        if (continuation instanceof b70) {
            b70Var = (b70) continuation;
            int i = b70Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                b70Var.e = i - Integer.MIN_VALUE;
            } else {
                b70Var = new b70(this, continuation);
            }
        } else {
            b70Var = new b70(this, continuation);
        }
        Object obj = b70Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = b70Var.e;
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
            mutex = this.k;
            b70Var.a = jsonObject3;
            b70Var.b = mutex;
            b70Var.e = 1;
            if (mutex.lock(null, b70Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            jsonObject2 = jsonObject3;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = b70Var.b;
            jsonObject2 = b70Var.a;
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

    @Override // kotlin.e01
    public final Object a(URL url, ss0 ids, Continuation continuation) {
        URL url2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList<p005kotlin.Pair> arrayList = new ArrayList();
        URL url3 = us0.a(url, ids, this.b);
        Intrinsics.checkNotNullParameter(url3, "url");
        Intrinsics.checkNotNullParameter(ids, "ids");
        if (arrayList.isEmpty()) {
            url2 = url3;
        } else {
            String string = url3.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            Uri.Builder builderBuildUpon = Uri.parse(string).buildUpon();
            for (p005kotlin.Pair pair : arrayList) {
                builderBuildUpon.appendQueryParameter((String) pair.component1(), (String) pair.component2());
            }
            url2 = new URL(builderBuildUpon.build().toString());
        }
        return e01.a((e01) this, new f81(url2, "GET", MapsKt.toMap(linkedHashMap), null, ids, null), (Duration) null, false, continuation, 14);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.e01
    public final Object a(URL url, Continuation continuation) {
        e70 e70Var;
        Object objJoin;
        k70 k70Var;
        k70 k70Var2;
        e81 e81Var;
        String str;
        CronetEngine cronetEngine;
        Object objA;
        if (continuation instanceof e70) {
            e70Var = (e70) continuation;
            int i = e70Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                e70Var.f = i - Integer.MIN_VALUE;
            } else {
                e70Var = new e70(this, continuation);
            }
        } else {
            e70Var = new e70(this, continuation);
        }
        e70 e70Var2 = e70Var;
        Object objA2 = e70Var2.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = e70Var2.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA2);
            e70Var2.a = this;
            e70Var2.b = url;
            e70Var2.f = 1;
            if (!this.q.get() || (objJoin = this.o.join(e70Var2)) != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objJoin = p005kotlin.Unit.INSTANCE;
            }
            if (objJoin != coroutine_suspended) {
                k70Var = this;
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            url = (URL) e70Var2.b;
            k70Var = e70Var2.a;
            p005kotlin.ResultKt.throwOnFailure(objA2);
        } else {
            if (i2 != 2) {
                if (i2 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(objA2);
                return objA2;
            }
            str = e70Var2.c;
            e81Var = (e81) e70Var2.b;
            k70Var2 = e70Var2.a;
            p005kotlin.ResultKt.throwOnFailure(objA2);
        }
        f81 f81VarA = e81Var.c(str, (String) objA2).a();
        cronetEngine = (CronetEngine) k70Var2.m.get();
        if (cronetEngine == null) {
            Object obj = k70Var2.l.get();
            Intrinsics.checkNotNull(obj);
            cronetEngine = (CronetEngine) obj;
        }
        e70Var2.a = null;
        e70Var2.b = null;
        e70Var2.c = null;
        e70Var2.f = 3;
        objA = k70Var2.a(f81VarA, cronetEngine, false, true, (Continuation) e70Var2);
        if (objA != coroutine_suspended) {
            return coroutine_suspended;
        }
        return objA;
        e81 e81Var2 = new e81();
        Intrinsics.checkNotNullParameter(url, "url");
        e81Var2.a = url;
        e81 e81VarA = e81Var2.a("HEAD", (byte[]) null);
        zw3 zw3Var = k70Var.c;
        e70Var2.a = k70Var;
        e70Var2.b = e81VarA;
        e70Var2.c = HttpHeaders.USER_AGENT;
        e70Var2.f = 2;
        objA2 = zw3Var.a(e70Var2);
        if (objA2 != coroutine_suspended) {
            k70Var2 = k70Var;
            e81Var = e81VarA;
            str = HttpHeaders.USER_AGENT;
            f81 f81VarA2 = e81Var.c(str, (String) objA2).a();
            cronetEngine = (CronetEngine) k70Var2.m.get();
            if (cronetEngine == null) {
                Object obj2 = k70Var2.l.get();
                Intrinsics.checkNotNull(obj2);
                cronetEngine = (CronetEngine) obj2;
            }
            e70Var2.a = null;
            e70Var2.b = null;
            e70Var2.c = null;
            e70Var2.f = 3;
            objA = k70Var2.a(f81VarA2, cronetEngine, false, true, (Continuation) e70Var2);
            if (objA != coroutine_suspended) {
                return objA;
            }
        }
        return coroutine_suspended;
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

    /* JADX WARN: Code duplicated, block: B:106:0x0175 A[Catch: all -> 0x0195, TryCatch #2 {all -> 0x0195, blocks: (B:97:0x015f, B:99:0x0166, B:101:0x016a, B:103:0x016e, B:104:0x0171, B:106:0x0175, B:108:0x0179, B:110:0x017d, B:111:0x017e, B:112:0x0183, B:113:0x0184, B:114:0x018b, B:115:0x018c, B:116:0x0193, B:117:0x0194), top: B:133:0x015f }] */
    /* JADX WARN: Code duplicated, block: B:108:0x0179 A[Catch: all -> 0x0195, TryCatch #2 {all -> 0x0195, blocks: (B:97:0x015f, B:99:0x0166, B:101:0x016a, B:103:0x016e, B:104:0x0171, B:106:0x0175, B:108:0x0179, B:110:0x017d, B:111:0x017e, B:112:0x0183, B:113:0x0184, B:114:0x018b, B:115:0x018c, B:116:0x0193, B:117:0x0194), top: B:133:0x015f }] */
    /* JADX WARN: Code duplicated, block: B:110:0x017d A[Catch: all -> 0x0195, TryCatch #2 {all -> 0x0195, blocks: (B:97:0x015f, B:99:0x0166, B:101:0x016a, B:103:0x016e, B:104:0x0171, B:106:0x0175, B:108:0x0179, B:110:0x017d, B:111:0x017e, B:112:0x0183, B:113:0x0184, B:114:0x018b, B:115:0x018c, B:116:0x0193, B:117:0x0194), top: B:133:0x015f }] */
    /* JADX WARN: Code duplicated, block: B:111:0x017e A[Catch: all -> 0x0195, TryCatch #2 {all -> 0x0195, blocks: (B:97:0x015f, B:99:0x0166, B:101:0x016a, B:103:0x016e, B:104:0x0171, B:106:0x0175, B:108:0x0179, B:110:0x017d, B:111:0x017e, B:112:0x0183, B:113:0x0184, B:114:0x018b, B:115:0x018c, B:116:0x0193, B:117:0x0194), top: B:133:0x015f }] */
    /* JADX WARN: Code duplicated, block: B:113:0x0184 A[Catch: all -> 0x0195, TryCatch #2 {all -> 0x0195, blocks: (B:97:0x015f, B:99:0x0166, B:101:0x016a, B:103:0x016e, B:104:0x0171, B:106:0x0175, B:108:0x0179, B:110:0x017d, B:111:0x017e, B:112:0x0183, B:113:0x0184, B:114:0x018b, B:115:0x018c, B:116:0x0193, B:117:0x0194), top: B:133:0x015f }] */
    /* JADX WARN: Code duplicated, block: B:115:0x018c A[Catch: all -> 0x0195, TryCatch #2 {all -> 0x0195, blocks: (B:97:0x015f, B:99:0x0166, B:101:0x016a, B:103:0x016e, B:104:0x0171, B:106:0x0175, B:108:0x0179, B:110:0x017d, B:111:0x017e, B:112:0x0183, B:113:0x0184, B:114:0x018b, B:115:0x018c, B:116:0x0193, B:117:0x0194), top: B:133:0x015f }] */
    /* JADX WARN: Code duplicated, block: B:117:0x0194 A[Catch: all -> 0x0195, TRY_LEAVE, TryCatch #2 {all -> 0x0195, blocks: (B:97:0x015f, B:99:0x0166, B:101:0x016a, B:103:0x016e, B:104:0x0171, B:106:0x0175, B:108:0x0179, B:110:0x017d, B:111:0x017e, B:112:0x0183, B:113:0x0184, B:114:0x018b, B:115:0x018c, B:116:0x0193, B:117:0x0194), top: B:133:0x015f }] */
    /* JADX WARN: Code duplicated, block: B:38:0x008d  */
    /* JADX WARN: Code duplicated, block: B:51:0x00e0 A[Catch: all -> 0x0054, TRY_LEAVE, TryCatch #1 {all -> 0x0054, blocks: (B:22:0x004f, B:49:0x00da, B:51:0x00e0), top: B:131:0x004f }] */
    /* JADX WARN: Code duplicated, block: B:58:0x00f9 A[Catch: all -> 0x0128, TryCatch #3 {all -> 0x0128, blocks: (B:56:0x00f2, B:58:0x00f9, B:60:0x00fd, B:62:0x0101, B:63:0x0104, B:65:0x0108, B:67:0x010c, B:69:0x0110, B:70:0x0111, B:71:0x0116, B:72:0x0117, B:73:0x011e, B:74:0x011f, B:75:0x0126, B:76:0x0127), top: B:134:0x00f2 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0108 A[Catch: all -> 0x0128, TryCatch #3 {all -> 0x0128, blocks: (B:56:0x00f2, B:58:0x00f9, B:60:0x00fd, B:62:0x0101, B:63:0x0104, B:65:0x0108, B:67:0x010c, B:69:0x0110, B:70:0x0111, B:71:0x0116, B:72:0x0117, B:73:0x011e, B:74:0x011f, B:75:0x0126, B:76:0x0127), top: B:134:0x00f2 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x010c A[Catch: all -> 0x0128, TryCatch #3 {all -> 0x0128, blocks: (B:56:0x00f2, B:58:0x00f9, B:60:0x00fd, B:62:0x0101, B:63:0x0104, B:65:0x0108, B:67:0x010c, B:69:0x0110, B:70:0x0111, B:71:0x0116, B:72:0x0117, B:73:0x011e, B:74:0x011f, B:75:0x0126, B:76:0x0127), top: B:134:0x00f2 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0110 A[Catch: all -> 0x0128, TryCatch #3 {all -> 0x0128, blocks: (B:56:0x00f2, B:58:0x00f9, B:60:0x00fd, B:62:0x0101, B:63:0x0104, B:65:0x0108, B:67:0x010c, B:69:0x0110, B:70:0x0111, B:71:0x0116, B:72:0x0117, B:73:0x011e, B:74:0x011f, B:75:0x0126, B:76:0x0127), top: B:134:0x00f2 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0111 A[Catch: all -> 0x0128, TryCatch #3 {all -> 0x0128, blocks: (B:56:0x00f2, B:58:0x00f9, B:60:0x00fd, B:62:0x0101, B:63:0x0104, B:65:0x0108, B:67:0x010c, B:69:0x0110, B:70:0x0111, B:71:0x0116, B:72:0x0117, B:73:0x011e, B:74:0x011f, B:75:0x0126, B:76:0x0127), top: B:134:0x00f2 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0117 A[Catch: all -> 0x0128, TryCatch #3 {all -> 0x0128, blocks: (B:56:0x00f2, B:58:0x00f9, B:60:0x00fd, B:62:0x0101, B:63:0x0104, B:65:0x0108, B:67:0x010c, B:69:0x0110, B:70:0x0111, B:71:0x0116, B:72:0x0117, B:73:0x011e, B:74:0x011f, B:75:0x0126, B:76:0x0127), top: B:134:0x00f2 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x011f A[Catch: all -> 0x0128, TryCatch #3 {all -> 0x0128, blocks: (B:56:0x00f2, B:58:0x00f9, B:60:0x00fd, B:62:0x0101, B:63:0x0104, B:65:0x0108, B:67:0x010c, B:69:0x0110, B:70:0x0111, B:71:0x0116, B:72:0x0117, B:73:0x011e, B:74:0x011f, B:75:0x0126, B:76:0x0127), top: B:134:0x00f2 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0127 A[Catch: all -> 0x0128, TRY_LEAVE, TryCatch #3 {all -> 0x0128, blocks: (B:56:0x00f2, B:58:0x00f9, B:60:0x00fd, B:62:0x0101, B:63:0x0104, B:65:0x0108, B:67:0x010c, B:69:0x0110, B:70:0x0111, B:71:0x0116, B:72:0x0117, B:73:0x011e, B:74:0x011f, B:75:0x0126, B:76:0x0127), top: B:134:0x00f2 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:90:0x014c A[Catch: all -> 0x0048, TRY_LEAVE, TryCatch #5 {all -> 0x0048, blocks: (B:17:0x0043, B:88:0x0146, B:90:0x014c), top: B:137:0x0043 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x0166 A[Catch: all -> 0x0195, TryCatch #2 {all -> 0x0195, blocks: (B:97:0x015f, B:99:0x0166, B:101:0x016a, B:103:0x016e, B:104:0x0171, B:106:0x0175, B:108:0x0179, B:110:0x017d, B:111:0x017e, B:112:0x0183, B:113:0x0184, B:114:0x018b, B:115:0x018c, B:116:0x0193, B:117:0x0194), top: B:133:0x015f }] */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x01a3, code lost:
    
        if (r0.invoke(r7) == r8) goto L126;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.util.concurrent.atomic.AtomicReference r18, kotlinx.coroutines.CompletableJob r19, java.lang.Long r20, p005kotlin.coroutines.Continuation r21) {
        /*
            Method dump skipped, instruction units count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.k70.a(java.util.concurrent.atomic.AtomicReference, kotlinx.coroutines.CompletableJob, java.lang.Long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.e01
    public final void a(uv chromeVariationsProvider) {
        Intrinsics.checkNotNullParameter(chromeVariationsProvider, "chromeVariationsProvider");
        this.i = chromeVariationsProvider;
    }

    @Override // kotlin.e01
    public final void a(vk0 debugModeProvider) {
        Intrinsics.checkNotNullParameter(debugModeProvider, "debugModeProvider");
        this.j = debugModeProvider;
    }
}
