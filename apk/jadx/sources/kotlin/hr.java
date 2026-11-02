package kotlin;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import com.google.common.base.Splitter;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.tapjoy.TJAdUnitConstants;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class hr implements xw0 {
    public final Context b;
    public final jw0 c;
    public final xb0 d;
    public final cb3 e;
    public final mm f;
    public final AtomicBoolean g;
    public final AtomicBoolean h;
    public final Mutex i;
    public JsonObject j;
    public final AtomicReference k;
    public final AtomicReference l;
    public final AtomicReference m;
    public final AtomicReference n;
    public final AtomicBoolean o;
    public boolean p;
    public boolean q;
    public boolean r;

    public hr(Context applicationContext, jw0 flagDataStore, xb0 csrbDataStore, cb3 sdkCoreDataStore, mm appSettingsDataStore) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(flagDataStore, "flagDataStore");
        Intrinsics.checkNotNullParameter(csrbDataStore, "csrbDataStore");
        Intrinsics.checkNotNullParameter(sdkCoreDataStore, "sdkCoreDataStore");
        Intrinsics.checkNotNullParameter(appSettingsDataStore, "appSettingsDataStore");
        this.b = applicationContext;
        this.c = flagDataStore;
        this.d = csrbDataStore;
        this.e = sdkCoreDataStore;
        this.f = appSettingsDataStore;
        this.g = new AtomicBoolean(false);
        this.h = new AtomicBoolean(false);
        this.i = MutexKt.Mutex$default(false, 1, null);
        j30 j30VarD = k30.D();
        Intrinsics.checkNotNullExpressionValue(j30VarD, "newBuilder(...)");
        this.k = new AtomicReference(l30.a(j30VarD).a());
        gj2 gj2VarY = hj2.y();
        Intrinsics.checkNotNullExpressionValue(gj2VarY, "newBuilder(...)");
        this.l = new AtomicReference(ij2.a(gj2VarY).a());
        xp2 xp2VarY = yp2.y();
        Intrinsics.checkNotNullExpressionValue(xp2VarY, "newBuilder(...)");
        this.m = new AtomicReference(zp2.a(xp2VarY).a());
        this.n = new AtomicReference(MapsKt.emptyMap());
        this.o = new AtomicBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0099 A[PHI: r10
  0x0099: PHI (r10v3 ads_mobile_sdk.hr) = (r10v2 ads_mobile_sdk.hr), (r10v11 ads_mobile_sdk.hr) binds: [B:29:0x0096, B:19:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:34:0x00a9 A[PHI: r10
  0x00a9: PHI (r10v4 ads_mobile_sdk.hr) = (r10v3 ads_mobile_sdk.hr), (r10v12 ads_mobile_sdk.hr) binds: [B:32:0x00a6, B:18:0x0046] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:37:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:41:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00de, code lost:
    
        if (r11 == r1) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlin.hr r10, p005kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.hr.a(ads_mobile_sdk.hr, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static Object a(JsonObject jsonObject, String str, Object obj, Function1 function1) {
        try {
            JsonElement jsonElement = jsonObject.get(str);
            Intrinsics.checkNotNullExpressionValue(jsonElement, "get(...)");
            return function1.invoke(jsonElement);
        } catch (Exception unused) {
            return obj;
        }
    }

    public static final boolean a(hr hrVar, ActivityManager activityManager, JsonObject jsonObject) {
        hrVar.getClass();
        double dMax = Math.max(1.0d, Math.min(((Number) a(jsonObject, "gads:previous_exit_reason_reset_threshold", Double.valueOf(2.0d), wq.a)).doubleValue(), 10.0d));
        int iMax = Math.max(1, Math.min(Math.max(((int) dMax) * 2, ((Number) a(jsonObject, "gads:previous_exit_reasons_to_scan", 10, yq.a)).intValue()), 20));
        xw0.a.getClass();
        JsonObject jsonObject2 = (JsonObject) a(jsonObject, "gads:previous_exit_reason_values", ww0.b, xq.a);
        double dMin = Math.min(1.0d, ((Number) a(jsonObject, "gads:unspecified_exit_reason_value", Double.valueOf(0.25d), zq.a)).doubleValue());
        List<ApplicationExitInfo> historicalProcessExitReasons = activityManager.getHistoricalProcessExitReasons(hrVar.b.getPackageName(), 0, iMax);
        Intrinsics.checkNotNullExpressionValue(historicalProcessExitReasons, "getHistoricalProcessExitReasons(...)");
        double d = 0.0d;
        for (ApplicationExitInfo applicationExitInfo : historicalProcessExitReasons) {
            if (Intrinsics.areEqual(applicationExitInfo.getProcessName(), hrVar.b.getPackageName())) {
                ds1 ds1Var = ds1.a;
                double dA = ds1.a(jsonObject2, String.valueOf(applicationExitInfo.getReason()), dMin);
                d += dA;
                if (dA < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                    break;
                }
                if (d >= dMax) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00a0 A[Catch: all -> 0x0070, TryCatch #0 {all -> 0x0070, blocks: (B:38:0x0096, B:40:0x00a0, B:42:0x00aa, B:44:0x00b9, B:47:0x00df, B:51:0x00ee, B:54:0x00fb, B:58:0x0109, B:60:0x010f, B:62:0x0115, B:64:0x011b, B:65:0x0163, B:67:0x0169, B:68:0x0188, B:25:0x0064, B:32:0x0078), top: B:75:0x0064 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00b9 A[Catch: all -> 0x0070, TRY_LEAVE, TryCatch #0 {all -> 0x0070, blocks: (B:38:0x0096, B:40:0x00a0, B:42:0x00aa, B:44:0x00b9, B:47:0x00df, B:51:0x00ee, B:54:0x00fb, B:58:0x0109, B:60:0x010f, B:62:0x0115, B:64:0x011b, B:65:0x0163, B:67:0x0169, B:68:0x0188, B:25:0x0064, B:32:0x0078), top: B:75:0x0064 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:53:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:56:0x0107  */
    /* JADX WARN: Code duplicated, block: B:57:0x0108  */
    /* JADX WARN: Code duplicated, block: B:60:0x010f A[Catch: all -> 0x0070, TryCatch #0 {all -> 0x0070, blocks: (B:38:0x0096, B:40:0x00a0, B:42:0x00aa, B:44:0x00b9, B:47:0x00df, B:51:0x00ee, B:54:0x00fb, B:58:0x0109, B:60:0x010f, B:62:0x0115, B:64:0x011b, B:65:0x0163, B:67:0x0169, B:68:0x0188, B:25:0x0064, B:32:0x0078), top: B:75:0x0064 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0169 A[Catch: all -> 0x0070, LOOP:0: B:65:0x0163->B:67:0x0169, LOOP_END, TryCatch #0 {all -> 0x0070, blocks: (B:38:0x0096, B:40:0x00a0, B:42:0x00aa, B:44:0x00b9, B:47:0x00df, B:51:0x00ee, B:54:0x00fb, B:58:0x0109, B:60:0x010f, B:62:0x0115, B:64:0x011b, B:65:0x0163, B:67:0x0169, B:68:0x0188, B:25:0x0064, B:32:0x0078), top: B:75:0x0064 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(qb0 qb0Var, Continuation continuation) {
        ar arVar;
        Mutex mutex;
        hr hrVar;
        Throwable th;
        Mutex mutex2;
        hr hrVar2;
        String str;
        String str2;
        String str3;
        String str4;
        LinkedHashMap linkedHashMap;
        Map mapV;
        if (continuation instanceof ar) {
            arVar = (ar) continuation;
            int i = arVar.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                arVar.f = i - Integer.MIN_VALUE;
            } else {
                arVar = new ar(this, continuation);
            }
        } else {
            arVar = new ar(this, continuation);
        }
        Object obj = arVar.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = arVar.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = this.i;
            arVar.a = this;
            arVar.b = qb0Var;
            arVar.c = mutex;
            arVar.f = 1;
            if (mutex.lock(null, arVar) != coroutine_suspended) {
                hrVar = this;
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex2 = (Mutex) arVar.b;
            hrVar2 = arVar.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                qb0 qb0Var2 = (qb0) obj;
                mutex = mutex2;
                qb0Var = qb0Var2;
                hrVar = hrVar2;
                if (qb0Var.x().w() > 0 && qb0Var.y().w() > 0) {
                    mapV = qb0Var.v();
                    Intrinsics.checkNotNullExpressionValue(mapV, "getConcatenatedSignalsMapMap(...)");
                    if (!mapV.isEmpty()) {
                        hrVar.l.set(qb0Var.x());
                        hrVar.m.set(qb0Var.y());
                        hrVar.n.set(qb0Var.v());
                        hrVar.o.set(true);
                        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                        mutex.unlock(null);
                        return unit;
                    }
                }
                str = (String) hrVar.b("test_pattern_matching_flag", cr.a);
                str2 = "";
                if (str == null) {
                    str = "";
                }
                str3 = (String) hrVar.b("test_preprocessing_flag", dr.a);
                if (str3 == null) {
                    str3 = "";
                }
                str4 = (String) hrVar.b("test_concatenated_signals_flag", br.a);
                if (str4 != null) {
                    str2 = str4;
                }
                if (!StringsKt.isBlank(str) && !StringsKt.isBlank(str3) && !StringsKt.isBlank(str2)) {
                    hrVar.l.set(hj2.a(Base64.decode(str, 0)));
                    hrVar.m.set(yp2.a(Base64.decode(str3, 0)));
                    AtomicReference atomicReference = hrVar.n;
                    Map<String, JsonElement> mapAsMap = ((JsonObject) new Gson().fromJson(str2, JsonObject.class)).asMap();
                    Intrinsics.checkNotNullExpressionValue(mapAsMap, "asMap(...)");
                    linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(mapAsMap.size()));
                    for (Object obj2 : mapAsMap.entrySet()) {
                        linkedHashMap.put(((Map.Entry) obj2).getKey(), ((JsonElement) ((Map.Entry) obj2).getValue()).getAsJsonPrimitive().getAsString());
                    }
                    atomicReference.set(linkedHashMap);
                    hrVar.o.set(true);
                }
                mutex2 = mutex;
                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                mutex2.unlock(null);
                return unit2;
            } catch (Throwable th2) {
                th = th2;
                mutex2.unlock(null);
                throw th;
            }
        }
        Mutex mutex3 = arVar.c;
        qb0 qb0Var3 = (qb0) arVar.b;
        hrVar = arVar.a;
        p005kotlin.ResultKt.throwOnFailure(obj);
        mutex = mutex3;
        qb0Var = qb0Var3;
        if (qb0Var == null) {
            try {
                if (!hrVar.o.get()) {
                }
                mutex2 = mutex;
                p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                mutex2.unlock(null);
                return unit3;
            } catch (Throwable th3) {
                Mutex mutex4 = mutex;
                th = th3;
                mutex2 = mutex4;
                mutex2.unlock(null);
                throw th;
            }
        }
        if (qb0Var == null) {
            xb0 xb0Var = hrVar.d;
            arVar.a = hrVar;
            arVar.b = mutex;
            arVar.c = null;
            arVar.f = 2;
            xb0Var.getClass();
            Object objA = xb0.a(xb0Var, arVar);
            if (objA != coroutine_suspended) {
                Mutex mutex5 = mutex;
                obj = objA;
                mutex2 = mutex5;
                hrVar2 = hrVar;
                qb0 qb0Var4 = (qb0) obj;
                mutex = mutex2;
                qb0Var = qb0Var4;
                hrVar = hrVar2;
                if (qb0Var.x().w() > 0) {
                    mapV = qb0Var.v();
                    Intrinsics.checkNotNullExpressionValue(mapV, "getConcatenatedSignalsMapMap(...)");
                    if (!mapV.isEmpty()) {
                        hrVar.l.set(qb0Var.x());
                        hrVar.m.set(qb0Var.y());
                        hrVar.n.set(qb0Var.v());
                        hrVar.o.set(true);
                        p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                        mutex.unlock(null);
                        return unit4;
                    }
                }
                str = (String) hrVar.b("test_pattern_matching_flag", cr.a);
                str2 = "";
                if (str == null) {
                    str = "";
                }
                str3 = (String) hrVar.b("test_preprocessing_flag", dr.a);
                if (str3 == null) {
                    str3 = "";
                }
                str4 = (String) hrVar.b("test_concatenated_signals_flag", br.a);
                if (str4 != null) {
                    str2 = str4;
                }
                if (!StringsKt.isBlank(str)) {
                    hrVar.l.set(hj2.a(Base64.decode(str, 0)));
                    hrVar.m.set(yp2.a(Base64.decode(str3, 0)));
                    AtomicReference atomicReference2 = hrVar.n;
                    Map<String, JsonElement> mapAsMap2 = ((JsonObject) new Gson().fromJson(str2, JsonObject.class)).asMap();
                    Intrinsics.checkNotNullExpressionValue(mapAsMap2, "asMap(...)");
                    linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(mapAsMap2.size()));
                    while (r0.hasNext()) {
                        linkedHashMap.put(((Map.Entry) obj2).getKey(), ((JsonElement) ((Map.Entry) obj2).getValue()).getAsJsonPrimitive().getAsString());
                    }
                    atomicReference2.set(linkedHashMap);
                    hrVar.o.set(true);
                }
            }
            return coroutine_suspended;
        }
        if (qb0Var.x().w() > 0) {
            mapV = qb0Var.v();
            Intrinsics.checkNotNullExpressionValue(mapV, "getConcatenatedSignalsMapMap(...)");
            if (!mapV.isEmpty()) {
                hrVar.l.set(qb0Var.x());
                hrVar.m.set(qb0Var.y());
                hrVar.n.set(qb0Var.v());
                hrVar.o.set(true);
                p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                mutex.unlock(null);
                return unit5;
            }
        }
        str = (String) hrVar.b("test_pattern_matching_flag", cr.a);
        str2 = "";
        if (str == null) {
            str = "";
        }
        str3 = (String) hrVar.b("test_preprocessing_flag", dr.a);
        if (str3 == null) {
            str3 = "";
        }
        str4 = (String) hrVar.b("test_concatenated_signals_flag", br.a);
        if (str4 != null) {
            str2 = str4;
        }
        if (!StringsKt.isBlank(str)) {
            hrVar.l.set(hj2.a(Base64.decode(str, 0)));
            hrVar.m.set(yp2.a(Base64.decode(str3, 0)));
            AtomicReference atomicReference3 = hrVar.n;
            Map<String, JsonElement> mapAsMap3 = ((JsonObject) new Gson().fromJson(str2, JsonObject.class)).asMap();
            Intrinsics.checkNotNullExpressionValue(mapAsMap3, "asMap(...)");
            linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(mapAsMap3.size()));
            while (r0.hasNext()) {
                linkedHashMap.put(((Map.Entry) obj2).getKey(), ((JsonElement) ((Map.Entry) obj2).getValue()).getAsJsonPrimitive().getAsString());
            }
            atomicReference3.set(linkedHashMap);
            hrVar.o.set(true);
        }
        mutex2 = mutex;
        p005kotlin.Unit unit6 = p005kotlin.Unit.INSTANCE;
        mutex2.unlock(null);
        return unit6;
    }

    public final Object a(String key, Function1 converter) {
        ur3 ur3Var;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(converter, "converter");
        if (!this.g.get()) {
            Intrinsics.checkNotNullParameter("Flags have not been initialized!", TJAdUnitConstants.String.MESSAGE);
            Splitter splitter = f01.a;
            f01.b("Flags have not been initialized!", null);
            IllegalStateException illegalStateException = new IllegalStateException("Flags have not been initialized!");
            illegalStateException.printStackTrace();
            bu buVar = au.a;
            if (buVar == bu.DEVELOPMENT || buVar == bu.INTEGRATION_TEST) {
                throw illegalStateException;
            }
            if (buVar == bu.PRODUCTION && (ur3Var = sr3.a) != null) {
                ((as3) ur3Var).a("Flags have not been initialized!", (Throwable) illegalStateException);
            }
        }
        return b(key, converter);
    }

    public final void a() {
        SharedPreferences sharedPreferences = this.b.getSharedPreferences("GoogleMobileAds", 0);
        if (!Intrinsics.areEqual(b("gads:initialize_webview_before_dagger", er.a), Boolean.TRUE)) {
            Intrinsics.checkNotNull(sharedPreferences);
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.remove("early_webview_init_count");
            editorEdit.remove("early_webview_init_profiles");
            editorEdit.apply();
            return;
        }
        Intrinsics.checkNotNull(sharedPreferences);
        SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
        Integer num = (Integer) b("gads:initialize_webview_before_dagger:count", fr.a);
        editorEdit2.putInt("early_webview_init_count", num != null ? num.intValue() : 5);
        editorEdit2.apply();
        String str = (String) b("gads:initialize_webview_before_dagger:profiles", gr.a);
        if (str == null) {
            str = "";
        }
        if (StringsKt.isBlank(str)) {
            return;
        }
        SharedPreferences.Editor editorEdit3 = sharedPreferences.edit();
        editorEdit3.putString("early_webview_init_profiles", str);
        editorEdit3.apply();
    }

    public final Object b(String key, Function1 converter) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(converter, "converter");
        try {
            JsonObject jsonObject = this.j;
            if (jsonObject == null) {
                Intrinsics.throwUninitializedPropertyAccessException("flagJson");
                jsonObject = null;
            }
            JsonElement jsonElement = jsonObject.get(key);
            if (jsonElement == null) {
                return null;
            }
            return converter.invoke(jsonElement);
        } catch (Throwable unused) {
            return null;
        }
    }
}
