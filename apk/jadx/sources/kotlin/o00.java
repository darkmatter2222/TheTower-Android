package kotlin;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.SystemClock;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import com.google.android.libraries.ads.mobile.sdk.internal.initialization.ConfigLoaderRequest;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import com.tapjoy.TapjoyConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.CharsKt;
import p005kotlin.text.MatchResult;
import p005kotlin.text.Regex;
import p005kotlin.text.StringsKt;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class o00 extends nc1 implements gj1 {
    public final CoroutineContext c;
    public final CoroutineScope d;
    public final Context e;
    public final ja1 f;
    public final String g;
    public final jb3 h;
    public final pn i;
    public final hf j;
    public final ur3 k;
    public final tx l;
    public final ex0 m;
    public final g83 n;
    public final g30 o;
    public final e01 p;
    public final o21 q;
    public final ks1 r;
    public final Mutex s;
    public boolean t;
    public long u;
    public long v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o00(CoroutineContext backgroundContext, CoroutineScope backgroundScope, Context context, ja1 initializationConfigWrapper, String afmaVersion, jb3 javascriptEngine, pn appState, hf adapterInitializer, ur3 traceLogger, tx clock, ex0 flags, g83 rootTraceCreator, g30 consentManager, e01 httpClient, o21 gmaUtil, ks1 inspectorManager) {
        super((s11) null, 1);
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(javascriptEngine, "javascriptEngine");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(adapterInitializer, "adapterInitializer");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        this.c = backgroundContext;
        this.d = backgroundScope;
        this.e = context;
        this.f = initializationConfigWrapper;
        this.g = afmaVersion;
        this.h = javascriptEngine;
        this.i = appState;
        this.j = adapterInitializer;
        this.k = traceLogger;
        this.l = clock;
        this.m = flags;
        this.n = rootTraceCreator;
        this.o = consentManager;
        this.p = httpClient;
        this.q = gmaUtil;
        this.r = inspectorManager;
        this.s = MutexKt.Mutex$default(false, 1, null);
        Duration.Companion companion = Duration.INSTANCE;
        this.u = companion.m4458getZEROUwyO8pc();
        this.v = companion.m4458getZEROUwyO8pc();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(o00 o00Var, BaseRequest baseRequest, Continuation continuation) {
        h00 h00Var;
        if (continuation instanceof h00) {
            h00Var = (h00) continuation;
            int i = h00Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                h00Var.c = i - Integer.MIN_VALUE;
            } else {
                h00Var = new h00(o00Var, continuation);
            }
        } else {
            h00Var = new h00(o00Var, continuation);
        }
        Object objB = h00Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = h00Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objB);
            String adUnitId = baseRequest.getAdUnitId();
            h00Var.c = 1;
            objB = o00Var.b(adUnitId, h00Var);
            if (objB == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objB);
        }
        ((Boolean) objB).getClass();
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0088, code lost:
    
        if (r14 >= 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c7, code lost:
    
        if (kotlinx.coroutines.DelayKt.m4512delayVtjQ1oo(r5, r0) == r1) goto L34;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00c7 -> B:13:0x0038). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlin.o00 r12, com.google.android.libraries.ads.mobile.sdk.internal.initialization.ConfigLoaderRequest r13, p005kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.o00.a(ads_mobile_sdk.o00, com.google.android.libraries.ads.mobile.sdk.internal.initialization.ConfigLoaderRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(o00 o00Var, Continuation continuation) {
        m00 m00Var;
        o00Var.getClass();
        if (continuation instanceof m00) {
            m00Var = (m00) continuation;
            int i = m00Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                m00Var.d = i - Integer.MIN_VALUE;
            } else {
                m00Var = new m00(o00Var, continuation);
            }
        } else {
            m00Var = new m00(o00Var, continuation);
        }
        Object objC = m00Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = m00Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objC);
            if (o00Var.t) {
                return Boxing.boxBoolean(false);
            }
            pn pnVar = o00Var.i;
            m00Var.a = o00Var;
            m00Var.d = 1;
            pnVar.getClass();
            objC = pn.c(pnVar, m00Var);
            if (objC == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            o00Var = m00Var.a;
            p005kotlin.ResultKt.throwOnFailure(objC);
        }
        if (((Boolean) objC).booleanValue()) {
            return Boxing.boxBoolean(false);
        }
        long j = o00Var.u;
        Duration.Companion companion = Duration.INSTANCE;
        if (!Duration.m4372equalsimpl0(j, companion.m4458getZEROUwyO8pc())) {
            o00Var.l.getClass();
            long jM4395minusLRDsOJo = Duration.m4395minusLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), o00Var.u);
            ex0 ex0Var = o00Var.m;
            ex0Var.getClass();
            if (Duration.m4366compareToLRDsOJo(jM4395minusLRDsOJo, ((Duration) ex0Var.a("gads:fetch_app_settings_using_cld:throttle_interval_ms", wm2.a(5, DurationUnit.SECONDS, "gads:fetch_app_settings_using_cld:throttle_interval_ms", C3510b4.i.W), yr.j)).getRawValue()) < 0) {
                return Boxing.boxBoolean(false);
            }
        }
        if (!Duration.m4372equalsimpl0(o00Var.v, companion.m4458getZEROUwyO8pc())) {
            o00Var.l.getClass();
            long jM4395minusLRDsOJo2 = Duration.m4395minusLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), o00Var.v);
            ex0 ex0Var2 = o00Var.m;
            ex0Var2.getClass();
            if (Duration.m4366compareToLRDsOJo(jM4395minusLRDsOJo2, ((Duration) ex0Var2.a("gads:fetch_app_settings_using_cld:refresh_interval_ms", wm2.a(2, DurationUnit.HOURS, "gads:fetch_app_settings_using_cld:refresh_interval_ms", C3510b4.i.W), yr.j)).getRawValue()) < 0) {
                return Boxing.boxBoolean(false);
            }
        }
        return Boxing.boxBoolean(true);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0114  */
    /* JADX WARN: Code duplicated, block: B:45:0x011c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:64:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    public static final Object a(o00 o00Var, boolean z, String str, Continuation continuation) {
        zz zzVar;
        String applicationId;
        Integer numValueOf;
        boolean z2;
        boolean zBooleanValue;
        o00 o00Var2;
        boolean z3;
        ex0 ex0Var;
        Mutex mutex;
        o00 o00Var3 = o00Var;
        o00Var3.getClass();
        if (continuation instanceof zz) {
            zzVar = (zz) continuation;
            int i = zzVar.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzVar.f = i - Integer.MIN_VALUE;
            } else {
                zzVar = new zz(o00Var3, continuation);
            }
        } else {
            zzVar = new zz(o00Var3, continuation);
        }
        zz zzVar2 = zzVar;
        Object objA = zzVar2.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzVar2.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            InitializationConfig initializationConfigA = o00Var3.f.a();
            if (initializationConfigA == null || (applicationId = initializationConfigA.getApplicationId()) == null) {
                applicationId = "";
            }
            String packageName = o00Var3.e.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
            try {
                ApplicationInfo applicationInfo = o00Var3.e.getApplicationInfo();
                numValueOf = applicationInfo == null ? null : Integer.valueOf(o00Var3.e.getPackageManager().getPackageInfo(applicationInfo.packageName, 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
            }
            z2 = z;
            ConfigLoaderRequest configLoaderRequest = new ConfigLoaderRequest(applicationId, str, z2, packageName, numValueOf, o00Var3.g, o00Var3.m.s.c());
            JsonObject asJsonObject = new Gson().toJsonTree(configLoaderRequest).getAsJsonObject();
            ex0 ex0Var2 = o00Var3.m;
            ex0Var2.getClass();
            Intrinsics.checkNotNullParameter("gads:fetch_cld_in_native:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var2.a("gads:fetch_cld_in_native:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                zzVar2.a = o00Var3;
                zzVar2.c = z2;
                zzVar2.f = 1;
                objA = o00Var3.a(new d00(o00Var3, configLoaderRequest, null), zzVar2);
                if (objA == coroutine_suspended) {
                    return coroutine_suspended;
                }
                zBooleanValue = ((Boolean) objA).booleanValue();
                o00Var2 = o00Var3;
                z3 = zBooleanValue;
                ex0Var = o00Var2.m;
                if (ex0Var.w) {
                    CoroutineScope coroutineScope = o00Var2.d;
                    a00 block = new a00(o00Var2, null);
                    EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                    Intrinsics.checkNotNullParameter(context, "context");
                    Intrinsics.checkNotNullParameter(block, "block");
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                } else {
                    CoroutineScope coroutineScope2 = o00Var2.d;
                    a00 block2 = new a00(o00Var2, null);
                    EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
                    Intrinsics.checkNotNullParameter(context2, "context");
                    Intrinsics.checkNotNullParameter(block2, "block");
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context2, null, new ws3(block2, null), 2, null);
                }
                mutex = o00Var2.s;
                zzVar2.a = o00Var2;
                zzVar2.b = mutex;
                zzVar2.c = z3;
                zzVar2.f = 3;
                if (mutex.lock(null, zzVar2) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                Intrinsics.checkNotNull(asJsonObject);
                zzVar2.a = o00Var3;
                zzVar2.c = z2;
                zzVar2.f = 2;
                objA = o00Var3.a(new c00(o00Var3, asJsonObject, null), zzVar2);
                if (objA == coroutine_suspended) {
                    return coroutine_suspended;
                }
                zBooleanValue = ((Boolean) objA).booleanValue();
                o00Var2 = o00Var3;
                z3 = zBooleanValue;
                ex0Var = o00Var2.m;
                if (ex0Var.w) {
                    CoroutineScope coroutineScope3 = o00Var2.d;
                    a00 block3 = new a00(o00Var2, null);
                    EmptyCoroutineContext context3 = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope3, "<this>");
                    Intrinsics.checkNotNullParameter(context3, "context");
                    Intrinsics.checkNotNullParameter(block3, "block");
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope3, context3, null, new ws3(block3, null), 2, null);
                } else {
                    CoroutineScope coroutineScope4 = o00Var2.d;
                    a00 block4 = new a00(o00Var2, null);
                    EmptyCoroutineContext context4 = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope4, "<this>");
                    Intrinsics.checkNotNullParameter(context4, "context");
                    Intrinsics.checkNotNullParameter(block4, "block");
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope4, context4, null, new ws3(block4, null), 2, null);
                }
                mutex = o00Var2.s;
                zzVar2.a = o00Var2;
                zzVar2.b = mutex;
                zzVar2.c = z3;
                zzVar2.f = 3;
                if (mutex.lock(null, zzVar2) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else if (i2 == 1) {
            boolean z4 = zzVar2.c;
            o00 o00Var4 = zzVar2.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
            z2 = z4;
            o00Var3 = o00Var4;
            zBooleanValue = ((Boolean) objA).booleanValue();
            o00Var2 = o00Var3;
            z3 = zBooleanValue;
            ex0Var = o00Var2.m;
            if (ex0Var.w) {
                CoroutineScope coroutineScope5 = o00Var2.d;
                a00 block5 = new a00(o00Var2, null);
                EmptyCoroutineContext context5 = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope5, "<this>");
                Intrinsics.checkNotNullParameter(context5, "context");
                Intrinsics.checkNotNullParameter(block5, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope5, context5, null, new ws3(block5, null), 2, null);
            } else {
                CoroutineScope coroutineScope6 = o00Var2.d;
                a00 block6 = new a00(o00Var2, null);
                EmptyCoroutineContext context6 = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope6, "<this>");
                Intrinsics.checkNotNullParameter(context6, "context");
                Intrinsics.checkNotNullParameter(block6, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope6, context6, null, new ws3(block6, null), 2, null);
            }
            mutex = o00Var2.s;
            zzVar2.a = o00Var2;
            zzVar2.b = mutex;
            zzVar2.c = z3;
            zzVar2.f = 3;
            if (mutex.lock(null, zzVar2) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i2 == 2) {
            boolean z5 = zzVar2.c;
            o00 o00Var5 = zzVar2.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
            z2 = z5;
            o00Var3 = o00Var5;
            zBooleanValue = ((Boolean) objA).booleanValue();
            o00Var2 = o00Var3;
            z3 = zBooleanValue;
            ex0Var = o00Var2.m;
            if ((ex0Var.w || ex0Var.x > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) && z3 && !z2) {
                CoroutineScope coroutineScope7 = o00Var2.d;
                a00 block7 = new a00(o00Var2, null);
                EmptyCoroutineContext context7 = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope7, "<this>");
                Intrinsics.checkNotNullParameter(context7, "context");
                Intrinsics.checkNotNullParameter(block7, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope7, context7, null, new ws3(block7, null), 2, null);
            }
            mutex = o00Var2.s;
            zzVar2.a = o00Var2;
            zzVar2.b = mutex;
            zzVar2.c = z3;
            zzVar2.f = 3;
            if (mutex.lock(null, zzVar2) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z3 = zzVar2.c;
            mutex = zzVar2.b;
            o00Var2 = zzVar2.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        try {
            o00Var2.t = false;
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            return Boxing.boxBoolean(z3);
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object b(o00 o00Var, Continuation continuation) {
        e00 e00Var;
        Mutex mutex;
        long jElapsedRealtime;
        if (continuation instanceof e00) {
            e00Var = (e00) continuation;
            int i = e00Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                e00Var.e = i - Integer.MIN_VALUE;
            } else {
                e00Var = new e00(o00Var, continuation);
            }
        } else {
            e00Var = new e00(o00Var, continuation);
        }
        Object obj = e00Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = e00Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = o00Var.s;
            e00Var.a = o00Var;
            e00Var.b = mutex;
            e00Var.e = 1;
            if (mutex.lock(null, e00Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = e00Var.b;
            o00 o00Var2 = e00Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            o00Var = o00Var2;
        }
        try {
            if (Duration.m4372equalsimpl0(o00Var.v, Duration.INSTANCE.m4458getZEROUwyO8pc())) {
                jElapsedRealtime = 0;
            } else {
                o00Var.l.getClass();
                jElapsedRealtime = SystemClock.elapsedRealtime() - Duration.m4378getInWholeMillisecondsimpl(o00Var.v);
            }
            return Boxing.boxLong(jElapsedRealtime);
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:117:0x033b  */
    /* JADX WARN: Code duplicated, block: B:26:0x00c9  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r11v4, types: [com.google.gson.JsonElement, com.google.gson.JsonObject] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v10 */
    /* JADX WARN: Type inference failed for: r17v11 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r17v9 */
    /* JADX WARN: Type inference failed for: r20v0, types: [com.google.gson.JsonObject, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v30 */
    /* JADX WARN: Type inference failed for: r7v32 */
    /* JADX WARN: Type inference failed for: r7v35, types: [com.google.gson.JsonObject] */
    /* JADX WARN: Type inference failed for: r7v9 */
    public final v01 a(JsonObject jsonObject) {
        LinkedHashSet linkedHashSet;
        ?? r17;
        char c;
        JsonArray jsonArrayE;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        ?? r10;
        JsonObject jsonObjectA;
        JsonArray jsonArrayE2;
        JsonArray jsonArrayE3;
        JsonElement jsonElement = jsonObject.get("status");
        if (jsonElement != null) {
            boolean z6 = true;
            if (jsonElement.getAsInt() == 1) {
                List listC0 = this.m.c0();
                ds1 ds1Var = ds1.a;
                JsonObject jsonObjectB = ds1.b(jsonObject, "common_settings");
                ds1.a(jsonObjectB, TapjoyConstants.TJC_APP_ID, jsonObject.get(TapjoyConstants.TJC_APP_ID));
                jsonObject.remove("prefetch_directive");
                jsonObject.remove("persistable_banner_ad_unit_ids");
                JsonObject jsonObjectA2 = ds1.a((JsonObject) jsonObject, "exp_param", (JsonObject) null);
                if (jsonObjectA2 == null || (jsonArrayE3 = ds1.e(jsonObjectA2, "loeid")) == null) {
                    linkedHashSet = new LinkedHashSet();
                } else {
                    linkedHashSet = new LinkedHashSet();
                    Iterator<JsonElement> it = jsonArrayE3.iterator();
                    while (it.hasNext()) {
                        linkedHashSet.add(it.next().getAsString());
                    }
                }
                if (!linkedHashSet.isEmpty()) {
                    jsonObjectB.add("loeid", new Gson().toJsonTree(CollectionsKt.toList(linkedHashSet)));
                    jsonObject.remove("exp_param");
                }
                char c2 = 3;
                if (!jsonObject.has("cache_ttl_sec")) {
                    ex0 ex0Var = this.m;
                    ex0Var.getClass();
                    Duration.Companion companion = Duration.INSTANCE;
                    jsonObject.addProperty("cache_ttl_sec", Long.valueOf(Duration.m4381getInWholeSecondsimpl(((Duration) ex0Var.a("gads:default_cld_ttl_secs", wm2.a(3, DurationUnit.DAYS, "gads:default_cld_ttl_secs", C3510b4.i.W), yr.l)).getRawValue())));
                }
                JsonArray jsonArrayE4 = ds1.e(jsonObject, "ad_unit_settings");
                if (jsonArrayE4 != null) {
                    jsonObject.add("ad_unit_id_settings", jsonArrayE4);
                    jsonObject.remove("ad_unit_settings");
                }
                JsonArray jsonArrayE5 = ds1.e(jsonObject, "ad_unit_id_settings");
                if (jsonArrayE5 == null) {
                    r17 = 1;
                    c = 3;
                } else {
                    for (JsonElement jsonElement2 : jsonArrayE5) {
                        if (jsonElement2.isJsonObject()) {
                            JsonObject asJsonObject = jsonElement2.getAsJsonObject();
                            Intrinsics.checkNotNullExpressionValue(asJsonObject, "getAsJsonObject(...)");
                            JsonElement jsonElement3 = asJsonObject.get("is_mediation");
                            ds1 ds1Var2 = ds1.a;
                            if (ds1.a(jsonElement3, listC0)) {
                                ds1.b(asJsonObject, "request_signals").add("is_mediation", jsonElement3);
                            }
                        }
                    }
                    ex0 ex0Var2 = this.m;
                    ex0Var2.getClass();
                    Intrinsics.checkNotNullParameter("gads:ad_manager_inventory_unit_regex", C3510b4.i.W);
                    Intrinsics.checkNotNullParameter("^/(\\d+)(/.*)?$", "defaultValue");
                    Regex regex = new Regex((String) ex0Var2.a("gads:ad_manager_inventory_unit_regex", "^/(\\d+)(/.*)?$", yr.o));
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (JsonElement jsonElement4 : jsonArrayE5) {
                        if (jsonElement4.isJsonObject()) {
                            JsonObject asJsonObject2 = jsonElement4.getAsJsonObject();
                            JsonElement jsonElement5 = asJsonObject2.get("ad_unit_id");
                            String asString = jsonElement5 != null ? jsonElement5.getAsString() : null;
                            JsonElement jsonElement6 = asJsonObject2.get("format");
                            String asString2 = jsonElement6 != null ? jsonElement6.getAsString() : null;
                            if (asString != null && asString.length() != 0 && asString2 != null && asString2.length() != 0 && regex.matches(asString)) {
                                Object obj = linkedHashMap.get(asString2);
                                Object obj2 = obj;
                                if (obj == null) {
                                    ArrayList arrayList = new ArrayList();
                                    linkedHashMap.put(asString2, arrayList);
                                    obj2 = arrayList;
                                }
                                ((List) obj2).add(asString);
                            }
                        }
                    }
                    if (linkedHashMap.isEmpty()) {
                        r17 = 1;
                        c = 3;
                    } else {
                        ex0 ex0Var3 = this.m;
                        ex0Var3.getClass();
                        Intrinsics.checkNotNullParameter("gads:match_child_ad_unit_regex:enabled", C3510b4.i.W);
                        boolean zBooleanValue = ((Boolean) ex0Var3.a("gads:match_child_ad_unit_regex:enabled", Boolean.TRUE, yr.b)).booleanValue();
                        ?? jsonObject2 = new JsonObject();
                        for (Map.Entry entry : linkedHashMap.entrySet()) {
                            String str = (String) entry.getKey();
                            List list = (List) entry.getValue();
                            JsonArray jsonArray = new JsonArray();
                            char c3 = c2;
                            for (String str2 : CollectionsKt.sortedWith(list, new uz())) {
                                boolean z7 = z6;
                                JsonArray jsonArray2 = new JsonArray();
                                jsonArray2.add(a(str2, zBooleanValue));
                                JsonObject jsonObject3 = new JsonObject();
                                jsonObject3.add("including", jsonArray2);
                                jsonObject3.add("excluding", new JsonArray());
                                jsonObject3.addProperty("effective_ad_unit_id", str2);
                                jsonArray.add(jsonObject3);
                                z6 = z7;
                                zBooleanValue = zBooleanValue;
                            }
                            jsonObject2.add(str, jsonArray);
                            c2 = c3;
                        }
                        r17 = z6;
                        c = c2;
                        jsonObject.add("ad_unit_patterns", jsonObject2);
                    }
                }
                ds1 ds1Var3 = ds1.a;
                JsonObject jsonObjectB2 = ds1.b(ds1.b(jsonObject, "initializer_settings"), "config");
                ex0 ex0Var4 = this.m;
                ex0Var4.getClass();
                String[] strArr = new String[4];
                strArr[0] = "GADMediationAdapterAdColony";
                strArr[r17] = "GADMAdapterAdColony";
                strArr[2] = "com.google.ads.mediation.adcolony.AdColonyMediationAdapter";
                strArr[c] = "com.jirbo.adcolony.AdColonyAdapter";
                List defaultValue = CollectionsKt.listOf((Object[]) strArr);
                Intrinsics.checkNotNullParameter("gads:ad_colony_adapters_name_list_for_cld", C3510b4.i.W);
                Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
                for (String str3 : (List) ex0Var4.a("gads:ad_colony_adapters_name_list_for_cld", defaultValue, yr.g)) {
                    ds1 ds1Var4 = ds1.a;
                    ?? A = ds1.a(jsonObjectB2, str3, (JsonObject) null);
                    if (A != 0 && (jsonArrayE2 = ds1.e(A, "data")) != null) {
                        JsonArray jsonArray3 = new JsonArray();
                        for (JsonElement jsonElement7 : jsonArrayE2) {
                            if (jsonElement7.isJsonObject()) {
                                JsonObject asJsonObject3 = jsonElement7.getAsJsonObject();
                                ds1 ds1Var5 = ds1.a;
                                JsonObject jsonObjectA3 = ds1.a(asJsonObject3, "data", (JsonObject) null);
                                if (jsonObjectA3 != null) {
                                    ds1.a(jsonObjectA3, "zone_ids", jsonObjectA3.get("zone_id"));
                                    ds1.a(jsonObjectA3, "zone_id", jsonObjectA3.get("zone_ids"));
                                    if (jsonObjectA3.has("zone_id") && jsonObjectA3.has("zone_ids") && jsonObjectA3.has(TapjoyConstants.TJC_APP_ID)) {
                                        jsonArray3.add(asJsonObject3);
                                    }
                                }
                            }
                        }
                        A.add("data", jsonArray3);
                    }
                }
                JsonArray jsonArrayE6 = ds1.e(jsonObject, "publisher_permissions");
                jsonObject.remove("publisher_permissions");
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                ?? r7 = (jsonArrayE6 == null || jsonArrayE6.size() <= 0) ? 0 : r17;
                if (jsonArrayE6 == null) {
                    jsonArrayE6 = new JsonArray();
                }
                for (JsonElement jsonElement8 : jsonArrayE6) {
                    if (jsonElement8.isJsonObject()) {
                        JsonObject asJsonObject4 = jsonElement8.getAsJsonObject();
                        if (r7 != 0) {
                            ds1 ds1Var6 = ds1.a;
                            if (ds1.a(asJsonObject4.get("eoid_enabled"), listC0)) {
                                r7 = r17;
                            } else {
                                r7 = 0;
                            }
                        } else {
                            r7 = 0;
                        }
                        JsonElement jsonElement9 = asJsonObject4.get("platform");
                        String asString3 = jsonElement9 != null ? jsonElement9.getAsString() : null;
                        if (asString3 != null) {
                            ds1 ds1Var7 = ds1.a;
                            if (ds1.a(asJsonObject4.get("same_app_key_opt_out"), listC0)) {
                                arrayList2.add(asString3);
                            }
                            if (ds1.a(asJsonObject4.get("same_app_key_p13n_disabled"), listC0)) {
                                arrayList3.add(asString3);
                            }
                        }
                    }
                }
                jsonObjectB.addProperty("eoid_opt_in", Boolean.valueOf((boolean) r7));
                if (!arrayList2.isEmpty()) {
                    jsonObjectB.add("same_app_key_opt_out_platforms", new Gson().toJsonTree(arrayList2));
                }
                if (!arrayList3.isEmpty()) {
                    jsonObjectB.add("same_app_key_p13n_disabled_platforms", new Gson().toJsonTree(arrayList3));
                }
                ds1 ds1Var8 = ds1.a;
                JsonObject jsonObjectA4 = ds1.a((JsonObject) jsonObject, "platform_settings", (JsonObject) null);
                jsonObject.remove("platform_settings");
                ds1.a(jsonObjectB, "gmp_app_id", (jsonObjectA4 == null || (jsonObjectA = ds1.a(jsonObjectA4, "ga_settings", (JsonObject) null)) == null) ? null : jsonObjectA.get("gmp_app_id"));
                jsonObject.remove("odf_settings");
                JsonArray jsonArrayE7 = ds1.e(jsonObject, "signal_adapters");
                if ((jsonArrayE7 == null || jsonArrayE7.size() == 0) && (jsonArrayE = ds1.e(jsonObject, "adapter_settings")) != null && jsonArrayE.size() > 0) {
                    jsonArrayE7 = new JsonArray();
                    for (JsonElement jsonElement10 : jsonArrayE) {
                        if (jsonElement10.isJsonObject()) {
                            JsonObject asJsonObject5 = jsonElement10.getAsJsonObject();
                            JsonObject jsonObject4 = new JsonObject();
                            ds1 ds1Var9 = ds1.a;
                            ds1.a(jsonObject4, "adapter_class_name", asJsonObject5.get("adapter_class_name"));
                            JsonArray jsonArrayE8 = ds1.e(asJsonObject5, "permission_set");
                            if (jsonArrayE8 != null) {
                                Iterator<JsonElement> it2 = jsonArrayE8.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        z2 = true;
                                        break;
                                    }
                                    JsonElement next = it2.next();
                                    if (next.isJsonObject()) {
                                        JsonElement jsonElement11 = next.getAsJsonObject().get("collect_secure_signals");
                                        if (jsonElement11 == null || jsonElement11.getAsBoolean() != (r10 = r17)) {
                                            z2 = false;
                                            break;
                                        }
                                        r17 = r10 == true ? 1 : 0;
                                    } else {
                                        r17 = 1;
                                    }
                                }
                                jsonObject4.addProperty("collect_signals", Boolean.valueOf(z2));
                                Iterator<JsonElement> it3 = jsonArrayE8.iterator();
                                while (true) {
                                    if (!it3.hasNext()) {
                                        z3 = true;
                                        z4 = true;
                                        break;
                                    }
                                    JsonElement next2 = it3.next();
                                    if (next2.isJsonObject()) {
                                        JsonElement jsonElement12 = next2.getAsJsonObject().get("enable_rendering");
                                        if (jsonElement12 != null) {
                                            z5 = true;
                                            if (jsonElement12.getAsBoolean()) {
                                            }
                                        } else {
                                            z5 = true;
                                        }
                                        z4 = false;
                                        z3 = z5;
                                        break;
                                    }
                                }
                                jsonObject4.addProperty("keep_for_rendering", Boolean.valueOf(z4));
                                z = z3;
                            } else {
                                z = r17 == true ? 1 : 0;
                            }
                            jsonArrayE7.add(jsonObject4);
                            r17 = z;
                        }
                    }
                    jsonObject.add("signal_adapters", jsonArrayE7);
                }
                if (jsonArrayE7 != null && jsonArrayE7.size() != 0) {
                    JsonArray jsonArray4 = new JsonArray();
                    for (JsonElement jsonElement13 : jsonArrayE7) {
                        if (jsonElement13.isJsonObject()) {
                            JsonObject asJsonObject6 = jsonElement13.getAsJsonObject();
                            ds1 ds1Var10 = ds1.a;
                            if (!ds1.a(asJsonObject6.get("keep_for_rendering"), listC0)) {
                                jsonArray4.add(asJsonObject6);
                            }
                        }
                    }
                    jsonObject.add("signal_adapters", jsonArray4);
                }
                JsonObject jsonObject5 = new JsonObject();
                jsonObject5.addProperty("isSuccessful", Boolean.TRUE);
                jsonObject5.addProperty("appSettingsJson", jsonObject.toString());
                jsonObject5.addProperty("errorReason", "");
                return new q01(jsonObject5);
            }
        }
        return new m01("Response status not OK - " + jsonObject.get("status"));
    }

    @Override // kotlin.gj1
    public final Object a(BaseRequest baseRequest, Continuation continuation) {
        return a(this, baseRequest, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ConfigLoaderRequest configLoaderRequest, Continuation continuation) {
        vz vzVar;
        ConfigLoaderRequest configLoaderRequest2;
        e81 e81Var;
        o00 o00Var;
        if (continuation instanceof vz) {
            vzVar = (vz) continuation;
            int i = vzVar.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                vzVar.f = i - Integer.MIN_VALUE;
            } else {
                vzVar = new vz(this, continuation);
            }
        } else {
            vzVar = new vz(this, continuation);
        }
        Object obj = vzVar.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = vzVar.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            e81 e81VarB = new e81().b((this.q.d() ? "https://mediation.goog" : "https://googleads.g.doubleclick.net").concat("/getconfig/pubsetting")).b("app_name", configLoaderRequest.packageName).b("eid", configLoaderRequest.experimentIds).b("js", configLoaderRequest.afmaVersion);
            Integer num = configLoaderRequest.versionCode;
            if (num != null) {
                e81VarB.b("vnm", String.valueOf(num.intValue()));
            }
            if1 if1Var = (if1) this.r.get();
            vzVar.a = this;
            vzVar.b = configLoaderRequest;
            vzVar.c = e81VarB;
            vzVar.f = 1;
            Object objV = if1Var.v(vzVar);
            if (objV == coroutine_suspended) {
                return coroutine_suspended;
            }
            configLoaderRequest2 = configLoaderRequest;
            e81Var = e81VarB;
            obj = objV;
            o00Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            e81Var = vzVar.c;
            configLoaderRequest2 = vzVar.b;
            o00Var = vzVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        if (((Boolean) obj).booleanValue()) {
            e81Var.b("aie", "1");
        }
        String str = configLoaderRequest2.appId;
        String str2 = configLoaderRequest2.adUnitId;
        MatchResult matchResultFind$default = Regex.find$default(new Regex(o00Var.m.e()), str, 0, 2, null);
        if (matchResultFind$default != null && matchResultFind$default.getGroupValues().size() > 2) {
            String strE = dt.CLIENT.e();
            Intrinsics.checkNotNullExpressionValue(strE, "getFirstUrlKey(...)");
            e81Var.b(strE, matchResultFind$default.getGroupValues().get(1));
            e81Var.b("admob_appcc", matchResultFind$default.getGroupValues().get(2));
            return new q01(e81Var.a());
        }
        MatchResult matchResultFind$default2 = Regex.find$default(new Regex(o00Var.m.c()), str, 0, 2, null);
        if (matchResultFind$default2 != null && matchResultFind$default2.getGroupValues().size() > 2) {
            e81Var.b("iu", matchResultFind$default2.getGroupValues().get(1));
            e81Var.b("msid", matchResultFind$default2.getGroupValues().get(2));
            return new q01(e81Var.a());
        }
        if (str2 == null) {
            return new m01("No client id found.", kk1.INVALID_REQUEST);
        }
        MatchResult matchResultFind$default3 = Regex.find$default(new Regex(o00Var.m.d()), str2, 0, 2, null);
        if (matchResultFind$default3 == null || matchResultFind$default3.getGroupValues().size() <= 2) {
            return new m01("No ad unit id match found.", kk1.INVALID_REQUEST);
        }
        e81Var.b("client", matchResultFind$default3.getGroupValues().get(1));
        e81Var.b("slotname", matchResultFind$default3.getGroupValues().get(2));
        return new q01(e81Var.a());
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object a(Function1 function1, Continuation continuation) {
        wz wzVar;
        o00 o00Var;
        o00 o00Var2;
        o00 o00Var3;
        Mutex mutex;
        JsonObject jsonObject;
        pn pnVar;
        long jCurrentTimeMillis;
        if (continuation instanceof wz) {
            wzVar = (wz) continuation;
            int i = wzVar.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                wzVar.f = i - Integer.MIN_VALUE;
            } else {
                wzVar = new wz(this, continuation);
            }
        } else {
            wzVar = new wz(this, continuation);
        }
        Object objInvoke = wzVar.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = wzVar.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objInvoke);
            try {
                wzVar.a = this;
                wzVar.f = 1;
                objInvoke = function1.invoke(wzVar);
                if (objInvoke != coroutine_suspended) {
                    o00Var2 = this;
                }
                return coroutine_suspended;
            } catch (Exception e) {
                exception = e;
                o00Var = this;
                o00Var3 = o00Var;
                Intrinsics.checkNotNullParameter(exception, "exception");
                rr3 rr3VarA = hs3.a();
                rr3VarA.e().m = false;
                rr3VarA.a(exception);
                ((as3) o00Var3.k).a("ConfigLoader.executeCldFetch", (Throwable) exception);
                o00Var2 = o00Var3;
                CoroutineScope coroutineScope = o00Var2.d;
                yz block = new yz(o00Var2, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                return Boxing.boxBoolean(false);
            }
        }
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                o00Var = wzVar.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objInvoke);
                    CoroutineScope coroutineScope2 = o00Var.d;
                    xz block2 = new xz(o00Var, null);
                    EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
                    Intrinsics.checkNotNullParameter(context2, "context");
                    Intrinsics.checkNotNullParameter(block2, "block");
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context2, null, new ws3(block2, null), 2, null);
                    return Boxing.boxBoolean(true);
                } catch (Exception e2) {
                    exception = e2;
                    o00Var3 = o00Var;
                    Intrinsics.checkNotNullParameter(exception, "exception");
                    rr3 rr3VarA2 = hs3.a();
                    rr3VarA2.e().m = false;
                    rr3VarA2.a(exception);
                    ((as3) o00Var3.k).a("ConfigLoader.executeCldFetch", (Throwable) exception);
                    o00Var2 = o00Var3;
                    CoroutineScope coroutineScope3 = o00Var2.d;
                    yz block3 = new yz(o00Var2, null);
                    EmptyCoroutineContext context3 = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope3, "<this>");
                    Intrinsics.checkNotNullParameter(context3, "context");
                    Intrinsics.checkNotNullParameter(block3, "block");
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope3, context3, null, new ws3(block3, null), 2, null);
                    return Boxing.boxBoolean(false);
                }
            }
            mutex = wzVar.c;
            jsonObject = wzVar.b;
            o00Var3 = wzVar.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(objInvoke);
                try {
                    try {
                        Duration.Companion companion = Duration.INSTANCE;
                        o00Var3.l.getClass();
                        o00Var3.v = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
                        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                        mutex.unlock(null);
                        pnVar = o00Var3.i;
                        o00Var3.l.getClass();
                        jCurrentTimeMillis = System.currentTimeMillis();
                        wzVar.a = o00Var3;
                        wzVar.b = null;
                        wzVar.c = null;
                        wzVar.f = 3;
                        pnVar.getClass();
                        if (pn.a(pnVar, jsonObject, jCurrentTimeMillis, wzVar) != coroutine_suspended) {
                            o00Var = o00Var3;
                            CoroutineScope coroutineScope4 = o00Var.d;
                            xz block4 = new xz(o00Var, null);
                            EmptyCoroutineContext context4 = EmptyCoroutineContext.INSTANCE;
                            Intrinsics.checkNotNullParameter(coroutineScope4, "<this>");
                            Intrinsics.checkNotNullParameter(context4, "context");
                            Intrinsics.checkNotNullParameter(block4, "block");
                            BuildersKt__Builders_commonKt.launch$default(coroutineScope4, context4, null, new ws3(block4, null), 2, null);
                            return Boxing.boxBoolean(true);
                        }
                        return coroutine_suspended;
                    } catch (Throwable th) {
                        mutex.unlock(null);
                        throw th;
                    }
                } catch (Exception e3) {
                    exception = e3;
                    o00Var = o00Var3;
                    o00Var3 = o00Var;
                    Intrinsics.checkNotNullParameter(exception, "exception");
                    rr3 rr3VarA3 = hs3.a();
                    rr3VarA3.e().m = false;
                    rr3VarA3.a(exception);
                    ((as3) o00Var3.k).a("ConfigLoader.executeCldFetch", (Throwable) exception);
                    o00Var2 = o00Var3;
                    CoroutineScope coroutineScope5 = o00Var2.d;
                    yz block5 = new yz(o00Var2, null);
                    EmptyCoroutineContext context5 = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope5, "<this>");
                    Intrinsics.checkNotNullParameter(context5, "context");
                    Intrinsics.checkNotNullParameter(block5, "block");
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope5, context5, null, new ws3(block5, null), 2, null);
                    return Boxing.boxBoolean(false);
                }
            } catch (Exception e4) {
                exception = e4;
                Intrinsics.checkNotNullParameter(exception, "exception");
                rr3 rr3VarA4 = hs3.a();
                rr3VarA4.e().m = false;
                rr3VarA4.a(exception);
                ((as3) o00Var3.k).a("ConfigLoader.executeCldFetch", (Throwable) exception);
                o00Var2 = o00Var3;
                CoroutineScope coroutineScope6 = o00Var2.d;
                yz block6 = new yz(o00Var2, null);
                EmptyCoroutineContext context6 = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope6, "<this>");
                Intrinsics.checkNotNullParameter(context6, "context");
                Intrinsics.checkNotNullParameter(block6, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope6, context6, null, new ws3(block6, null), 2, null);
                return Boxing.boxBoolean(false);
            }
        }
        o00Var2 = wzVar.a;
        try {
            p005kotlin.ResultKt.throwOnFailure(objInvoke);
        } catch (Exception e5) {
            exception = e5;
            o00Var = o00Var2;
            o00Var3 = o00Var;
            Intrinsics.checkNotNullParameter(exception, "exception");
            rr3 rr3VarA5 = hs3.a();
            rr3VarA5.e().m = false;
            rr3VarA5.a(exception);
            ((as3) o00Var3.k).a("ConfigLoader.executeCldFetch", (Throwable) exception);
            o00Var2 = o00Var3;
            CoroutineScope coroutineScope7 = o00Var2.d;
            yz block7 = new yz(o00Var2, null);
            EmptyCoroutineContext context7 = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope7, "<this>");
            Intrinsics.checkNotNullParameter(context7, "context");
            Intrinsics.checkNotNullParameter(block7, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope7, context7, null, new ws3(block7, null), 2, null);
            return Boxing.boxBoolean(false);
        }
        JsonObject jsonObject2 = (JsonObject) objInvoke;
        if (jsonObject2 != null) {
            Mutex mutex2 = o00Var2.s;
            wzVar.a = o00Var2;
            wzVar.b = jsonObject2;
            wzVar.c = mutex2;
            wzVar.f = 2;
            if (mutex2.lock(null, wzVar) != coroutine_suspended) {
                o00Var3 = o00Var2;
                mutex = mutex2;
                jsonObject = jsonObject2;
                Duration.Companion companion2 = Duration.INSTANCE;
                o00Var3.l.getClass();
                o00Var3.v = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                mutex.unlock(null);
                pnVar = o00Var3.i;
                o00Var3.l.getClass();
                jCurrentTimeMillis = System.currentTimeMillis();
                wzVar.a = o00Var3;
                wzVar.b = null;
                wzVar.c = null;
                wzVar.f = 3;
                pnVar.getClass();
                if (pn.a(pnVar, jsonObject, jCurrentTimeMillis, wzVar) != coroutine_suspended) {
                    o00Var = o00Var3;
                    CoroutineScope coroutineScope8 = o00Var.d;
                    xz block8 = new xz(o00Var, null);
                    EmptyCoroutineContext context8 = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope8, "<this>");
                    Intrinsics.checkNotNullParameter(context8, "context");
                    Intrinsics.checkNotNullParameter(block8, "block");
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope8, context8, null, new ws3(block8, null), 2, null);
                    return Boxing.boxBoolean(true);
                }
            }
            return coroutine_suspended;
        }
        CoroutineScope coroutineScope9 = o00Var2.d;
        yz block9 = new yz(o00Var2, null);
        EmptyCoroutineContext context9 = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope9, "<this>");
        Intrinsics.checkNotNullParameter(context9, "context");
        Intrinsics.checkNotNullParameter(block9, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope9, context9, null, new ws3(block9, null), 2, null);
        return Boxing.boxBoolean(false);
    }

    public final String a(String str) {
        String strO = this.m.o();
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (StringsKt.contains$default((CharSequence) strO, cCharAt, false, 2, (Object) null)) {
                String string = Integer.toString(cCharAt, CharsKt.checkRadix(16));
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                sb.append("\\x{" + string + "}");
            } else {
                sb.append(cCharAt);
            }
        }
        String string2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
        return string2;
    }

    public final String a(String adUnitId, boolean z) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        String strA = a(adUnitId);
        String string = "^" + strA + "/?$";
        String string2 = "^" + strA + "/(//)*[^/]";
        if (z) {
            Regex regex = new Regex("\\d+");
            MatchResult matchResultFind$default = Regex.find$default(regex, string, 0, 2, null);
            if (matchResultFind$default != null) {
                string = StringsKt.replaceRange((CharSequence) string, matchResultFind$default.getRange(), (CharSequence) (matchResultFind$default.getValue() + "(,\\d+)?")).toString();
            }
            MatchResult matchResultFind$default2 = Regex.find$default(regex, string2, 0, 2, null);
            if (matchResultFind$default2 != null) {
                string2 = StringsKt.replaceRange((CharSequence) string2, matchResultFind$default2.getRange(), (CharSequence) (matchResultFind$default2.getValue() + "(,\\d+)?")).toString();
            }
        }
        return ((Object) string) + "|" + ((Object) string2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007e, code lost:
    
        if (r12 == r1) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(com.google.android.libraries.ads.mobile.sdk.internal.initialization.ConfigLoaderRequest r11, p005kotlin.coroutines.Continuation r12) {
        /*
            r10 = this;
            java.lang.String r0 = "Failed to parse CLD response."
            boolean r1 = r12 instanceof kotlin.f00
            if (r1 == 0) goto L15
            r1 = r12
            ads_mobile_sdk.f00 r1 = (kotlin.f00) r1
            int r2 = r1.e
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.e = r2
            goto L1a
        L15:
            ads_mobile_sdk.f00 r1 = new ads_mobile_sdk.f00
            r1.<init>(r10, r12)
        L1a:
            r6 = r1
            java.lang.Object r12 = r6.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r6.e
            java.lang.String r8 = "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L47
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            ads_mobile_sdk.o00 r11 = r6.a
            p005kotlin.ResultKt.throwOnFailure(r12)
            goto L81
        L33:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L3b:
            com.google.android.libraries.ads.mobile.sdk.internal.initialization.ConfigLoaderRequest r11 = r6.b
            ads_mobile_sdk.o00 r2 = r6.a
            p005kotlin.ResultKt.throwOnFailure(r12)
            r9 = r12
            r12 = r11
            r11 = r2
            r2 = r9
            goto L5a
        L47:
            p005kotlin.ResultKt.throwOnFailure(r12)
            r6.a = r10
            r6.b = r11
            r6.e = r4
            java.lang.Object r12 = r10.a(r11, r6)
            if (r12 != r1) goto L57
            goto L80
        L57:
            r2 = r12
            r12 = r11
            r11 = r10
        L5a:
            ads_mobile_sdk.v01 r2 = (kotlin.v01) r2
            boolean r4 = r2 instanceof kotlin.i01
            if (r4 == 0) goto L63
            ads_mobile_sdk.i01 r2 = (kotlin.i01) r2
            return r2
        L63:
            p005kotlin.jvm.internal.Intrinsics.checkNotNull(r2, r8)
            ads_mobile_sdk.q01 r2 = (kotlin.q01) r2
            java.lang.Object r2 = r2.b
            ads_mobile_sdk.f81 r2 = (kotlin.f81) r2
            r4 = r3
            r3 = r2
            ads_mobile_sdk.e01 r2 = r11.p
            r6.a = r11
            r6.b = r12
            r6.e = r4
            r5 = 0
            r7 = 30
            r4 = 0
            java.lang.Object r12 = kotlin.e01.a(r2, r3, r4, r5, r6, r7)
            if (r12 != r1) goto L81
        L80:
            return r1
        L81:
            ads_mobile_sdk.v01 r12 = (kotlin.v01) r12
            boolean r1 = r12 instanceof kotlin.i01
            if (r1 == 0) goto L8a
            ads_mobile_sdk.i01 r12 = (kotlin.i01) r12
            return r12
        L8a:
            p005kotlin.jvm.internal.Intrinsics.checkNotNull(r12, r8)
            ads_mobile_sdk.q01 r12 = (kotlin.q01) r12
            java.lang.Object r12 = r12.b
            ads_mobile_sdk.h81 r12 = (kotlin.h81) r12
            ads_mobile_sdk.p53 r12 = r12.d
            if (r12 == 0) goto L9c
            java.lang.String r12 = kotlin.p53.a(r12)
            goto L9e
        L9c:
            java.lang.String r12 = ""
        L9e:
            com.google.gson.Gson r1 = new com.google.gson.Gson     // Catch: com.google.gson.JsonSyntaxException -> Lba
            r1.<init>()     // Catch: com.google.gson.JsonSyntaxException -> Lba
            java.lang.Class<com.google.gson.JsonObject> r2 = com.google.gson.JsonObject.class
            java.lang.Object r12 = r1.fromJson(r12, r2)     // Catch: com.google.gson.JsonSyntaxException -> Lba
            com.google.gson.JsonObject r12 = (com.google.gson.JsonObject) r12     // Catch: com.google.gson.JsonSyntaxException -> Lba
            if (r12 != 0) goto Lb5
            ads_mobile_sdk.m01 r11 = new ads_mobile_sdk.m01     // Catch: com.google.gson.JsonSyntaxException -> Lba
            ads_mobile_sdk.kk1 r12 = kotlin.kk1.INTERNAL_ERROR     // Catch: com.google.gson.JsonSyntaxException -> Lba
            r11.<init>(r0, r12)     // Catch: com.google.gson.JsonSyntaxException -> Lba
            return r11
        Lb5:
            ads_mobile_sdk.v01 r11 = r11.a(r12)     // Catch: com.google.gson.JsonSyntaxException -> Lba
            return r11
        Lba:
            ads_mobile_sdk.m01 r11 = new ads_mobile_sdk.m01
            ads_mobile_sdk.kk1 r12 = kotlin.kk1.INTERNAL_ERROR
            r11.<init>(r0, r12)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.o00.b(com.google.android.libraries.ads.mobile.sdk.internal.initialization.ConfigLoaderRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(String str, Continuation continuation) {
        n00 n00Var;
        o00 o00Var;
        if (continuation instanceof n00) {
            n00Var = (n00) continuation;
            int i = n00Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                n00Var.e = i - Integer.MIN_VALUE;
            } else {
                n00Var = new n00(this, continuation);
            }
        } else {
            n00Var = new n00(this, continuation);
        }
        Object obj = n00Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = n00Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ex0 ex0Var = this.m;
            ex0Var.getClass();
            Duration.Companion companion = Duration.INSTANCE;
            long rawValue = ((Duration) ex0Var.a("gads:cld_fetch_delay_on_cache_hit", wm2.a(60, DurationUnit.SECONDS, "gads:cld_fetch_delay_on_cache_hit", C3510b4.i.W), yr.l)).getRawValue();
            n00Var.a = this;
            n00Var.b = str;
            n00Var.e = 1;
            if (DelayKt.m4512delayVtjQ1oo(rawValue, n00Var) != coroutine_suspended) {
                o00Var = this;
            }
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
            return obj;
        }
        str = n00Var.b;
        o00Var = n00Var.a;
        p005kotlin.ResultKt.throwOnFailure(obj);
        n00Var.a = null;
        n00Var.b = null;
        n00Var.e = 2;
        Object objWithContext = BuildersKt.withContext(o00Var.c, new g00(o00Var, false, str, null), n00Var);
        return objWithContext == coroutine_suspended ? coroutine_suspended : objWithContext;
    }

    @Override // kotlin.nc1
    public final Object u(Continuation continuation) {
        CoroutineScope coroutineScope = this.d;
        l00 block = new l00(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return new q01(p005kotlin.Unit.INSTANCE);
    }
}
