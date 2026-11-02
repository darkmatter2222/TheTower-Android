package kotlin;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.provider.Settings;
import android.webkit.CookieManager;
import androidx.core.os.BundleKt;
import com.google.common.io.BaseEncoding;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSyntaxException;
import com.ironsource.C3510b4;
import com.tapjoy.TapjoyConstants;
import com.unity3d.ads.core.data.datasource.AndroidTcfDataSource;
import com.unity3d.services.core.fid.Constants;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.random.Random;
import p005kotlin.text.StringsKt;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class g30 extends nc1 implements SharedPreferences.OnSharedPreferenceChangeListener, n30 {
    public static final Pattern Q = Pattern.compile("([^;]+=[^;]+)(;\\s|$)", 2);
    public static final JsonObject R;
    public static final JsonObject S;
    public static final Bundle T;
    public JsonObject A;
    public final p02 B;
    public final CompletableJob C;
    public CookieManager D;
    public SharedPreferences E;
    public final p02 F;
    public final Mutex G;
    public Job H;
    public boolean I;
    public final Mutex J;
    public fu K;
    public Deferred L;
    public final Mutex M;
    public String N;
    public Deferred O;
    public long P;
    public final Context c;
    public final CoroutineScope d;
    public final jb3 e;
    public final ur3 f;
    public final Gson g;
    public final ex0 h;
    public final o21 i;
    public final tf j;
    public final bm k;
    public final fi2 l;
    public final ls0 m;
    public final tx n;
    public final g83 o;
    public final f13 p;
    public final cw2 q;
    public final xw0 r;
    public final rw0 s;
    public final jw0 t;
    public final xb0 u;
    public final im2 v;
    public final dq0 w;
    public final Mutex x;
    public Bundle y;
    public final Mutex z;

    static {
        JsonObject jsonObject = new JsonObject();
        Boolean bool = Boolean.TRUE;
        jsonObject.addProperty("gad_idless", bool);
        Boolean bool2 = Boolean.FALSE;
        jsonObject.addProperty("has_special_purposes", bool2);
        R = jsonObject;
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("gad_idless", bool2);
        jsonObject2.addProperty("has_special_purposes", bool);
        S = jsonObject2;
        T = BundleKt.bundleOf(p005kotlin.TuplesKt.to("fake_key", "fake_val"));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g30(Context applicationContext, CoroutineScope backgroundScope, jb3 javascriptEngine, ur3 traceLogger, Gson gson, ex0 flags, o21 gmaUtil, tf advertisingIdClientWrapper, bm appSetIdClientWrapper, fi2 paidLifecycleWrapper, ls0 firebaseAnalyticsAdapter, tx clock, g83 rootTraceCreator, f13 randomGenerator, dw2 trustlessTokenClientProvider, xw0 flagValueProvider, rw0 flagParamsBuilder, jw0 flagDataStore, xb0 csrbDataStore, im2 persistentCacheManager, dq0 eoidManager) {
        super(s11.CUI_NAME_SDKINIT_INIT_CONSENT_STATE, 2);
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(javascriptEngine, "javascriptEngine");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(advertisingIdClientWrapper, "advertisingIdClientWrapper");
        Intrinsics.checkNotNullParameter(appSetIdClientWrapper, "appSetIdClientWrapper");
        Intrinsics.checkNotNullParameter(paidLifecycleWrapper, "paidLifecycleWrapper");
        Intrinsics.checkNotNullParameter(firebaseAnalyticsAdapter, "firebaseAnalyticsAdapter");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(randomGenerator, "randomGenerator");
        Intrinsics.checkNotNullParameter(trustlessTokenClientProvider, "trustlessTokenClientProvider");
        Intrinsics.checkNotNullParameter(flagValueProvider, "flagValueProvider");
        Intrinsics.checkNotNullParameter(flagParamsBuilder, "flagParamsBuilder");
        Intrinsics.checkNotNullParameter(flagDataStore, "flagDataStore");
        Intrinsics.checkNotNullParameter(csrbDataStore, "csrbDataStore");
        Intrinsics.checkNotNullParameter(persistentCacheManager, "persistentCacheManager");
        Intrinsics.checkNotNullParameter(eoidManager, "eoidManager");
        this.c = applicationContext;
        this.d = backgroundScope;
        this.e = javascriptEngine;
        this.f = traceLogger;
        this.g = gson;
        this.h = flags;
        this.i = gmaUtil;
        this.j = advertisingIdClientWrapper;
        this.k = appSetIdClientWrapper;
        this.l = paidLifecycleWrapper;
        this.m = firebaseAnalyticsAdapter;
        this.n = clock;
        this.o = rootTraceCreator;
        this.p = randomGenerator;
        this.q = trustlessTokenClientProvider;
        this.r = flagValueProvider;
        this.s = flagParamsBuilder;
        this.t = flagDataStore;
        this.u = csrbDataStore;
        this.v = persistentCacheManager;
        this.w = eoidManager;
        this.x = MutexKt.Mutex$default(false, 1, null);
        this.y = T;
        this.z = MutexKt.Mutex$default(false, 1, null);
        this.A = R;
        t00 t00VarZ = u00.z();
        Intrinsics.checkNotNullExpressionValue(t00VarZ, "newBuilder(...)");
        this.B = new p02(v00.a(t00VarZ).a());
        this.C = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        this.F = new p02(g());
        this.G = MutexKt.Mutex$default(false, 1, null);
        this.J = MutexKt.Mutex$default(false, 1, null);
        this.M = MutexKt.Mutex$default(false, 1, null);
        this.P = Duration.INSTANCE.m4458getZEROUwyO8pc();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(g30 g30Var, String str, long j, Continuation continuation) {
        d30 d30Var;
        if (continuation instanceof d30) {
            d30Var = (d30) continuation;
            int i = d30Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                d30Var.d = i - Integer.MIN_VALUE;
            } else {
                d30Var = new d30(g30Var, continuation);
            }
        } else {
            d30Var = new d30(g30Var, continuation);
        }
        Object objA = d30Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = d30Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            dq0 dq0Var = g30Var.w;
            d30Var.a = g30Var;
            d30Var.d = 1;
            dq0Var.getClass();
            objA = dq0.a(dq0Var, str, j, d30Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            g30Var = d30Var.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        xp0 xp0Var = (xp0) objA;
        ex0 ex0Var = g30Var.h;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("enableDeleteWebEoid", C3510b4.i.W);
        if (((Boolean) ex0Var.a("enableDeleteWebEoid", Boolean.FALSE, yr.b)).booleanValue() && xp0Var != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("eoid", xp0Var.w());
            jsonObject.addProperty("eoid_timestamp_ms", Boxing.boxLong(xp0Var.x()));
            CoroutineScope coroutineScope = g30Var.d;
            e30 block = new e30(g30Var, jsonObject, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007c, code lost:
    
        if (kotlin.jw0.a(r6, r7, r8, r0) == r1) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(kotlin.g30 r6, java.lang.String r7, java.lang.String r8, p005kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof kotlin.a30
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.a30 r0 = (kotlin.a30) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.a30 r0 = new ads_mobile_sdk.a30
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.e
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r9)
            goto L7f
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            ads_mobile_sdk.s00 r6 = r0.d
            java.lang.String r8 = r0.c
            java.lang.String r7 = r0.b
            ads_mobile_sdk.g30 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r9)
            goto L5c
        L40:
            p005kotlin.ResultKt.throwOnFailure(r9)
            ads_mobile_sdk.s00 r9 = kotlin.s00.API_WRITE_PERSISTENT_SDK_CORE_DATA
            ads_mobile_sdk.p02 r2 = r6.B
            r0.a = r6
            r0.b = r7
            r0.c = r8
            r0.d = r9
            r0.g = r4
            java.lang.Object r2 = r2.a(r0)
            if (r2 != r1) goto L58
            goto L7e
        L58:
            r5 = r2
            r2 = r6
            r6 = r9
            r9 = r5
        L5c:
            ads_mobile_sdk.u00 r9 = (kotlin.u00) r9
            ads_mobile_sdk.yh1$d r9 = r9.w()
            boolean r6 = r9.contains(r6)
            if (r6 == 0) goto L7f
            ads_mobile_sdk.jw0 r6 = r2.t
            r9 = 0
            r0.a = r9
            r0.b = r9
            r0.c = r9
            r0.d = r9
            r0.g = r3
            r6.getClass()
            java.lang.Object r6 = kotlin.jw0.a(r6, r7, r8, r0)
            if (r6 != r1) goto L7f
        L7e:
            return r1
        L7f:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g30.a(ads_mobile_sdk.g30, java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01c1 A[Catch: all -> 0x01ec, TryCatch #9 {all -> 0x01ec, blocks: (B:96:0x01b6, B:98:0x01bd, B:100:0x01c1, B:102:0x01c5, B:103:0x01c8, B:105:0x01cc, B:107:0x01d0, B:109:0x01d4, B:110:0x01d5, B:111:0x01da, B:112:0x01db, B:113:0x01e2, B:114:0x01e3, B:115:0x01ea, B:116:0x01eb), top: B:209:0x01b6 }] */
    /* JADX WARN: Code duplicated, block: B:105:0x01cc A[Catch: all -> 0x01ec, TryCatch #9 {all -> 0x01ec, blocks: (B:96:0x01b6, B:98:0x01bd, B:100:0x01c1, B:102:0x01c5, B:103:0x01c8, B:105:0x01cc, B:107:0x01d0, B:109:0x01d4, B:110:0x01d5, B:111:0x01da, B:112:0x01db, B:113:0x01e2, B:114:0x01e3, B:115:0x01ea, B:116:0x01eb), top: B:209:0x01b6 }] */
    /* JADX WARN: Code duplicated, block: B:107:0x01d0 A[Catch: all -> 0x01ec, TryCatch #9 {all -> 0x01ec, blocks: (B:96:0x01b6, B:98:0x01bd, B:100:0x01c1, B:102:0x01c5, B:103:0x01c8, B:105:0x01cc, B:107:0x01d0, B:109:0x01d4, B:110:0x01d5, B:111:0x01da, B:112:0x01db, B:113:0x01e2, B:114:0x01e3, B:115:0x01ea, B:116:0x01eb), top: B:209:0x01b6 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x01d4 A[Catch: all -> 0x01ec, TryCatch #9 {all -> 0x01ec, blocks: (B:96:0x01b6, B:98:0x01bd, B:100:0x01c1, B:102:0x01c5, B:103:0x01c8, B:105:0x01cc, B:107:0x01d0, B:109:0x01d4, B:110:0x01d5, B:111:0x01da, B:112:0x01db, B:113:0x01e2, B:114:0x01e3, B:115:0x01ea, B:116:0x01eb), top: B:209:0x01b6 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x01d5 A[Catch: all -> 0x01ec, TryCatch #9 {all -> 0x01ec, blocks: (B:96:0x01b6, B:98:0x01bd, B:100:0x01c1, B:102:0x01c5, B:103:0x01c8, B:105:0x01cc, B:107:0x01d0, B:109:0x01d4, B:110:0x01d5, B:111:0x01da, B:112:0x01db, B:113:0x01e2, B:114:0x01e3, B:115:0x01ea, B:116:0x01eb), top: B:209:0x01b6 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x01db A[Catch: all -> 0x01ec, TryCatch #9 {all -> 0x01ec, blocks: (B:96:0x01b6, B:98:0x01bd, B:100:0x01c1, B:102:0x01c5, B:103:0x01c8, B:105:0x01cc, B:107:0x01d0, B:109:0x01d4, B:110:0x01d5, B:111:0x01da, B:112:0x01db, B:113:0x01e2, B:114:0x01e3, B:115:0x01ea, B:116:0x01eb), top: B:209:0x01b6 }] */
    /* JADX WARN: Code duplicated, block: B:114:0x01e3 A[Catch: all -> 0x01ec, TryCatch #9 {all -> 0x01ec, blocks: (B:96:0x01b6, B:98:0x01bd, B:100:0x01c1, B:102:0x01c5, B:103:0x01c8, B:105:0x01cc, B:107:0x01d0, B:109:0x01d4, B:110:0x01d5, B:111:0x01da, B:112:0x01db, B:113:0x01e2, B:114:0x01e3, B:115:0x01ea, B:116:0x01eb), top: B:209:0x01b6 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x01eb A[Catch: all -> 0x01ec, TRY_LEAVE, TryCatch #9 {all -> 0x01ec, blocks: (B:96:0x01b6, B:98:0x01bd, B:100:0x01c1, B:102:0x01c5, B:103:0x01c8, B:105:0x01cc, B:107:0x01d0, B:109:0x01d4, B:110:0x01d5, B:111:0x01da, B:112:0x01db, B:113:0x01e2, B:114:0x01e3, B:115:0x01ea, B:116:0x01eb), top: B:209:0x01b6 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:126:0x020c  */
    /* JADX WARN: Code duplicated, block: B:129:0x0216 A[Catch: all -> 0x0227, TryCatch #6 {all -> 0x0227, blocks: (B:28:0x0071, B:127:0x0210, B:129:0x0216, B:134:0x022a, B:136:0x022e), top: B:205:0x0071 }] */
    /* JADX WARN: Code duplicated, block: B:131:0x0226  */
    /* JADX WARN: Code duplicated, block: B:134:0x022a A[Catch: all -> 0x0227, TryCatch #6 {all -> 0x0227, blocks: (B:28:0x0071, B:127:0x0210, B:129:0x0216, B:134:0x022a, B:136:0x022e), top: B:205:0x0071 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x022e A[Catch: all -> 0x0227, TRY_LEAVE, TryCatch #6 {all -> 0x0227, blocks: (B:28:0x0071, B:127:0x0210, B:129:0x0216, B:134:0x022a, B:136:0x022e), top: B:205:0x0071 }] */
    /* JADX WARN: Code duplicated, block: B:139:0x023f A[PHI: r2 r3 r13
  0x023f: PHI (r2v32 ads_mobile_sdk.rr3) = (r2v46 ads_mobile_sdk.rr3), (r2v47 ads_mobile_sdk.rr3), (r2v48 ads_mobile_sdk.rr3), (r2v49 ads_mobile_sdk.rr3) binds: [B:135:0x022c, B:137:0x023c, B:130:0x0224, B:23:0x005e] A[DONT_GENERATE, DONT_INLINE]
  0x023f: PHI (r3v18 ads_mobile_sdk.g30) = (r3v15 ads_mobile_sdk.g30), (r3v15 ads_mobile_sdk.g30), (r3v15 ads_mobile_sdk.g30), (r3v23 ads_mobile_sdk.g30) binds: [B:135:0x022c, B:137:0x023c, B:130:0x0224, B:23:0x005e] A[DONT_GENERATE, DONT_INLINE]
  0x023f: PHI (r13v33 java.io.Closeable) = (r13v55 java.io.Closeable), (r13v56 java.io.Closeable), (r13v57 java.io.Closeable), (r13v58 java.io.Closeable) binds: [B:135:0x022c, B:137:0x023c, B:130:0x0224, B:23:0x005e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:143:0x0255  */
    /* JADX WARN: Code duplicated, block: B:151:0x0272  */
    /* JADX WARN: Code duplicated, block: B:154:0x027a A[Catch: all -> 0x003d, TRY_LEAVE, TryCatch #17 {all -> 0x003d, blocks: (B:13:0x0038, B:152:0x0274, B:154:0x027a), top: B:221:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:169:0x029d A[Catch: all -> 0x02cc, TryCatch #10 {all -> 0x02cc, blocks: (B:167:0x0296, B:169:0x029d, B:171:0x02a1, B:173:0x02a5, B:174:0x02a8, B:176:0x02ac, B:178:0x02b0, B:180:0x02b4, B:181:0x02b5, B:182:0x02ba, B:183:0x02bb, B:184:0x02c2, B:185:0x02c3, B:186:0x02ca, B:187:0x02cb), top: B:210:0x0296 }] */
    /* JADX WARN: Code duplicated, block: B:171:0x02a1 A[Catch: all -> 0x02cc, TryCatch #10 {all -> 0x02cc, blocks: (B:167:0x0296, B:169:0x029d, B:171:0x02a1, B:173:0x02a5, B:174:0x02a8, B:176:0x02ac, B:178:0x02b0, B:180:0x02b4, B:181:0x02b5, B:182:0x02ba, B:183:0x02bb, B:184:0x02c2, B:185:0x02c3, B:186:0x02ca, B:187:0x02cb), top: B:210:0x0296 }] */
    /* JADX WARN: Code duplicated, block: B:176:0x02ac A[Catch: all -> 0x02cc, TryCatch #10 {all -> 0x02cc, blocks: (B:167:0x0296, B:169:0x029d, B:171:0x02a1, B:173:0x02a5, B:174:0x02a8, B:176:0x02ac, B:178:0x02b0, B:180:0x02b4, B:181:0x02b5, B:182:0x02ba, B:183:0x02bb, B:184:0x02c2, B:185:0x02c3, B:186:0x02ca, B:187:0x02cb), top: B:210:0x0296 }] */
    /* JADX WARN: Code duplicated, block: B:178:0x02b0 A[Catch: all -> 0x02cc, TryCatch #10 {all -> 0x02cc, blocks: (B:167:0x0296, B:169:0x029d, B:171:0x02a1, B:173:0x02a5, B:174:0x02a8, B:176:0x02ac, B:178:0x02b0, B:180:0x02b4, B:181:0x02b5, B:182:0x02ba, B:183:0x02bb, B:184:0x02c2, B:185:0x02c3, B:186:0x02ca, B:187:0x02cb), top: B:210:0x0296 }] */
    /* JADX WARN: Code duplicated, block: B:180:0x02b4 A[Catch: all -> 0x02cc, TryCatch #10 {all -> 0x02cc, blocks: (B:167:0x0296, B:169:0x029d, B:171:0x02a1, B:173:0x02a5, B:174:0x02a8, B:176:0x02ac, B:178:0x02b0, B:180:0x02b4, B:181:0x02b5, B:182:0x02ba, B:183:0x02bb, B:184:0x02c2, B:185:0x02c3, B:186:0x02ca, B:187:0x02cb), top: B:210:0x0296 }] */
    /* JADX WARN: Code duplicated, block: B:181:0x02b5 A[Catch: all -> 0x02cc, TryCatch #10 {all -> 0x02cc, blocks: (B:167:0x0296, B:169:0x029d, B:171:0x02a1, B:173:0x02a5, B:174:0x02a8, B:176:0x02ac, B:178:0x02b0, B:180:0x02b4, B:181:0x02b5, B:182:0x02ba, B:183:0x02bb, B:184:0x02c2, B:185:0x02c3, B:186:0x02ca, B:187:0x02cb), top: B:210:0x0296 }] */
    /* JADX WARN: Code duplicated, block: B:183:0x02bb A[Catch: all -> 0x02cc, TryCatch #10 {all -> 0x02cc, blocks: (B:167:0x0296, B:169:0x029d, B:171:0x02a1, B:173:0x02a5, B:174:0x02a8, B:176:0x02ac, B:178:0x02b0, B:180:0x02b4, B:181:0x02b5, B:182:0x02ba, B:183:0x02bb, B:184:0x02c2, B:185:0x02c3, B:186:0x02ca, B:187:0x02cb), top: B:210:0x0296 }] */
    /* JADX WARN: Code duplicated, block: B:185:0x02c3 A[Catch: all -> 0x02cc, TryCatch #10 {all -> 0x02cc, blocks: (B:167:0x0296, B:169:0x029d, B:171:0x02a1, B:173:0x02a5, B:174:0x02a8, B:176:0x02ac, B:178:0x02b0, B:180:0x02b4, B:181:0x02b5, B:182:0x02ba, B:183:0x02bb, B:184:0x02c2, B:185:0x02c3, B:186:0x02ca, B:187:0x02cb), top: B:210:0x0296 }] */
    /* JADX WARN: Code duplicated, block: B:187:0x02cb A[Catch: all -> 0x02cc, TRY_LEAVE, TryCatch #10 {all -> 0x02cc, blocks: (B:167:0x0296, B:169:0x029d, B:171:0x02a1, B:173:0x02a5, B:174:0x02a8, B:176:0x02ac, B:178:0x02b0, B:180:0x02b4, B:181:0x02b5, B:182:0x02ba, B:183:0x02bb, B:184:0x02c2, B:185:0x02c3, B:186:0x02ca, B:187:0x02cb), top: B:210:0x0296 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0119  */
    /* JADX WARN: Code duplicated, block: B:58:0x012e  */
    /* JADX WARN: Code duplicated, block: B:61:0x0138 A[Catch: all -> 0x0149, TryCatch #8 {all -> 0x0149, blocks: (B:46:0x00b5, B:59:0x0132, B:61:0x0138, B:66:0x014c, B:68:0x0150), top: B:208:0x00b5 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0147  */
    /* JADX WARN: Code duplicated, block: B:66:0x014c A[Catch: all -> 0x0149, TryCatch #8 {all -> 0x0149, blocks: (B:46:0x00b5, B:59:0x0132, B:61:0x0138, B:66:0x014c, B:68:0x0150), top: B:208:0x00b5 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0150 A[Catch: all -> 0x0149, TRY_LEAVE, TryCatch #8 {all -> 0x0149, blocks: (B:46:0x00b5, B:59:0x0132, B:61:0x0138, B:66:0x014c, B:68:0x0150), top: B:208:0x00b5 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0161 A[Catch: all -> 0x00a7, PHI: r2 r3 r13
  0x0161: PHI (r2v17 ads_mobile_sdk.rr3) = (r2v54 ads_mobile_sdk.rr3), (r2v55 ads_mobile_sdk.rr3), (r2v56 ads_mobile_sdk.rr3), (r2v57 ads_mobile_sdk.rr3) binds: [B:67:0x014e, B:69:0x015d, B:62:0x0145, B:41:0x00a2] A[DONT_GENERATE, DONT_INLINE]
  0x0161: PHI (r3v6 ads_mobile_sdk.g30) = (r3v3 ads_mobile_sdk.g30), (r3v3 ads_mobile_sdk.g30), (r3v3 ads_mobile_sdk.g30), (r3v9 ads_mobile_sdk.g30) binds: [B:67:0x014e, B:69:0x015d, B:62:0x0145, B:41:0x00a2] A[DONT_GENERATE, DONT_INLINE]
  0x0161: PHI (r13v13 java.io.Closeable) = (r13v64 java.io.Closeable), (r13v65 java.io.Closeable), (r13v66 java.io.Closeable), (r13v67 java.io.Closeable) binds: [B:67:0x014e, B:69:0x015d, B:62:0x0145, B:41:0x00a2] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x00a7, blocks: (B:41:0x00a2, B:71:0x0161), top: B:201:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0175  */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code duplicated, block: B:82:0x0193  */
    /* JADX WARN: Code duplicated, block: B:85:0x019b A[Catch: all -> 0x0081, TRY_LEAVE, TryCatch #0 {all -> 0x0081, blocks: (B:31:0x007c, B:83:0x0195, B:85:0x019b), top: B:193:0x007c }] */
    /* JADX WARN: Code duplicated, block: B:98:0x01bd A[Catch: all -> 0x01ec, TryCatch #9 {all -> 0x01ec, blocks: (B:96:0x01b6, B:98:0x01bd, B:100:0x01c1, B:102:0x01c5, B:103:0x01c8, B:105:0x01cc, B:107:0x01d0, B:109:0x01d4, B:110:0x01d5, B:111:0x01da, B:112:0x01db, B:113:0x01e2, B:114:0x01e3, B:115:0x01ea, B:116:0x01eb), top: B:209:0x01b6 }] */
    public static final Object a(g30 g30Var, Continuation continuation) {
        c30 c30Var;
        g83 g83Var;
        s11 s11Var;
        List listEmptyList;
        ks3 ks3Var;
        rr3 rr3VarA;
        TimeoutCancellationException th;
        Closeable closeable;
        Object objF;
        g30 g30Var2;
        rr3 rr3Var;
        tu2 tu2VarA;
        TimeoutCancellationException th2;
        Closeable closeable2;
        Object objF2;
        g30 g30Var3;
        rr3 rr3Var2;
        Closeable closeable3;
        v01 v01Var;
        Closeable closeable4;
        rr3 rr3Var3;
        rr3 rr3Var4;
        Mutex mutex;
        g30 g30Var4;
        rr3 rr3Var5;
        Closeable closeable5;
        Mutex mutex2;
        rr3 rr3Var6;
        Object obj;
        Closeable closeable6;
        v01 v01Var2;
        Closeable closeable7;
        rr3 rr3Var7;
        rr3 rr3Var8;
        g30 g30Var5;
        Mutex mutex3;
        rr3 rr3Var9;
        Closeable closeable8;
        Mutex mutex4;
        rr3 rr3Var10;
        Object obj2;
        g30Var.getClass();
        if (continuation instanceof c30) {
            c30Var = (c30) continuation;
            int i = c30Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                c30Var.g = i - Integer.MIN_VALUE;
            } else {
                c30Var = new c30(g30Var, continuation);
            }
        } else {
            c30Var = new c30(g30Var, continuation);
        }
        Object obj3 = c30Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c30Var.g) {
            case 0:
                p005kotlin.ResultKt.throwOnFailure(obj3);
                x00 x00Var = g30Var.h.r;
                x00Var.getClass();
                Duration.Companion companion = Duration.INSTANCE;
                long rawValue = ((Duration) x00Var.a("gads:consent_update_delay", wm2.a(5, DurationUnit.SECONDS, "gads:consent_update_delay", C3510b4.i.W), yr.l)).getRawValue();
                c30Var.a = g30Var;
                c30Var.g = 1;
                if (DelayKt.m4512delayVtjQ1oo(rawValue, c30Var) != coroutine_suspended) {
                    g83Var = g30Var.o;
                    s11Var = s11.CUI_NAME_CONSENT_UPDATE_FOR_CSRB;
                    listEmptyList = CollectionsKt.emptyList();
                    ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                    if (hs3.b().a == null) {
                        tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                        try {
                            c30Var.a = g30Var;
                            c30Var.b = tu2VarA;
                            c30Var.c = tu2VarA;
                            c30Var.g = 2;
                            objF2 = f(g30Var, c30Var);
                            if (objF2 != coroutine_suspended) {
                                g30Var3 = g30Var;
                                tu2 tu2Var = tu2VarA;
                                obj3 = objF2;
                                rr3Var2 = tu2Var;
                                closeable3 = tu2Var;
                                v01Var = (v01) obj3;
                                if (v01Var instanceof q01) {
                                    c30Var.a = g30Var3;
                                    c30Var.b = rr3Var2;
                                    c30Var.c = closeable3;
                                    c30Var.g = 3;
                                    if (g30Var3.M(c30Var) == coroutine_suspended) {
                                        rr3Var3 = rr3Var2;
                                        closeable4 = closeable3;
                                    } else {
                                        rr3Var3 = rr3Var2;
                                        closeable4 = closeable3;
                                        rr3Var3 = rr3Var2;
                                        closeable4 = closeable3;
                                        rr3Var3 = rr3Var2;
                                        closeable4 = closeable3;
                                        rr3Var3 = rr3Var2;
                                        closeable4 = closeable3;
                                        mutex = g30Var3.G;
                                        c30Var.a = g30Var3;
                                        c30Var.b = rr3Var3;
                                        c30Var.c = closeable4;
                                        c30Var.d = mutex;
                                        c30Var.g = 5;
                                        if (mutex.lock(null, c30Var) != coroutine_suspended) {
                                            g30Var4 = g30Var3;
                                            rr3Var5 = rr3Var3;
                                            closeable5 = closeable4;
                                            mutex2 = mutex;
                                            try {
                                                g30Var4.I = false;
                                                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                                                mutex2.unlock(null);
                                                c30Var.a = rr3Var5;
                                                try {
                                                    c30Var.b = closeable5;
                                                    c30Var.c = null;
                                                    c30Var.d = null;
                                                    c30Var.g = 6;
                                                    if (g30Var4.A(c30Var) != coroutine_suspended) {
                                                        closeable4 = closeable5;
                                                        rr3Var4 = rr3Var5;
                                                        obj = p005kotlin.Unit.INSTANCE;
                                                        if (obj instanceof i01) {
                                                            xs3.a((i01) obj, false);
                                                            break;
                                                        }
                                                        CloseableKt.closeFinally(closeable4, null);
                                                        return p005kotlin.Unit.INSTANCE;
                                                    }
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    th2 = th;
                                                    closeable2 = closeable5;
                                                    rr3Var6 = rr3Var5;
                                                    try {
                                                        rr3Var6.b(th2);
                                                        if (th2 instanceof v24) {
                                                            throw th2;
                                                        }
                                                        if (!(th2 instanceof TimeoutCancellationException)) {
                                                            rr3Var6.a(th2);
                                                        }
                                                        if (th2 instanceof TimeoutCancellationException) {
                                                            throw new i21(th2);
                                                        }
                                                        if (th2 instanceof CancellationException) {
                                                            throw new wz0(th2);
                                                        }
                                                        if (th2 instanceof w01) {
                                                            throw th2;
                                                        }
                                                        throw new b01(th2);
                                                    } catch (Throwable th4) {
                                                        try {
                                                            throw th4;
                                                        } catch (Throwable th5) {
                                                            CloseableKt.closeFinally(closeable2, th4);
                                                            throw th5;
                                                        }
                                                    }
                                                }
                                            } catch (Throwable th6) {
                                                mutex2.unlock(null);
                                                throw th6;
                                            }
                                        }
                                    }
                                } else if (v01Var instanceof i01) {
                                    c30Var.a = g30Var3;
                                    c30Var.b = rr3Var2;
                                    c30Var.c = closeable3;
                                    c30Var.g = 4;
                                    if (g30Var3.N(c30Var) != coroutine_suspended) {
                                        rr3Var3 = rr3Var2;
                                        closeable4 = closeable3;
                                        rr3Var3 = rr3Var2;
                                        closeable4 = closeable3;
                                        rr3Var3 = rr3Var2;
                                        closeable4 = closeable3;
                                        rr3Var3 = rr3Var2;
                                        closeable4 = closeable3;
                                        mutex = g30Var3.G;
                                        c30Var.a = g30Var3;
                                        c30Var.b = rr3Var3;
                                        c30Var.c = closeable4;
                                        c30Var.d = mutex;
                                        c30Var.g = 5;
                                        if (mutex.lock(null, c30Var) != coroutine_suspended) {
                                            g30Var4 = g30Var3;
                                            rr3Var5 = rr3Var3;
                                            closeable5 = closeable4;
                                            mutex2 = mutex;
                                            g30Var4.I = false;
                                            p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                                            mutex2.unlock(null);
                                            c30Var.a = rr3Var5;
                                            c30Var.b = closeable5;
                                            c30Var.c = null;
                                            c30Var.d = null;
                                            c30Var.g = 6;
                                            if (g30Var4.A(c30Var) != coroutine_suspended) {
                                                closeable4 = closeable5;
                                                rr3Var4 = rr3Var5;
                                                obj = p005kotlin.Unit.INSTANCE;
                                                if (obj instanceof i01) {
                                                    xs3.a((i01) obj, false);
                                                    break;
                                                }
                                                CloseableKt.closeFinally(closeable4, null);
                                                return p005kotlin.Unit.INSTANCE;
                                            }
                                        }
                                    }
                                } else {
                                    rr3Var3 = rr3Var2;
                                    closeable4 = closeable3;
                                    rr3Var3 = rr3Var2;
                                    closeable4 = closeable3;
                                    rr3Var3 = rr3Var2;
                                    closeable4 = closeable3;
                                    rr3Var3 = rr3Var2;
                                    closeable4 = closeable3;
                                    mutex = g30Var3.G;
                                    c30Var.a = g30Var3;
                                    c30Var.b = rr3Var3;
                                    c30Var.c = closeable4;
                                    c30Var.d = mutex;
                                    c30Var.g = 5;
                                    if (mutex.lock(null, c30Var) != coroutine_suspended) {
                                        g30Var4 = g30Var3;
                                        rr3Var5 = rr3Var3;
                                        closeable5 = closeable4;
                                        mutex2 = mutex;
                                        g30Var4.I = false;
                                        p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                                        mutex2.unlock(null);
                                        c30Var.a = rr3Var5;
                                        c30Var.b = closeable5;
                                        c30Var.c = null;
                                        c30Var.d = null;
                                        c30Var.g = 6;
                                        if (g30Var4.A(c30Var) != coroutine_suspended) {
                                            closeable4 = closeable5;
                                            rr3Var4 = rr3Var5;
                                            obj = p005kotlin.Unit.INSTANCE;
                                            if (obj instanceof i01) {
                                                xs3.a((i01) obj, false);
                                                break;
                                            }
                                            CloseableKt.closeFinally(closeable4, null);
                                            return p005kotlin.Unit.INSTANCE;
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th7) {
                            tu2 tu2Var2 = tu2VarA;
                            th2 = th7;
                            closeable2 = tu2Var2;
                            rr3Var6 = tu2Var2;
                            rr3Var6.b(th2);
                            if (th2 instanceof v24) {
                                throw th2;
                            }
                            if (!(th2 instanceof TimeoutCancellationException)) {
                                rr3Var6.a(th2);
                            }
                            if (th2 instanceof TimeoutCancellationException) {
                                throw new i21(th2);
                            }
                            if (th2 instanceof CancellationException) {
                                throw new wz0(th2);
                            }
                            if (th2 instanceof w01) {
                                throw th2;
                            }
                            throw new b01(th2);
                        }
                    } else {
                        rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                        try {
                            c30Var.a = g30Var;
                            c30Var.b = rr3VarA;
                            c30Var.c = rr3VarA;
                            c30Var.g = 7;
                            objF = f(g30Var, c30Var);
                            if (objF != coroutine_suspended) {
                                g30Var2 = g30Var;
                                rr3 rr3Var11 = rr3VarA;
                                obj3 = objF;
                                rr3Var = rr3Var11;
                                closeable6 = rr3Var11;
                                v01Var2 = (v01) obj3;
                                if (v01Var2 instanceof q01) {
                                    c30Var.a = g30Var2;
                                    c30Var.b = rr3Var;
                                    c30Var.c = closeable6;
                                    c30Var.g = 8;
                                    if (g30Var2.M(c30Var) == coroutine_suspended) {
                                        rr3Var7 = rr3Var;
                                        closeable7 = closeable6;
                                    } else {
                                        rr3Var7 = rr3Var;
                                        closeable7 = closeable6;
                                        rr3Var7 = rr3Var;
                                        closeable7 = closeable6;
                                        rr3Var7 = rr3Var;
                                        closeable7 = closeable6;
                                        rr3Var7 = rr3Var;
                                        closeable7 = closeable6;
                                        g30Var5 = g30Var2;
                                        mutex3 = g30Var5.G;
                                        c30Var.a = g30Var5;
                                        c30Var.b = rr3Var7;
                                        c30Var.c = closeable7;
                                        c30Var.d = mutex3;
                                        c30Var.g = 10;
                                        if (mutex3.lock(null, c30Var) != coroutine_suspended) {
                                            rr3Var9 = rr3Var7;
                                            closeable8 = closeable7;
                                            mutex4 = mutex3;
                                            try {
                                                g30Var5.I = false;
                                                p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                                                mutex4.unlock(null);
                                                c30Var.a = rr3Var9;
                                                try {
                                                    c30Var.b = closeable8;
                                                    c30Var.c = null;
                                                    c30Var.d = null;
                                                    c30Var.g = 11;
                                                    if (g30Var5.A(c30Var) != coroutine_suspended) {
                                                        closeable7 = closeable8;
                                                        rr3Var8 = rr3Var9;
                                                        obj2 = p005kotlin.Unit.INSTANCE;
                                                        if (obj2 instanceof i01) {
                                                            xs3.a((i01) obj2, false);
                                                            break;
                                                        }
                                                        CloseableKt.closeFinally(closeable7, null);
                                                        return p005kotlin.Unit.INSTANCE;
                                                    }
                                                } catch (Throwable th8) {
                                                    th = th8;
                                                    th = th;
                                                    closeable = closeable8;
                                                    rr3Var10 = rr3Var9;
                                                    try {
                                                        rr3Var10.b(th);
                                                        if (th instanceof v24) {
                                                            throw th;
                                                        }
                                                        if (!(th instanceof TimeoutCancellationException)) {
                                                            rr3Var10.a(th);
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
                                                    } catch (Throwable th9) {
                                                        try {
                                                            throw th9;
                                                        } catch (Throwable th10) {
                                                            CloseableKt.closeFinally(closeable, th9);
                                                            throw th10;
                                                        }
                                                    }
                                                }
                                            } catch (Throwable th11) {
                                                mutex4.unlock(null);
                                                throw th11;
                                            }
                                        }
                                    }
                                } else if (v01Var2 instanceof i01) {
                                    c30Var.a = g30Var2;
                                    c30Var.b = rr3Var;
                                    c30Var.c = closeable6;
                                    c30Var.g = 9;
                                    if (g30Var2.N(c30Var) != coroutine_suspended) {
                                        rr3Var7 = rr3Var;
                                        closeable7 = closeable6;
                                        rr3Var7 = rr3Var;
                                        closeable7 = closeable6;
                                        rr3Var7 = rr3Var;
                                        closeable7 = closeable6;
                                        rr3Var7 = rr3Var;
                                        closeable7 = closeable6;
                                        g30Var5 = g30Var2;
                                        mutex3 = g30Var5.G;
                                        c30Var.a = g30Var5;
                                        c30Var.b = rr3Var7;
                                        c30Var.c = closeable7;
                                        c30Var.d = mutex3;
                                        c30Var.g = 10;
                                        if (mutex3.lock(null, c30Var) != coroutine_suspended) {
                                            rr3Var9 = rr3Var7;
                                            closeable8 = closeable7;
                                            mutex4 = mutex3;
                                            g30Var5.I = false;
                                            p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                                            mutex4.unlock(null);
                                            c30Var.a = rr3Var9;
                                            c30Var.b = closeable8;
                                            c30Var.c = null;
                                            c30Var.d = null;
                                            c30Var.g = 11;
                                            if (g30Var5.A(c30Var) != coroutine_suspended) {
                                                closeable7 = closeable8;
                                                rr3Var8 = rr3Var9;
                                                obj2 = p005kotlin.Unit.INSTANCE;
                                                if (obj2 instanceof i01) {
                                                    xs3.a((i01) obj2, false);
                                                    break;
                                                }
                                                CloseableKt.closeFinally(closeable7, null);
                                                return p005kotlin.Unit.INSTANCE;
                                            }
                                        }
                                    }
                                } else {
                                    rr3Var7 = rr3Var;
                                    closeable7 = closeable6;
                                    rr3Var7 = rr3Var;
                                    closeable7 = closeable6;
                                    rr3Var7 = rr3Var;
                                    closeable7 = closeable6;
                                    rr3Var7 = rr3Var;
                                    closeable7 = closeable6;
                                    g30Var5 = g30Var2;
                                    mutex3 = g30Var5.G;
                                    c30Var.a = g30Var5;
                                    c30Var.b = rr3Var7;
                                    c30Var.c = closeable7;
                                    c30Var.d = mutex3;
                                    c30Var.g = 10;
                                    if (mutex3.lock(null, c30Var) != coroutine_suspended) {
                                        rr3Var9 = rr3Var7;
                                        closeable8 = closeable7;
                                        mutex4 = mutex3;
                                        g30Var5.I = false;
                                        p005kotlin.Unit unit6 = p005kotlin.Unit.INSTANCE;
                                        mutex4.unlock(null);
                                        c30Var.a = rr3Var9;
                                        c30Var.b = closeable8;
                                        c30Var.c = null;
                                        c30Var.d = null;
                                        c30Var.g = 11;
                                        if (g30Var5.A(c30Var) != coroutine_suspended) {
                                            closeable7 = closeable8;
                                            rr3Var8 = rr3Var9;
                                            obj2 = p005kotlin.Unit.INSTANCE;
                                            if (obj2 instanceof i01) {
                                                xs3.a((i01) obj2, false);
                                                break;
                                            }
                                            CloseableKt.closeFinally(closeable7, null);
                                            return p005kotlin.Unit.INSTANCE;
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th12) {
                            rr3 rr3Var12 = rr3VarA;
                            th = th12;
                            closeable = rr3Var12;
                            rr3Var10 = rr3Var12;
                            rr3Var10.b(th);
                            if (th instanceof v24) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                rr3Var10.a(th);
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
                }
                rr3Var3 = rr3Var2;
                closeable4 = closeable3;
                rr3Var3 = rr3Var2;
                closeable4 = closeable3;
                rr3Var7 = rr3Var;
                closeable7 = closeable6;
                rr3Var7 = rr3Var;
                closeable7 = closeable6;
                return coroutine_suspended;
            case 1:
                g30Var = (g30) c30Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj3);
                g83Var = g30Var.o;
                s11Var = s11.CUI_NAME_CONSENT_UPDATE_FOR_CSRB;
                listEmptyList = CollectionsKt.emptyList();
                ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                if (hs3.b().a == null) {
                    tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                    c30Var.a = g30Var;
                    c30Var.b = tu2VarA;
                    c30Var.c = tu2VarA;
                    c30Var.g = 2;
                    objF2 = f(g30Var, c30Var);
                    if (objF2 != coroutine_suspended) {
                        g30Var3 = g30Var;
                        tu2 tu2Var3 = tu2VarA;
                        obj3 = objF2;
                        rr3Var2 = tu2Var3;
                        closeable3 = tu2Var3;
                        v01Var = (v01) obj3;
                        if (v01Var instanceof q01) {
                            c30Var.a = g30Var3;
                            c30Var.b = rr3Var2;
                            c30Var.c = closeable3;
                            c30Var.g = 3;
                            if (g30Var3.M(c30Var) == coroutine_suspended) {
                                rr3Var3 = rr3Var2;
                                closeable4 = closeable3;
                            } else {
                                rr3Var3 = rr3Var2;
                                closeable4 = closeable3;
                                rr3Var3 = rr3Var2;
                                closeable4 = closeable3;
                                rr3Var3 = rr3Var2;
                                closeable4 = closeable3;
                                rr3Var3 = rr3Var2;
                                closeable4 = closeable3;
                                mutex = g30Var3.G;
                                c30Var.a = g30Var3;
                                c30Var.b = rr3Var3;
                                c30Var.c = closeable4;
                                c30Var.d = mutex;
                                c30Var.g = 5;
                                if (mutex.lock(null, c30Var) != coroutine_suspended) {
                                    g30Var4 = g30Var3;
                                    rr3Var5 = rr3Var3;
                                    closeable5 = closeable4;
                                    mutex2 = mutex;
                                    g30Var4.I = false;
                                    p005kotlin.Unit unit7 = p005kotlin.Unit.INSTANCE;
                                    mutex2.unlock(null);
                                    c30Var.a = rr3Var5;
                                    c30Var.b = closeable5;
                                    c30Var.c = null;
                                    c30Var.d = null;
                                    c30Var.g = 6;
                                    if (g30Var4.A(c30Var) != coroutine_suspended) {
                                        closeable4 = closeable5;
                                        rr3Var4 = rr3Var5;
                                        obj = p005kotlin.Unit.INSTANCE;
                                        if (obj instanceof i01) {
                                            xs3.a((i01) obj, false);
                                            break;
                                        }
                                        CloseableKt.closeFinally(closeable4, null);
                                        return p005kotlin.Unit.INSTANCE;
                                    }
                                }
                            }
                        } else if (v01Var instanceof i01) {
                            c30Var.a = g30Var3;
                            c30Var.b = rr3Var2;
                            c30Var.c = closeable3;
                            c30Var.g = 4;
                            if (g30Var3.N(c30Var) != coroutine_suspended) {
                                rr3Var3 = rr3Var2;
                                closeable4 = closeable3;
                                rr3Var3 = rr3Var2;
                                closeable4 = closeable3;
                                rr3Var3 = rr3Var2;
                                closeable4 = closeable3;
                                rr3Var3 = rr3Var2;
                                closeable4 = closeable3;
                                mutex = g30Var3.G;
                                c30Var.a = g30Var3;
                                c30Var.b = rr3Var3;
                                c30Var.c = closeable4;
                                c30Var.d = mutex;
                                c30Var.g = 5;
                                if (mutex.lock(null, c30Var) != coroutine_suspended) {
                                    g30Var4 = g30Var3;
                                    rr3Var5 = rr3Var3;
                                    closeable5 = closeable4;
                                    mutex2 = mutex;
                                    g30Var4.I = false;
                                    p005kotlin.Unit unit8 = p005kotlin.Unit.INSTANCE;
                                    mutex2.unlock(null);
                                    c30Var.a = rr3Var5;
                                    c30Var.b = closeable5;
                                    c30Var.c = null;
                                    c30Var.d = null;
                                    c30Var.g = 6;
                                    if (g30Var4.A(c30Var) != coroutine_suspended) {
                                        closeable4 = closeable5;
                                        rr3Var4 = rr3Var5;
                                        obj = p005kotlin.Unit.INSTANCE;
                                        if (obj instanceof i01) {
                                            xs3.a((i01) obj, false);
                                            break;
                                        }
                                        CloseableKt.closeFinally(closeable4, null);
                                        return p005kotlin.Unit.INSTANCE;
                                    }
                                }
                            }
                        } else {
                            rr3Var3 = rr3Var2;
                            closeable4 = closeable3;
                            rr3Var3 = rr3Var2;
                            closeable4 = closeable3;
                            rr3Var3 = rr3Var2;
                            closeable4 = closeable3;
                            rr3Var3 = rr3Var2;
                            closeable4 = closeable3;
                            mutex = g30Var3.G;
                            c30Var.a = g30Var3;
                            c30Var.b = rr3Var3;
                            c30Var.c = closeable4;
                            c30Var.d = mutex;
                            c30Var.g = 5;
                            if (mutex.lock(null, c30Var) != coroutine_suspended) {
                                g30Var4 = g30Var3;
                                rr3Var5 = rr3Var3;
                                closeable5 = closeable4;
                                mutex2 = mutex;
                                g30Var4.I = false;
                                p005kotlin.Unit unit9 = p005kotlin.Unit.INSTANCE;
                                mutex2.unlock(null);
                                c30Var.a = rr3Var5;
                                c30Var.b = closeable5;
                                c30Var.c = null;
                                c30Var.d = null;
                                c30Var.g = 6;
                                if (g30Var4.A(c30Var) != coroutine_suspended) {
                                    closeable4 = closeable5;
                                    rr3Var4 = rr3Var5;
                                    obj = p005kotlin.Unit.INSTANCE;
                                    if (obj instanceof i01) {
                                        xs3.a((i01) obj, false);
                                        break;
                                    }
                                    CloseableKt.closeFinally(closeable4, null);
                                    return p005kotlin.Unit.INSTANCE;
                                }
                            }
                        }
                    }
                } else {
                    rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                    c30Var.a = g30Var;
                    c30Var.b = rr3VarA;
                    c30Var.c = rr3VarA;
                    c30Var.g = 7;
                    objF = f(g30Var, c30Var);
                    if (objF != coroutine_suspended) {
                        g30Var2 = g30Var;
                        rr3 rr3Var13 = rr3VarA;
                        obj3 = objF;
                        rr3Var = rr3Var13;
                        closeable6 = rr3Var13;
                        v01Var2 = (v01) obj3;
                        if (v01Var2 instanceof q01) {
                            c30Var.a = g30Var2;
                            c30Var.b = rr3Var;
                            c30Var.c = closeable6;
                            c30Var.g = 8;
                            if (g30Var2.M(c30Var) == coroutine_suspended) {
                                rr3Var7 = rr3Var;
                                closeable7 = closeable6;
                            } else {
                                rr3Var7 = rr3Var;
                                closeable7 = closeable6;
                                rr3Var7 = rr3Var;
                                closeable7 = closeable6;
                                rr3Var7 = rr3Var;
                                closeable7 = closeable6;
                                rr3Var7 = rr3Var;
                                closeable7 = closeable6;
                                g30Var5 = g30Var2;
                                mutex3 = g30Var5.G;
                                c30Var.a = g30Var5;
                                c30Var.b = rr3Var7;
                                c30Var.c = closeable7;
                                c30Var.d = mutex3;
                                c30Var.g = 10;
                                if (mutex3.lock(null, c30Var) != coroutine_suspended) {
                                    rr3Var9 = rr3Var7;
                                    closeable8 = closeable7;
                                    mutex4 = mutex3;
                                    g30Var5.I = false;
                                    p005kotlin.Unit unit10 = p005kotlin.Unit.INSTANCE;
                                    mutex4.unlock(null);
                                    c30Var.a = rr3Var9;
                                    c30Var.b = closeable8;
                                    c30Var.c = null;
                                    c30Var.d = null;
                                    c30Var.g = 11;
                                    if (g30Var5.A(c30Var) != coroutine_suspended) {
                                        closeable7 = closeable8;
                                        rr3Var8 = rr3Var9;
                                        obj2 = p005kotlin.Unit.INSTANCE;
                                        if (obj2 instanceof i01) {
                                            xs3.a((i01) obj2, false);
                                            break;
                                        }
                                        CloseableKt.closeFinally(closeable7, null);
                                        return p005kotlin.Unit.INSTANCE;
                                    }
                                }
                            }
                        } else if (v01Var2 instanceof i01) {
                            c30Var.a = g30Var2;
                            c30Var.b = rr3Var;
                            c30Var.c = closeable6;
                            c30Var.g = 9;
                            if (g30Var2.N(c30Var) != coroutine_suspended) {
                                rr3Var7 = rr3Var;
                                closeable7 = closeable6;
                                rr3Var7 = rr3Var;
                                closeable7 = closeable6;
                                rr3Var7 = rr3Var;
                                closeable7 = closeable6;
                                rr3Var7 = rr3Var;
                                closeable7 = closeable6;
                                g30Var5 = g30Var2;
                                mutex3 = g30Var5.G;
                                c30Var.a = g30Var5;
                                c30Var.b = rr3Var7;
                                c30Var.c = closeable7;
                                c30Var.d = mutex3;
                                c30Var.g = 10;
                                if (mutex3.lock(null, c30Var) != coroutine_suspended) {
                                    rr3Var9 = rr3Var7;
                                    closeable8 = closeable7;
                                    mutex4 = mutex3;
                                    g30Var5.I = false;
                                    p005kotlin.Unit unit11 = p005kotlin.Unit.INSTANCE;
                                    mutex4.unlock(null);
                                    c30Var.a = rr3Var9;
                                    c30Var.b = closeable8;
                                    c30Var.c = null;
                                    c30Var.d = null;
                                    c30Var.g = 11;
                                    if (g30Var5.A(c30Var) != coroutine_suspended) {
                                        closeable7 = closeable8;
                                        rr3Var8 = rr3Var9;
                                        obj2 = p005kotlin.Unit.INSTANCE;
                                        if (obj2 instanceof i01) {
                                            xs3.a((i01) obj2, false);
                                            break;
                                        }
                                        CloseableKt.closeFinally(closeable7, null);
                                        return p005kotlin.Unit.INSTANCE;
                                    }
                                }
                            }
                        } else {
                            rr3Var7 = rr3Var;
                            closeable7 = closeable6;
                            rr3Var7 = rr3Var;
                            closeable7 = closeable6;
                            rr3Var7 = rr3Var;
                            closeable7 = closeable6;
                            rr3Var7 = rr3Var;
                            closeable7 = closeable6;
                            g30Var5 = g30Var2;
                            mutex3 = g30Var5.G;
                            c30Var.a = g30Var5;
                            c30Var.b = rr3Var7;
                            c30Var.c = closeable7;
                            c30Var.d = mutex3;
                            c30Var.g = 10;
                            if (mutex3.lock(null, c30Var) != coroutine_suspended) {
                                rr3Var9 = rr3Var7;
                                closeable8 = closeable7;
                                mutex4 = mutex3;
                                g30Var5.I = false;
                                p005kotlin.Unit unit12 = p005kotlin.Unit.INSTANCE;
                                mutex4.unlock(null);
                                c30Var.a = rr3Var9;
                                c30Var.b = closeable8;
                                c30Var.c = null;
                                c30Var.d = null;
                                c30Var.g = 11;
                                if (g30Var5.A(c30Var) != coroutine_suspended) {
                                    closeable7 = closeable8;
                                    rr3Var8 = rr3Var9;
                                    obj2 = p005kotlin.Unit.INSTANCE;
                                    if (obj2 instanceof i01) {
                                        xs3.a((i01) obj2, false);
                                        break;
                                    }
                                    CloseableKt.closeFinally(closeable7, null);
                                    return p005kotlin.Unit.INSTANCE;
                                }
                            }
                        }
                    }
                }
                rr3Var3 = rr3Var2;
                closeable4 = closeable3;
                rr3Var3 = rr3Var2;
                closeable4 = closeable3;
                rr3Var7 = rr3Var;
                closeable7 = closeable6;
                rr3Var7 = rr3Var;
                closeable7 = closeable6;
                return coroutine_suspended;
            case 2:
                Closeable closeable9 = c30Var.c;
                rr3 rr3Var14 = (rr3) c30Var.b;
                g30Var3 = (g30) c30Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj3);
                    rr3Var2 = rr3Var14;
                    closeable3 = closeable9;
                    v01Var = (v01) obj3;
                    if (v01Var instanceof q01) {
                        c30Var.a = g30Var3;
                        c30Var.b = rr3Var2;
                        c30Var.c = closeable3;
                        c30Var.g = 3;
                        if (g30Var3.M(c30Var) == coroutine_suspended) {
                            rr3Var3 = rr3Var2;
                            closeable4 = closeable3;
                        } else {
                            rr3Var3 = rr3Var2;
                            closeable4 = closeable3;
                            rr3Var3 = rr3Var2;
                            closeable4 = closeable3;
                            rr3Var3 = rr3Var2;
                            closeable4 = closeable3;
                            rr3Var3 = rr3Var2;
                            closeable4 = closeable3;
                            mutex = g30Var3.G;
                            c30Var.a = g30Var3;
                            c30Var.b = rr3Var3;
                            c30Var.c = closeable4;
                            c30Var.d = mutex;
                            c30Var.g = 5;
                            if (mutex.lock(null, c30Var) != coroutine_suspended) {
                                g30Var4 = g30Var3;
                                rr3Var5 = rr3Var3;
                                closeable5 = closeable4;
                                mutex2 = mutex;
                                g30Var4.I = false;
                                p005kotlin.Unit unit13 = p005kotlin.Unit.INSTANCE;
                                mutex2.unlock(null);
                                c30Var.a = rr3Var5;
                                c30Var.b = closeable5;
                                c30Var.c = null;
                                c30Var.d = null;
                                c30Var.g = 6;
                                if (g30Var4.A(c30Var) != coroutine_suspended) {
                                    closeable4 = closeable5;
                                    rr3Var4 = rr3Var5;
                                    obj = p005kotlin.Unit.INSTANCE;
                                    if (obj instanceof i01) {
                                        xs3.a((i01) obj, false);
                                        break;
                                    }
                                    CloseableKt.closeFinally(closeable4, null);
                                    return p005kotlin.Unit.INSTANCE;
                                }
                            }
                        }
                    } else if (v01Var instanceof i01) {
                        c30Var.a = g30Var3;
                        c30Var.b = rr3Var2;
                        c30Var.c = closeable3;
                        c30Var.g = 4;
                        if (g30Var3.N(c30Var) != coroutine_suspended) {
                            rr3Var3 = rr3Var2;
                            closeable4 = closeable3;
                            rr3Var3 = rr3Var2;
                            closeable4 = closeable3;
                            rr3Var3 = rr3Var2;
                            closeable4 = closeable3;
                            rr3Var3 = rr3Var2;
                            closeable4 = closeable3;
                            mutex = g30Var3.G;
                            c30Var.a = g30Var3;
                            c30Var.b = rr3Var3;
                            c30Var.c = closeable4;
                            c30Var.d = mutex;
                            c30Var.g = 5;
                            if (mutex.lock(null, c30Var) != coroutine_suspended) {
                                g30Var4 = g30Var3;
                                rr3Var5 = rr3Var3;
                                closeable5 = closeable4;
                                mutex2 = mutex;
                                g30Var4.I = false;
                                p005kotlin.Unit unit14 = p005kotlin.Unit.INSTANCE;
                                mutex2.unlock(null);
                                c30Var.a = rr3Var5;
                                c30Var.b = closeable5;
                                c30Var.c = null;
                                c30Var.d = null;
                                c30Var.g = 6;
                                if (g30Var4.A(c30Var) != coroutine_suspended) {
                                    closeable4 = closeable5;
                                    rr3Var4 = rr3Var5;
                                    obj = p005kotlin.Unit.INSTANCE;
                                    if (obj instanceof i01) {
                                        xs3.a((i01) obj, false);
                                        break;
                                    }
                                    CloseableKt.closeFinally(closeable4, null);
                                    return p005kotlin.Unit.INSTANCE;
                                }
                            }
                        }
                    } else {
                        rr3Var3 = rr3Var2;
                        closeable4 = closeable3;
                        rr3Var3 = rr3Var2;
                        closeable4 = closeable3;
                        rr3Var3 = rr3Var2;
                        closeable4 = closeable3;
                        rr3Var3 = rr3Var2;
                        closeable4 = closeable3;
                        mutex = g30Var3.G;
                        c30Var.a = g30Var3;
                        c30Var.b = rr3Var3;
                        c30Var.c = closeable4;
                        c30Var.d = mutex;
                        c30Var.g = 5;
                        if (mutex.lock(null, c30Var) != coroutine_suspended) {
                            g30Var4 = g30Var3;
                            rr3Var5 = rr3Var3;
                            closeable5 = closeable4;
                            mutex2 = mutex;
                            g30Var4.I = false;
                            p005kotlin.Unit unit15 = p005kotlin.Unit.INSTANCE;
                            mutex2.unlock(null);
                            c30Var.a = rr3Var5;
                            c30Var.b = closeable5;
                            c30Var.c = null;
                            c30Var.d = null;
                            c30Var.g = 6;
                            if (g30Var4.A(c30Var) != coroutine_suspended) {
                                closeable4 = closeable5;
                                rr3Var4 = rr3Var5;
                                obj = p005kotlin.Unit.INSTANCE;
                                if (obj instanceof i01) {
                                    xs3.a((i01) obj, false);
                                    break;
                                }
                                CloseableKt.closeFinally(closeable4, null);
                                return p005kotlin.Unit.INSTANCE;
                            }
                        }
                    }
                    rr3Var3 = rr3Var2;
                    closeable4 = closeable3;
                    rr3Var3 = rr3Var2;
                    closeable4 = closeable3;
                    rr3Var7 = rr3Var;
                    closeable7 = closeable6;
                    rr3Var7 = rr3Var;
                    closeable7 = closeable6;
                    return coroutine_suspended;
                } catch (Throwable th13) {
                    th2 = th13;
                    rr3Var6 = rr3Var14;
                    closeable2 = closeable9;
                    rr3Var6.b(th2);
                    if (th2 instanceof v24) {
                        throw th2;
                    }
                    if (!(th2 instanceof TimeoutCancellationException)) {
                        rr3Var6.a(th2);
                    }
                    if (th2 instanceof TimeoutCancellationException) {
                        throw new i21(th2);
                    }
                    if (th2 instanceof CancellationException) {
                        throw new wz0(th2);
                    }
                    if (th2 instanceof w01) {
                        throw th2;
                    }
                    throw new b01(th2);
                }
            case 3:
            case 4:
                closeable4 = c30Var.c;
                rr3Var3 = (rr3) c30Var.b;
                g30Var3 = (g30) c30Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj3);
                    rr3Var3 = rr3Var3;
                    closeable4 = closeable4;
                    rr3Var3 = rr3Var2;
                    closeable4 = closeable3;
                    rr3Var3 = rr3Var2;
                    closeable4 = closeable3;
                    rr3Var3 = rr3Var2;
                    closeable4 = closeable3;
                    rr3Var3 = rr3Var2;
                    closeable4 = closeable3;
                    mutex = g30Var3.G;
                    c30Var.a = g30Var3;
                    c30Var.b = rr3Var3;
                    c30Var.c = closeable4;
                    c30Var.d = mutex;
                    c30Var.g = 5;
                    if (mutex.lock(null, c30Var) != coroutine_suspended) {
                        g30Var4 = g30Var3;
                        rr3Var5 = rr3Var3;
                        closeable5 = closeable4;
                        mutex2 = mutex;
                        g30Var4.I = false;
                        p005kotlin.Unit unit16 = p005kotlin.Unit.INSTANCE;
                        mutex2.unlock(null);
                        c30Var.a = rr3Var5;
                        c30Var.b = closeable5;
                        c30Var.c = null;
                        c30Var.d = null;
                        c30Var.g = 6;
                        if (g30Var4.A(c30Var) != coroutine_suspended) {
                            closeable4 = closeable5;
                            rr3Var4 = rr3Var5;
                            obj = p005kotlin.Unit.INSTANCE;
                            if (obj instanceof i01) {
                                xs3.a((i01) obj, false);
                                break;
                            }
                            CloseableKt.closeFinally(closeable4, null);
                            return p005kotlin.Unit.INSTANCE;
                        }
                    }
                    rr3Var3 = rr3Var2;
                    closeable4 = closeable3;
                    rr3Var3 = rr3Var2;
                    closeable4 = closeable3;
                    rr3Var7 = rr3Var;
                    closeable7 = closeable6;
                    rr3Var7 = rr3Var;
                    closeable7 = closeable6;
                    return coroutine_suspended;
                } catch (Throwable th14) {
                    th2 = th14;
                    rr3Var4 = rr3Var3;
                    rr3Var6 = rr3Var4;
                    closeable2 = closeable4;
                    rr3Var6.b(th2);
                    if (th2 instanceof v24) {
                        throw th2;
                    }
                    if (!(th2 instanceof TimeoutCancellationException)) {
                        rr3Var6.a(th2);
                    }
                    if (th2 instanceof TimeoutCancellationException) {
                        throw new i21(th2);
                    }
                    if (th2 instanceof CancellationException) {
                        throw new wz0(th2);
                    }
                    if (th2 instanceof w01) {
                        throw th2;
                    }
                    throw new b01(th2);
                }
            case 5:
                mutex2 = c30Var.d;
                closeable5 = c30Var.c;
                rr3Var5 = (rr3) c30Var.b;
                g30Var4 = (g30) c30Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj3);
                    closeable5 = closeable5;
                    rr3Var5 = rr3Var5;
                    g30Var4.I = false;
                    p005kotlin.Unit unit17 = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    c30Var.a = rr3Var5;
                    c30Var.b = closeable5;
                    c30Var.c = null;
                    c30Var.d = null;
                    c30Var.g = 6;
                    if (g30Var4.A(c30Var) != coroutine_suspended) {
                        closeable4 = closeable5;
                        rr3Var4 = rr3Var5;
                        obj = p005kotlin.Unit.INSTANCE;
                        if (obj instanceof i01) {
                            xs3.a((i01) obj, false);
                            break;
                        }
                        CloseableKt.closeFinally(closeable4, null);
                        return p005kotlin.Unit.INSTANCE;
                    }
                    rr3Var3 = rr3Var2;
                    closeable4 = closeable3;
                    rr3Var3 = rr3Var2;
                    closeable4 = closeable3;
                    rr3Var7 = rr3Var;
                    closeable7 = closeable6;
                    rr3Var7 = rr3Var;
                    closeable7 = closeable6;
                    return coroutine_suspended;
                } catch (Throwable th15) {
                    th = th15;
                }
                break;
            case 6:
                closeable4 = c30Var.b;
                rr3Var4 = (rr3) c30Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj3);
                    rr3Var4 = rr3Var4;
                    closeable4 = closeable4;
                    obj = p005kotlin.Unit.INSTANCE;
                    if (obj instanceof i01) {
                        xs3.a((i01) obj, false);
                        break;
                    }
                    CloseableKt.closeFinally(closeable4, null);
                    return p005kotlin.Unit.INSTANCE;
                } catch (Throwable th16) {
                    th2 = th16;
                    rr3Var6 = rr3Var4;
                    closeable2 = closeable4;
                    rr3Var6.b(th2);
                    if (th2 instanceof v24) {
                        throw th2;
                    }
                    if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                        rr3Var6.a(th2);
                    }
                    if (th2 instanceof TimeoutCancellationException) {
                        throw new i21(th2);
                    }
                    if (th2 instanceof CancellationException) {
                        throw new wz0(th2);
                    }
                    if (th2 instanceof w01) {
                        throw th2;
                    }
                    throw new b01(th2);
                }
            case 7:
                Closeable closeable10 = c30Var.c;
                rr3 rr3Var15 = (rr3) c30Var.b;
                g30Var2 = (g30) c30Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj3);
                    rr3Var = rr3Var15;
                    closeable6 = closeable10;
                    v01Var2 = (v01) obj3;
                    if (v01Var2 instanceof q01) {
                        c30Var.a = g30Var2;
                        c30Var.b = rr3Var;
                        c30Var.c = closeable6;
                        c30Var.g = 8;
                        if (g30Var2.M(c30Var) == coroutine_suspended) {
                            rr3Var7 = rr3Var;
                            closeable7 = closeable6;
                        } else {
                            rr3Var7 = rr3Var;
                            closeable7 = closeable6;
                            rr3Var7 = rr3Var;
                            closeable7 = closeable6;
                            rr3Var7 = rr3Var;
                            closeable7 = closeable6;
                            rr3Var7 = rr3Var;
                            closeable7 = closeable6;
                            g30Var5 = g30Var2;
                            mutex3 = g30Var5.G;
                            c30Var.a = g30Var5;
                            c30Var.b = rr3Var7;
                            c30Var.c = closeable7;
                            c30Var.d = mutex3;
                            c30Var.g = 10;
                            if (mutex3.lock(null, c30Var) != coroutine_suspended) {
                                rr3Var9 = rr3Var7;
                                closeable8 = closeable7;
                                mutex4 = mutex3;
                                g30Var5.I = false;
                                p005kotlin.Unit unit18 = p005kotlin.Unit.INSTANCE;
                                mutex4.unlock(null);
                                c30Var.a = rr3Var9;
                                c30Var.b = closeable8;
                                c30Var.c = null;
                                c30Var.d = null;
                                c30Var.g = 11;
                                if (g30Var5.A(c30Var) != coroutine_suspended) {
                                    closeable7 = closeable8;
                                    rr3Var8 = rr3Var9;
                                    obj2 = p005kotlin.Unit.INSTANCE;
                                    if (obj2 instanceof i01) {
                                        xs3.a((i01) obj2, false);
                                        break;
                                    }
                                    CloseableKt.closeFinally(closeable7, null);
                                    return p005kotlin.Unit.INSTANCE;
                                }
                            }
                        }
                    } else if (v01Var2 instanceof i01) {
                        c30Var.a = g30Var2;
                        c30Var.b = rr3Var;
                        c30Var.c = closeable6;
                        c30Var.g = 9;
                        if (g30Var2.N(c30Var) != coroutine_suspended) {
                            rr3Var7 = rr3Var;
                            closeable7 = closeable6;
                            rr3Var7 = rr3Var;
                            closeable7 = closeable6;
                            rr3Var7 = rr3Var;
                            closeable7 = closeable6;
                            rr3Var7 = rr3Var;
                            closeable7 = closeable6;
                            g30Var5 = g30Var2;
                            mutex3 = g30Var5.G;
                            c30Var.a = g30Var5;
                            c30Var.b = rr3Var7;
                            c30Var.c = closeable7;
                            c30Var.d = mutex3;
                            c30Var.g = 10;
                            if (mutex3.lock(null, c30Var) != coroutine_suspended) {
                                rr3Var9 = rr3Var7;
                                closeable8 = closeable7;
                                mutex4 = mutex3;
                                g30Var5.I = false;
                                p005kotlin.Unit unit19 = p005kotlin.Unit.INSTANCE;
                                mutex4.unlock(null);
                                c30Var.a = rr3Var9;
                                c30Var.b = closeable8;
                                c30Var.c = null;
                                c30Var.d = null;
                                c30Var.g = 11;
                                if (g30Var5.A(c30Var) != coroutine_suspended) {
                                    closeable7 = closeable8;
                                    rr3Var8 = rr3Var9;
                                    obj2 = p005kotlin.Unit.INSTANCE;
                                    if (obj2 instanceof i01) {
                                        xs3.a((i01) obj2, false);
                                        break;
                                    }
                                    CloseableKt.closeFinally(closeable7, null);
                                    return p005kotlin.Unit.INSTANCE;
                                }
                            }
                        }
                    } else {
                        rr3Var7 = rr3Var;
                        closeable7 = closeable6;
                        rr3Var7 = rr3Var;
                        closeable7 = closeable6;
                        rr3Var7 = rr3Var;
                        closeable7 = closeable6;
                        rr3Var7 = rr3Var;
                        closeable7 = closeable6;
                        g30Var5 = g30Var2;
                        mutex3 = g30Var5.G;
                        c30Var.a = g30Var5;
                        c30Var.b = rr3Var7;
                        c30Var.c = closeable7;
                        c30Var.d = mutex3;
                        c30Var.g = 10;
                        if (mutex3.lock(null, c30Var) != coroutine_suspended) {
                            rr3Var9 = rr3Var7;
                            closeable8 = closeable7;
                            mutex4 = mutex3;
                            g30Var5.I = false;
                            p005kotlin.Unit unit110 = p005kotlin.Unit.INSTANCE;
                            mutex4.unlock(null);
                            c30Var.a = rr3Var9;
                            c30Var.b = closeable8;
                            c30Var.c = null;
                            c30Var.d = null;
                            c30Var.g = 11;
                            if (g30Var5.A(c30Var) != coroutine_suspended) {
                                closeable7 = closeable8;
                                rr3Var8 = rr3Var9;
                                obj2 = p005kotlin.Unit.INSTANCE;
                                if (obj2 instanceof i01) {
                                    xs3.a((i01) obj2, false);
                                    break;
                                }
                                CloseableKt.closeFinally(closeable7, null);
                                return p005kotlin.Unit.INSTANCE;
                            }
                        }
                    }
                    rr3Var3 = rr3Var2;
                    closeable4 = closeable3;
                    rr3Var3 = rr3Var2;
                    closeable4 = closeable3;
                    rr3Var7 = rr3Var;
                    closeable7 = closeable6;
                    rr3Var7 = rr3Var;
                    closeable7 = closeable6;
                    return coroutine_suspended;
                } catch (Throwable th17) {
                    th = th17;
                    rr3Var10 = rr3Var15;
                    closeable = closeable10;
                    rr3Var10.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3Var10.a(th);
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
            case 8:
            case 9:
                closeable7 = c30Var.c;
                rr3Var7 = (rr3) c30Var.b;
                g30Var2 = (g30) c30Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj3);
                    rr3Var7 = rr3Var7;
                    closeable7 = closeable7;
                    rr3Var7 = rr3Var;
                    closeable7 = closeable6;
                    rr3Var7 = rr3Var;
                    closeable7 = closeable6;
                    rr3Var7 = rr3Var;
                    closeable7 = closeable6;
                    rr3Var7 = rr3Var;
                    closeable7 = closeable6;
                    g30Var5 = g30Var2;
                    mutex3 = g30Var5.G;
                    c30Var.a = g30Var5;
                    c30Var.b = rr3Var7;
                    c30Var.c = closeable7;
                    c30Var.d = mutex3;
                    c30Var.g = 10;
                    if (mutex3.lock(null, c30Var) != coroutine_suspended) {
                        rr3Var9 = rr3Var7;
                        closeable8 = closeable7;
                        mutex4 = mutex3;
                        g30Var5.I = false;
                        p005kotlin.Unit unit111 = p005kotlin.Unit.INSTANCE;
                        mutex4.unlock(null);
                        c30Var.a = rr3Var9;
                        c30Var.b = closeable8;
                        c30Var.c = null;
                        c30Var.d = null;
                        c30Var.g = 11;
                        if (g30Var5.A(c30Var) != coroutine_suspended) {
                            closeable7 = closeable8;
                            rr3Var8 = rr3Var9;
                            obj2 = p005kotlin.Unit.INSTANCE;
                            if (obj2 instanceof i01) {
                                xs3.a((i01) obj2, false);
                                break;
                            }
                            CloseableKt.closeFinally(closeable7, null);
                            return p005kotlin.Unit.INSTANCE;
                        }
                    }
                    rr3Var3 = rr3Var2;
                    closeable4 = closeable3;
                    rr3Var3 = rr3Var2;
                    closeable4 = closeable3;
                    rr3Var7 = rr3Var;
                    closeable7 = closeable6;
                    rr3Var7 = rr3Var;
                    closeable7 = closeable6;
                    return coroutine_suspended;
                } catch (Throwable th18) {
                    th = th18;
                    rr3Var8 = rr3Var7;
                    rr3Var10 = rr3Var8;
                    closeable = closeable7;
                    rr3Var10.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3Var10.a(th);
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
            case 10:
                mutex4 = c30Var.d;
                closeable8 = c30Var.c;
                rr3Var9 = (rr3) c30Var.b;
                g30Var5 = (g30) c30Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj3);
                    closeable8 = closeable8;
                    rr3Var9 = rr3Var9;
                    g30Var5.I = false;
                    p005kotlin.Unit unit112 = p005kotlin.Unit.INSTANCE;
                    mutex4.unlock(null);
                    c30Var.a = rr3Var9;
                    c30Var.b = closeable8;
                    c30Var.c = null;
                    c30Var.d = null;
                    c30Var.g = 11;
                    if (g30Var5.A(c30Var) != coroutine_suspended) {
                        closeable7 = closeable8;
                        rr3Var8 = rr3Var9;
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                            break;
                        }
                        CloseableKt.closeFinally(closeable7, null);
                        return p005kotlin.Unit.INSTANCE;
                    }
                    rr3Var3 = rr3Var2;
                    closeable4 = closeable3;
                    rr3Var3 = rr3Var2;
                    closeable4 = closeable3;
                    rr3Var7 = rr3Var;
                    closeable7 = closeable6;
                    rr3Var7 = rr3Var;
                    closeable7 = closeable6;
                    return coroutine_suspended;
                } catch (Throwable th19) {
                    th = th19;
                }
                break;
            case 11:
                closeable7 = c30Var.b;
                rr3Var8 = (rr3) c30Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj3);
                    rr3Var8 = rr3Var8;
                    closeable7 = closeable7;
                    obj2 = p005kotlin.Unit.INSTANCE;
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                        break;
                    }
                    CloseableKt.closeFinally(closeable7, null);
                    return p005kotlin.Unit.INSTANCE;
                } catch (Throwable th20) {
                    th = th20;
                    rr3Var10 = rr3Var8;
                    closeable = closeable7;
                    rr3Var10.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3Var10.a(th);
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
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static Object a(g30 g30Var, boolean z, Continuation continuation, int i) {
        if ((i & 1) != 0) {
            z = false;
        }
        g30Var.getClass();
        return b(g30Var, z, true, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:114:0x0249  */
    /* JADX WARN: Code duplicated, block: B:122:0x026c  */
    /* JADX WARN: Code duplicated, block: B:127:0x028c  */
    /* JADX WARN: Code duplicated, block: B:131:0x0297  */
    /* JADX WARN: Code duplicated, block: B:133:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:136:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:139:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:142:0x02da  */
    /* JADX WARN: Code duplicated, block: B:146:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:150:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:217:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:219:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:220:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:221:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:222:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:223:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:224:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    public static final Object a(g30 g30Var, boolean z, boolean z2, Continuation continuation) {
        r20 r20Var;
        Bundle bundle;
        boolean z3;
        Mutex mutex;
        g30 g30Var2;
        Bundle bundle2;
        Mutex mutex2;
        Bundle bundle3;
        Mutex mutex3;
        g30 g30Var3;
        boolean z4;
        Bundle bundle4;
        Mutex mutex4;
        Bundle bundle5;
        Mutex mutex5;
        Bundle bundle6;
        g30 g30Var4;
        g30 g30Var5;
        x00 x00Var;
        Mutex mutex6;
        g30 g30Var6;
        Mutex mutex7;
        g30 g30Var7 = g30Var;
        g30Var7.getClass();
        if (continuation instanceof r20) {
            r20Var = (r20) continuation;
            int i = r20Var.i;
            if ((i & Integer.MIN_VALUE) != 0) {
                r20Var.i = i - Integer.MIN_VALUE;
            } else {
                r20Var = new r20(g30Var7, continuation);
            }
        } else {
            r20Var = new r20(g30Var7, continuation);
        }
        Object objV = r20Var.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (r20Var.i) {
            case 0:
                p005kotlin.ResultKt.throwOnFailure(objV);
                bundle = new Bundle();
                g83 g83Var = g30Var7.o;
                s11 s11Var = s11.CUI_NAME_CONSENT_STRING_READING;
                List listEmptyList = CollectionsKt.emptyList();
                ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                if (hs3.b().a == null) {
                    tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                    try {
                        try {
                            try {
                                JsonArray jsonArray = (JsonArray) new Gson().fromJson(g30Var7.h.r.b(), JsonArray.class);
                                SharedPreferences sharedPreferences = g30Var7.E;
                                if (sharedPreferences == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("sharedPreferences");
                                    sharedPreferences = null;
                                }
                                Map<String, ?> all = sharedPreferences.getAll();
                                for (JsonElement jsonElement : jsonArray) {
                                    Intrinsics.checkNotNull(all);
                                    Intrinsics.checkNotNull(jsonElement);
                                    g30Var7.a(all, jsonElement, bundle);
                                    break;
                                }
                            } catch (Throwable th) {
                                try {
                                    tu2VarA.b(th);
                                    if (th instanceof v24) {
                                        throw th;
                                    }
                                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                        tu2VarA.a(th);
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
                                        CloseableKt.closeFinally(tu2VarA, th2);
                                        throw th3;
                                    }
                                }
                            }
                        } catch (JsonSyntaxException e) {
                            ((as3) g30Var7.f).a("JSON shared preference consent key set parsing failure", (Throwable) e);
                        }
                    } catch (NullPointerException e2) {
                        ((as3) g30Var7.f).a("Failure reading consent strings from shared preferences", (Throwable) e2);
                    }
                    Object obj = p005kotlin.Unit.INSTANCE;
                    if (obj instanceof i01) {
                        xs3.a((i01) obj, false);
                    }
                    CloseableKt.closeFinally(tu2VarA, null);
                } else {
                    rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                    try {
                        try {
                            JsonArray jsonArray2 = (JsonArray) new Gson().fromJson(g30Var7.h.r.b(), JsonArray.class);
                            SharedPreferences sharedPreferences2 = g30Var7.E;
                            if (sharedPreferences2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("sharedPreferences");
                                sharedPreferences2 = null;
                            }
                            Map<String, ?> all2 = sharedPreferences2.getAll();
                            for (JsonElement jsonElement2 : jsonArray2) {
                                Intrinsics.checkNotNull(all2);
                                Intrinsics.checkNotNull(jsonElement2);
                                g30Var7.a(all2, jsonElement2, bundle);
                                break;
                            }
                        } catch (Throwable th4) {
                            try {
                                rr3VarA.b(th4);
                                if (th4 instanceof v24) {
                                    throw th4;
                                }
                                if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                                    rr3VarA.a(th4);
                                }
                                if (th4 instanceof TimeoutCancellationException) {
                                    throw new i21(th4);
                                }
                                if (th4 instanceof CancellationException) {
                                    throw new wz0(th4);
                                }
                                if (th4 instanceof w01) {
                                    throw th4;
                                }
                                throw new b01(th4);
                            } catch (Throwable th5) {
                                try {
                                    throw th5;
                                } catch (Throwable th6) {
                                    CloseableKt.closeFinally(rr3VarA, th5);
                                    throw th6;
                                }
                            }
                        }
                    } catch (JsonSyntaxException e3) {
                        ((as3) g30Var7.f).a("JSON shared preference consent key set parsing failure", (Throwable) e3);
                    } catch (NullPointerException e4) {
                        ((as3) g30Var7.f).a("Failure reading consent strings from shared preferences", (Throwable) e4);
                    }
                    Object obj2 = p005kotlin.Unit.INSTANCE;
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                    }
                    CloseableKt.closeFinally(rr3VarA, null);
                }
                ex0 ex0Var = g30Var7.h;
                if (!ex0Var.w && ex0Var.x <= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                    Mutex mutex8 = g30Var7.x;
                    r20Var.a = g30Var7;
                    r20Var.b = bundle;
                    r20Var.c = mutex8;
                    r20Var.i = 8;
                    if (mutex8.lock(null, r20Var) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    mutex2 = mutex8;
                    bundle3 = bundle;
                    try {
                        g30Var7.y = bundle3;
                        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                        mutex2.unlock(null);
                        r20Var.a = null;
                        r20Var.b = null;
                        r20Var.c = null;
                        r20Var.i = 9;
                        if (g30Var7.b(bundle3, r20Var) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        return p005kotlin.Unit.INSTANCE;
                    } catch (Throwable th7) {
                        mutex2.unlock(null);
                        throw th7;
                    }
                }
                if (!z) {
                    mutex = g30Var7.x;
                    r20Var.a = g30Var7;
                    r20Var.b = bundle;
                    r20Var.c = mutex;
                    r20Var.d = g30Var7;
                    r20Var.e = bundle;
                    z3 = z2;
                    r20Var.f = z3;
                    r20Var.i = 1;
                    if (mutex.lock(null, r20Var) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    g30Var2 = g30Var7;
                    bundle2 = bundle;
                    try {
                        bundle5 = g30Var2.y;
                        mutex.unlock(null);
                        g30Var7.getClass();
                        if (!a(bundle, bundle5)) {
                            bundle = bundle2;
                            g30Var7 = g30Var2;
                        }
                        return p005kotlin.Unit.INSTANCE;
                    } catch (Throwable th8) {
                        mutex.unlock(null);
                        throw th8;
                    }
                }
                z3 = z2;
                mutex3 = g30Var7.G;
                r20Var.a = g30Var7;
                r20Var.b = bundle;
                r20Var.c = mutex3;
                r20Var.d = null;
                r20Var.e = null;
                r20Var.f = z3;
                r20Var.i = 2;
                if (mutex3.lock(null, r20Var) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                g30Var3 = g30Var7;
                z4 = z3;
                bundle4 = bundle;
                mutex4 = mutex3;
                try {
                    g30Var3.I = true;
                    p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                    mutex4.unlock(null);
                    mutex5 = g30Var3.x;
                    r20Var.a = g30Var3;
                    r20Var.b = bundle4;
                    r20Var.c = mutex5;
                    r20Var.f = z4;
                    r20Var.i = 3;
                    if (mutex5.lock(null, r20Var) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    bundle6 = bundle4;
                    g30Var4 = g30Var3;
                    try {
                        g30Var4.y = bundle6;
                        p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                        mutex5.unlock(null);
                        if (z4) {
                            x00Var = g30Var4.h.r;
                            x00Var.getClass();
                            Intrinsics.checkNotNullParameter("gads:enable_full_consent_fallback_check", C3510b4.i.W);
                            if (((Boolean) x00Var.a("gads:enable_full_consent_fallback_check", Boolean.TRUE, yr.b)).booleanValue()) {
                                r20Var.a = g30Var4;
                                r20Var.b = null;
                                r20Var.c = null;
                                r20Var.i = 4;
                                objV = g30Var4.v(r20Var);
                                if (objV == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                g30Var5 = g30Var4;
                                if (((Boolean) objV).booleanValue()) {
                                    r20Var.a = g30Var5;
                                    r20Var.i = 5;
                                    if (g30Var5.O(r20Var) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                }
                            } else {
                                g30Var5 = g30Var4;
                            }
                            r20Var.a = g30Var5;
                            r20Var.b = null;
                            r20Var.c = null;
                            r20Var.i = 6;
                            if (g30Var5.N(r20Var) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        } else {
                            g30Var5 = g30Var4;
                        }
                        mutex6 = g30Var5.G;
                        r20Var.a = g30Var5;
                        r20Var.b = mutex6;
                        r20Var.c = null;
                        r20Var.i = 7;
                        if (mutex6.lock(null, r20Var) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        g30Var6 = g30Var5;
                        mutex7 = mutex6;
                        try {
                            CoroutineScope coroutineScope = g30Var6.d;
                            s20 block = new s20(g30Var6, null);
                            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                            Intrinsics.checkNotNullParameter(context, "context");
                            Intrinsics.checkNotNullParameter(block, "block");
                            g30Var6.H = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                            p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                            return p005kotlin.Unit.INSTANCE;
                        } finally {
                            mutex7.unlock(null);
                        }
                    } catch (Throwable th9) {
                        mutex5.unlock(null);
                        throw th9;
                    }
                } catch (Throwable th10) {
                    mutex4.unlock(null);
                    throw th10;
                }
                break;
            case 1:
                boolean z5 = r20Var.f;
                bundle = r20Var.e;
                g30 g30Var8 = r20Var.d;
                mutex = r20Var.c;
                bundle2 = (Bundle) r20Var.b;
                g30Var2 = r20Var.a;
                p005kotlin.ResultKt.throwOnFailure(objV);
                z3 = z5;
                g30Var7 = g30Var8;
                bundle5 = g30Var2.y;
                mutex.unlock(null);
                g30Var7.getClass();
                if (!a(bundle, bundle5)) {
                    bundle = bundle2;
                    g30Var7 = g30Var2;
                    mutex3 = g30Var7.G;
                    r20Var.a = g30Var7;
                    r20Var.b = bundle;
                    r20Var.c = mutex3;
                    r20Var.d = null;
                    r20Var.e = null;
                    r20Var.f = z3;
                    r20Var.i = 2;
                    if (mutex3.lock(null, r20Var) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    g30Var3 = g30Var7;
                    z4 = z3;
                    bundle4 = bundle;
                    mutex4 = mutex3;
                    g30Var3.I = true;
                    p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                    mutex4.unlock(null);
                    mutex5 = g30Var3.x;
                    r20Var.a = g30Var3;
                    r20Var.b = bundle4;
                    r20Var.c = mutex5;
                    r20Var.f = z4;
                    r20Var.i = 3;
                    if (mutex5.lock(null, r20Var) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    bundle6 = bundle4;
                    g30Var4 = g30Var3;
                    g30Var4.y = bundle6;
                    p005kotlin.Unit unit6 = p005kotlin.Unit.INSTANCE;
                    mutex5.unlock(null);
                    if (z4) {
                        x00Var = g30Var4.h.r;
                        x00Var.getClass();
                        Intrinsics.checkNotNullParameter("gads:enable_full_consent_fallback_check", C3510b4.i.W);
                        if (((Boolean) x00Var.a("gads:enable_full_consent_fallback_check", Boolean.TRUE, yr.b)).booleanValue()) {
                            r20Var.a = g30Var4;
                            r20Var.b = null;
                            r20Var.c = null;
                            r20Var.i = 4;
                            objV = g30Var4.v(r20Var);
                            if (objV == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            g30Var5 = g30Var4;
                            if (((Boolean) objV).booleanValue()) {
                                r20Var.a = g30Var5;
                                r20Var.i = 5;
                                if (g30Var5.O(r20Var) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            }
                        } else {
                            g30Var5 = g30Var4;
                        }
                        r20Var.a = g30Var5;
                        r20Var.b = null;
                        r20Var.c = null;
                        r20Var.i = 6;
                        if (g30Var5.N(r20Var) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        g30Var5 = g30Var4;
                    }
                    mutex6 = g30Var5.G;
                    r20Var.a = g30Var5;
                    r20Var.b = mutex6;
                    r20Var.c = null;
                    r20Var.i = 7;
                    if (mutex6.lock(null, r20Var) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    g30Var6 = g30Var5;
                    mutex7 = mutex6;
                    CoroutineScope coroutineScope2 = g30Var6.d;
                    s20 block2 = new s20(g30Var6, null);
                    EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
                    Intrinsics.checkNotNullParameter(context2, "context");
                    Intrinsics.checkNotNullParameter(block2, "block");
                    g30Var6.H = BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context2, null, new ws3(block2, null), 2, null);
                    p005kotlin.Unit unit7 = p005kotlin.Unit.INSTANCE;
                }
                return p005kotlin.Unit.INSTANCE;
            case 2:
                z4 = r20Var.f;
                mutex4 = r20Var.c;
                bundle4 = (Bundle) r20Var.b;
                g30Var3 = r20Var.a;
                p005kotlin.ResultKt.throwOnFailure(objV);
                g30Var3.I = true;
                p005kotlin.Unit unit8 = p005kotlin.Unit.INSTANCE;
                mutex4.unlock(null);
                mutex5 = g30Var3.x;
                r20Var.a = g30Var3;
                r20Var.b = bundle4;
                r20Var.c = mutex5;
                r20Var.f = z4;
                r20Var.i = 3;
                if (mutex5.lock(null, r20Var) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                bundle6 = bundle4;
                g30Var4 = g30Var3;
                g30Var4.y = bundle6;
                p005kotlin.Unit unit9 = p005kotlin.Unit.INSTANCE;
                mutex5.unlock(null);
                if (z4) {
                    x00Var = g30Var4.h.r;
                    x00Var.getClass();
                    Intrinsics.checkNotNullParameter("gads:enable_full_consent_fallback_check", C3510b4.i.W);
                    if (((Boolean) x00Var.a("gads:enable_full_consent_fallback_check", Boolean.TRUE, yr.b)).booleanValue()) {
                        r20Var.a = g30Var4;
                        r20Var.b = null;
                        r20Var.c = null;
                        r20Var.i = 4;
                        objV = g30Var4.v(r20Var);
                        if (objV == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        g30Var5 = g30Var4;
                        if (((Boolean) objV).booleanValue()) {
                            r20Var.a = g30Var5;
                            r20Var.i = 5;
                            if (g30Var5.O(r20Var) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                    } else {
                        g30Var5 = g30Var4;
                    }
                    r20Var.a = g30Var5;
                    r20Var.b = null;
                    r20Var.c = null;
                    r20Var.i = 6;
                    if (g30Var5.N(r20Var) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    g30Var5 = g30Var4;
                }
                mutex6 = g30Var5.G;
                r20Var.a = g30Var5;
                r20Var.b = mutex6;
                r20Var.c = null;
                r20Var.i = 7;
                if (mutex6.lock(null, r20Var) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                g30Var6 = g30Var5;
                mutex7 = mutex6;
                CoroutineScope coroutineScope3 = g30Var6.d;
                s20 block3 = new s20(g30Var6, null);
                EmptyCoroutineContext context3 = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope3, "<this>");
                Intrinsics.checkNotNullParameter(context3, "context");
                Intrinsics.checkNotNullParameter(block3, "block");
                g30Var6.H = BuildersKt__Builders_commonKt.launch$default(coroutineScope3, context3, null, new ws3(block3, null), 2, null);
                p005kotlin.Unit unit10 = p005kotlin.Unit.INSTANCE;
                return p005kotlin.Unit.INSTANCE;
            case 3:
                z4 = r20Var.f;
                mutex5 = r20Var.c;
                bundle6 = (Bundle) r20Var.b;
                g30Var4 = r20Var.a;
                p005kotlin.ResultKt.throwOnFailure(objV);
                g30Var4.y = bundle6;
                p005kotlin.Unit unit11 = p005kotlin.Unit.INSTANCE;
                mutex5.unlock(null);
                if (z4) {
                    x00Var = g30Var4.h.r;
                    x00Var.getClass();
                    Intrinsics.checkNotNullParameter("gads:enable_full_consent_fallback_check", C3510b4.i.W);
                    if (((Boolean) x00Var.a("gads:enable_full_consent_fallback_check", Boolean.TRUE, yr.b)).booleanValue()) {
                        r20Var.a = g30Var4;
                        r20Var.b = null;
                        r20Var.c = null;
                        r20Var.i = 4;
                        objV = g30Var4.v(r20Var);
                        if (objV == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        g30Var5 = g30Var4;
                        if (((Boolean) objV).booleanValue()) {
                            r20Var.a = g30Var5;
                            r20Var.i = 5;
                            if (g30Var5.O(r20Var) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                    } else {
                        g30Var5 = g30Var4;
                    }
                    r20Var.a = g30Var5;
                    r20Var.b = null;
                    r20Var.c = null;
                    r20Var.i = 6;
                    if (g30Var5.N(r20Var) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    g30Var5 = g30Var4;
                }
                mutex6 = g30Var5.G;
                r20Var.a = g30Var5;
                r20Var.b = mutex6;
                r20Var.c = null;
                r20Var.i = 7;
                if (mutex6.lock(null, r20Var) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                g30Var6 = g30Var5;
                mutex7 = mutex6;
                CoroutineScope coroutineScope4 = g30Var6.d;
                s20 block4 = new s20(g30Var6, null);
                EmptyCoroutineContext context4 = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope4, "<this>");
                Intrinsics.checkNotNullParameter(context4, "context");
                Intrinsics.checkNotNullParameter(block4, "block");
                g30Var6.H = BuildersKt__Builders_commonKt.launch$default(coroutineScope4, context4, null, new ws3(block4, null), 2, null);
                p005kotlin.Unit unit12 = p005kotlin.Unit.INSTANCE;
                return p005kotlin.Unit.INSTANCE;
            case 4:
                g30Var5 = r20Var.a;
                p005kotlin.ResultKt.throwOnFailure(objV);
                if (((Boolean) objV).booleanValue()) {
                    r20Var.a = g30Var5;
                    r20Var.i = 5;
                    if (g30Var5.O(r20Var) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    r20Var.a = g30Var5;
                    r20Var.b = null;
                    r20Var.c = null;
                    r20Var.i = 6;
                    if (g30Var5.N(r20Var) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                mutex6 = g30Var5.G;
                r20Var.a = g30Var5;
                r20Var.b = mutex6;
                r20Var.c = null;
                r20Var.i = 7;
                if (mutex6.lock(null, r20Var) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                g30Var6 = g30Var5;
                mutex7 = mutex6;
                CoroutineScope coroutineScope5 = g30Var6.d;
                s20 block5 = new s20(g30Var6, null);
                EmptyCoroutineContext context5 = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope5, "<this>");
                Intrinsics.checkNotNullParameter(context5, "context");
                Intrinsics.checkNotNullParameter(block5, "block");
                g30Var6.H = BuildersKt__Builders_commonKt.launch$default(coroutineScope5, context5, null, new ws3(block5, null), 2, null);
                p005kotlin.Unit unit13 = p005kotlin.Unit.INSTANCE;
                return p005kotlin.Unit.INSTANCE;
            case 5:
            case 6:
                g30Var5 = r20Var.a;
                p005kotlin.ResultKt.throwOnFailure(objV);
                mutex6 = g30Var5.G;
                r20Var.a = g30Var5;
                r20Var.b = mutex6;
                r20Var.c = null;
                r20Var.i = 7;
                if (mutex6.lock(null, r20Var) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                g30Var6 = g30Var5;
                mutex7 = mutex6;
                CoroutineScope coroutineScope6 = g30Var6.d;
                s20 block6 = new s20(g30Var6, null);
                EmptyCoroutineContext context6 = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope6, "<this>");
                Intrinsics.checkNotNullParameter(context6, "context");
                Intrinsics.checkNotNullParameter(block6, "block");
                g30Var6.H = BuildersKt__Builders_commonKt.launch$default(coroutineScope6, context6, null, new ws3(block6, null), 2, null);
                p005kotlin.Unit unit14 = p005kotlin.Unit.INSTANCE;
                return p005kotlin.Unit.INSTANCE;
            case 7:
                mutex7 = (Mutex) r20Var.b;
                g30Var6 = r20Var.a;
                p005kotlin.ResultKt.throwOnFailure(objV);
                CoroutineScope coroutineScope7 = g30Var6.d;
                s20 block7 = new s20(g30Var6, null);
                EmptyCoroutineContext context7 = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope7, "<this>");
                Intrinsics.checkNotNullParameter(context7, "context");
                Intrinsics.checkNotNullParameter(block7, "block");
                g30Var6.H = BuildersKt__Builders_commonKt.launch$default(coroutineScope7, context7, null, new ws3(block7, null), 2, null);
                p005kotlin.Unit unit15 = p005kotlin.Unit.INSTANCE;
                return p005kotlin.Unit.INSTANCE;
            case 8:
                Mutex mutex9 = r20Var.c;
                Bundle bundle7 = (Bundle) r20Var.b;
                g30 g30Var9 = r20Var.a;
                p005kotlin.ResultKt.throwOnFailure(objV);
                bundle3 = bundle7;
                mutex2 = mutex9;
                g30Var7 = g30Var9;
                g30Var7.y = bundle3;
                p005kotlin.Unit unit16 = p005kotlin.Unit.INSTANCE;
                mutex2.unlock(null);
                r20Var.a = null;
                r20Var.b = null;
                r20Var.c = null;
                r20Var.i = 9;
                if (g30Var7.b(bundle3, r20Var) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return p005kotlin.Unit.INSTANCE;
            case 9:
                p005kotlin.ResultKt.throwOnFailure(objV);
                return p005kotlin.Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static boolean a(Bundle newBundle, Bundle oldBundle) {
        Intrinsics.checkNotNullParameter(newBundle, "newBundle");
        Intrinsics.checkNotNullParameter(oldBundle, "oldBundle");
        if (newBundle.size() != oldBundle.size()) {
            return false;
        }
        Set<String> setKeySet = newBundle.keySet();
        Set<String> setKeySet2 = oldBundle.keySet();
        Intrinsics.checkNotNullExpressionValue(setKeySet2, "keySet(...)");
        if (!setKeySet.containsAll(setKeySet2)) {
            return false;
        }
        for (String str : newBundle.keySet()) {
            Object obj = newBundle.get(str);
            Object obj2 = oldBundle.get(str);
            if ((obj instanceof Bundle) && (obj2 instanceof Bundle)) {
                if (!a((Bundle) obj, (Bundle) obj2)) {
                    return false;
                }
            } else if (!Intrinsics.areEqual(obj, obj2)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0070, code lost:
    
        if (kotlin.dq0.b(r6, r0) == r1) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object b(kotlin.g30 r6, p005kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof kotlin.n10
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.n10 r0 = (kotlin.n10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.n10 r0 = new ads_mobile_sdk.n10
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L73
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            ads_mobile_sdk.s00 r6 = r0.b
            ads_mobile_sdk.g30 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L54
        L3c:
            p005kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.s00 r7 = kotlin.s00.API_READ_EOID
            ads_mobile_sdk.p02 r2 = r6.B
            r0.a = r6
            r0.b = r7
            r0.e = r4
            java.lang.Object r2 = r2.a(r0)
            if (r2 != r1) goto L50
            goto L72
        L50:
            r5 = r2
            r2 = r6
            r6 = r7
            r7 = r5
        L54:
            ads_mobile_sdk.u00 r7 = (kotlin.u00) r7
            ads_mobile_sdk.yh1$d r7 = r7.w()
            boolean r6 = r7.contains(r6)
            if (r6 == 0) goto L73
            ads_mobile_sdk.dq0 r6 = r2.w
            r7 = 0
            r0.a = r7
            r0.b = r7
            r0.e = r3
            r6.getClass()
            java.lang.Object r6 = kotlin.dq0.b(r6, r0)
            if (r6 != r1) goto L73
        L72:
            return r1
        L73:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g30.b(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009e, code lost:
    
        if (r13.join(r0) == r1) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object b(kotlin.g30 r12, boolean r13, boolean r14, p005kotlin.coroutines.Continuation r15) {
        /*
            boolean r0 = r15 instanceof kotlin.p20
            if (r0 == 0) goto L13
            r0 = r15
            ads_mobile_sdk.p20 r0 = (kotlin.p20) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.p20 r0 = new ads_mobile_sdk.p20
            r0.<init>(r12, r15)
        L18:
            java.lang.Object r15 = r0.e
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L44
            if (r2 == r4) goto L36
            if (r2 != r3) goto L2e
            p005kotlin.ResultKt.throwOnFailure(r15)
            goto La1
        L2e:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L36:
            boolean r14 = r0.d
            boolean r13 = r0.c
            kotlinx.coroutines.sync.Mutex r12 = r0.b
            ads_mobile_sdk.g30 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r15)
            r15 = r12
            r12 = r2
            goto L5a
        L44:
            p005kotlin.ResultKt.throwOnFailure(r15)
            kotlinx.coroutines.sync.Mutex r15 = r12.G
            r0.a = r12
            r0.b = r15
            r0.c = r13
            r0.d = r14
            r0.g = r4
            java.lang.Object r2 = r15.lock(r5, r0)
            if (r2 != r1) goto L5a
            goto La0
        L5a:
            kotlinx.coroutines.Job r2 = r12.H     // Catch: java.lang.Throwable -> La4
            if (r2 == 0) goto L61
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r2, r5, r4, r5)     // Catch: java.lang.Throwable -> La4
        L61:
            boolean r2 = r12.I     // Catch: java.lang.Throwable -> La4
            if (r2 != 0) goto L69
            if (r13 == 0) goto L68
            goto L69
        L68:
            r4 = 0
        L69:
            r12.I = r4     // Catch: java.lang.Throwable -> La4
            kotlinx.coroutines.CoroutineScope r6 = r12.d     // Catch: java.lang.Throwable -> La4
            ads_mobile_sdk.q20 r13 = new ads_mobile_sdk.q20     // Catch: java.lang.Throwable -> La4
            r13.<init>(r12, r4, r14, r5)     // Catch: java.lang.Throwable -> La4
            kotlin.coroutines.EmptyCoroutineContext r7 = p005kotlin.coroutines.EmptyCoroutineContext.INSTANCE     // Catch: java.lang.Throwable -> La4
            java.lang.String r14 = "<this>"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r14)     // Catch: java.lang.Throwable -> La4
            java.lang.String r14 = "context"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r14)     // Catch: java.lang.Throwable -> La4
            java.lang.String r14 = "block"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r14)     // Catch: java.lang.Throwable -> La4
            ads_mobile_sdk.ws3 r9 = new ads_mobile_sdk.ws3     // Catch: java.lang.Throwable -> La4
            r9.<init>(r13, r5)     // Catch: java.lang.Throwable -> La4
            r10 = 2
            r11 = 0
            r8 = 0
            kotlinx.coroutines.Job r13 = kotlinx.coroutines.BuildersKt.launch$default(r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> La4
            r12.H = r13     // Catch: java.lang.Throwable -> La4
            r15.unlock(r5)
            r0.a = r5
            r0.b = r5
            r0.g = r3
            java.lang.Object r12 = r13.join(r0)
            if (r12 != r1) goto La1
        La0:
            return r1
        La1:
            kotlin.Unit r12 = p005kotlin.Unit.INSTANCE
            return r12
        La4:
            r0 = move-exception
            r12 = r0
            r15.unlock(r5)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g30.b(ads_mobile_sdk.g30, boolean, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object c(g30 g30Var, Continuation continuation) {
        s10 s10Var;
        Mutex mutex;
        if (continuation instanceof s10) {
            s10Var = (s10) continuation;
            int i = s10Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                s10Var.e = i - Integer.MIN_VALUE;
            } else {
                s10Var = new s10(g30Var, continuation);
            }
        } else {
            s10Var = new s10(g30Var, continuation);
        }
        Object obj = s10Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = s10Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = g30Var.z;
            s10Var.a = g30Var;
            s10Var.b = mutex;
            s10Var.e = 1;
            if (mutex.lock(null, s10Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = s10Var.b;
            g30 g30Var2 = s10Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            g30Var = g30Var2;
        }
        try {
            return g30Var.A;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object d(g30 g30Var, Continuation continuation) {
        t10 t10Var;
        Mutex mutex;
        if (continuation instanceof t10) {
            t10Var = (t10) continuation;
            int i = t10Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                t10Var.e = i - Integer.MIN_VALUE;
            } else {
                t10Var = new t10(g30Var, continuation);
            }
        } else {
            t10Var = new t10(g30Var, continuation);
        }
        Object obj = t10Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = t10Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = g30Var.x;
            t10Var.a = g30Var;
            t10Var.b = mutex;
            t10Var.e = 1;
            if (mutex.lock(null, t10Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = t10Var.b;
            g30 g30Var2 = t10Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            g30Var = g30Var2;
        }
        try {
            return g30Var.y;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object e(g30 g30Var, Continuation continuation) {
        u10 u10Var;
        Mutex mutex;
        g30 g30Var2;
        Gson gson;
        Gson gson2;
        if (continuation instanceof u10) {
            u10Var = (u10) continuation;
            int i = u10Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                u10Var.g = i - Integer.MIN_VALUE;
            } else {
                u10Var = new u10(g30Var, continuation);
            }
        } else {
            u10Var = new u10(g30Var, continuation);
        }
        Object obj = u10Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = u10Var.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Gson gson3 = g30Var.g;
            mutex = g30Var.x;
            u10Var.a = g30Var;
            u10Var.b = mutex;
            u10Var.c = gson3;
            u10Var.d = gson3;
            u10Var.g = 1;
            if (mutex.lock(null, u10Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            g30Var2 = g30Var;
            gson = gson3;
            gson2 = gson;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            gson = u10Var.d;
            gson2 = u10Var.c;
            mutex = u10Var.b;
            g30Var2 = u10Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            return gson2.fromJson(gson.toJson(g30Var2.y), JsonObject.class);
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00c7 A[PHI: r7 r10
  0x00c7: PHI (r7v4 ads_mobile_sdk.g30) = (r7v2 ads_mobile_sdk.g30), (r7v5 ads_mobile_sdk.g30) binds: [B:23:0x00c3, B:16:0x0065] A[DONT_GENERATE, DONT_INLINE]
  0x00c7: PHI (r10v9 java.lang.Object) = (r10v8 java.lang.Object), (r10v1 java.lang.Object) binds: [B:23:0x00c3, B:16:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:27:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:29:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:32:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:35:0x0102  */
    /* JADX WARN: Code duplicated, block: B:37:0x010c  */
    /* JADX WARN: Code duplicated, block: B:39:0x0112  */
    /* JADX WARN: Code duplicated, block: B:41:0x011c  */
    /* JADX WARN: Code duplicated, block: B:44:0x0137  */
    /* JADX WARN: Code duplicated, block: B:47:0x013c  */
    /* JADX WARN: Code duplicated, block: B:51:0x0154 A[PHI: r2 r3 r9
  0x0154: PHI (r2v17 'newConsentState' ads_mobile_sdk.k30) = (r2v14 'newConsentState' ads_mobile_sdk.k30), (r2v20 'newConsentState' ads_mobile_sdk.k30) binds: [B:49:0x0151, B:13:0x0034] A[DONT_GENERATE, DONT_INLINE]
  0x0154: PHI (r3v6 ads_mobile_sdk.g30) = (r3v4 ads_mobile_sdk.g30), (r3v7 ads_mobile_sdk.g30) binds: [B:49:0x0151, B:13:0x0034] A[DONT_GENERATE, DONT_INLINE]
  0x0154: PHI (r9v22 ads_mobile_sdk.qb0) = (r9v19 ads_mobile_sdk.qb0), (r9v27 ads_mobile_sdk.qb0) binds: [B:49:0x0151, B:13:0x0034] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:54:0x017d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x017f, code lost:
    
        if (r9 == r1) goto L56;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object f(kotlin.g30 r9, p005kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instruction units count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g30.f(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0070, code lost:
    
        if (r7 == r1) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object g(kotlin.g30 r6, p005kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof kotlin.w10
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.w10 r0 = (kotlin.w10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.w10 r0 = new ads_mobile_sdk.w10
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L73
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            ads_mobile_sdk.s00 r6 = r0.b
            ads_mobile_sdk.g30 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L54
        L3c:
            p005kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.s00 r7 = kotlin.s00.API_READ_EOID
            ads_mobile_sdk.p02 r2 = r6.B
            r0.a = r6
            r0.b = r7
            r0.e = r4
            java.lang.Object r2 = r2.a(r0)
            if (r2 != r1) goto L50
            goto L72
        L50:
            r5 = r2
            r2 = r6
            r6 = r7
            r7 = r5
        L54:
            ads_mobile_sdk.u00 r7 = (kotlin.u00) r7
            ads_mobile_sdk.yh1$d r7 = r7.w()
            boolean r6 = r7.contains(r6)
            r7 = 0
            if (r6 == 0) goto L75
            ads_mobile_sdk.dq0 r6 = r2.w
            r0.a = r7
            r0.b = r7
            r0.e = r3
            r6.getClass()
            java.lang.Object r7 = kotlin.dq0.c(r6, r0)
            if (r7 != r1) goto L73
        L72:
            return r1
        L73:
            ads_mobile_sdk.xp0 r7 = (kotlin.xp0) r7
        L75:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g30.g(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0070, code lost:
    
        if (r7 == r1) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object h(kotlin.g30 r6, p005kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof kotlin.c20
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.c20 r0 = (kotlin.c20) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.c20 r0 = new ads_mobile_sdk.c20
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L73
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            ads_mobile_sdk.s00 r6 = r0.b
            ads_mobile_sdk.g30 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L54
        L3c:
            p005kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.s00 r7 = kotlin.s00.API_READ_PERSISTENT_SDK_CORE_DATA
            ads_mobile_sdk.p02 r2 = r6.B
            r0.a = r6
            r0.b = r7
            r0.e = r4
            java.lang.Object r2 = r2.a(r0)
            if (r2 != r1) goto L50
            goto L72
        L50:
            r5 = r2
            r2 = r6
            r6 = r7
            r7 = r5
        L54:
            ads_mobile_sdk.u00 r7 = (kotlin.u00) r7
            ads_mobile_sdk.yh1$d r7 = r7.w()
            boolean r6 = r7.contains(r6)
            r7 = 0
            if (r6 == 0) goto L75
            ads_mobile_sdk.jw0 r6 = r2.t
            r0.a = r7
            r0.b = r7
            r0.e = r3
            r6.getClass()
            java.lang.Object r7 = kotlin.jw0.c(r6, r0)
            if (r7 != r1) goto L73
        L72:
            return r1
        L73:
            java.util.Map r7 = (java.util.Map) r7
        L75:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g30.h(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006d, code lost:
    
        if (r7 == r1) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object i(kotlin.g30 r6, p005kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof kotlin.d20
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.d20 r0 = (kotlin.d20) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.d20 r0 = new ads_mobile_sdk.d20
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L70
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            ads_mobile_sdk.s00 r6 = r0.b
            ads_mobile_sdk.g30 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L54
        L3c:
            p005kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.s00 r7 = kotlin.s00.API_READ_SESSION_ID
            ads_mobile_sdk.p02 r2 = r6.B
            r0.a = r6
            r0.b = r7
            r0.e = r4
            java.lang.Object r2 = r2.a(r0)
            if (r2 != r1) goto L50
            goto L6f
        L50:
            r5 = r2
            r2 = r6
            r6 = r7
            r7 = r5
        L54:
            ads_mobile_sdk.u00 r7 = (kotlin.u00) r7
            ads_mobile_sdk.yh1$d r7 = r7.w()
            boolean r6 = r7.contains(r6)
            r7 = 0
            if (r6 == 0) goto L72
            ads_mobile_sdk.p02 r6 = r2.F
            r0.a = r7
            r0.b = r7
            r0.e = r3
            java.lang.Object r7 = r6.a(r0)
            if (r7 != r1) goto L70
        L6f:
            return r1
        L70:
            java.lang.String r7 = (java.lang.String) r7
        L72:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g30.i(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0098 A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #2 {all -> 0x0035, blocks: (B:13:0x0031, B:31:0x0092, B:33:0x0098), top: B:69:0x0031 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00b2 A[Catch: all -> 0x00e1, TryCatch #0 {all -> 0x00e1, blocks: (B:39:0x00ab, B:41:0x00b2, B:43:0x00b6, B:45:0x00ba, B:46:0x00bd, B:48:0x00c1, B:50:0x00c5, B:52:0x00c9, B:53:0x00ca, B:54:0x00cf, B:55:0x00d0, B:56:0x00d7, B:57:0x00d8, B:58:0x00df, B:59:0x00e0), top: B:66:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00c1 A[Catch: all -> 0x00e1, TryCatch #0 {all -> 0x00e1, blocks: (B:39:0x00ab, B:41:0x00b2, B:43:0x00b6, B:45:0x00ba, B:46:0x00bd, B:48:0x00c1, B:50:0x00c5, B:52:0x00c9, B:53:0x00ca, B:54:0x00cf, B:55:0x00d0, B:56:0x00d7, B:57:0x00d8, B:58:0x00df, B:59:0x00e0), top: B:66:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00c5 A[Catch: all -> 0x00e1, TryCatch #0 {all -> 0x00e1, blocks: (B:39:0x00ab, B:41:0x00b2, B:43:0x00b6, B:45:0x00ba, B:46:0x00bd, B:48:0x00c1, B:50:0x00c5, B:52:0x00c9, B:53:0x00ca, B:54:0x00cf, B:55:0x00d0, B:56:0x00d7, B:57:0x00d8, B:58:0x00df, B:59:0x00e0), top: B:66:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00c9 A[Catch: all -> 0x00e1, TryCatch #0 {all -> 0x00e1, blocks: (B:39:0x00ab, B:41:0x00b2, B:43:0x00b6, B:45:0x00ba, B:46:0x00bd, B:48:0x00c1, B:50:0x00c5, B:52:0x00c9, B:53:0x00ca, B:54:0x00cf, B:55:0x00d0, B:56:0x00d7, B:57:0x00d8, B:58:0x00df, B:59:0x00e0), top: B:66:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00ca A[Catch: all -> 0x00e1, TryCatch #0 {all -> 0x00e1, blocks: (B:39:0x00ab, B:41:0x00b2, B:43:0x00b6, B:45:0x00ba, B:46:0x00bd, B:48:0x00c1, B:50:0x00c5, B:52:0x00c9, B:53:0x00ca, B:54:0x00cf, B:55:0x00d0, B:56:0x00d7, B:57:0x00d8, B:58:0x00df, B:59:0x00e0), top: B:66:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00d0 A[Catch: all -> 0x00e1, TryCatch #0 {all -> 0x00e1, blocks: (B:39:0x00ab, B:41:0x00b2, B:43:0x00b6, B:45:0x00ba, B:46:0x00bd, B:48:0x00c1, B:50:0x00c5, B:52:0x00c9, B:53:0x00ca, B:54:0x00cf, B:55:0x00d0, B:56:0x00d7, B:57:0x00d8, B:58:0x00df, B:59:0x00e0), top: B:66:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00d8 A[Catch: all -> 0x00e1, TryCatch #0 {all -> 0x00e1, blocks: (B:39:0x00ab, B:41:0x00b2, B:43:0x00b6, B:45:0x00ba, B:46:0x00bd, B:48:0x00c1, B:50:0x00c5, B:52:0x00c9, B:53:0x00ca, B:54:0x00cf, B:55:0x00d0, B:56:0x00d7, B:57:0x00d8, B:58:0x00df, B:59:0x00e0), top: B:66:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00e0 A[Catch: all -> 0x00e1, TRY_LEAVE, TryCatch #0 {all -> 0x00e1, blocks: (B:39:0x00ab, B:41:0x00b2, B:43:0x00b6, B:45:0x00ba, B:46:0x00bd, B:48:0x00c1, B:50:0x00c5, B:52:0x00c9, B:53:0x00ca, B:54:0x00cf, B:55:0x00d0, B:56:0x00d7, B:57:0x00d8, B:58:0x00df, B:59:0x00e0), top: B:66:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object j(g30 g30Var, Continuation continuation) {
        e20 e20Var;
        g30 g30Var2;
        s00 s00Var;
        TimeoutCancellationException timeoutCancellationException;
        Closeable closeable;
        rr3 rr3Var;
        rr3 rr3Var2;
        Closeable closeable2;
        v01 v01Var;
        if (continuation instanceof e20) {
            e20Var = (e20) continuation;
            int i = e20Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                e20Var.e = i - Integer.MIN_VALUE;
            } else {
                e20Var = new e20(g30Var, continuation);
            }
        } else {
            e20Var = new e20(g30Var, continuation);
        }
        Object objA = e20Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = e20Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            s00 s00Var2 = s00.API_READ_TRUSTLESS_TOKEN;
            p02 p02Var = g30Var.B;
            e20Var.a = g30Var;
            e20Var.b = s00Var2;
            e20Var.e = 1;
            Object objA2 = p02Var.a(e20Var);
            if (objA2 != coroutine_suspended) {
                g30Var2 = g30Var;
                s00Var = s00Var2;
                objA = objA2;
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            closeable2 = (Closeable) e20Var.b;
            rr3Var = (rr3) e20Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(objA);
                rr3Var = rr3Var;
                closeable2 = closeable2;
                v01Var = (v01) objA;
                if (v01Var instanceof i01) {
                    xs3.a((i01) v01Var, false);
                }
                CloseableKt.closeFinally(closeable2, null);
                return v01Var;
            } catch (Throwable th) {
                closeable = closeable2;
                rr3Var2 = rr3Var;
                timeoutCancellationException = th;
                try {
                    rr3Var2.b(timeoutCancellationException);
                    if (!(timeoutCancellationException instanceof v24)) {
                        throw timeoutCancellationException;
                    }
                    if (!(timeoutCancellationException instanceof TimeoutCancellationException) && !(timeoutCancellationException instanceof CancellationException)) {
                        rr3Var2.a(timeoutCancellationException);
                    }
                    if (!(timeoutCancellationException instanceof TimeoutCancellationException)) {
                        throw new i21(timeoutCancellationException);
                    }
                    if (!(timeoutCancellationException instanceof CancellationException)) {
                        throw new wz0(timeoutCancellationException);
                    }
                    if (timeoutCancellationException instanceof w01) {
                        throw timeoutCancellationException;
                    }
                    throw new b01(timeoutCancellationException);
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.closeFinally(closeable, th2);
                        throw th3;
                    }
                }
            }
        }
        s00Var = (s00) e20Var.b;
        g30Var2 = (g30) e20Var.a;
        p005kotlin.ResultKt.throwOnFailure(objA);
        if (!((u00) objA).w().contains(s00Var)) {
            return null;
        }
        s11 s11Var = s11.CUI_NAME_GET_TRUSTLESS_TOKEN;
        WeakHashMap weakHashMap = hs3.a;
        rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
        try {
            wt3 wt3Var = (wt3) g30Var2.q.get();
            e20Var.a = rr3VarA;
            e20Var.b = rr3VarA;
            e20Var.e = 2;
            objA = wt3Var.a(e20Var);
            if (objA != coroutine_suspended) {
                rr3Var = rr3VarA;
                closeable2 = rr3VarA;
                v01Var = (v01) objA;
                if (v01Var instanceof i01) {
                    xs3.a((i01) v01Var, false);
                }
                CloseableKt.closeFinally(closeable2, null);
                return v01Var;
            }
            return coroutine_suspended;
        } catch (Throwable th4) {
            timeoutCancellationException = th4;
            closeable = rr3VarA;
            rr3Var2 = rr3VarA;
            rr3Var2.b(timeoutCancellationException);
            if (!(timeoutCancellationException instanceof v24)) {
                throw timeoutCancellationException;
            }
            if (!(timeoutCancellationException instanceof TimeoutCancellationException)) {
                rr3Var2.a(timeoutCancellationException);
            }
            if (!(timeoutCancellationException instanceof TimeoutCancellationException)) {
                throw new i21(timeoutCancellationException);
            }
            if (!(timeoutCancellationException instanceof CancellationException)) {
                throw new wz0(timeoutCancellationException);
            }
            if (timeoutCancellationException instanceof w01) {
                throw timeoutCancellationException;
            }
            throw new b01(timeoutCancellationException);
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00a8 A[Catch: all -> 0x013e, TryCatch #0 {all -> 0x013e, blocks: (B:27:0x008c, B:29:0x00a8, B:30:0x00b2, B:32:0x00b6, B:34:0x00f5, B:35:0x0104, B:37:0x0108, B:39:0x010e, B:41:0x0114), top: B:54:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:30:0x00b2 A[Catch: all -> 0x013e, TryCatch #0 {all -> 0x013e, blocks: (B:27:0x008c, B:29:0x00a8, B:30:0x00b2, B:32:0x00b6, B:34:0x00f5, B:35:0x0104, B:37:0x0108, B:39:0x010e, B:41:0x0114), top: B:54:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00b6 A[Catch: all -> 0x013e, TryCatch #0 {all -> 0x013e, blocks: (B:27:0x008c, B:29:0x00a8, B:30:0x00b2, B:32:0x00b6, B:34:0x00f5, B:35:0x0104, B:37:0x0108, B:39:0x010e, B:41:0x0114), top: B:54:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00f5 A[Catch: all -> 0x013e, TryCatch #0 {all -> 0x013e, blocks: (B:27:0x008c, B:29:0x00a8, B:30:0x00b2, B:32:0x00b6, B:34:0x00f5, B:35:0x0104, B:37:0x0108, B:39:0x010e, B:41:0x0114), top: B:54:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0104 A[Catch: all -> 0x013e, TryCatch #0 {all -> 0x013e, blocks: (B:27:0x008c, B:29:0x00a8, B:30:0x00b2, B:32:0x00b6, B:34:0x00f5, B:35:0x0104, B:37:0x0108, B:39:0x010e, B:41:0x0114), top: B:54:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0108 A[Catch: all -> 0x013e, TryCatch #0 {all -> 0x013e, blocks: (B:27:0x008c, B:29:0x00a8, B:30:0x00b2, B:32:0x00b6, B:34:0x00f5, B:35:0x0104, B:37:0x0108, B:39:0x010e, B:41:0x0114), top: B:54:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:48:0x0146  */
    /* JADX WARN: Code duplicated, block: B:53:0x0156 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0150, code lost:
    
        if (r1 == r4) goto L50;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object k(kotlin.g30 r17, p005kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instruction units count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g30.k(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object l(g30 g30Var, Continuation continuation) {
        h20 h20Var;
        g30 g30Var2;
        s00 s00Var;
        if (continuation instanceof h20) {
            h20Var = (h20) continuation;
            int i = h20Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                h20Var.e = i - Integer.MIN_VALUE;
            } else {
                h20Var = new h20(g30Var, continuation);
            }
        } else {
            h20Var = new h20(g30Var, continuation);
        }
        Object obj = h20Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = h20Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s00 s00Var2 = s00.API_GET_WEBVIEW_COOKIE;
            p02 p02Var = g30Var.B;
            h20Var.a = g30Var;
            h20Var.b = s00Var2;
            h20Var.e = 1;
            Object objA = p02Var.a(h20Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            g30Var2 = g30Var;
            s00Var = s00Var2;
            obj = objA;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            s00Var = h20Var.b;
            g30Var2 = h20Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        if (((u00) obj).w().contains(s00Var)) {
            CookieManager cookieManager = g30Var2.D;
            String cookie = cookieManager != null ? cookieManager.getCookie(g30Var2.h.Q0()) : null;
            if (cookie != null && cookie.length() != 0) {
                Matcher matcher = Q.matcher(cookie);
                ArrayList arrayList = new ArrayList();
                while (matcher.find()) {
                    String strGroup = matcher.group(1);
                    if (strGroup != null && (StringsKt.startsWith(strGroup, "id=", true) || StringsKt.startsWith(strGroup, "ide=", true))) {
                        arrayList.add(strGroup);
                    }
                }
                return CollectionsKt.joinToString$default(arrayList, "; ", null, null, 0, null, null, 62, null);
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object m(g30 g30Var, Continuation continuation) {
        k20 k20Var;
        if (continuation instanceof k20) {
            k20Var = (k20) continuation;
            int i = k20Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                k20Var.c = i - Integer.MIN_VALUE;
            } else {
                k20Var = new k20(g30Var, continuation);
            }
        } else {
            k20Var = new k20(g30Var, continuation);
        }
        Object objA = k20Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = k20Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            p02 p02Var = g30Var.B;
            k20Var.c = 1;
            objA = p02Var.a(k20Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        return Boxing.boxBoolean(((u00) objA).w().contains(s00.API_READ_TRUSTLESS_TOKEN));
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00af A[PHI: r0
  0x00af: PHI (r0v2 ads_mobile_sdk.g30) = (r0v1 ads_mobile_sdk.g30), (r0v1 ads_mobile_sdk.g30), (r0v7 ads_mobile_sdk.g30) binds: [B:26:0x00ac, B:24:0x00a2, B:16:0x0045] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b8, code lost:
    
        if (a(r0, false, (p005kotlin.coroutines.Continuation) r2, 3) == r3) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object n(kotlin.g30 r19, p005kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g30.n(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:32:0x007a A[PHI: r2
  0x007a: PHI (r2v4 ads_mobile_sdk.g30) = (r2v3 ads_mobile_sdk.g30), (r2v8 ads_mobile_sdk.g30) binds: [B:30:0x0077, B:19:0x0043] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:35:0x0085 A[PHI: r2
  0x0085: PHI (r2v5 ads_mobile_sdk.g30) = (r2v4 ads_mobile_sdk.g30), (r2v9 ads_mobile_sdk.g30) binds: [B:33:0x0082, B:18:0x003d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x008e, code lost:
    
        if (r2.x(r0) == r1) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object A(p005kotlin.coroutines.Continuation r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof kotlin.k10
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.k10 r0 = (kotlin.k10) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.k10 r0 = new ads_mobile_sdk.k10
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.b
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 5
            r4 = 4
            r5 = 3
            r6 = 2
            r7 = 1
            if (r2 == 0) goto L55
            if (r2 == r7) goto L4f
            if (r2 == r6) goto L49
            if (r2 == r5) goto L43
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            p005kotlin.ResultKt.throwOnFailure(r9)
            goto L91
        L35:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L3d:
            ads_mobile_sdk.g30 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r9)
            goto L85
        L43:
            ads_mobile_sdk.g30 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r9)
            goto L7a
        L49:
            ads_mobile_sdk.g30 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r9)
            goto L6f
        L4f:
            ads_mobile_sdk.g30 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r9)
            goto L64
        L55:
            p005kotlin.ResultKt.throwOnFailure(r9)
            r0.a = r8
            r0.d = r7
            java.lang.Object r9 = r8.B(r0)
            if (r9 != r1) goto L63
            goto L90
        L63:
            r2 = r8
        L64:
            r0.a = r2
            r0.d = r6
            java.lang.Object r9 = r2.y(r0)
            if (r9 != r1) goto L6f
            goto L90
        L6f:
            r0.a = r2
            r0.d = r5
            java.lang.Object r9 = r2.z(r0)
            if (r9 != r1) goto L7a
            goto L90
        L7a:
            r0.a = r2
            r0.d = r4
            java.lang.Object r9 = r2.w(r0)
            if (r9 != r1) goto L85
            goto L90
        L85:
            r9 = 0
            r0.a = r9
            r0.d = r3
            java.lang.Object r9 = r2.x(r0)
            if (r9 != r1) goto L91
        L90:
            return r1
        L91:
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g30.A(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object B(Continuation continuation) {
        l10 l10Var;
        s00 s00Var;
        g30 g30Var;
        if (continuation instanceof l10) {
            l10Var = (l10) continuation;
            int i = l10Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                l10Var.e = i - Integer.MIN_VALUE;
            } else {
                l10Var = new l10(this, continuation);
            }
        } else {
            l10Var = new l10(this, continuation);
        }
        Object obj = l10Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = l10Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s00 s00Var2 = s00.API_CLEAR_WEBVIEW_COOKIE;
            p02 p02Var = this.B;
            l10Var.a = this;
            l10Var.b = s00Var2;
            l10Var.e = 1;
            Object objA = p02Var.a(l10Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            s00Var = s00Var2;
            obj = objA;
            g30Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            s00Var = l10Var.b;
            g30Var = l10Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        if (((u00) obj).w().contains(s00Var)) {
            CookieManager cookieManager = g30Var.D;
            String cookie = cookieManager != null ? cookieManager.getCookie(g30Var.h.Q0()) : null;
            if (cookie != null) {
                Intrinsics.checkNotNull(cookie);
                List listSplit$default = StringsKt.split$default((CharSequence) cookie, new String[]{";"}, false, 0, 6, (Object) null);
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : listSplit$default) {
                    if (!StringsKt.isBlank((String) obj2)) {
                        arrayList.add(obj2);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    String str = StringsKt.substringBefore$default((String) it.next(), C3510b4.j.b, (String) null, 2, (Object) null) + "=; Max-Age=-1; path=/; domain=.doubleclick.net";
                    CookieManager cookieManager2 = g30Var.D;
                    if (cookieManager2 != null) {
                        cookieManager2.setCookie(g30Var.h.Q0(), str);
                    }
                }
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007e, code lost:
    
        if (r6 == r1) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object C(p005kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof kotlin.o10
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.o10 r0 = (kotlin.o10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.o10 r0 = new ads_mobile_sdk.o10
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 2
            if (r2 == 0) goto L3c
            if (r2 == r3) goto L34
            if (r2 != r4) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r6)
            goto L81
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            ads_mobile_sdk.s00 r2 = r0.b
            ads_mobile_sdk.g30 r3 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r6)
            goto L51
        L3c:
            p005kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.s00 r2 = kotlin.s00.API_READ_ADVERTISING_ID
            ads_mobile_sdk.p02 r6 = r5.B
            r0.a = r5
            r0.b = r2
            r0.e = r3
            java.lang.Object r6 = r6.a(r0)
            if (r6 != r1) goto L50
            goto L80
        L50:
            r3 = r5
        L51:
            ads_mobile_sdk.u00 r6 = (kotlin.u00) r6
            ads_mobile_sdk.yh1$d r6 = r6.w()
            boolean r6 = r6.contains(r2)
            r2 = 0
            if (r6 == 0) goto L84
            ads_mobile_sdk.tf r6 = r3.j
            android.content.Context r3 = r3.c
            r0.a = r2
            r0.b = r2
            r0.e = r4
            r6.getClass()
            ads_mobile_sdk.q01 r6 = new ads_mobile_sdk.q01     // Catch: java.lang.Exception -> L75
            com.google.android.gms.ads.identifier.AdvertisingIdClient$Info r0 = com.google.android.gms.ads.identifier.AdvertisingIdClient.getAdvertisingIdInfo(r3)     // Catch: java.lang.Exception -> L75
            r6.<init>(r0)     // Catch: java.lang.Exception -> L75
            goto L7e
        L75:
            r6 = move-exception
            ads_mobile_sdk.j01 r0 = new ads_mobile_sdk.j01
            java.lang.String r3 = "Exception caught fetching Ad ID"
            r0.<init>(r6, r2, r3, r4)
            r6 = r0
        L7e:
            if (r6 != r1) goto L81
        L80:
            return r1
        L81:
            ads_mobile_sdk.v01 r6 = (kotlin.v01) r6
            return r6
        L84:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g30.C(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object D(Continuation continuation) {
        p10 p10Var;
        s00 s00Var;
        g30 g30Var;
        ContentResolver contentResolver;
        if (continuation instanceof p10) {
            p10Var = (p10) continuation;
            int i = p10Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                p10Var.e = i - Integer.MIN_VALUE;
            } else {
                p10Var = new p10(this, continuation);
            }
        } else {
            p10Var = new p10(this, continuation);
        }
        Object obj = p10Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = p10Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s00 s00Var2 = s00.API_READ_AMAZON_FIRE_AD_ID;
            p02 p02Var = this.B;
            p10Var.a = this;
            p10Var.b = s00Var2;
            p10Var.e = 1;
            Object objA = p02Var.a(p10Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            s00Var = s00Var2;
            obj = objA;
            g30Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            s00Var = p10Var.b;
            g30Var = p10Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        if (!((u00) obj).w().contains(s00Var) || (contentResolver = g30Var.c.getContentResolver()) == null) {
            return null;
        }
        Intrinsics.checkNotNull(contentResolver);
        return Settings.Secure.getString(contentResolver, TapjoyConstants.TJC_ADVERTISING_ID);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0088 A[Catch: all -> 0x0117, TryCatch #0 {all -> 0x0117, blocks: (B:28:0x0084, B:30:0x0088, B:32:0x00ce, B:33:0x00dd, B:35:0x00e1, B:37:0x00e7, B:39:0x00ed), top: B:52:0x0084 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00ce A[Catch: all -> 0x0117, TryCatch #0 {all -> 0x0117, blocks: (B:28:0x0084, B:30:0x0088, B:32:0x00ce, B:33:0x00dd, B:35:0x00e1, B:37:0x00e7, B:39:0x00ed), top: B:52:0x0084 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00dd A[Catch: all -> 0x0117, TryCatch #0 {all -> 0x0117, blocks: (B:28:0x0084, B:30:0x0088, B:32:0x00ce, B:33:0x00dd, B:35:0x00e1, B:37:0x00e7, B:39:0x00ed), top: B:52:0x0084 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00e1 A[Catch: all -> 0x0117, TryCatch #0 {all -> 0x0117, blocks: (B:28:0x0084, B:30:0x0088, B:32:0x00ce, B:33:0x00dd, B:35:0x00e1, B:37:0x00e7, B:39:0x00ed), top: B:52:0x0084 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x011f  */
    /* JADX WARN: Code duplicated, block: B:51:0x0130 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x012a, code lost:
    
        if (r0 == r3) goto L48;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object E(p005kotlin.coroutines.Continuation r17) {
        /*
            Method dump skipped, instruction units count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g30.E(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object F(Continuation continuation) {
        x10 x10Var;
        s00 s00Var;
        g30 g30Var;
        Object objA;
        if (continuation instanceof x10) {
            x10Var = (x10) continuation;
            int i = x10Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                x10Var.e = i - Integer.MIN_VALUE;
            } else {
                x10Var = new x10(this, continuation);
            }
        } else {
            x10Var = new x10(this, continuation);
        }
        Object obj = x10Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = x10Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s00 s00Var2 = s00.API_READ_FIREBASE_AD_EVENT_ID;
            p02 p02Var = this.B;
            x10Var.a = this;
            x10Var.b = s00Var2;
            x10Var.e = 1;
            Object objA2 = p02Var.a(x10Var);
            if (objA2 == coroutine_suspended) {
                return coroutine_suspended;
            }
            s00Var = s00Var2;
            obj = objA2;
            g30Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            s00Var = x10Var.b;
            g30Var = x10Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        if (!((u00) obj).w().contains(s00Var) || (objA = g30Var.m.a("generateEventId")) == null) {
            return null;
        }
        return objA.toString();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006d, code lost:
    
        if (r6 == r1) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object G(p005kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof kotlin.y10
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.y10 r0 = (kotlin.y10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.y10 r0 = new ads_mobile_sdk.y10
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r6)
            goto L70
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            ads_mobile_sdk.s00 r2 = r0.b
            ads_mobile_sdk.g30 r4 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r6)
            goto L51
        L3c:
            p005kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.s00 r2 = kotlin.s00.API_READ_FIREBASE_APP_ID
            ads_mobile_sdk.p02 r6 = r5.B
            r0.a = r5
            r0.b = r2
            r0.e = r4
            java.lang.Object r6 = r6.a(r0)
            if (r6 != r1) goto L50
            goto L6f
        L50:
            r4 = r5
        L51:
            ads_mobile_sdk.u00 r6 = (kotlin.u00) r6
            ads_mobile_sdk.yh1$d r6 = r6.w()
            boolean r6 = r6.contains(r2)
            r2 = 0
            if (r6 == 0) goto L73
            ads_mobile_sdk.ls0 r6 = r4.m
            r0.a = r2
            r0.b = r2
            r0.e = r3
            r6.getClass()
            java.lang.Object r6 = kotlin.ls0.a(r6, r0)
            if (r6 != r1) goto L70
        L6f:
            return r1
        L70:
            java.lang.String r6 = (java.lang.String) r6
            return r6
        L73:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g30.G(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object H(Continuation continuation) {
        z10 z10Var;
        s00 s00Var;
        g30 g30Var;
        Object objA;
        if (continuation instanceof z10) {
            z10Var = (z10) continuation;
            int i = z10Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                z10Var.e = i - Integer.MIN_VALUE;
            } else {
                z10Var = new z10(this, continuation);
            }
        } else {
            z10Var = new z10(this, continuation);
        }
        Object obj = z10Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = z10Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s00 s00Var2 = s00.API_READ_FIREBASE_APP_INSTANCE_ID;
            p02 p02Var = this.B;
            z10Var.a = this;
            z10Var.b = s00Var2;
            z10Var.e = 1;
            Object objA2 = p02Var.a(z10Var);
            if (objA2 == coroutine_suspended) {
                return coroutine_suspended;
            }
            s00Var = s00Var2;
            obj = objA2;
            g30Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            s00Var = z10Var.b;
            g30Var = z10Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        if (!((u00) obj).w().contains(s00Var) || (objA = g30Var.m.a(Constants.GET_APP_INSTANCE_ID)) == null) {
            return null;
        }
        return objA.toString();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object I(Continuation continuation) {
        a20 a20Var;
        s00 s00Var;
        g30 g30Var;
        u41 u41VarA;
        if (continuation instanceof a20) {
            a20Var = (a20) continuation;
            int i = a20Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                a20Var.e = i - Integer.MIN_VALUE;
            } else {
                a20Var = new a20(this, continuation);
            }
        } else {
            a20Var = new a20(this, continuation);
        }
        Object obj = a20Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = a20Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s00 s00Var2 = s00.API_PER_APP_ID_V1;
            p02 p02Var = this.B;
            a20Var.a = this;
            a20Var.b = s00Var2;
            a20Var.e = 1;
            Object objA = p02Var.a(a20Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            s00Var = s00Var2;
            obj = objA;
            g30Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            s00Var = a20Var.b;
            g30Var = a20Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        boolean zContains = ((u00) obj).w().contains(s00Var);
        kk1 kk1Var = null;
        Object[] objArr = 0;
        if (!zContains) {
            return null;
        }
        fi2 fi2Var = g30Var.l;
        fi2Var.getClass();
        try {
            Object value = fi2Var.c.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
            x00 x00Var = fi2Var.a.r;
            x00Var.getClass();
            Duration.Companion companion = Duration.INSTANCE;
            long jM4378getInWholeMillisecondsimpl = Duration.m4378getInWholeMillisecondsimpl(DurationKt.toDuration(182, DurationUnit.DAYS));
            Intrinsics.checkNotNullParameter("gads:signal:paid_v1_ttl", C3510b4.i.W);
            long jLongValue = ((Number) x00Var.a("gads:signal:paid_v1_ttl", Long.valueOf(jM4378getInWholeMillisecondsimpl), yr.d)).longValue();
            ii2 ii2Var = (ii2) ((hi2) value);
            ii2Var.getClass();
            synchronized (ii2.class) {
                u41VarA = ii2Var.a(jLongValue);
            }
            return new q01(u41VarA);
        } catch (Exception e) {
            xs3.a("Exception while getting PAIDV1", e, 4);
            return new j01(e, kk1Var, objArr == true ? 1 : 0, 6);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object J(Continuation continuation) {
        b20 b20Var;
        s00 s00Var;
        g30 g30Var;
        u41 u41Var;
        if (continuation instanceof b20) {
            b20Var = (b20) continuation;
            int i = b20Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                b20Var.e = i - Integer.MIN_VALUE;
            } else {
                b20Var = new b20(this, continuation);
            }
        } else {
            b20Var = new b20(this, continuation);
        }
        Object obj = b20Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = b20Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s00 s00Var2 = s00.API_PER_APP_ID_V2;
            p02 p02Var = this.B;
            b20Var.a = this;
            b20Var.b = s00Var2;
            b20Var.e = 1;
            Object objA = p02Var.a(b20Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            s00Var = s00Var2;
            obj = objA;
            g30Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            s00Var = b20Var.b;
            g30Var = b20Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        boolean zContains = ((u00) obj).w().contains(s00Var);
        kk1 kk1Var = null;
        Object[] objArr = 0;
        if (!zContains) {
            return null;
        }
        fi2 fi2Var = g30Var.l;
        fi2Var.getClass();
        try {
            Object value = fi2Var.d.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
            x00 x00Var = fi2Var.a.r;
            x00Var.getClass();
            Duration.Companion companion = Duration.INSTANCE;
            long jM4378getInWholeMillisecondsimpl = Duration.m4378getInWholeMillisecondsimpl(DurationKt.toDuration(390, DurationUnit.DAYS));
            Intrinsics.checkNotNullParameter("gads:signal:paid_v2_ttl", C3510b4.i.W);
            long jLongValue = ((Number) x00Var.a("gads:signal:paid_v2_ttl", Long.valueOf(jM4378getInWholeMillisecondsimpl), yr.d)).longValue();
            ki2 ki2Var = (ki2) ((ji2) value);
            ki2Var.getClass();
            synchronized (ki2.class) {
                u41Var = !ki2Var.g.a() ? new u41() : ki2Var.a(jLongValue);
            }
            Object value2 = fi2Var.e.getValue();
            Intrinsics.checkNotNullExpressionValue(value2, "getValue(...)");
            boolean zA = ((w41) ((v41) value2)).a();
            Object value3 = fi2Var.e.getValue();
            Intrinsics.checkNotNullExpressionValue(value3, "getValue(...)");
            boolean zB = ((w41) ((v41) value3)).b();
            Intrinsics.checkNotNull(u41Var);
            return new q01(new pj2(u41Var, zA, zB));
        } catch (Exception e) {
            xs3.a("Exception while getting PAIDV2", e, 4);
            return new j01(e, kk1Var, objArr == true ? 1 : 0, 6);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0207 A[Catch: all -> 0x0236, TryCatch #10 {all -> 0x0236, blocks: (B:98:0x0200, B:100:0x0207, B:102:0x020b, B:104:0x020f, B:105:0x0212, B:107:0x0216, B:109:0x021a, B:111:0x021e, B:112:0x021f, B:113:0x0224, B:114:0x0225, B:115:0x022c, B:116:0x022d, B:117:0x0234, B:118:0x0235), top: B:134:0x0200 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x020b A[Catch: all -> 0x0236, TryCatch #10 {all -> 0x0236, blocks: (B:98:0x0200, B:100:0x0207, B:102:0x020b, B:104:0x020f, B:105:0x0212, B:107:0x0216, B:109:0x021a, B:111:0x021e, B:112:0x021f, B:113:0x0224, B:114:0x0225, B:115:0x022c, B:116:0x022d, B:117:0x0234, B:118:0x0235), top: B:134:0x0200 }] */
    /* JADX WARN: Code duplicated, block: B:107:0x0216 A[Catch: all -> 0x0236, TryCatch #10 {all -> 0x0236, blocks: (B:98:0x0200, B:100:0x0207, B:102:0x020b, B:104:0x020f, B:105:0x0212, B:107:0x0216, B:109:0x021a, B:111:0x021e, B:112:0x021f, B:113:0x0224, B:114:0x0225, B:115:0x022c, B:116:0x022d, B:117:0x0234, B:118:0x0235), top: B:134:0x0200 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x021a A[Catch: all -> 0x0236, TryCatch #10 {all -> 0x0236, blocks: (B:98:0x0200, B:100:0x0207, B:102:0x020b, B:104:0x020f, B:105:0x0212, B:107:0x0216, B:109:0x021a, B:111:0x021e, B:112:0x021f, B:113:0x0224, B:114:0x0225, B:115:0x022c, B:116:0x022d, B:117:0x0234, B:118:0x0235), top: B:134:0x0200 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x021e A[Catch: all -> 0x0236, TryCatch #10 {all -> 0x0236, blocks: (B:98:0x0200, B:100:0x0207, B:102:0x020b, B:104:0x020f, B:105:0x0212, B:107:0x0216, B:109:0x021a, B:111:0x021e, B:112:0x021f, B:113:0x0224, B:114:0x0225, B:115:0x022c, B:116:0x022d, B:117:0x0234, B:118:0x0235), top: B:134:0x0200 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x021f A[Catch: all -> 0x0236, TryCatch #10 {all -> 0x0236, blocks: (B:98:0x0200, B:100:0x0207, B:102:0x020b, B:104:0x020f, B:105:0x0212, B:107:0x0216, B:109:0x021a, B:111:0x021e, B:112:0x021f, B:113:0x0224, B:114:0x0225, B:115:0x022c, B:116:0x022d, B:117:0x0234, B:118:0x0235), top: B:134:0x0200 }] */
    /* JADX WARN: Code duplicated, block: B:114:0x0225 A[Catch: all -> 0x0236, TryCatch #10 {all -> 0x0236, blocks: (B:98:0x0200, B:100:0x0207, B:102:0x020b, B:104:0x020f, B:105:0x0212, B:107:0x0216, B:109:0x021a, B:111:0x021e, B:112:0x021f, B:113:0x0224, B:114:0x0225, B:115:0x022c, B:116:0x022d, B:117:0x0234, B:118:0x0235), top: B:134:0x0200 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x022d A[Catch: all -> 0x0236, TryCatch #10 {all -> 0x0236, blocks: (B:98:0x0200, B:100:0x0207, B:102:0x020b, B:104:0x020f, B:105:0x0212, B:107:0x0216, B:109:0x021a, B:111:0x021e, B:112:0x021f, B:113:0x0224, B:114:0x0225, B:115:0x022c, B:116:0x022d, B:117:0x0234, B:118:0x0235), top: B:134:0x0200 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x0235 A[Catch: all -> 0x0236, TRY_LEAVE, TryCatch #10 {all -> 0x0236, blocks: (B:98:0x0200, B:100:0x0207, B:102:0x020b, B:104:0x020f, B:105:0x0212, B:107:0x0216, B:109:0x021a, B:111:0x021e, B:112:0x021f, B:113:0x0224, B:114:0x0225, B:115:0x022c, B:116:0x022d, B:117:0x0234, B:118:0x0235), top: B:134:0x0200 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0148  */
    /* JADX WARN: Code duplicated, block: B:65:0x0183  */
    /* JADX WARN: Code duplicated, block: B:66:0x0184  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:80:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:85:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:88:0x01e9 A[Catch: all -> 0x0046, TRY_LEAVE, TryCatch #1 {all -> 0x0046, blocks: (B:16:0x0041, B:86:0x01e3, B:88:0x01e9), top: B:126:0x0041 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v13, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v23, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v7, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r8v8 */
    public final Object K(Continuation continuation) {
        l20 l20Var;
        Closeable closeable;
        ?? r13;
        g30 g30Var;
        ?? r14;
        k30 k30Var;
        String str;
        g30 g30Var2;
        Mutex mutex;
        Closeable closeable2;
        rr3 rr3Var;
        String strX;
        Mutex mutex2;
        String str2;
        Closeable closeable3;
        ?? r15;
        k30 k30Var2;
        g30 g30Var3;
        p02 p02Var;
        u00 u00VarW;
        Closeable closeable4;
        ?? r2;
        Closeable closeable5;
        Mutex mutex3;
        Closeable closeable6;
        ?? r8;
        Mutex mutex4;
        Object obj;
        if (continuation instanceof l20) {
            l20Var = (l20) continuation;
            int i = l20Var.i;
            if ((i & Integer.MIN_VALUE) != 0) {
                l20Var.i = i - Integer.MIN_VALUE;
            } else {
                l20Var = new l20(this, continuation);
            }
        } else {
            l20Var = new l20(this, continuation);
        }
        Object obj2 = l20Var.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = l20Var.i;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj2);
            k30 k30Var3 = (k30) ((hr) this.r).k.get();
            if (k30Var3.w().v() <= 0) {
                return p005kotlin.Unit.INSTANCE;
            }
            s11 s11Var = s11.CUI_NAME_LOAD_CONSENT_FROM_DISK;
            WeakHashMap weakHashMap = hs3.a;
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                String strY = k30Var3.y();
                Mutex mutex5 = this.x;
                l20Var.a = this;
                l20Var.b = k30Var3;
                l20Var.c = rr3VarA;
                l20Var.d = rr3VarA;
                l20Var.e = strY;
                l20Var.f = mutex5;
                l20Var.i = 1;
                if (mutex5.lock(null, l20Var) != coroutine_suspended) {
                    k30Var = k30Var3;
                    rr3 rr3Var2 = rr3VarA;
                    str = strY;
                    g30Var2 = this;
                    mutex = mutex5;
                    closeable2 = rr3Var2;
                    rr3Var = rr3Var2;
                    ds1 ds1Var = ds1.a;
                    Object objFromJson = new Gson().fromJson(str, (Class<Object>) JsonObject.class);
                    Intrinsics.checkNotNullExpressionValue(objFromJson, "fromJson(...)");
                    g30Var2.y = ds1.b((JsonObject) objFromJson);
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    mutex.unlock(null);
                    strX = k30Var.x();
                    mutex2 = g30Var2.z;
                    l20Var.a = g30Var2;
                    l20Var.b = k30Var;
                    l20Var.c = rr3Var;
                    l20Var.d = closeable2;
                    l20Var.e = strX;
                    l20Var.f = mutex2;
                    l20Var.i = 2;
                    if (mutex2.lock(null, l20Var) != coroutine_suspended) {
                        str2 = strX;
                        closeable3 = closeable2;
                        r15 = rr3Var;
                        k30Var2 = k30Var;
                        g30Var3 = g30Var2;
                        Object objFromJson2 = new Gson().fromJson(str2, (Class<Object>) JsonObject.class);
                        Intrinsics.checkNotNullExpressionValue(objFromJson2, "fromJson(...)");
                        g30Var3.A = (JsonObject) objFromJson2;
                        p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                        mutex2.unlock(null);
                        p02Var = g30Var3.B;
                        u00VarW = k30Var2.w();
                        Intrinsics.checkNotNullExpressionValue(u00VarW, "getConsentAllowlist(...)");
                        l20Var.a = g30Var3;
                        l20Var.b = r15;
                        l20Var.c = closeable3;
                        l20Var.d = null;
                        l20Var.e = null;
                        l20Var.f = null;
                        l20Var.i = 3;
                        if (p02Var.a(u00VarW, l20Var) == coroutine_suspended) {
                            closeable4 = closeable3;
                            r2 = r15;
                            obj = p005kotlin.Unit.INSTANCE;
                            if (obj instanceof i01) {
                                xs3.a((i01) obj, false);
                            }
                            CloseableKt.closeFinally(closeable4, null);
                            return obj;
                        }
                    }
                }
            } catch (Exception e) {
                exception = e;
                g30Var = this;
                r14 = rr3VarA;
                closeable5 = rr3VarA;
                Intrinsics.checkNotNullParameter(exception, "exception");
                rr3 rr3VarA2 = hs3.a();
                rr3VarA2.e().m = false;
                rr3VarA2.a(exception);
                mutex3 = g30Var.x;
                l20Var.a = g30Var;
                l20Var.b = r14;
                l20Var.c = closeable5;
                l20Var.d = mutex3;
                l20Var.e = null;
                l20Var.f = null;
                l20Var.i = 4;
                if (mutex3.lock(null, l20Var) != coroutine_suspended) {
                    closeable6 = closeable5;
                    r8 = r14;
                    mutex4 = mutex3;
                    g30Var.y = T;
                    p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                    mutex4.unlock(null);
                    l20Var.a = r8;
                    l20Var.b = closeable6;
                    l20Var.c = null;
                    l20Var.d = null;
                    l20Var.i = 5;
                    if (g30Var.N(l20Var) != coroutine_suspended) {
                        closeable4 = closeable6;
                        r2 = r8;
                        obj = p005kotlin.Unit.INSTANCE;
                        if (obj instanceof i01) {
                            xs3.a((i01) obj, false);
                        }
                        CloseableKt.closeFinally(closeable4, null);
                        return obj;
                    }
                }
            } catch (Throwable th) {
                th = th;
                closeable = rr3VarA;
                r13 = closeable;
                r13.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    r13.a(th);
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
            return coroutine_suspended;
        }
        if (i2 == 1) {
            mutex = l20Var.f;
            str = l20Var.e;
            Closeable closeable7 = (Closeable) l20Var.d;
            rr3 rr3Var3 = (rr3) l20Var.c;
            k30Var = (k30) l20Var.b;
            g30Var2 = (g30) l20Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj2);
                closeable2 = closeable7;
                rr3Var = rr3Var3;
                try {
                    ds1 ds1Var2 = ds1.a;
                    Object objFromJson3 = new Gson().fromJson(str, (Class<Object>) JsonObject.class);
                    Intrinsics.checkNotNullExpressionValue(objFromJson3, "fromJson(...)");
                    g30Var2.y = ds1.b((JsonObject) objFromJson3);
                    p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                    mutex.unlock(null);
                    strX = k30Var.x();
                    mutex2 = g30Var2.z;
                    l20Var.a = g30Var2;
                    l20Var.b = k30Var;
                    l20Var.c = rr3Var;
                    l20Var.d = closeable2;
                    l20Var.e = strX;
                    l20Var.f = mutex2;
                    l20Var.i = 2;
                    if (mutex2.lock(null, l20Var) != coroutine_suspended) {
                        str2 = strX;
                        closeable3 = closeable2;
                        r15 = rr3Var;
                        k30Var2 = k30Var;
                        g30Var3 = g30Var2;
                        Object objFromJson4 = new Gson().fromJson(str2, (Class<Object>) JsonObject.class);
                        Intrinsics.checkNotNullExpressionValue(objFromJson4, "fromJson(...)");
                        g30Var3.A = (JsonObject) objFromJson4;
                        p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                        mutex2.unlock(null);
                        p02Var = g30Var3.B;
                        u00VarW = k30Var2.w();
                        Intrinsics.checkNotNullExpressionValue(u00VarW, "getConsentAllowlist(...)");
                        l20Var.a = g30Var3;
                        l20Var.b = r15;
                        l20Var.c = closeable3;
                        l20Var.d = null;
                        l20Var.e = null;
                        l20Var.f = null;
                        l20Var.i = 3;
                        if (p02Var.a(u00VarW, l20Var) == coroutine_suspended) {
                            closeable4 = closeable3;
                            r2 = r15;
                            obj = p005kotlin.Unit.INSTANCE;
                            if (obj instanceof i01) {
                                xs3.a((i01) obj, false);
                            }
                            CloseableKt.closeFinally(closeable4, null);
                            return obj;
                        }
                    }
                } catch (Throwable th2) {
                    mutex.unlock(null);
                    throw th2;
                }
            } catch (Exception e2) {
                exception = e2;
                g30Var = g30Var2;
                closeable5 = closeable7;
                r14 = rr3Var3;
                Intrinsics.checkNotNullParameter(exception, "exception");
                rr3 rr3VarA3 = hs3.a();
                rr3VarA3.e().m = false;
                rr3VarA3.a(exception);
                mutex3 = g30Var.x;
                l20Var.a = g30Var;
                l20Var.b = r14;
                l20Var.c = closeable5;
                l20Var.d = mutex3;
                l20Var.e = null;
                l20Var.f = null;
                l20Var.i = 4;
                if (mutex3.lock(null, l20Var) != coroutine_suspended) {
                    closeable6 = closeable5;
                    r8 = r14;
                    mutex4 = mutex3;
                    g30Var.y = T;
                    p005kotlin.Unit unit6 = p005kotlin.Unit.INSTANCE;
                    mutex4.unlock(null);
                    l20Var.a = r8;
                    l20Var.b = closeable6;
                    l20Var.c = null;
                    l20Var.d = null;
                    l20Var.i = 5;
                    if (g30Var.N(l20Var) != coroutine_suspended) {
                        closeable4 = closeable6;
                        r2 = r8;
                        obj = p005kotlin.Unit.INSTANCE;
                        if (obj instanceof i01) {
                            xs3.a((i01) obj, false);
                        }
                        CloseableKt.closeFinally(closeable4, null);
                        return obj;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                closeable = closeable7;
                r13 = rr3Var3;
                r13.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    r13.a(th);
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
            return coroutine_suspended;
        }
        try {
            if (i2 != 2) {
                if (i2 == 3) {
                    Closeable closeable8 = l20Var.c;
                    rr3 rr3Var4 = (rr3) l20Var.b;
                    g30Var = (g30) l20Var.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(obj2);
                        closeable4 = closeable8;
                        r2 = rr3Var4;
                    } catch (Exception e3) {
                        exception = e3;
                        r14 = rr3Var4;
                        closeable5 = closeable8;
                        Intrinsics.checkNotNullParameter(exception, "exception");
                        rr3 rr3VarA4 = hs3.a();
                        rr3VarA4.e().m = false;
                        rr3VarA4.a(exception);
                        mutex3 = g30Var.x;
                        l20Var.a = g30Var;
                        l20Var.b = r14;
                        l20Var.c = closeable5;
                        l20Var.d = mutex3;
                        l20Var.e = null;
                        l20Var.f = null;
                        l20Var.i = 4;
                        if (mutex3.lock(null, l20Var) != coroutine_suspended) {
                            closeable6 = closeable5;
                            r8 = r14;
                            mutex4 = mutex3;
                            g30Var.y = T;
                            p005kotlin.Unit unit7 = p005kotlin.Unit.INSTANCE;
                            mutex4.unlock(null);
                            l20Var.a = r8;
                            l20Var.b = closeable6;
                            l20Var.c = null;
                            l20Var.d = null;
                            l20Var.i = 5;
                            if (g30Var.N(l20Var) != coroutine_suspended) {
                                closeable4 = closeable6;
                                r2 = r8;
                            }
                        }
                        return coroutine_suspended;
                    } catch (Throwable th4) {
                        th = th4;
                        closeable4 = closeable8;
                        r2 = rr3Var4;
                        r13 = r2;
                        closeable = closeable4;
                        r13.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            r13.a(th);
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
                } else {
                    if (i2 == 4) {
                        mutex4 = (Mutex) l20Var.d;
                        closeable6 = l20Var.c;
                        r8 = (rr3) l20Var.b;
                        g30Var = (g30) l20Var.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(obj2);
                            closeable6 = closeable6;
                            r8 = r8;
                            try {
                                g30Var.y = T;
                                p005kotlin.Unit unit8 = p005kotlin.Unit.INSTANCE;
                                mutex4.unlock(null);
                                l20Var.a = r8;
                                l20Var.b = closeable6;
                                l20Var.c = null;
                                l20Var.d = null;
                                l20Var.i = 5;
                                if (g30Var.N(l20Var) != coroutine_suspended) {
                                    closeable4 = closeable6;
                                    r2 = r8;
                                }
                                return coroutine_suspended;
                            } catch (Throwable th5) {
                                mutex4.unlock(null);
                                throw th5;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            closeable = closeable6;
                            r13 = r8;
                            r13.b(th);
                            if (th instanceof v24) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                r13.a(th);
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
                    if (i2 != 5) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    closeable4 = (Closeable) l20Var.b;
                    r2 = (rr3) l20Var.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(obj2);
                        r2 = r2;
                        closeable4 = closeable4;
                    } catch (Throwable th7) {
                        th = th7;
                        r13 = r2;
                        closeable = closeable4;
                        try {
                            r13.b(th);
                            if (th instanceof v24) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                r13.a(th);
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
                        } catch (Throwable th8) {
                            try {
                                throw th8;
                            } catch (Throwable th9) {
                                CloseableKt.closeFinally(closeable, th8);
                                throw th9;
                            }
                        }
                    }
                }
                obj = p005kotlin.Unit.INSTANCE;
                if (obj instanceof i01) {
                    xs3.a((i01) obj, false);
                }
                CloseableKt.closeFinally(closeable4, null);
                return obj;
            }
            mutex2 = l20Var.f;
            str2 = l20Var.e;
            closeable = (Closeable) l20Var.d;
            r13 = (rr3) l20Var.c;
            k30Var2 = (k30) l20Var.b;
            g30Var3 = (g30) l20Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj2);
                closeable3 = closeable;
                r15 = r13;
                try {
                    Object objFromJson5 = new Gson().fromJson(str2, (Class<Object>) JsonObject.class);
                    Intrinsics.checkNotNullExpressionValue(objFromJson5, "fromJson(...)");
                    g30Var3.A = (JsonObject) objFromJson5;
                    p005kotlin.Unit unit9 = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    p02Var = g30Var3.B;
                    u00VarW = k30Var2.w();
                    Intrinsics.checkNotNullExpressionValue(u00VarW, "getConsentAllowlist(...)");
                    l20Var.a = g30Var3;
                    l20Var.b = r15;
                    l20Var.c = closeable3;
                    l20Var.d = null;
                    l20Var.e = null;
                    l20Var.f = null;
                    l20Var.i = 3;
                    if (p02Var.a(u00VarW, l20Var) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    closeable4 = closeable3;
                    r2 = r15;
                    obj = p005kotlin.Unit.INSTANCE;
                    if (obj instanceof i01) {
                        xs3.a((i01) obj, false);
                    }
                    CloseableKt.closeFinally(closeable4, null);
                    return obj;
                } catch (Throwable th10) {
                    mutex2.unlock(null);
                    throw th10;
                }
            } catch (Exception e4) {
                exception = e4;
                closeable5 = closeable;
                r14 = r13;
                g30Var = g30Var3;
                Intrinsics.checkNotNullParameter(exception, "exception");
                rr3 rr3VarA5 = hs3.a();
                rr3VarA5.e().m = false;
                rr3VarA5.a(exception);
                mutex3 = g30Var.x;
                l20Var.a = g30Var;
                l20Var.b = r14;
                l20Var.c = closeable5;
                l20Var.d = mutex3;
                l20Var.e = null;
                l20Var.f = null;
                l20Var.i = 4;
                if (mutex3.lock(null, l20Var) != coroutine_suspended) {
                    closeable6 = closeable5;
                    r8 = r14;
                    mutex4 = mutex3;
                    g30Var.y = T;
                    p005kotlin.Unit unit10 = p005kotlin.Unit.INSTANCE;
                    mutex4.unlock(null);
                    l20Var.a = r8;
                    l20Var.b = closeable6;
                    l20Var.c = null;
                    l20Var.d = null;
                    l20Var.i = 5;
                    if (g30Var.N(l20Var) != coroutine_suspended) {
                        closeable4 = closeable6;
                        r2 = r8;
                        obj = p005kotlin.Unit.INSTANCE;
                        if (obj instanceof i01) {
                            xs3.a((i01) obj, false);
                        }
                        CloseableKt.closeFinally(closeable4, null);
                        return obj;
                    }
                }
            } catch (Throwable th11) {
                th = th11;
                r13.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    r13.a(th);
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
            Intrinsics.checkNotNullParameter(exception, "exception");
            rr3 rr3VarA6 = hs3.a();
            rr3VarA6.e().m = false;
            rr3VarA6.a(exception);
            mutex3 = g30Var.x;
            l20Var.a = g30Var;
            l20Var.b = r14;
            l20Var.c = closeable5;
            l20Var.d = mutex3;
            l20Var.e = null;
            l20Var.f = null;
            l20Var.i = 4;
            if (mutex3.lock(null, l20Var) != coroutine_suspended) {
                closeable6 = closeable5;
                r8 = r14;
                mutex4 = mutex3;
                g30Var.y = T;
                p005kotlin.Unit unit11 = p005kotlin.Unit.INSTANCE;
                mutex4.unlock(null);
                l20Var.a = r8;
                l20Var.b = closeable6;
                l20Var.c = null;
                l20Var.d = null;
                l20Var.i = 5;
                if (g30Var.N(l20Var) != coroutine_suspended) {
                    closeable4 = closeable6;
                    r2 = r8;
                    obj = p005kotlin.Unit.INSTANCE;
                    if (obj instanceof i01) {
                        xs3.a((i01) obj, false);
                    }
                    CloseableKt.closeFinally(closeable4, null);
                    return obj;
                }
            }
            return coroutine_suspended;
        } catch (Throwable th12) {
            th = th12;
            closeable4 = closeable5;
            r2 = r14;
            r13 = r2;
            closeable = closeable4;
            r13.b(th);
            if (th instanceof v24) {
                throw th;
            }
            if (!(th instanceof TimeoutCancellationException)) {
                r13.a(th);
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object L(Continuation continuation) {
        m20 m20Var;
        s00 s00Var;
        g30 g30Var;
        ContentResolver contentResolver;
        if (continuation instanceof m20) {
            m20Var = (m20) continuation;
            int i = m20Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                m20Var.e = i - Integer.MIN_VALUE;
            } else {
                m20Var = new m20(this, continuation);
            }
        } else {
            m20Var = new m20(this, continuation);
        }
        Object obj = m20Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = m20Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s00 s00Var2 = s00.API_READ_AMAZON_FIRE_AD_ID;
            p02 p02Var = this.B;
            m20Var.a = this;
            m20Var.b = s00Var2;
            m20Var.e = 1;
            Object objA = p02Var.a(m20Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            s00Var = s00Var2;
            obj = objA;
            g30Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            s00Var = m20Var.b;
            g30Var = m20Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        if (!((u00) obj).w().contains(s00Var) || (contentResolver = g30Var.c.getContentResolver()) == null) {
            return null;
        }
        Intrinsics.checkNotNull(contentResolver);
        return Boxing.boxBoolean(Settings.Secure.getInt(contentResolver, "limit_ad_tracking", 0) == 1);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e0, code lost:
    
        if (r4.N(r0) == r1) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object M(p005kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instruction units count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g30.M(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0069, code lost:
    
        if (r7.a(r2, r0) == r1) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object N(p005kotlin.coroutines.Continuation r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof kotlin.t20
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.t20 r0 = (kotlin.t20) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.t20 r0 = new ads_mobile_sdk.t20
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L6c
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L35:
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            ads_mobile_sdk.g30 r4 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L50
        L3d:
            p005kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.Mutex r2 = r6.z
            r0.a = r6
            r0.b = r2
            r0.e = r4
            java.lang.Object r7 = r2.lock(r5, r0)
            if (r7 != r1) goto L4f
            goto L6b
        L4f:
            r4 = r6
        L50:
            com.google.gson.JsonObject r7 = kotlin.g30.R     // Catch: java.lang.Throwable -> L6f
            r4.A = r7     // Catch: java.lang.Throwable -> L6f
            kotlin.Unit r7 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L6f
            r2.unlock(r5)
            ads_mobile_sdk.p02 r7 = r4.B
            ads_mobile_sdk.u00 r2 = r4.i()
            r0.a = r5
            r0.b = r5
            r0.e = r3
            java.lang.Object r7 = r7.a(r2, r0)
            if (r7 != r1) goto L6c
        L6b:
            return r1
        L6c:
            kotlin.Unit r7 = p005kotlin.Unit.INSTANCE
            return r7
        L6f:
            r7 = move-exception
            r2.unlock(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g30.N(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x01b1, code lost:
    
        if (r14.a((kotlin.u00) r2, r0) == r1) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object O(p005kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g30.O(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(i01 i01Var, Continuation continuation) {
        j20 j20Var;
        if (continuation instanceof j20) {
            j20Var = (j20) continuation;
            int i = j20Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                j20Var.d = i - Integer.MIN_VALUE;
            } else {
                j20Var = new j20(this, continuation);
            }
        } else {
            j20Var = new j20(this, continuation);
        }
        Object obj = j20Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = j20Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            if ((i01Var instanceof j01) && (((j01) i01Var).c instanceof CancellationException)) {
                return p005kotlin.Unit.INSTANCE;
            }
            u00 u00VarI = i();
            j20Var.a = i01Var;
            j20Var.d = 1;
            if (b(u00VarI, j20Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i01Var = j20Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        xs3.a(i01Var, false);
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(u00 u00Var, Continuation continuation) {
        d10 d10Var;
        g30 g30Var;
        if (continuation instanceof d10) {
            d10Var = (d10) continuation;
            int i = d10Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                d10Var.e = i - Integer.MIN_VALUE;
            } else {
                d10Var = new d10(this, continuation);
            }
        } else {
            d10Var = new d10(this, continuation);
        }
        Object objA = d10Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = d10Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            p02 p02Var = this.B;
            d10Var.a = this;
            d10Var.b = u00Var;
            d10Var.e = 1;
            objA = p02Var.a(d10Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            g30Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            u00Var = d10Var.b;
            g30Var = d10Var.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        u00 u00Var2 = (u00) objA;
        if (u00Var2.v() > 0 && !Intrinsics.areEqual(u00Var2, u00Var)) {
            CoroutineScope coroutineScope = g30Var.d;
            e10 block = new e10(g30Var, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00da  */
    /* JADX WARN: Code duplicated, block: B:58:0x0106  */
    /* JADX WARN: Code duplicated, block: B:63:0x010e  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [ads_mobile_sdk.g30] */
    /* JADX WARN: Type inference failed for: r0v14, types: [ads_mobile_sdk.g30] */
    /* JADX WARN: Type inference failed for: r0v15, types: [ads_mobile_sdk.g30] */
    /* JADX WARN: Type inference failed for: r0v2, types: [ads_mobile_sdk.m10, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Object a(JsonElement jsonElement, Continuation continuation) {
        g30 m10Var;
        String asString;
        String str;
        String str2;
        String str3;
        Mutex mutex;
        Mutex mutex2;
        int i;
        Mutex mutex3;
        boolean z;
        if (continuation instanceof m10) {
            m10 m10Var2 = (m10) continuation;
            int i2 = m10Var2.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                m10Var2.g = i2 - Integer.MIN_VALUE;
                m10Var = m10Var2;
            } else {
                m10Var = new m10(this, continuation);
            }
        } else {
            m10Var = new m10(this, continuation);
        }
        Object obj = m10Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = m10Var.g;
        boolean z2 = true;
        try {
            if (i3 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                try {
                    JsonObject asJsonObject = jsonElement.getAsJsonObject();
                    asString = asJsonObject.get("consent_key").getAsString();
                    String asString2 = asJsonObject.get("consent_value_match").getAsString();
                    int asInt = asJsonObject.get("consent_value_type").getAsInt();
                    o30 o30Var = o30.STRING;
                    if (asInt == 0) {
                        Mutex mutex4 = this.x;
                        m10Var.a = this;
                        m10Var.b = asString;
                        m10Var.c = asString2;
                        m10Var.d = mutex4;
                        m10Var.g = 1;
                        if (mutex4.lock(null, m10Var) != coroutine_suspended) {
                            m10Var = this;
                            str3 = asString2;
                            mutex = mutex4;
                            boolean zAreEqual = Intrinsics.areEqual(m10Var.y.getString(asString), str3);
                            mutex.unlock(null);
                            z2 = zAreEqual;
                        }
                    } else if (asInt == 1) {
                        Mutex mutex5 = this.x;
                        m10Var.a = this;
                        m10Var.b = asString;
                        m10Var.c = asString2;
                        m10Var.d = mutex5;
                        m10Var.g = 2;
                        if (mutex5.lock(null, m10Var) != coroutine_suspended) {
                            m10Var = this;
                            str2 = asString2;
                            mutex2 = mutex5;
                            i = m10Var.y.getInt(asString, -1);
                            mutex2.unlock(null);
                            Intrinsics.checkNotNull(str2);
                            if (i == Integer.parseInt(str2)) {
                                z2 = false;
                            }
                        }
                    } else if (asInt == 2) {
                        Mutex mutex6 = this.x;
                        m10Var.a = this;
                        m10Var.b = asString;
                        m10Var.c = asString2;
                        m10Var.d = mutex6;
                        m10Var.g = 3;
                        if (mutex6.lock(null, m10Var) != coroutine_suspended) {
                            m10Var = this;
                            str = asString2;
                            mutex3 = mutex6;
                            z = m10Var.y.getBoolean(asString);
                            mutex3.unlock(null);
                            if (z == Boolean.parseBoolean(str)) {
                                z2 = false;
                            }
                        }
                    } else {
                        z2 = false;
                    }
                    return coroutine_suspended;
                } catch (Exception e) {
                    e = e;
                    m10Var = this;
                    ((as3) m10Var.f).a("Error while parsing JSON shared preference key match object", (Throwable) e);
                }
            } else if (i3 == 1) {
                Mutex mutex7 = m10Var.d;
                str3 = m10Var.c;
                asString = m10Var.b;
                g30 g30Var = m10Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                m10Var = g30Var;
                mutex = mutex7;
                try {
                    boolean zAreEqual2 = Intrinsics.areEqual(m10Var.y.getString(asString), str3);
                    mutex.unlock(null);
                    z2 = zAreEqual2;
                } catch (Throwable th) {
                    mutex.unlock(null);
                    throw th;
                }
            } else if (i3 == 2) {
                Mutex mutex8 = m10Var.d;
                str2 = m10Var.c;
                asString = m10Var.b;
                g30 g30Var2 = m10Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                m10Var = g30Var2;
                mutex2 = mutex8;
                try {
                    i = m10Var.y.getInt(asString, -1);
                    mutex2.unlock(null);
                    Intrinsics.checkNotNull(str2);
                    if (i == Integer.parseInt(str2)) {
                        z2 = false;
                    }
                } catch (Throwable th2) {
                    mutex2.unlock(null);
                    throw th2;
                }
            } else {
                if (i3 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                Mutex mutex9 = m10Var.d;
                str = m10Var.c;
                asString = m10Var.b;
                g30 g30Var3 = m10Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                m10Var = g30Var3;
                mutex3 = mutex9;
                try {
                    z = m10Var.y.getBoolean(asString);
                    mutex3.unlock(null);
                    if (z == Boolean.parseBoolean(str)) {
                        z2 = false;
                    }
                } catch (Throwable th3) {
                    mutex3.unlock(null);
                    throw th3;
                }
            }
        } catch (Exception e2) {
            e = e2;
            ((as3) m10Var.f).a("Error while parsing JSON shared preference key match object", (Throwable) e);
        }
        return Boxing.boxBoolean(z2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Exception exception, Continuation continuation) {
        i20 i20Var;
        if (continuation instanceof i20) {
            i20Var = (i20) continuation;
            int i = i20Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                i20Var.d = i - Integer.MIN_VALUE;
            } else {
                i20Var = new i20(this, continuation);
            }
        } else {
            i20Var = new i20(this, continuation);
        }
        Object obj = i20Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = i20Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            u00 u00VarI = i();
            i20Var.a = exception;
            i20Var.d = 1;
            if (b(u00VarI, i20Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            exception = i20Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        Intrinsics.checkNotNullParameter(exception, "exception");
        rr3 rr3VarA = hs3.a();
        rr3VarA.e().m = false;
        if (exception != null) {
            rr3VarA.a(exception);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    public final void a(Map preferences, JsonElement consentStringElement, Bundle bundle) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        Intrinsics.checkNotNullParameter(consentStringElement, "consentStringElement");
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        try {
            JsonObject asJsonObject = consentStringElement.getAsJsonObject();
            JsonElement jsonElement = asJsonObject.get("bk");
            String asString = jsonElement != null ? jsonElement.getAsString() : null;
            JsonElement jsonElement2 = asJsonObject.get("sk");
            String asString2 = jsonElement2 != null ? jsonElement2.getAsString() : null;
            JsonElement jsonElement3 = asJsonObject.get("type");
            Integer numValueOf = jsonElement3 != null ? Integer.valueOf(jsonElement3.getAsInt()) : null;
            Object obj = preferences.get(asString2);
            o30 o30Var = o30.STRING;
            if (numValueOf != null && numValueOf.intValue() == 0) {
                if (obj instanceof String) {
                    bundle.putString(asString, (String) obj);
                    return;
                }
                return;
            }
            if (numValueOf != null && numValueOf.intValue() == 1) {
                if (obj instanceof Integer) {
                    bundle.putInt(asString, ((Number) obj).intValue());
                    return;
                } else if (obj instanceof Long) {
                    bundle.putLong(asString, ((Number) obj).longValue());
                    return;
                } else {
                    if (obj instanceof Float) {
                        bundle.putFloat(asString, ((Number) obj).floatValue());
                        return;
                    }
                    return;
                }
            }
            if (numValueOf != null && numValueOf.intValue() == 2 && (obj instanceof Boolean)) {
                bundle.putBoolean(asString, ((Boolean) obj).booleanValue());
            }
        } catch (IllegalStateException e) {
            ((as3) this.f).a("JSON shared preference consent key object parsing failure", (Throwable) e);
        } catch (NumberFormatException e2) {
            ((as3) this.f).a("JSON shared preference consent key object parsing failure", (Throwable) e2);
        } catch (UnsupportedOperationException e3) {
            ((as3) this.f).a("JSON shared preference consent key object parsing failure", (Throwable) e3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0073, code lost:
    
        if (r13.A(r0) == r1) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0093, code lost:
    
        if (b(r13, true, false, r0) == r1) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(kotlin.u00 r13, p005kotlin.coroutines.Continuation r14) {
        /*
            r12 = this;
            boolean r0 = r14 instanceof kotlin.y20
            if (r0 == 0) goto L13
            r0 = r14
            ads_mobile_sdk.y20 r0 = (kotlin.y20) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.y20 r0 = new ads_mobile_sdk.y20
            r0.<init>(r12, r14)
        L18:
            java.lang.Object r14 = r0.b
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 0
            r4 = 4
            r5 = 3
            r6 = 2
            r7 = 1
            if (r2 == 0) goto L4b
            if (r2 == r7) goto L45
            if (r2 == r6) goto L41
            if (r2 == r5) goto L3b
            if (r2 != r4) goto L33
            p005kotlin.ResultKt.throwOnFailure(r14)
            goto L76
        L33:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L3b:
            ads_mobile_sdk.g30 r13 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r14)
            goto L6b
        L41:
            p005kotlin.ResultKt.throwOnFailure(r14)
            goto L96
        L45:
            ads_mobile_sdk.g30 r13 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r14)
            goto L87
        L4b:
            p005kotlin.ResultKt.throwOnFailure(r14)
            ads_mobile_sdk.ex0 r14 = r12.h
            boolean r2 = r14.w
            if (r2 != 0) goto L79
            double r8 = r14.x
            r10 = 0
            int r14 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r14 <= 0) goto L5d
            goto L79
        L5d:
            ads_mobile_sdk.p02 r14 = r12.B
            r0.a = r12
            r0.d = r5
            java.lang.Object r13 = r14.a(r13, r0)
            if (r13 != r1) goto L6a
            goto L95
        L6a:
            r13 = r12
        L6b:
            r0.a = r3
            r0.d = r4
            java.lang.Object r13 = r13.A(r0)
            if (r13 != r1) goto L76
            goto L95
        L76:
            kotlin.Unit r13 = p005kotlin.Unit.INSTANCE
            return r13
        L79:
            ads_mobile_sdk.p02 r14 = r12.B
            r0.a = r12
            r0.d = r7
            java.lang.Object r13 = r14.a(r13, r0)
            if (r13 != r1) goto L86
            goto L95
        L86:
            r13 = r12
        L87:
            r0.a = r3
            r0.d = r6
            r13.getClass()
            r14 = 0
            java.lang.Object r13 = b(r13, r7, r14, r0)
            if (r13 != r1) goto L96
        L95:
            return r1
        L96:
            kotlin.Unit r13 = p005kotlin.Unit.INSTANCE
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g30.b(ads_mobile_sdk.u00, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:110:0x0230  */
    /* JADX WARN: Code duplicated, block: B:129:0x026f A[Catch: all -> 0x029e, TryCatch #21 {all -> 0x029e, blocks: (B:127:0x0268, B:129:0x026f, B:131:0x0273, B:133:0x0277, B:134:0x027a, B:136:0x027e, B:138:0x0282, B:140:0x0286, B:141:0x0287, B:142:0x028c, B:143:0x028d, B:144:0x0294, B:145:0x0295, B:146:0x029c, B:147:0x029d), top: B:269:0x0268 }] */
    /* JADX WARN: Code duplicated, block: B:131:0x0273 A[Catch: all -> 0x029e, TryCatch #21 {all -> 0x029e, blocks: (B:127:0x0268, B:129:0x026f, B:131:0x0273, B:133:0x0277, B:134:0x027a, B:136:0x027e, B:138:0x0282, B:140:0x0286, B:141:0x0287, B:142:0x028c, B:143:0x028d, B:144:0x0294, B:145:0x0295, B:146:0x029c, B:147:0x029d), top: B:269:0x0268 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x027e A[Catch: all -> 0x029e, TryCatch #21 {all -> 0x029e, blocks: (B:127:0x0268, B:129:0x026f, B:131:0x0273, B:133:0x0277, B:134:0x027a, B:136:0x027e, B:138:0x0282, B:140:0x0286, B:141:0x0287, B:142:0x028c, B:143:0x028d, B:144:0x0294, B:145:0x0295, B:146:0x029c, B:147:0x029d), top: B:269:0x0268 }] */
    /* JADX WARN: Code duplicated, block: B:138:0x0282 A[Catch: all -> 0x029e, TryCatch #21 {all -> 0x029e, blocks: (B:127:0x0268, B:129:0x026f, B:131:0x0273, B:133:0x0277, B:134:0x027a, B:136:0x027e, B:138:0x0282, B:140:0x0286, B:141:0x0287, B:142:0x028c, B:143:0x028d, B:144:0x0294, B:145:0x0295, B:146:0x029c, B:147:0x029d), top: B:269:0x0268 }] */
    /* JADX WARN: Code duplicated, block: B:140:0x0286 A[Catch: all -> 0x029e, TryCatch #21 {all -> 0x029e, blocks: (B:127:0x0268, B:129:0x026f, B:131:0x0273, B:133:0x0277, B:134:0x027a, B:136:0x027e, B:138:0x0282, B:140:0x0286, B:141:0x0287, B:142:0x028c, B:143:0x028d, B:144:0x0294, B:145:0x0295, B:146:0x029c, B:147:0x029d), top: B:269:0x0268 }] */
    /* JADX WARN: Code duplicated, block: B:141:0x0287 A[Catch: all -> 0x029e, TryCatch #21 {all -> 0x029e, blocks: (B:127:0x0268, B:129:0x026f, B:131:0x0273, B:133:0x0277, B:134:0x027a, B:136:0x027e, B:138:0x0282, B:140:0x0286, B:141:0x0287, B:142:0x028c, B:143:0x028d, B:144:0x0294, B:145:0x0295, B:146:0x029c, B:147:0x029d), top: B:269:0x0268 }] */
    /* JADX WARN: Code duplicated, block: B:143:0x028d A[Catch: all -> 0x029e, TryCatch #21 {all -> 0x029e, blocks: (B:127:0x0268, B:129:0x026f, B:131:0x0273, B:133:0x0277, B:134:0x027a, B:136:0x027e, B:138:0x0282, B:140:0x0286, B:141:0x0287, B:142:0x028c, B:143:0x028d, B:144:0x0294, B:145:0x0295, B:146:0x029c, B:147:0x029d), top: B:269:0x0268 }] */
    /* JADX WARN: Code duplicated, block: B:145:0x0295 A[Catch: all -> 0x029e, TryCatch #21 {all -> 0x029e, blocks: (B:127:0x0268, B:129:0x026f, B:131:0x0273, B:133:0x0277, B:134:0x027a, B:136:0x027e, B:138:0x0282, B:140:0x0286, B:141:0x0287, B:142:0x028c, B:143:0x028d, B:144:0x0294, B:145:0x0295, B:146:0x029c, B:147:0x029d), top: B:269:0x0268 }] */
    /* JADX WARN: Code duplicated, block: B:147:0x029d A[Catch: all -> 0x029e, TRY_LEAVE, TryCatch #21 {all -> 0x029e, blocks: (B:127:0x0268, B:129:0x026f, B:131:0x0273, B:133:0x0277, B:134:0x027a, B:136:0x027e, B:138:0x0282, B:140:0x0286, B:141:0x0287, B:142:0x028c, B:143:0x028d, B:144:0x0294, B:145:0x0295, B:146:0x029c, B:147:0x029d), top: B:269:0x0268 }] */
    /* JADX WARN: Code duplicated, block: B:161:0x02d6 A[Catch: all -> 0x00b9, TRY_LEAVE, TryCatch #17 {all -> 0x00b9, blocks: (B:36:0x00ae, B:159:0x02d0, B:161:0x02d6, B:168:0x02f4, B:169:0x02fd, B:170:0x030b, B:201:0x0385), top: B:263:0x00ae, inners: #9 }] */
    /* JADX WARN: Code duplicated, block: B:164:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:168:0x02f4 A[Catch: all -> 0x00b9, TRY_ENTER, TRY_LEAVE, TryCatch #17 {all -> 0x00b9, blocks: (B:36:0x00ae, B:159:0x02d0, B:161:0x02d6, B:168:0x02f4, B:169:0x02fd, B:170:0x030b, B:201:0x0385), top: B:263:0x00ae, inners: #9 }] */
    /* JADX WARN: Code duplicated, block: B:173:0x0324  */
    /* JADX WARN: Code duplicated, block: B:177:0x033b  */
    /* JADX WARN: Code duplicated, block: B:181:0x034b A[Catch: all -> 0x009d, TRY_LEAVE, TryCatch #19 {all -> 0x009d, blocks: (B:13:0x0049, B:179:0x0344, B:181:0x034b, B:185:0x0357, B:186:0x035a, B:17:0x005c, B:195:0x0377, B:27:0x008a, B:205:0x039a, B:31:0x0098, B:165:0x02ed, B:178:0x0340), top: B:266:0x0030, inners: #12 }] */
    /* JADX WARN: Code duplicated, block: B:194:0x0373  */
    /* JADX WARN: Code duplicated, block: B:213:0x03b0 A[Catch: all -> 0x03df, TryCatch #23 {all -> 0x03df, blocks: (B:211:0x03a9, B:213:0x03b0, B:215:0x03b4, B:217:0x03b8, B:218:0x03bb, B:220:0x03bf, B:222:0x03c3, B:224:0x03c7, B:225:0x03c8, B:226:0x03cd, B:227:0x03ce, B:228:0x03d5, B:229:0x03d6, B:230:0x03dd, B:231:0x03de), top: B:270:0x03a9 }] */
    /* JADX WARN: Code duplicated, block: B:215:0x03b4 A[Catch: all -> 0x03df, TryCatch #23 {all -> 0x03df, blocks: (B:211:0x03a9, B:213:0x03b0, B:215:0x03b4, B:217:0x03b8, B:218:0x03bb, B:220:0x03bf, B:222:0x03c3, B:224:0x03c7, B:225:0x03c8, B:226:0x03cd, B:227:0x03ce, B:228:0x03d5, B:229:0x03d6, B:230:0x03dd, B:231:0x03de), top: B:270:0x03a9 }] */
    /* JADX WARN: Code duplicated, block: B:220:0x03bf A[Catch: all -> 0x03df, TryCatch #23 {all -> 0x03df, blocks: (B:211:0x03a9, B:213:0x03b0, B:215:0x03b4, B:217:0x03b8, B:218:0x03bb, B:220:0x03bf, B:222:0x03c3, B:224:0x03c7, B:225:0x03c8, B:226:0x03cd, B:227:0x03ce, B:228:0x03d5, B:229:0x03d6, B:230:0x03dd, B:231:0x03de), top: B:270:0x03a9 }] */
    /* JADX WARN: Code duplicated, block: B:222:0x03c3 A[Catch: all -> 0x03df, TryCatch #23 {all -> 0x03df, blocks: (B:211:0x03a9, B:213:0x03b0, B:215:0x03b4, B:217:0x03b8, B:218:0x03bb, B:220:0x03bf, B:222:0x03c3, B:224:0x03c7, B:225:0x03c8, B:226:0x03cd, B:227:0x03ce, B:228:0x03d5, B:229:0x03d6, B:230:0x03dd, B:231:0x03de), top: B:270:0x03a9 }] */
    /* JADX WARN: Code duplicated, block: B:224:0x03c7 A[Catch: all -> 0x03df, TryCatch #23 {all -> 0x03df, blocks: (B:211:0x03a9, B:213:0x03b0, B:215:0x03b4, B:217:0x03b8, B:218:0x03bb, B:220:0x03bf, B:222:0x03c3, B:224:0x03c7, B:225:0x03c8, B:226:0x03cd, B:227:0x03ce, B:228:0x03d5, B:229:0x03d6, B:230:0x03dd, B:231:0x03de), top: B:270:0x03a9 }] */
    /* JADX WARN: Code duplicated, block: B:225:0x03c8 A[Catch: all -> 0x03df, TryCatch #23 {all -> 0x03df, blocks: (B:211:0x03a9, B:213:0x03b0, B:215:0x03b4, B:217:0x03b8, B:218:0x03bb, B:220:0x03bf, B:222:0x03c3, B:224:0x03c7, B:225:0x03c8, B:226:0x03cd, B:227:0x03ce, B:228:0x03d5, B:229:0x03d6, B:230:0x03dd, B:231:0x03de), top: B:270:0x03a9 }] */
    /* JADX WARN: Code duplicated, block: B:227:0x03ce A[Catch: all -> 0x03df, TryCatch #23 {all -> 0x03df, blocks: (B:211:0x03a9, B:213:0x03b0, B:215:0x03b4, B:217:0x03b8, B:218:0x03bb, B:220:0x03bf, B:222:0x03c3, B:224:0x03c7, B:225:0x03c8, B:226:0x03cd, B:227:0x03ce, B:228:0x03d5, B:229:0x03d6, B:230:0x03dd, B:231:0x03de), top: B:270:0x03a9 }] */
    /* JADX WARN: Code duplicated, block: B:229:0x03d6 A[Catch: all -> 0x03df, TryCatch #23 {all -> 0x03df, blocks: (B:211:0x03a9, B:213:0x03b0, B:215:0x03b4, B:217:0x03b8, B:218:0x03bb, B:220:0x03bf, B:222:0x03c3, B:224:0x03c7, B:225:0x03c8, B:226:0x03cd, B:227:0x03ce, B:228:0x03d5, B:229:0x03d6, B:230:0x03dd, B:231:0x03de), top: B:270:0x03a9 }] */
    /* JADX WARN: Code duplicated, block: B:231:0x03de A[Catch: all -> 0x03df, TRY_LEAVE, TryCatch #23 {all -> 0x03df, blocks: (B:211:0x03a9, B:213:0x03b0, B:215:0x03b4, B:217:0x03b8, B:218:0x03bb, B:220:0x03bf, B:222:0x03c3, B:224:0x03c7, B:225:0x03c8, B:226:0x03cd, B:227:0x03ce, B:228:0x03d5, B:229:0x03d6, B:230:0x03dd, B:231:0x03de), top: B:270:0x03a9 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0195 A[Catch: all -> 0x0136, TRY_LEAVE, TryCatch #11 {all -> 0x0136, blocks: (B:64:0x012f, B:75:0x018f, B:77:0x0195, B:84:0x01b2, B:85:0x01bb, B:86:0x01c9, B:117:0x0242), top: B:256:0x012f, inners: #13 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code duplicated, block: B:80:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:84:0x01b2 A[Catch: all -> 0x0136, TRY_ENTER, TRY_LEAVE, TryCatch #11 {all -> 0x0136, blocks: (B:64:0x012f, B:75:0x018f, B:77:0x0195, B:84:0x01b2, B:85:0x01bb, B:86:0x01c9, B:117:0x0242), top: B:256:0x012f, inners: #13 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:93:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:97:0x0208 A[Catch: all -> 0x011e, TRY_LEAVE, TryCatch #22 {all -> 0x011e, blocks: (B:41:0x00ca, B:95:0x0201, B:97:0x0208, B:101:0x0214, B:102:0x0217, B:45:0x00dd, B:111:0x0234, B:55:0x010b, B:121:0x0259, B:59:0x0119, B:81:0x01ab, B:94:0x01fd), top: B:266:0x0030, inners: #10 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v12, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v16 */
    /* JADX WARN: Type inference failed for: r14v17, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v19, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r14v2, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r14v20 */
    /* JADX WARN: Type inference failed for: r14v21, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r14v22 */
    /* JADX WARN: Type inference failed for: r14v23 */
    /* JADX WARN: Type inference failed for: r14v24 */
    /* JADX WARN: Type inference failed for: r14v25 */
    /* JADX WARN: Type inference failed for: r14v26 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v17, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v24, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v30, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v32, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v37 */
    /* JADX WARN: Type inference failed for: r4v38 */
    /* JADX WARN: Type inference failed for: r4v39 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v40 */
    /* JADX WARN: Type inference failed for: r4v41 */
    /* JADX WARN: Type inference failed for: r4v42 */
    /* JADX WARN: Type inference failed for: r4v43 */
    /* JADX WARN: Type inference failed for: r4v44 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v0, types: [int] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10, types: [ads_mobile_sdk.rr3, java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v11, types: [ads_mobile_sdk.tu2, java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v17, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v22, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v28, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r5v35 */
    /* JADX WARN: Type inference failed for: r5v36, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v37 */
    /* JADX WARN: Type inference failed for: r5v38 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v40, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v45, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v46 */
    /* JADX WARN: Type inference failed for: r5v47, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v48 */
    /* JADX WARN: Type inference failed for: r5v49 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v51, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v52 */
    /* JADX WARN: Type inference failed for: r5v55 */
    /* JADX WARN: Type inference failed for: r5v58 */
    /* JADX WARN: Type inference failed for: r5v59 */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v60 */
    /* JADX WARN: Type inference failed for: r5v61 */
    /* JADX WARN: Type inference failed for: r5v62 */
    /* JADX WARN: Type inference failed for: r5v63 */
    /* JADX WARN: Type inference failed for: r5v64 */
    /* JADX WARN: Type inference failed for: r5v65 */
    /* JADX WARN: Type inference failed for: r5v66 */
    /* JADX WARN: Type inference failed for: r5v67 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v18, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v21, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v8, types: [ads_mobile_sdk.rr3] */
    public final Object b(Bundle bundle, Continuation continuation) {
        b30 b30Var;
        ?? r14;
        ?? A;
        ?? r15;
        ?? A2;
        String str;
        String str2;
        Object objA;
        g30 g30Var;
        g30 g30Var2;
        v01 v01Var;
        ?? r4;
        String str3;
        g30 g30Var3;
        ?? r6;
        u00 u00VarA;
        ?? r5;
        ?? r7;
        ?? r16;
        ?? r8;
        Mutex mutex;
        Object obj;
        g30 g30Var4;
        Mutex mutex2;
        Object obj2;
        v01 v01Var2;
        ?? r9;
        g30 g30Var5;
        ?? r10;
        u00 u00VarA2;
        ?? r11;
        ?? r12;
        ?? r17;
        ?? r13;
        Mutex mutex3;
        Object obj3;
        g30 g30Var6;
        Mutex mutex4;
        Object obj4;
        if (continuation instanceof b30) {
            b30Var = (b30) continuation;
            int i = b30Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                b30Var.g = i - Integer.MIN_VALUE;
            } else {
                b30Var = new b30(this, continuation);
            }
        } else {
            b30Var = new b30(this, continuation);
        }
        Object objA2 = b30Var.e;
        ?? coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r18 = b30Var.g;
        try {
            try {
                switch (r18) {
                    case 0:
                        p005kotlin.ResultKt.throwOnFailure(objA2);
                        g83 g83Var = this.o;
                        s11 s11Var = s11.CUI_NAME_CONSENT_ALLOWLIST_UPDATE;
                        List listEmptyList = CollectionsKt.emptyList();
                        str = "The allowlist is not a valid encoded string.";
                        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                        if (hs3.b().a == null) {
                            A = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                            try {
                                Object obj5 = this.e;
                                String json = this.g.toJson(bundle);
                                Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
                                b30Var.a = this;
                                b30Var.b = A;
                                b30Var.c = A;
                                b30Var.g = 1;
                                objA2 = ((rp0) obj5).a("google.afma.request.updateConsentAllowlist", json, b30Var);
                                if (objA2 != coroutine_suspended) {
                                    g30Var2 = this;
                                    r14 = A;
                                    A = A;
                                    v01Var = (v01) objA2;
                                    if (v01Var instanceof i01) {
                                        b30Var.a = r14;
                                        b30Var.b = A;
                                        b30Var.c = null;
                                        b30Var.g = 2;
                                        if (g30Var2.a((i01) v01Var, b30Var) != coroutine_suspended) {
                                            r5 = A;
                                            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                                            CloseableKt.closeFinally(r5, null);
                                            return unit;
                                        }
                                    } else {
                                        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                        JsonObject jsonObject = (JsonObject) ((q01) v01Var).b;
                                        try {
                                            BaseEncoding baseEncodingBase64Url = BaseEncoding.base64Url();
                                            ds1 ds1Var = ds1.a;
                                            try {
                                                u00VarA = u00.a(baseEncodingBase64Url.decode(ds1.a(jsonObject, "allowlist")));
                                                Intrinsics.checkNotNullExpressionValue(u00VarA, "parseFrom(...)");
                                                b30Var.a = g30Var2;
                                                b30Var.b = r14;
                                                b30Var.c = A;
                                                b30Var.g = 4;
                                                if (g30Var2.b(u00VarA, b30Var) != coroutine_suspended) {
                                                    g30Var3 = g30Var2;
                                                    r8 = A;
                                                    r16 = r14;
                                                    try {
                                                        mutex = g30Var3.G;
                                                        b30Var.a = g30Var3;
                                                        b30Var.b = r16;
                                                        b30Var.c = r8;
                                                        b30Var.d = mutex;
                                                        b30Var.g = 6;
                                                        obj = null;
                                                        if (mutex.lock(null, b30Var) != coroutine_suspended) {
                                                            coroutine_suspended = r8;
                                                            g30Var4 = g30Var3;
                                                            r18 = r16;
                                                            mutex2 = mutex;
                                                            try {
                                                                g30Var4.I = false;
                                                                obj2 = p005kotlin.Unit.INSTANCE;
                                                                mutex2.unlock(obj);
                                                                if (obj2 instanceof i01) {
                                                                    xs3.a((i01) obj2, false);
                                                                }
                                                                CloseableKt.closeFinally(coroutine_suspended, null);
                                                                return obj2;
                                                            } catch (Throwable th) {
                                                                mutex2.unlock(obj);
                                                                throw th;
                                                            }
                                                        }
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                        coroutine_suspended = r8;
                                                        r18 = r16;
                                                        r14 = r18;
                                                        A = coroutine_suspended;
                                                        try {
                                                            r14.b(th);
                                                            if (!(th instanceof v24)) {
                                                                throw th;
                                                            }
                                                            if (!(th instanceof TimeoutCancellationException)) {
                                                                r14.a(th);
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
                                                        } catch (Throwable th3) {
                                                            try {
                                                                throw th3;
                                                            } catch (Throwable th4) {
                                                                CloseableKt.closeFinally(A, th3);
                                                                throw th4;
                                                            }
                                                        }
                                                    }
                                                }
                                            } catch (np1 e) {
                                                e = e;
                                                g30Var3 = g30Var2;
                                                r6 = r14;
                                                try {
                                                    b30Var.a = r6;
                                                    b30Var.b = A;
                                                    b30Var.c = e;
                                                    b30Var.g = 5;
                                                    if (g30Var3.a(e, b30Var) != coroutine_suspended) {
                                                        r7 = A;
                                                        xs3.a("Allowlist proto deserialization failed.", e, 4);
                                                        p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                                                        CloseableKt.closeFinally(r7, null);
                                                        return unit2;
                                                    }
                                                } catch (Throwable th5) {
                                                    th = th5;
                                                    r14 = r6;
                                                    r14.b(th);
                                                    if (!(th instanceof v24)) {
                                                        throw th;
                                                    }
                                                    if (!(th instanceof TimeoutCancellationException)) {
                                                        r14.a(th);
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
                                            }
                                        } catch (IllegalArgumentException e2) {
                                            e = e2;
                                            b30Var.a = r14;
                                            b30Var.b = A;
                                            b30Var.c = e;
                                            b30Var.g = 3;
                                            if (g30Var2.a(e, b30Var) != coroutine_suspended) {
                                                r4 = A;
                                                str3 = str;
                                                xs3.a(str3, e, 4);
                                                p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                                                CloseableKt.closeFinally(r4, null);
                                                return unit3;
                                            }
                                        }
                                    }
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                r14 = A;
                                r14.b(th);
                                if (!(th instanceof v24)) {
                                    throw th;
                                }
                                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                    r14.a(th);
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
                            str2 = str;
                            A2 = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                            try {
                                Object obj6 = this.e;
                                String json2 = this.g.toJson(bundle);
                                Intrinsics.checkNotNullExpressionValue(json2, "toJson(...)");
                                b30Var.a = this;
                                b30Var.b = A2;
                                b30Var.c = A2;
                                b30Var.g = 7;
                                objA = ((rp0) obj6).a("google.afma.request.updateConsentAllowlist", json2, b30Var);
                                if (objA != coroutine_suspended) {
                                    g30Var = this;
                                    r15 = A2;
                                    A2 = A2;
                                    v01Var2 = (v01) objA;
                                    if (v01Var2 instanceof i01) {
                                        b30Var.a = r15;
                                        b30Var.b = A2;
                                        b30Var.c = null;
                                        b30Var.g = 8;
                                        if (g30Var.a((i01) v01Var2, b30Var) != coroutine_suspended) {
                                            r11 = A2;
                                            p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                                            CloseableKt.closeFinally(r11, null);
                                            return unit4;
                                        }
                                    } else {
                                        Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                        JsonObject jsonObject2 = (JsonObject) ((q01) v01Var2).b;
                                        try {
                                            BaseEncoding baseEncodingBase64Url2 = BaseEncoding.base64Url();
                                            ds1 ds1Var2 = ds1.a;
                                            try {
                                                u00VarA2 = u00.a(baseEncodingBase64Url2.decode(ds1.a(jsonObject2, "allowlist")));
                                                Intrinsics.checkNotNullExpressionValue(u00VarA2, "parseFrom(...)");
                                                b30Var.a = g30Var;
                                                b30Var.b = r15;
                                                b30Var.c = A2;
                                                b30Var.g = 10;
                                                if (g30Var.b(u00VarA2, b30Var) != coroutine_suspended) {
                                                    g30Var5 = g30Var;
                                                    r13 = A2;
                                                    r17 = r15;
                                                    try {
                                                        mutex3 = g30Var5.G;
                                                        b30Var.a = g30Var5;
                                                        b30Var.b = r17;
                                                        b30Var.c = r13;
                                                        b30Var.d = mutex3;
                                                        b30Var.g = 12;
                                                        obj3 = null;
                                                        if (mutex3.lock(null, b30Var) != coroutine_suspended) {
                                                            coroutine_suspended = r13;
                                                            g30Var6 = g30Var5;
                                                            r18 = r17;
                                                            mutex4 = mutex3;
                                                            try {
                                                                g30Var6.I = false;
                                                                obj4 = p005kotlin.Unit.INSTANCE;
                                                                mutex4.unlock(obj3);
                                                                if (obj4 instanceof i01) {
                                                                    xs3.a((i01) obj4, false);
                                                                }
                                                                CloseableKt.closeFinally(coroutine_suspended, null);
                                                                return obj4;
                                                            } catch (Throwable th7) {
                                                                mutex4.unlock(obj3);
                                                                throw th7;
                                                            }
                                                        }
                                                    } catch (Throwable th8) {
                                                        th = th8;
                                                        coroutine_suspended = r13;
                                                        r18 = r17;
                                                        r15 = r18;
                                                        A2 = coroutine_suspended;
                                                        try {
                                                            r15.b(th);
                                                            if (!(th instanceof v24)) {
                                                                throw th;
                                                            }
                                                            if (!(th instanceof TimeoutCancellationException)) {
                                                                r15.a(th);
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
                                                        } catch (Throwable th9) {
                                                            try {
                                                                throw th9;
                                                            } catch (Throwable th10) {
                                                                CloseableKt.closeFinally(A2, th9);
                                                                throw th10;
                                                            }
                                                        }
                                                    }
                                                }
                                            } catch (np1 e3) {
                                                e = e3;
                                                g30Var5 = g30Var;
                                                r10 = r15;
                                                try {
                                                    b30Var.a = r10;
                                                    b30Var.b = A2;
                                                    b30Var.c = e;
                                                    b30Var.g = 11;
                                                    if (g30Var5.a(e, b30Var) != coroutine_suspended) {
                                                        r12 = A2;
                                                        xs3.a("Allowlist proto deserialization failed.", e, 4);
                                                        p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                                                        CloseableKt.closeFinally(r12, null);
                                                        return unit5;
                                                    }
                                                } catch (Throwable th11) {
                                                    th = th11;
                                                    r15 = r10;
                                                    r15.b(th);
                                                    if (!(th instanceof v24)) {
                                                        throw th;
                                                    }
                                                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                                        r15.a(th);
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
                                            }
                                        } catch (IllegalArgumentException e4) {
                                            e = e4;
                                            b30Var.a = r15;
                                            b30Var.b = A2;
                                            b30Var.c = e;
                                            b30Var.g = 9;
                                            if (g30Var.a(e, b30Var) != coroutine_suspended) {
                                                r9 = A2;
                                                xs3.a(str2, e, 4);
                                                p005kotlin.Unit unit6 = p005kotlin.Unit.INSTANCE;
                                                CloseableKt.closeFinally(r9, null);
                                                return unit6;
                                            }
                                        }
                                    }
                                }
                            } catch (Throwable th12) {
                                th = th12;
                                r15 = A2;
                                r15.b(th);
                                if (!(th instanceof v24)) {
                                    throw th;
                                }
                                if (!(th instanceof TimeoutCancellationException)) {
                                    r15.a(th);
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
                        }
                        return coroutine_suspended;
                    case 1:
                        A = (Closeable) b30Var.c;
                        r14 = (rr3) b30Var.b;
                        g30 g30Var7 = (g30) b30Var.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(objA2);
                            str = "The allowlist is not a valid encoded string.";
                            g30Var2 = g30Var7;
                            A = A;
                            r14 = r14;
                            v01Var = (v01) objA2;
                            if (v01Var instanceof i01) {
                                b30Var.a = r14;
                                b30Var.b = A;
                                b30Var.c = null;
                                b30Var.g = 2;
                                if (g30Var2.a((i01) v01Var, b30Var) != coroutine_suspended) {
                                    r5 = A;
                                    p005kotlin.Unit unit7 = p005kotlin.Unit.INSTANCE;
                                    CloseableKt.closeFinally(r5, null);
                                    return unit7;
                                }
                            } else {
                                Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                JsonObject jsonObject3 = (JsonObject) ((q01) v01Var).b;
                                BaseEncoding baseEncodingBase64Url3 = BaseEncoding.base64Url();
                                ds1 ds1Var3 = ds1.a;
                                u00VarA = u00.a(baseEncodingBase64Url3.decode(ds1.a(jsonObject3, "allowlist")));
                                Intrinsics.checkNotNullExpressionValue(u00VarA, "parseFrom(...)");
                                b30Var.a = g30Var2;
                                b30Var.b = r14;
                                b30Var.c = A;
                                b30Var.g = 4;
                                if (g30Var2.b(u00VarA, b30Var) != coroutine_suspended) {
                                    g30Var3 = g30Var2;
                                    r8 = A;
                                    r16 = r14;
                                    mutex = g30Var3.G;
                                    b30Var.a = g30Var3;
                                    b30Var.b = r16;
                                    b30Var.c = r8;
                                    b30Var.d = mutex;
                                    b30Var.g = 6;
                                    obj = null;
                                    if (mutex.lock(null, b30Var) != coroutine_suspended) {
                                        coroutine_suspended = r8;
                                        g30Var4 = g30Var3;
                                        r18 = r16;
                                        mutex2 = mutex;
                                        g30Var4.I = false;
                                        obj2 = p005kotlin.Unit.INSTANCE;
                                        mutex2.unlock(obj);
                                        if (obj2 instanceof i01) {
                                            xs3.a((i01) obj2, false);
                                        }
                                        CloseableKt.closeFinally(coroutine_suspended, null);
                                        return obj2;
                                    }
                                }
                            }
                            return coroutine_suspended;
                        } catch (Throwable th13) {
                            th = th13;
                            r14.b(th);
                            if (!(th instanceof v24)) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                r14.a(th);
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
                    case 2:
                        Closeable closeable = b30Var.b;
                        p005kotlin.ResultKt.throwOnFailure(objA2);
                        r5 = closeable;
                        p005kotlin.Unit unit8 = p005kotlin.Unit.INSTANCE;
                        CloseableKt.closeFinally(r5, null);
                        return unit8;
                    case 3:
                        e = (IllegalArgumentException) b30Var.c;
                        Closeable closeable2 = b30Var.b;
                        p005kotlin.ResultKt.throwOnFailure(objA2);
                        str3 = "The allowlist is not a valid encoded string.";
                        r4 = closeable2;
                        xs3.a(str3, e, 4);
                        p005kotlin.Unit unit9 = p005kotlin.Unit.INSTANCE;
                        CloseableKt.closeFinally(r4, null);
                        return unit9;
                    case 4:
                        A = (Closeable) b30Var.c;
                        r6 = (rr3) b30Var.b;
                        g30Var3 = (g30) b30Var.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(objA2);
                            r16 = r6;
                            r8 = A;
                            mutex = g30Var3.G;
                            b30Var.a = g30Var3;
                            b30Var.b = r16;
                            b30Var.c = r8;
                            b30Var.d = mutex;
                            b30Var.g = 6;
                            obj = null;
                            if (mutex.lock(null, b30Var) != coroutine_suspended) {
                                coroutine_suspended = r8;
                                g30Var4 = g30Var3;
                                r18 = r16;
                                mutex2 = mutex;
                                g30Var4.I = false;
                                obj2 = p005kotlin.Unit.INSTANCE;
                                mutex2.unlock(obj);
                                if (obj2 instanceof i01) {
                                    xs3.a((i01) obj2, false);
                                }
                                CloseableKt.closeFinally(coroutine_suspended, null);
                                return obj2;
                            }
                        } catch (np1 e5) {
                            e = e5;
                            b30Var.a = r6;
                            b30Var.b = A;
                            b30Var.c = e;
                            b30Var.g = 5;
                            if (g30Var3.a(e, b30Var) != coroutine_suspended) {
                                r7 = A;
                                xs3.a("Allowlist proto deserialization failed.", e, 4);
                                p005kotlin.Unit unit10 = p005kotlin.Unit.INSTANCE;
                                CloseableKt.closeFinally(r7, null);
                                return unit10;
                            }
                        } catch (Throwable th14) {
                            th = th14;
                            coroutine_suspended = A;
                            r18 = r6;
                            r14 = r18;
                            A = coroutine_suspended;
                            r14.b(th);
                            if (!(th instanceof v24)) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                r14.a(th);
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
                        return coroutine_suspended;
                    case 5:
                        e = (np1) b30Var.c;
                        Closeable closeable3 = b30Var.b;
                        p005kotlin.ResultKt.throwOnFailure(objA2);
                        r7 = closeable3;
                        xs3.a("Allowlist proto deserialization failed.", e, 4);
                        p005kotlin.Unit unit11 = p005kotlin.Unit.INSTANCE;
                        CloseableKt.closeFinally(r7, null);
                        return unit11;
                    case 6:
                        mutex = b30Var.d;
                        Closeable closeable4 = (Closeable) b30Var.c;
                        rr3 rr3Var = (rr3) b30Var.b;
                        g30Var4 = (g30) b30Var.a;
                        p005kotlin.ResultKt.throwOnFailure(objA2);
                        obj = null;
                        coroutine_suspended = closeable4;
                        r18 = rr3Var;
                        mutex2 = mutex;
                        g30Var4.I = false;
                        obj2 = p005kotlin.Unit.INSTANCE;
                        mutex2.unlock(obj);
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                        }
                        CloseableKt.closeFinally(coroutine_suspended, null);
                        return obj2;
                    case 7:
                        A2 = (Closeable) b30Var.c;
                        r15 = (rr3) b30Var.b;
                        g30 g30Var8 = (g30) b30Var.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(objA2);
                            g30Var = g30Var8;
                            objA = objA2;
                            str2 = "The allowlist is not a valid encoded string.";
                            A2 = A2;
                            r15 = r15;
                            v01Var2 = (v01) objA;
                            if (v01Var2 instanceof i01) {
                                b30Var.a = r15;
                                b30Var.b = A2;
                                b30Var.c = null;
                                b30Var.g = 8;
                                if (g30Var.a((i01) v01Var2, b30Var) != coroutine_suspended) {
                                    r11 = A2;
                                    p005kotlin.Unit unit12 = p005kotlin.Unit.INSTANCE;
                                    CloseableKt.closeFinally(r11, null);
                                    return unit12;
                                }
                            } else {
                                Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                JsonObject jsonObject4 = (JsonObject) ((q01) v01Var2).b;
                                BaseEncoding baseEncodingBase64Url4 = BaseEncoding.base64Url();
                                ds1 ds1Var4 = ds1.a;
                                u00VarA2 = u00.a(baseEncodingBase64Url4.decode(ds1.a(jsonObject4, "allowlist")));
                                Intrinsics.checkNotNullExpressionValue(u00VarA2, "parseFrom(...)");
                                b30Var.a = g30Var;
                                b30Var.b = r15;
                                b30Var.c = A2;
                                b30Var.g = 10;
                                if (g30Var.b(u00VarA2, b30Var) != coroutine_suspended) {
                                    g30Var5 = g30Var;
                                    r13 = A2;
                                    r17 = r15;
                                    mutex3 = g30Var5.G;
                                    b30Var.a = g30Var5;
                                    b30Var.b = r17;
                                    b30Var.c = r13;
                                    b30Var.d = mutex3;
                                    b30Var.g = 12;
                                    obj3 = null;
                                    if (mutex3.lock(null, b30Var) != coroutine_suspended) {
                                        coroutine_suspended = r13;
                                        g30Var6 = g30Var5;
                                        r18 = r17;
                                        mutex4 = mutex3;
                                        g30Var6.I = false;
                                        obj4 = p005kotlin.Unit.INSTANCE;
                                        mutex4.unlock(obj3);
                                        if (obj4 instanceof i01) {
                                            xs3.a((i01) obj4, false);
                                        }
                                        CloseableKt.closeFinally(coroutine_suspended, null);
                                        return obj4;
                                    }
                                }
                            }
                            return coroutine_suspended;
                        } catch (Throwable th15) {
                            th = th15;
                            r15.b(th);
                            if (!(th instanceof v24)) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                r15.a(th);
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
                    case 8:
                        Closeable closeable5 = b30Var.b;
                        p005kotlin.ResultKt.throwOnFailure(objA2);
                        r11 = closeable5;
                        p005kotlin.Unit unit13 = p005kotlin.Unit.INSTANCE;
                        CloseableKt.closeFinally(r11, null);
                        return unit13;
                    case 9:
                        e = (IllegalArgumentException) b30Var.c;
                        Closeable closeable6 = b30Var.b;
                        p005kotlin.ResultKt.throwOnFailure(objA2);
                        str2 = "The allowlist is not a valid encoded string.";
                        r9 = closeable6;
                        xs3.a(str2, e, 4);
                        p005kotlin.Unit unit14 = p005kotlin.Unit.INSTANCE;
                        CloseableKt.closeFinally(r9, null);
                        return unit14;
                    case 10:
                        A2 = (Closeable) b30Var.c;
                        r10 = (rr3) b30Var.b;
                        g30Var5 = (g30) b30Var.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(objA2);
                            r17 = r10;
                            r13 = A2;
                            mutex3 = g30Var5.G;
                            b30Var.a = g30Var5;
                            b30Var.b = r17;
                            b30Var.c = r13;
                            b30Var.d = mutex3;
                            b30Var.g = 12;
                            obj3 = null;
                            if (mutex3.lock(null, b30Var) != coroutine_suspended) {
                                coroutine_suspended = r13;
                                g30Var6 = g30Var5;
                                r18 = r17;
                                mutex4 = mutex3;
                                g30Var6.I = false;
                                obj4 = p005kotlin.Unit.INSTANCE;
                                mutex4.unlock(obj3);
                                if (obj4 instanceof i01) {
                                    xs3.a((i01) obj4, false);
                                }
                                CloseableKt.closeFinally(coroutine_suspended, null);
                                return obj4;
                            }
                        } catch (np1 e6) {
                            e = e6;
                            b30Var.a = r10;
                            b30Var.b = A2;
                            b30Var.c = e;
                            b30Var.g = 11;
                            if (g30Var5.a(e, b30Var) != coroutine_suspended) {
                                r12 = A2;
                                xs3.a("Allowlist proto deserialization failed.", e, 4);
                                p005kotlin.Unit unit15 = p005kotlin.Unit.INSTANCE;
                                CloseableKt.closeFinally(r12, null);
                                return unit15;
                            }
                        } catch (Throwable th16) {
                            th = th16;
                            coroutine_suspended = A2;
                            r18 = r10;
                            r15 = r18;
                            A2 = coroutine_suspended;
                            r15.b(th);
                            if (!(th instanceof v24)) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                r15.a(th);
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
                        return coroutine_suspended;
                    case 11:
                        e = (np1) b30Var.c;
                        Closeable closeable7 = b30Var.b;
                        p005kotlin.ResultKt.throwOnFailure(objA2);
                        r12 = closeable7;
                        xs3.a("Allowlist proto deserialization failed.", e, 4);
                        p005kotlin.Unit unit16 = p005kotlin.Unit.INSTANCE;
                        CloseableKt.closeFinally(r12, null);
                        return unit16;
                    case 12:
                        mutex3 = b30Var.d;
                        Closeable closeable8 = (Closeable) b30Var.c;
                        rr3 rr3Var2 = (rr3) b30Var.b;
                        g30Var6 = (g30) b30Var.a;
                        p005kotlin.ResultKt.throwOnFailure(objA2);
                        obj3 = null;
                        coroutine_suspended = closeable8;
                        r18 = rr3Var2;
                        mutex4 = mutex3;
                        g30Var6.I = false;
                        obj4 = p005kotlin.Unit.INSTANCE;
                        mutex4.unlock(obj3);
                        if (obj4 instanceof i01) {
                            xs3.a((i01) obj4, false);
                        }
                        CloseableKt.closeFinally(coroutine_suspended, null);
                        return obj4;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } catch (Throwable th17) {
                th = th17;
                r15 = r18;
                A2 = coroutine_suspended;
                r15.b(th);
                if (!(th instanceof v24)) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    r15.a(th);
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
        } catch (Throwable th18) {
            th = th18;
            r14 = r18;
            A = coroutine_suspended;
            r14.b(th);
            if (!(th instanceof v24)) {
                throw th;
            }
            if (!(th instanceof TimeoutCancellationException)) {
                r14.a(th);
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
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(String str, Continuation continuation) {
        z20 z20Var;
        String str2;
        s00 s00Var;
        g30 g30Var;
        CookieManager cookieManager;
        if (continuation instanceof z20) {
            z20Var = (z20) continuation;
            int i = z20Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                z20Var.f = i - Integer.MIN_VALUE;
            } else {
                z20Var = new z20(this, continuation);
            }
        } else {
            z20Var = new z20(this, continuation);
        }
        Object obj = z20Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = z20Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s00 s00Var2 = s00.API_SET_WEBVIEW_COOKIE;
            p02 p02Var = this.B;
            z20Var.a = this;
            z20Var.b = str;
            z20Var.c = s00Var2;
            z20Var.f = 1;
            Object objA = p02Var.a(z20Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            str2 = str;
            s00Var = s00Var2;
            obj = objA;
            g30Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            s00Var = z20Var.c;
            str2 = z20Var.b;
            g30Var = z20Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        if (((u00) obj).w().contains(s00Var) && (cookieManager = g30Var.D) != null) {
            cookieManager.setCookie(g30Var.h.Q0(), str2);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    public final String g() {
        this.p.getClass();
        return String.valueOf(Random.INSTANCE.nextInt(Integer.MAX_VALUE));
    }

    public final u00 i() {
        t00 builder = u00.z();
        Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
        Intrinsics.checkNotNullParameter(builder, "builder");
        yh1.d dVarH = builder.h();
        Intrinsics.checkNotNullExpressionValue(dVarH, "getAllowedApisList(...)");
        lo0 lo0Var = new lo0(dVarH);
        x00 x00Var = this.h.r;
        x00Var.getClass();
        t00 builder2 = u00.z();
        Intrinsics.checkNotNullExpressionValue(builder2, "newBuilder(...)");
        Intrinsics.checkNotNullParameter(builder2, "builder");
        w00 w00Var = new w00(builder2);
        lo0 lo0VarB = w00Var.b();
        s00 s00Var = s00.API_READ_SHARED_PREFERENCES_CONSENT_DATA;
        Intrinsics.checkNotNullParameter(lo0VarB, "<this>");
        lo0 lo0VarA = b10.a(s00Var, "value", builder2, s00Var, w00Var);
        s00 s00Var2 = s00.API_READ_FLAG_VALUES;
        Intrinsics.checkNotNullParameter(lo0VarA, "<this>");
        lo0 lo0VarA2 = b10.a(s00Var2, "value", builder2, s00Var2, w00Var);
        s00 s00Var3 = s00.API_WRITE_FLAG_VALUES;
        Intrinsics.checkNotNullParameter(lo0VarA2, "<this>");
        lo0 lo0VarA3 = b10.a(s00Var3, "value", builder2, s00Var3, w00Var);
        s00 s00Var4 = s00.API_READ_CLD_RESPONSE;
        Intrinsics.checkNotNullParameter(lo0VarA3, "<this>");
        lo0 lo0VarA4 = b10.a(s00Var4, "value", builder2, s00Var4, w00Var);
        s00 s00Var5 = s00.API_CLEAR_WEBVIEW_COOKIE;
        Intrinsics.checkNotNullParameter(lo0VarA4, "<this>");
        lo0 lo0VarA5 = b10.a(s00Var5, "value", builder2, s00Var5, w00Var);
        s00 s00Var6 = s00.API_READ_ANDROID_ID;
        Intrinsics.checkNotNullParameter(lo0VarA5, "<this>");
        lo0 lo0VarA6 = b10.a(s00Var6, "value", builder2, s00Var6, w00Var);
        s00 s00Var7 = s00.API_READ_ADVERTISING_ID;
        Intrinsics.checkNotNullParameter(lo0VarA6, "<this>");
        lo0 lo0VarA7 = b10.a(s00Var7, "value", builder2, s00Var7, w00Var);
        s00 s00Var8 = s00.API_READ_APP_SET_ID;
        Intrinsics.checkNotNullParameter(lo0VarA7, "<this>");
        lo0 lo0VarA8 = b10.a(s00Var8, "value", builder2, s00Var8, w00Var);
        s00 s00Var9 = s00.API_CLEAR_PER_APP_ID_V1;
        Intrinsics.checkNotNullParameter(lo0VarA8, "<this>");
        lo0 lo0VarA9 = b10.a(s00Var9, "value", builder2, s00Var9, w00Var);
        s00 s00Var10 = s00.API_CLEAR_PER_APP_ID_V2;
        Intrinsics.checkNotNullParameter(lo0VarA9, "<this>");
        lo0 lo0VarA10 = b10.a(s00Var10, "value", builder2, s00Var10, w00Var);
        s00 s00Var11 = s00.API_READ_FIREBASE_APP_ID;
        Intrinsics.checkNotNullParameter(lo0VarA10, "<this>");
        lo0 lo0VarA11 = b10.a(s00Var11, "value", builder2, s00Var11, w00Var);
        s00 value = s00.API_READ_FIREBASE_APP_INSTANCE_ID;
        Intrinsics.checkNotNullParameter(lo0VarA11, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        builder2.a(value);
        lo0 lo0VarB2 = w00Var.b();
        s00 s00Var12 = s00.API_READ_FIREBASE_AD_EVENT_ID;
        Intrinsics.checkNotNullParameter(lo0VarB2, "<this>");
        lo0 lo0VarA12 = b10.a(s00Var12, "value", builder2, s00Var12, w00Var);
        s00 value2 = s00.API_CLEAR_PERSISTENT_CACHE;
        Intrinsics.checkNotNullParameter(lo0VarA12, "<this>");
        Intrinsics.checkNotNullParameter(value2, "value");
        builder2.a(value2);
        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        yh1.c defaultValue = w00Var.a().x();
        Intrinsics.checkNotNullExpressionValue(defaultValue, "getAllowedApisValueList(...)");
        Intrinsics.checkNotNullParameter("gads:consent_allowlist_default:string", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        List list = (List) x00Var.a("gads:consent_allowlist_default:string", defaultValue, yr.h);
        ArrayList values = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            s00 s00VarA = s00.a(((Number) it.next()).intValue());
            if (s00VarA != null) {
                values.add(s00VarA);
            }
        }
        Intrinsics.checkNotNullParameter(lo0Var, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        builder.a(values);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (u00) vz0VarB;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        x00 x00Var = this.h.r;
        x00Var.getClass();
        List defaultValue = CollectionsKt.listOf((Object[]) new String[]{"IABTCF_AddtlConsent", "IABConsent_CMPPresent", "IABTCF_CmpSdkID", "IABConsent_ConsentString", "IABTCF_gdprApplies", "IABGPP_HDR_GppString", "IABGPP_GppSID", "gad_has_consent_for_cookies", "IABConsent_ParsedPurposeConsents", "personalized_ad_status", "IABTCF_PolicyVersion", "IABUSPrivacy_String", "IABTCF_PurposeConsents", "gad_rdp", "IABConsent_SubjectToGDPR", AndroidTcfDataSource.TCF_TCSTRING_KEY, "IABConsent_ParsedVendorConsents", "UMP_eids"});
        Intrinsics.checkNotNullParameter("gads:sp:consent_keys_list", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        if (CollectionsKt.contains((List) x00Var.a("gads:sp:consent_keys_list", defaultValue, yr.g), str)) {
            CoroutineScope coroutineScope = this.d;
            n20 block = new n20(this, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
    }

    @Override // kotlin.nc1
    public final Object u(Continuation continuation) {
        return n(this, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0069 A[Catch: JsonSyntaxException -> 0x002e, PHI: r2 r5
  0x0069: PHI (r2v9 java.util.Iterator<com.google.gson.JsonElement>) = (r2v5 java.util.Iterator<com.google.gson.JsonElement>), (r2v10 java.util.Iterator<com.google.gson.JsonElement>) binds: [B:25:0x0067, B:32:0x008b] A[DONT_GENERATE, DONT_INLINE]
  0x0069: PHI (r5v8 ads_mobile_sdk.g30) = (r5v2 ads_mobile_sdk.g30), (r5v9 ads_mobile_sdk.g30) binds: [B:25:0x0067, B:32:0x008b] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #0 {JsonSyntaxException -> 0x002e, blocks: (B:12:0x002a, B:31:0x0085, B:26:0x0069, B:28:0x006f, B:35:0x0090), top: B:42:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:28:0x006f A[Catch: JsonSyntaxException -> 0x002e, TryCatch #0 {JsonSyntaxException -> 0x002e, blocks: (B:12:0x002a, B:31:0x0085, B:26:0x0069, B:28:0x006f, B:35:0x0090), top: B:42:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0084 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:33:0x008d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0082 -> B:31:0x0085). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object v(p005kotlin.coroutines.Continuation r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof kotlin.c10
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.c10 r0 = (kotlin.c10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.c10 r0 = new ads_mobile_sdk.c10
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L39
            if (r2 != r4) goto L31
            java.util.Iterator r2 = r0.b
            ads_mobile_sdk.g30 r5 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r7)     // Catch: com.google.gson.JsonSyntaxException -> L2e
            goto L85
        L2e:
            r7 = move-exception
            goto L9a
        L31:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L39:
            p005kotlin.ResultKt.throwOnFailure(r7)
            com.google.gson.Gson r7 = new com.google.gson.Gson     // Catch: com.google.gson.JsonSyntaxException -> L98
            r7.<init>()     // Catch: com.google.gson.JsonSyntaxException -> L98
            ads_mobile_sdk.ex0 r2 = r6.h     // Catch: com.google.gson.JsonSyntaxException -> L98
            ads_mobile_sdk.x00 r2 = r2.r     // Catch: com.google.gson.JsonSyntaxException -> L98
            java.lang.String r2 = r2.a()     // Catch: com.google.gson.JsonSyntaxException -> L98
            java.lang.Class<com.google.gson.JsonArray> r5 = com.google.gson.JsonArray.class
            java.lang.Object r7 = r7.fromJson(r2, r5)     // Catch: com.google.gson.JsonSyntaxException -> L98
            com.google.gson.JsonArray r7 = (com.google.gson.JsonArray) r7     // Catch: com.google.gson.JsonSyntaxException -> L98
            p005kotlin.jvm.internal.Intrinsics.checkNotNull(r7)     // Catch: com.google.gson.JsonSyntaxException -> L98
            boolean r2 = r7 instanceof java.util.Collection     // Catch: com.google.gson.JsonSyntaxException -> L98
            if (r2 == 0) goto L63
            r2 = r7
            java.util.Collection r2 = (java.util.Collection) r2     // Catch: com.google.gson.JsonSyntaxException -> L98
            boolean r2 = r2.isEmpty()     // Catch: com.google.gson.JsonSyntaxException -> L98
            if (r2 == 0) goto L63
            r5 = r6
            goto L8f
        L63:
            java.util.Iterator r7 = r7.iterator()     // Catch: com.google.gson.JsonSyntaxException -> L98
            r5 = r6
            r2 = r7
        L69:
            boolean r7 = r2.hasNext()     // Catch: com.google.gson.JsonSyntaxException -> L2e
            if (r7 == 0) goto L8f
            java.lang.Object r7 = r2.next()     // Catch: com.google.gson.JsonSyntaxException -> L2e
            com.google.gson.JsonElement r7 = (com.google.gson.JsonElement) r7     // Catch: com.google.gson.JsonSyntaxException -> L2e
            p005kotlin.jvm.internal.Intrinsics.checkNotNull(r7)     // Catch: com.google.gson.JsonSyntaxException -> L2e
            r0.a = r5     // Catch: com.google.gson.JsonSyntaxException -> L2e
            r0.b = r2     // Catch: com.google.gson.JsonSyntaxException -> L2e
            r0.e = r4     // Catch: com.google.gson.JsonSyntaxException -> L2e
            java.lang.Object r7 = r5.a(r7, r0)     // Catch: com.google.gson.JsonSyntaxException -> L2e
            if (r7 != r1) goto L85
            return r1
        L85:
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: com.google.gson.JsonSyntaxException -> L2e
            boolean r7 = r7.booleanValue()     // Catch: com.google.gson.JsonSyntaxException -> L2e
            if (r7 == 0) goto L69
            r7 = r4
            goto L90
        L8f:
            r7 = r3
        L90:
            r7 = r7 ^ r4
            java.lang.Boolean r7 = p005kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r7)     // Catch: com.google.gson.JsonSyntaxException -> L2e
            return r7
        L96:
            r5 = r6
            goto L9a
        L98:
            r7 = move-exception
            goto L96
        L9a:
            ads_mobile_sdk.ur3 r0 = r5.f
            ads_mobile_sdk.as3 r0 = (kotlin.as3) r0
            java.lang.String r1 = "JSON fallback consent keys set parsing failure"
            r0.a(r1, r7)
            java.lang.Boolean r7 = p005kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g30.v(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object w(Continuation continuation) {
        f10 f10Var;
        s00 s00Var;
        g30 g30Var;
        if (continuation instanceof f10) {
            f10Var = (f10) continuation;
            int i = f10Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                f10Var.e = i - Integer.MIN_VALUE;
            } else {
                f10Var = new f10(this, continuation);
            }
        } else {
            f10Var = new f10(this, continuation);
        }
        Object obj = f10Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = f10Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s00 s00Var2 = s00.API_CLEAR_PERSISTENT_CACHE;
            p02 p02Var = this.B;
            f10Var.a = this;
            f10Var.b = s00Var2;
            f10Var.e = 1;
            Object objA = p02Var.a(f10Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            s00Var = s00Var2;
            obj = objA;
            g30Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            s00Var = f10Var.b;
            g30Var = f10Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        if (((u00) obj).w().contains(s00Var)) {
            CoroutineScope coroutineScope = g30Var.d;
            g10 block = new g10(g30Var, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006d, code lost:
    
        if (kotlin.dq0.a(r6, r0) == r1) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object x(p005kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof kotlin.h10
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.h10 r0 = (kotlin.h10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.h10 r0 = new ads_mobile_sdk.h10
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r6)
            goto L70
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            ads_mobile_sdk.s00 r2 = r0.b
            ads_mobile_sdk.g30 r4 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r6)
            goto L51
        L3c:
            p005kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.s00 r2 = kotlin.s00.API_CLEAR_EOID
            ads_mobile_sdk.p02 r6 = r5.B
            r0.a = r5
            r0.b = r2
            r0.e = r4
            java.lang.Object r6 = r6.a(r0)
            if (r6 != r1) goto L50
            goto L6f
        L50:
            r4 = r5
        L51:
            ads_mobile_sdk.u00 r6 = (kotlin.u00) r6
            ads_mobile_sdk.yh1$d r6 = r6.w()
            boolean r6 = r6.contains(r2)
            if (r6 == 0) goto L70
            ads_mobile_sdk.dq0 r6 = r4.w
            r2 = 0
            r0.a = r2
            r0.b = r2
            r0.e = r3
            r6.getClass()
            java.lang.Object r6 = kotlin.dq0.a(r6, r0)
            if (r6 != r1) goto L70
        L6f:
            return r1
        L70:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g30.x(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object y(Continuation continuation) {
        i10 i10Var;
        s00 s00Var;
        g30 g30Var;
        if (continuation instanceof i10) {
            i10Var = (i10) continuation;
            int i = i10Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                i10Var.e = i - Integer.MIN_VALUE;
            } else {
                i10Var = new i10(this, continuation);
            }
        } else {
            i10Var = new i10(this, continuation);
        }
        Object obj = i10Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = i10Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s00 s00Var2 = s00.API_CLEAR_PER_APP_ID_V1;
            p02 p02Var = this.B;
            i10Var.a = this;
            i10Var.b = s00Var2;
            i10Var.e = 1;
            Object objA = p02Var.a(i10Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            s00Var = s00Var2;
            obj = objA;
            g30Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            s00Var = i10Var.b;
            g30Var = i10Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        if (((u00) obj).w().contains(s00Var)) {
            g30Var.l.a();
        }
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object z(Continuation continuation) {
        j10 j10Var;
        s00 s00Var;
        g30 g30Var;
        if (continuation instanceof j10) {
            j10Var = (j10) continuation;
            int i = j10Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                j10Var.e = i - Integer.MIN_VALUE;
            } else {
                j10Var = new j10(this, continuation);
            }
        } else {
            j10Var = new j10(this, continuation);
        }
        Object obj = j10Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = j10Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s00 s00Var2 = s00.API_CLEAR_PER_APP_ID_V2;
            p02 p02Var = this.B;
            j10Var.a = this;
            j10Var.b = s00Var2;
            j10Var.e = 1;
            Object objA = p02Var.a(j10Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            s00Var = s00Var2;
            obj = objA;
            g30Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            s00Var = j10Var.b;
            g30Var = j10Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        if (((u00) obj).w().contains(s00Var)) {
            g30Var.l.b();
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
