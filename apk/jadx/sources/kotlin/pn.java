package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdFormat;
import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import com.ironsource.adapters.facebook.FacebookConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.collections.SetsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.enums.EnumEntries;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.Regex;
import p005kotlin.text.StringsKt;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class pn {
    public final CoroutineContext a;
    public final mm b;
    public final tx c;
    public final ex0 d;
    public boolean e;
    public final Mutex f;
    public jm g;
    public JsonObject h;

    public pn(CoroutineContext backgroundContext, mm appSettingsDataStore, tx clock, ex0 flags) {
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(appSettingsDataStore, "appSettingsDataStore");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = backgroundContext;
        this.b = appSettingsDataStore;
        this.c = clock;
        this.d = flags;
        this.f = MutexKt.Mutex(false);
        this.g = jm.E();
        this.h = new JsonObject();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0075, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r6, r8, r0) == r1) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object a(kotlin.pn r5, com.google.gson.JsonObject r6, long r7, p005kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof kotlin.kn
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.kn r0 = (kotlin.kn) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.kn r0 = new ads_mobile_sdk.kn
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3e
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r9)
            goto L78
        L2c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L34:
            ads_mobile_sdk.jm r5 = r0.b
            ads_mobile_sdk.pn r6 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r9)
            r7 = r5
            r5 = r6
            goto L63
        L3e:
            p005kotlin.ResultKt.throwOnFailure(r9)
            kotlin.Pair r6 = kotlin.ma1.a(r6, r7)
            if (r6 != 0) goto L4a
            kotlin.Unit r5 = p005kotlin.Unit.INSTANCE
            return r5
        L4a:
            java.lang.Object r7 = r6.component1()
            ads_mobile_sdk.jm r7 = (kotlin.jm) r7
            java.lang.Object r6 = r6.component2()
            com.google.gson.JsonObject r6 = (com.google.gson.JsonObject) r6
            r0.a = r5
            r0.b = r7
            r0.e = r4
            java.lang.Object r6 = r5.a(r7, r6, r0)
            if (r6 != r1) goto L63
            goto L77
        L63:
            kotlin.coroutines.CoroutineContext r6 = r5.a
            ads_mobile_sdk.ln r8 = new ads_mobile_sdk.ln
            r9 = 0
            r8.<init>(r5, r7, r9)
            r0.a = r9
            r0.b = r9
            r0.e = r3
            java.lang.Object r5 = kotlinx.coroutines.BuildersKt.withContext(r6, r8, r0)
            if (r5 != r1) goto L78
        L77:
            return r1
        L78:
            kotlin.Unit r5 = p005kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.pn.a(ads_mobile_sdk.pn, com.google.gson.JsonObject, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0090 A[PHI: r9
  0x0090: PHI (r9v3 ads_mobile_sdk.pn) = (r9v1 ads_mobile_sdk.pn), (r9v1 ads_mobile_sdk.pn), (r9v8 ads_mobile_sdk.pn) binds: [B:23:0x007e, B:25:0x008d, B:16:0x003d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:30:0x009f  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(pn pnVar, Continuation continuation) {
        xm xmVar;
        Mutex mutex;
        Mutex mutex2;
        pn pnVar2;
        Mutex mutex3;
        if (continuation instanceof xm) {
            xmVar = (xm) continuation;
            int i = xmVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                xmVar.e = i - Integer.MIN_VALUE;
            } else {
                xmVar = new xm(pnVar, continuation);
            }
        } else {
            xmVar = new xm(pnVar, continuation);
        }
        Object obj = xmVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = xmVar.e;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = pnVar.f;
                xmVar.a = pnVar;
                xmVar.b = mutex;
                xmVar.e = 1;
                if (mutex.lock(null, xmVar) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                Mutex mutex4 = xmVar.b;
                pn pnVar3 = xmVar.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = mutex4;
                pnVar = pnVar3;
            } else {
                if (i2 == 2) {
                    pnVar = xmVar.a;
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    mutex2 = pnVar.f;
                    xmVar.a = pnVar;
                    xmVar.b = mutex2;
                    xmVar.e = 3;
                    if (mutex2.lock(null, xmVar) != coroutine_suspended) {
                        pnVar2 = pnVar;
                        mutex3 = mutex2;
                    }
                    return coroutine_suspended;
                }
                if (i2 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex3 = xmVar.b;
                pnVar2 = xmVar.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
            }
            try {
                jm jmVar = pnVar2.g;
                mutex3.unlock(null);
                Intrinsics.checkNotNull(jmVar);
                return jmVar;
            } catch (Throwable th) {
                mutex3.unlock(null);
                throw th;
            }
            jm jmVar2 = pnVar.g;
            mutex.unlock(null);
            ex0 ex0Var = pnVar.d;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:app_settings_expiry_check_in_getter:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var.a("gads:app_settings_expiry_check_in_getter:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                Intrinsics.checkNotNull(jmVar2);
                xmVar.a = pnVar;
                xmVar.b = null;
                xmVar.e = 2;
                if (pnVar.a(jmVar2, xmVar) != coroutine_suspended) {
                    mutex2 = pnVar.f;
                    xmVar.a = pnVar;
                    xmVar.b = mutex2;
                    xmVar.e = 3;
                    if (mutex2.lock(null, xmVar) != coroutine_suspended) {
                        pnVar2 = pnVar;
                        mutex3 = mutex2;
                        jm jmVar3 = pnVar2.g;
                        mutex3.unlock(null);
                        Intrinsics.checkNotNull(jmVar3);
                        return jmVar3;
                    }
                }
            } else {
                mutex2 = pnVar.f;
                xmVar.a = pnVar;
                xmVar.b = mutex2;
                xmVar.e = 3;
                if (mutex2.lock(null, xmVar) != coroutine_suspended) {
                    pnVar2 = pnVar;
                    mutex3 = mutex2;
                    jm jmVar4 = pnVar2.g;
                    mutex3.unlock(null);
                    Intrinsics.checkNotNull(jmVar4);
                    return jmVar4;
                }
            }
            return coroutine_suspended;
        } catch (Throwable th2) {
            mutex.unlock(null);
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(pn pnVar, boolean z, Continuation continuation) {
        on onVar;
        Mutex mutex;
        if (continuation instanceof on) {
            onVar = (on) continuation;
            int i = onVar.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                onVar.f = i - Integer.MIN_VALUE;
            } else {
                onVar = new on(pnVar, continuation);
            }
        } else {
            onVar = new on(pnVar, continuation);
        }
        Object obj = onVar.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = onVar.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = pnVar.f;
            onVar.a = pnVar;
            onVar.b = mutex;
            onVar.c = z;
            onVar.f = 1;
            if (mutex.lock(null, onVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z = onVar.c;
            Mutex mutex2 = onVar.b;
            pn pnVar2 = onVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            pnVar = pnVar2;
        }
        try {
            pnVar.e = z;
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    public static List a(Collection adapterList, ex0 flags) {
        Intrinsics.checkNotNullParameter(adapterList, "adapterList");
        Intrinsics.checkNotNullParameter(flags, "flags");
        ArrayList arrayList = new ArrayList();
        Iterator it = adapterList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            flags.getClass();
            Iterator it2 = it;
            Map defaultValue = MapsKt.mapOf(p005kotlin.TuplesKt.to("com\\.google\\.ads\\.mediation\\.inmobi\\.InMobiAdapter", "com.google.ads.mediation.inmobi.InMobiMediationAdapter"), p005kotlin.TuplesKt.to("com\\.google\\.ads\\.mediation\\.imobile\\.IMobileAdapter", "com.google.ads.mediation.imobile.IMobileMediationAdapter"), p005kotlin.TuplesKt.to("com\\.google\\.ads\\.mediation\\.facebook\\.FacebookAdapter", "com.google.ads.mediation.facebook.FacebookMediationAdapter"), p005kotlin.TuplesKt.to("com\\.applovin\\.mediation\\.Applovin.*", "com.google.ads.mediation.applovin.AppLovinMediationAdapter"), p005kotlin.TuplesKt.to("com\\.vungle\\.mediation\\.Vungle.*", "com.google.ads.mediation.vungle.VungleMediationAdapter"), p005kotlin.TuplesKt.to("com\\.google\\.android\\.gms\\.ads\\.mediation\\.ZucksAdapter", "com.google.ads.mediation.zucks.ZucksMediationAdapter"), p005kotlin.TuplesKt.to("com\\.google\\.ads\\.mediation\\.unity\\.UnityAdapter", "com.google.ads.mediation.unity.UnityMediationAdapter"), p005kotlin.TuplesKt.to("com.google.ads.mediation.chartboost.ChartboostAdapter", "com.google.ads.mediation.chartboost.ChartboostMediationAdapter"), p005kotlin.TuplesKt.to("com\\.google\\.ads\\.mediation\\.mytarget\\.MyTarget.*", "com.google.ads.mediation.mytarget.MyTargetMediationAdapter"), p005kotlin.TuplesKt.to("jp\\.maio\\.sdk\\.android\\.mediation\\.admob\\.adapter\\..*", "com.google.ads.mediation.maio.MaioMediationAdapter"), p005kotlin.TuplesKt.to("com\\.google\\.ads\\.mediation\\.ironsource\\.IronSource.*", "com.google.ads.mediation.ironsource.IronSourceMediationAdapter"), p005kotlin.TuplesKt.to("com\\.google\\.android\\.libraries\\.ads\\.mobile\\.maitier\\.scenarios\\.initialization\\.Mismatched.*", "com.google.android.libraries.ads.mobile.maitier.scenarios.initialization.MismatchedInitializingAdapter"));
            Intrinsics.checkNotNullParameter("gads:waterfall_to_init_regex_map", C3510b4.i.W);
            Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
            Map map = (Map) flags.a("gads:waterfall_to_init_regex_map", defaultValue, yr.p);
            ArrayList arrayList2 = new ArrayList();
            for (Map.Entry entry : map.entrySet()) {
                String str2 = new Regex((String) entry.getKey()).matches(str) ? (String) entry.getValue() : null;
                if (str2 != null) {
                    arrayList2.add(str2);
                }
            }
            CollectionsKt.addAll(arrayList, arrayList2);
            it = it2;
        }
        return CollectionsKt.plus(adapterList, (Iterable) arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0090 A[PHI: r9
  0x0090: PHI (r9v3 ads_mobile_sdk.pn) = (r9v1 ads_mobile_sdk.pn), (r9v1 ads_mobile_sdk.pn), (r9v8 ads_mobile_sdk.pn) binds: [B:23:0x007e, B:25:0x008d, B:16:0x003d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:30:0x009f  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object b(pn pnVar, Continuation continuation) {
        ym ymVar;
        Mutex mutex;
        Mutex mutex2;
        pn pnVar2;
        Mutex mutex3;
        if (continuation instanceof ym) {
            ymVar = (ym) continuation;
            int i = ymVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                ymVar.e = i - Integer.MIN_VALUE;
            } else {
                ymVar = new ym(pnVar, continuation);
            }
        } else {
            ymVar = new ym(pnVar, continuation);
        }
        Object obj = ymVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ymVar.e;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = pnVar.f;
                ymVar.a = pnVar;
                ymVar.b = mutex;
                ymVar.e = 1;
                if (mutex.lock(null, ymVar) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                Mutex mutex4 = ymVar.b;
                pn pnVar3 = ymVar.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = mutex4;
                pnVar = pnVar3;
            } else {
                if (i2 == 2) {
                    pnVar = ymVar.a;
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    mutex2 = pnVar.f;
                    ymVar.a = pnVar;
                    ymVar.b = mutex2;
                    ymVar.e = 3;
                    if (mutex2.lock(null, ymVar) != coroutine_suspended) {
                        pnVar2 = pnVar;
                        mutex3 = mutex2;
                    }
                    return coroutine_suspended;
                }
                if (i2 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex3 = ymVar.b;
                pnVar2 = ymVar.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
            }
            try {
                return pnVar2.h;
            } finally {
                mutex3.unlock(null);
            }
            jm jmVar = pnVar.g;
            mutex.unlock(null);
            ex0 ex0Var = pnVar.d;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:app_settings_expiry_check_in_getter:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var.a("gads:app_settings_expiry_check_in_getter:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                Intrinsics.checkNotNull(jmVar);
                ymVar.a = pnVar;
                ymVar.b = null;
                ymVar.e = 2;
                if (pnVar.a(jmVar, ymVar) != coroutine_suspended) {
                    mutex2 = pnVar.f;
                    ymVar.a = pnVar;
                    ymVar.b = mutex2;
                    ymVar.e = 3;
                    if (mutex2.lock(null, ymVar) != coroutine_suspended) {
                        pnVar2 = pnVar;
                        mutex3 = mutex2;
                        return pnVar2.h;
                    }
                }
            } else {
                mutex2 = pnVar.f;
                ymVar.a = pnVar;
                ymVar.b = mutex2;
                ymVar.e = 3;
                if (mutex2.lock(null, ymVar) != coroutine_suspended) {
                    pnVar2 = pnVar;
                    mutex3 = mutex2;
                    return pnVar2.h;
                }
            }
            return coroutine_suspended;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object c(pn pnVar, Continuation continuation) {
        in inVar;
        Mutex mutex;
        if (continuation instanceof in) {
            inVar = (in) continuation;
            int i = inVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                inVar.e = i - Integer.MIN_VALUE;
            } else {
                inVar = new in(pnVar, continuation);
            }
        } else {
            inVar = new in(pnVar, continuation);
        }
        Object obj = inVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = inVar.e;
        boolean z = true;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = pnVar.f;
            inVar.a = pnVar;
            inVar.b = mutex;
            inVar.e = 1;
            if (mutex.lock(null, inVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = inVar.b;
            pn pnVar2 = inVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            pnVar = pnVar2;
        }
        try {
            if (!pnVar.d.O() || !pnVar.e) {
                z = false;
            }
            return Boxing.boxBoolean(z);
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(jm jmVar, JsonObject jsonObject, Continuation continuation) {
        mn mnVar;
        Mutex mutex;
        pn pnVar;
        if (continuation instanceof mn) {
            mnVar = (mn) continuation;
            int i = mnVar.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                mnVar.g = i - Integer.MIN_VALUE;
            } else {
                mnVar = new mn(this, continuation);
            }
        } else {
            mnVar = new mn(this, continuation);
        }
        Object obj = mnVar.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = mnVar.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = this.f;
            mnVar.a = this;
            mnVar.b = jmVar;
            mnVar.c = jsonObject;
            mnVar.d = mutex;
            mnVar.g = 1;
            if (mutex.lock(null, mnVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
            pnVar = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = mnVar.d;
            jsonObject = mnVar.c;
            jm jmVar2 = mnVar.b;
            pnVar = mnVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            jmVar = jmVar2;
        }
        try {
            pnVar.g = jmVar;
            pnVar.h = jsonObject;
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(jm jmVar, Continuation continuation) {
        jn jnVar;
        Mutex mutex;
        pn pnVar;
        if (continuation instanceof jn) {
            jnVar = (jn) continuation;
            int i = jnVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                jnVar.e = i - Integer.MIN_VALUE;
            } else {
                jnVar = new jn(this, continuation);
            }
        } else {
            jnVar = new jn(this, continuation);
        }
        Object obj = jnVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = jnVar.e;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                if (!a(jmVar)) {
                    mutex = this.f;
                    jnVar.a = this;
                    jnVar.b = mutex;
                    jnVar.e = 1;
                    if (mutex.lock(null, jnVar) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    pnVar = this;
                }
                return p005kotlin.Unit.INSTANCE;
            }
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = jnVar.b;
            pnVar = jnVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            pnVar.g = jm.E();
            pnVar.h = new JsonObject();
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:160:0x027c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:161:0x020b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:73:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:78:0x0224 A[LOOP:6: B:76:0x021e->B:78:0x0224, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:85:0x024c  */
    /* JADX WARN: Code duplicated, block: B:88:0x025d A[LOOP:7: B:86:0x0257->B:88:0x025d, LOOP_END] */
    public final Object a(AdapterInitializationConfig adapterInitializationConfig, Continuation continuation) {
        bn bnVar;
        AdapterInitializationConfig adapterInitializationConfig2;
        Object objA;
        pn pnVar;
        AdapterInitializationConfig adapterInitializationConfig3;
        Map mapEmptyMap;
        Map mapEmptyMap2;
        Map mapPlus;
        Set<String> setPlus;
        String lowerCase;
        ArrayList arrayList;
        Iterator it;
        String str;
        if (continuation instanceof bn) {
            bnVar = (bn) continuation;
            int i = bnVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                bnVar.e = i - Integer.MIN_VALUE;
            } else {
                bnVar = new bn(this, continuation);
            }
        } else {
            bnVar = new bn(this, continuation);
        }
        Object obj = bnVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = bnVar.e;
        int i3 = 1;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            bnVar.a = this;
            adapterInitializationConfig2 = adapterInitializationConfig;
            bnVar.b = adapterInitializationConfig2;
            bnVar.e = 1;
            objA = a(this, bnVar);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            pnVar = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            AdapterInitializationConfig adapterInitializationConfig4 = bnVar.b;
            pn pnVar2 = bnVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            objA = obj;
            adapterInitializationConfig2 = adapterInitializationConfig4;
            pnVar = pnVar2;
        }
        jm jmVar = (jm) objA;
        if (adapterInitializationConfig2 == null) {
            return jmVar.z().keySet();
        }
        if (adapterInitializationConfig2.getAllowedAdUnitIds().isEmpty() && adapterInitializationConfig2.getAllowedAdFormats().isEmpty()) {
            setPlus = adapterInitializationConfig2.getAllowedAdapterClasses();
            if (setPlus.isEmpty()) {
                setPlus = jmVar.z().keySet();
            }
            adapterInitializationConfig3 = adapterInitializationConfig2;
        } else {
            ex0 ex0Var = pnVar.d;
            Set<String> allowedAdUnitIds = adapterInitializationConfig2.getAllowedAdUnitIds();
            ArrayList<String> arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(allowedAdUnitIds, 10));
            Iterator<T> it2 = allowedAdUnitIds.iterator();
            while (it2.hasNext()) {
                String lowerCase2 = ((String) it2.next()).toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                arrayList2.add(lowerCase2);
            }
            Set<AdFormat> allowedAdFormats = adapterInitializationConfig2.getAllowedAdFormats();
            ArrayList<String> arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(allowedAdFormats, 10));
            Iterator<T> it3 = allowedAdFormats.iterator();
            while (it3.hasNext()) {
                switch (wm.a[((AdFormat) it3.next()).ordinal()]) {
                    case 1:
                        h53 h53Var = j53.b;
                        str = "banner";
                        break;
                    case 2:
                        h53 h53Var2 = j53.b;
                        str = "app_open_ad";
                        break;
                    case 3:
                        h53 h53Var3 = j53.b;
                        str = C3510b4.i.H0;
                        break;
                    case 4:
                        h53 h53Var4 = j53.b;
                        str = "interstitial";
                        break;
                    case 5:
                        h53 h53Var5 = j53.b;
                        str = "native";
                        break;
                    case 6:
                        h53 h53Var6 = j53.b;
                        str = "rewarded";
                        break;
                    case 7:
                        h53 h53Var7 = j53.b;
                        str = "rewarded_interstitial";
                        break;
                    case 8:
                        h53 h53Var8 = j53.b;
                        str = "swipeable_interstitial";
                        break;
                    default:
                        throw new p005kotlin.NoWhenBranchMatchedException();
                }
                arrayList3.add(str);
            }
            if (arrayList3.isEmpty()) {
                EnumEntries enumEntries = j53.n;
                arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(enumEntries, 10));
                Iterator<E> it4 = enumEntries.iterator();
                while (it4.hasNext()) {
                    String lowerCase3 = ((j53) it4.next()).a.toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase3, "toLowerCase(...)");
                    arrayList3.add(lowerCase3);
                }
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Map mapW = jmVar.w();
            Intrinsics.checkNotNullExpressionValue(mapW, "getAdUnitAndFormatToMediationConfigsMap(...)");
            Iterator it5 = mapW.entrySet().iterator();
            while (true) {
                boolean z = false;
                if (it5.hasNext()) {
                    Map.Entry entry = (Map.Entry) it5.next();
                    String str2 = (String) entry.getKey();
                    kw1 kw1Var = (kw1) entry.getValue();
                    Intrinsics.checkNotNull(str2);
                    String[] strArr = new String[i3];
                    strArr[0] = FacebookConstants.PLACEMENT_IDS_SEPARATOR;
                    List listSplit$default = StringsKt.split$default((CharSequence) str2, strArr, false, 0, 6, (Object) null);
                    if (listSplit$default.size() == 2) {
                        String str3 = (String) listSplit$default.get(0);
                        String str4 = (String) listSplit$default.get(i3);
                        if (arrayList2.isEmpty()) {
                            String lowerCase4 = str4.toLowerCase(Locale.ROOT);
                            Intrinsics.checkNotNullExpressionValue(lowerCase4, "toLowerCase(...)");
                            if (arrayList3.contains(lowerCase4)) {
                                Intrinsics.checkNotNull(kw1Var);
                                for (ev1 ev1Var : kw1Var.v()) {
                                    List listV = ev1Var.v();
                                    Intrinsics.checkNotNullExpressionValue(listV, "getAdaptersList(...)");
                                    linkedHashSet.addAll(listV);
                                    List listX = ev1Var.x();
                                    Intrinsics.checkNotNullExpressionValue(listX, "getWaterfallAdaptersList(...)");
                                    linkedHashSet.addAll(a(listX, ex0Var));
                                }
                            } else {
                                for (String str5 : arrayList3) {
                                    adapterInitializationConfig2 = adapterInitializationConfig2;
                                    lowerCase = str4.toLowerCase(Locale.ROOT);
                                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                                    if (Intrinsics.areEqual(lowerCase, str5)) {
                                        ArrayList arrayList4 = arrayList3;
                                        Iterator it6 = it5;
                                        arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
                                        it = arrayList2.iterator();
                                        while (it.hasNext()) {
                                            arrayList.add(vm.a(jmVar, (String) it.next(), str5));
                                        }
                                        if (arrayList2.contains(str3) || arrayList.contains(str3)) {
                                            Intrinsics.checkNotNull(kw1Var);
                                            for (ev1 ev1Var2 : kw1Var.v()) {
                                                List listV2 = ev1Var2.v();
                                                Intrinsics.checkNotNullExpressionValue(listV2, "getAdaptersList(...)");
                                                linkedHashSet.addAll(listV2);
                                                List listX2 = ev1Var2.x();
                                                Intrinsics.checkNotNullExpressionValue(listX2, "getWaterfallAdaptersList(...)");
                                                linkedHashSet.addAll(a(listX2, ex0Var));
                                            }
                                        }
                                        it5 = it6;
                                        arrayList3 = arrayList4;
                                    }
                                }
                            }
                        } else {
                            while (r14.hasNext()) {
                                adapterInitializationConfig2 = adapterInitializationConfig2;
                                lowerCase = str4.toLowerCase(Locale.ROOT);
                                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                                if (Intrinsics.areEqual(lowerCase, str5)) {
                                    ArrayList arrayList5 = arrayList3;
                                    Iterator it7 = it5;
                                    arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
                                    it = arrayList2.iterator();
                                    while (it.hasNext()) {
                                        arrayList.add(vm.a(jmVar, (String) it.next(), str5));
                                    }
                                    if (arrayList2.contains(str3)) {
                                        Intrinsics.checkNotNull(kw1Var);
                                        while (r0.hasNext()) {
                                            List listV3 = ev1Var2.v();
                                            Intrinsics.checkNotNullExpressionValue(listV3, "getAdaptersList(...)");
                                            linkedHashSet.addAll(listV3);
                                            List listX3 = ev1Var2.x();
                                            Intrinsics.checkNotNullExpressionValue(listX3, "getWaterfallAdaptersList(...)");
                                            linkedHashSet.addAll(a(listX3, ex0Var));
                                        }
                                    } else {
                                        Intrinsics.checkNotNull(kw1Var);
                                        while (r0.hasNext()) {
                                            List listV4 = ev1Var2.v();
                                            Intrinsics.checkNotNullExpressionValue(listV4, "getAdaptersList(...)");
                                            linkedHashSet.addAll(listV4);
                                            List listX4 = ev1Var2.x();
                                            Intrinsics.checkNotNullExpressionValue(listX4, "getWaterfallAdaptersList(...)");
                                            linkedHashSet.addAll(a(listX4, ex0Var));
                                        }
                                    }
                                    it5 = it7;
                                    arrayList3 = arrayList5;
                                }
                            }
                        }
                        i3 = 1;
                    }
                } else {
                    adapterInitializationConfig3 = adapterInitializationConfig2;
                    if (arrayList2.isEmpty()) {
                        Map mapV = jmVar.v();
                        Intrinsics.checkNotNullExpressionValue(mapV, "getAdManagerSignalAdapterConfigsMap(...)");
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        for (Map.Entry entry2 : mapV.entrySet()) {
                            if (((ts) entry2.getValue()).x()) {
                                linkedHashMap.put(entry2.getKey(), entry2.getValue());
                            }
                        }
                        Map mapA = jmVar.A();
                        Intrinsics.checkNotNullExpressionValue(mapA, "getAdmobSignalAdapterConfigsMap(...)");
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        for (Map.Entry entry3 : mapA.entrySet()) {
                            if (((ts) entry3.getValue()).x()) {
                                linkedHashMap2.put(entry3.getKey(), entry3.getValue());
                            }
                        }
                        mapPlus = MapsKt.plus(linkedHashMap, linkedHashMap2);
                    } else {
                        if (!arrayList2.isEmpty()) {
                            for (String str6 : arrayList2) {
                                Regex regex = new Regex(ex0Var.d());
                                String lowerCase5 = str6.toLowerCase(Locale.ROOT);
                                Intrinsics.checkNotNullExpressionValue(lowerCase5, "toLowerCase(...)");
                                if (regex.matches(lowerCase5)) {
                                    z = true;
                                }
                            }
                        }
                        if (arrayList2.isEmpty()) {
                            mapEmptyMap = MapsKt.emptyMap();
                        } else {
                            Iterator it8 = arrayList2.iterator();
                            while (true) {
                                if (it8.hasNext()) {
                                    String str7 = (String) it8.next();
                                    ex0Var.getClass();
                                    Intrinsics.checkNotNullParameter("gads:ad_manager_ad_unit_pattern", C3510b4.i.W);
                                    Intrinsics.checkNotNullParameter("^\\/[0-9]*\\/.*|^\\/[0-9]*,[0-9]*\\/.*", "defaultValue");
                                    Regex regex2 = new Regex((String) ex0Var.a("gads:ad_manager_ad_unit_pattern", "^\\/[0-9]*\\/.*|^\\/[0-9]*,[0-9]*\\/.*", yr.o));
                                    String lowerCase6 = str7.toLowerCase(Locale.ROOT);
                                    Intrinsics.checkNotNullExpressionValue(lowerCase6, "toLowerCase(...)");
                                    if (regex2.matches(lowerCase6)) {
                                        Map mapV2 = jmVar.v();
                                        Intrinsics.checkNotNullExpressionValue(mapV2, "getAdManagerSignalAdapterConfigsMap(...)");
                                        mapEmptyMap = new LinkedHashMap();
                                        for (Map.Entry entry4 : mapV2.entrySet()) {
                                            if (((ts) entry4.getValue()).x()) {
                                                mapEmptyMap.put(entry4.getKey(), entry4.getValue());
                                            }
                                        }
                                    }
                                } else {
                                    mapEmptyMap = MapsKt.emptyMap();
                                }
                            }
                        }
                        if (z) {
                            Map mapA2 = jmVar.A();
                            Intrinsics.checkNotNullExpressionValue(mapA2, "getAdmobSignalAdapterConfigsMap(...)");
                            mapEmptyMap2 = new LinkedHashMap();
                            for (Map.Entry entry5 : mapA2.entrySet()) {
                                if (((ts) entry5.getValue()).x()) {
                                    mapEmptyMap2.put(entry5.getKey(), entry5.getValue());
                                }
                            }
                        } else {
                            mapEmptyMap2 = MapsKt.emptyMap();
                        }
                        mapPlus = MapsKt.plus(mapEmptyMap, mapEmptyMap2);
                    }
                    setPlus = SetsKt.plus((Set) linkedHashSet, (Iterable) mapPlus.keySet());
                }
            }
        }
        return SetsKt.minus(SetsKt.plus((Set) setPlus, (Iterable) a(adapterInitializationConfig3.getAllowedAdapterClasses(), pnVar.d)), (Iterable) adapterInitializationConfig3.getExcludedAdapterClasses());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00f3, code lost:
    
        if (r14 == r1) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r12, java.lang.String r13, p005kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.pn.a(java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Continuation continuation) {
        zm zmVar;
        pn pnVar;
        Mutex mutex;
        if (continuation instanceof zm) {
            zmVar = (zm) continuation;
            int i = zmVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                zmVar.e = i - Integer.MIN_VALUE;
            } else {
                zmVar = new zm(this, continuation);
            }
        } else {
            zmVar = new zm(this, continuation);
        }
        Object obj = zmVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zmVar.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.f;
            zmVar.a = this;
            zmVar.b = mutex2;
            zmVar.e = 1;
            if (mutex2.lock(null, zmVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
            pnVar = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = zmVar.b;
            pnVar = zmVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            String strD = pnVar.g.D();
            if (strD.length() == 0) {
                strD = null;
            }
            return strD;
        } finally {
            mutex.unlock(null);
        }
    }

    public final boolean a(jm jmVar) {
        long rawValue;
        String strB = jmVar.B();
        Intrinsics.checkNotNullExpressionValue(strB, "getAppSettingsJson(...)");
        if (strB.length() == 0) {
            return true;
        }
        ex0 ex0Var = this.d;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:use_server_defined_cld_ttl:enabled", C3510b4.i.W);
        if (((Boolean) ex0Var.a("gads:use_server_defined_cld_ttl:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
            Duration.Companion companion = Duration.INSTANCE;
            long jG = jmVar.G();
            DurationUnit durationUnit = DurationUnit.SECONDS;
            rawValue = DurationKt.toDuration(jG, durationUnit);
            if (Duration.m4372equalsimpl0(rawValue, companion.m4458getZEROUwyO8pc())) {
                ex0 ex0Var2 = this.d;
                ex0Var2.getClass();
                long duration = DurationKt.toDuration(-1, durationUnit);
                Intrinsics.checkNotNullParameter("gads:sdk_defined_cld_ttl_secs", C3510b4.i.W);
                rawValue = ((Duration) ex0Var2.a("gads:sdk_defined_cld_ttl_secs", Duration.m4365boximpl(duration), yr.l)).getRawValue();
            }
        } else {
            ex0 ex0Var3 = this.d;
            ex0Var3.getClass();
            Duration.Companion companion2 = Duration.INSTANCE;
            rawValue = ((Duration) ex0Var3.a("gads:sdk_defined_cld_ttl_secs", wm2.a(-1, DurationUnit.SECONDS, "gads:sdk_defined_cld_ttl_secs", C3510b4.i.W), yr.l)).getRawValue();
        }
        if (Duration.m4366compareToLRDsOJo(rawValue, Duration.INSTANCE.m4458getZEROUwyO8pc()) > 0) {
            this.c.getClass();
            if (Duration.m4366compareToLRDsOJo(DurationKt.toDuration(System.currentTimeMillis() - jmVar.F(), DurationUnit.MILLISECONDS), rawValue) > 0) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(String str, String str2, Continuation continuation) {
        dn dnVar;
        pn pnVar;
        String str3;
        String str4;
        Mutex mutex;
        if (continuation instanceof dn) {
            dnVar = (dn) continuation;
            int i = dnVar.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                dnVar.g = i - Integer.MIN_VALUE;
            } else {
                dnVar = new dn(this, continuation);
            }
        } else {
            dnVar = new dn(this, continuation);
        }
        Object obj = dnVar.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = dnVar.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            if (str == null) {
                return null;
            }
            Locale locale = Locale.ROOT;
            String lowerCase = str2.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            String lowerCase2 = str.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
            Mutex mutex2 = this.f;
            dnVar.a = this;
            dnVar.b = lowerCase;
            dnVar.c = lowerCase2;
            dnVar.d = mutex2;
            dnVar.g = 1;
            if (mutex2.lock(null, dnVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
            pnVar = this;
            str3 = lowerCase;
            str4 = lowerCase2;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = dnVar.d;
            str4 = dnVar.c;
            str3 = dnVar.b;
            pnVar = dnVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            jm jmVar = pnVar.g;
            mutex.unlock(null);
            String str5 = (String) jmVar.x().get(str4 + FacebookConstants.PLACEMENT_IDS_SEPARATOR + str3);
            if (str5 != null) {
                return str5;
            }
            Intrinsics.checkNotNull(jmVar);
            return jmVar.x().get(vm.a(jmVar, str4, str3) + FacebookConstants.PLACEMENT_IDS_SEPARATOR + str3);
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(String str, String str2, Continuation continuation) {
        en enVar;
        pn pnVar;
        String str3;
        String str4;
        Mutex mutex;
        if (continuation instanceof en) {
            enVar = (en) continuation;
            int i = enVar.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                enVar.g = i - Integer.MIN_VALUE;
            } else {
                enVar = new en(this, continuation);
            }
        } else {
            enVar = new en(this, continuation);
        }
        Object obj = enVar.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = enVar.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            if (str == null) {
                return MapsKt.emptyMap();
            }
            Locale locale = Locale.ROOT;
            String lowerCase = str2.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            String lowerCase2 = str.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
            Mutex mutex2 = this.f;
            enVar.a = this;
            enVar.b = lowerCase;
            enVar.c = lowerCase2;
            enVar.d = mutex2;
            enVar.g = 1;
            if (mutex2.lock(null, enVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
            pnVar = this;
            str3 = lowerCase;
            str4 = lowerCase2;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = enVar.d;
            str4 = enVar.c;
            str3 = enVar.b;
            pnVar = enVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            jm jmVar = pnVar.g;
            mutex.unlock(null);
            String str5 = str4 + FacebookConstants.PLACEMENT_IDS_SEPARATOR + str3;
            kw1 kw1Var = (kw1) jmVar.w().get(str5);
            if (kw1Var == null) {
                Intrinsics.checkNotNull(jmVar);
                str5 = vm.a(jmVar, str4, str3) + FacebookConstants.PLACEMENT_IDS_SEPARATOR + str3;
                kw1Var = (kw1) jmVar.w().get(str5);
                if (kw1Var == null) {
                    return MapsKt.emptyMap();
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (ev1 ev1Var : kw1Var.v()) {
                for (String str6 : ev1Var.v()) {
                    if (linkedHashMap.containsKey(str6)) {
                        xs3.a("Duplicate adapter (" + str6 + ") for ad unit + format " + str5);
                    } else {
                        Intrinsics.checkNotNull(str6);
                        Map mapW = ev1Var.w();
                        Intrinsics.checkNotNullExpressionValue(mapW, "getDataMap(...)");
                        linkedHashMap.put(str6, mapW);
                    }
                }
            }
            return linkedHashMap;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }
}
