package kotlin;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.datastore.core.DataStore;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.android.libraries.ads.mobile.sdk.common.AdInspectorError;
import com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener;
import com.google.common.base.Splitter;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import com.unity3d.services.core.di.ServiceProvider;
import java.io.Closeable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.NonCancellable;
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

/* JADX INFO: loaded from: classes.dex */
public final class if1 extends nc1 implements vk0, cd3, gx0 {
    public static final AdInspectorError N = new AdInspectorError(AdInspectorError.ErrorCode.ALREADY_OPEN, "Ad inspector cannot be opened because it is already open.");
    public static final AdInspectorError O = new AdInspectorError(AdInspectorError.ErrorCode.FAILED_TO_LOAD, "Ad inspector failed to load.");
    public static final AdInspectorError P = new AdInspectorError(AdInspectorError.ErrorCode.INTERNAL_ERROR, "Ad inspector had an internal error.");
    public static final AdInspectorError Q = new AdInspectorError(AdInspectorError.ErrorCode.NOT_IN_TEST_MODE, "Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.");
    public static final AdInspectorError R = new AdInspectorError(AdInspectorError.ErrorCode.DISABLED, "Ad inspector cannot be opened because it is disabled in the AndroidManifest.xml.");
    public JsonObject A;
    public JsonObject B;
    public ae1 C;
    public final Mutex D;
    public long E;
    public final LinkedHashMap F;
    public final LinkedHashMap G;
    public final Mutex H;
    public WeakReference I;
    public final AtomicBoolean J;
    public final AtomicBoolean K;
    public final AtomicBoolean L;
    public Boolean M;
    public final Context c;
    public final CoroutineScope d;
    public final String e;
    public final cw2 f;
    public final cw2 g;
    public final Gson h;
    public final ex0 i;
    public final tx j;
    public final e01 k;
    public final qg1 l;
    public final ek m;
    public final pn n;
    public final fg1 o;
    public final iz3 p;
    public final g83 q;
    public final l43 r;
    public final cw2 s;
    public final rd1 t;
    public final g30 u;
    public final km v;
    public final ja1 w;
    public final Mutex x;
    public og1 y;
    public boolean z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public if1(Context applicationContext, CoroutineScope backgroundScope, String afmaVersion, dw2 shakeDetector, dw2 flickDetector, Gson gson, ex0 flags, tx clock, e01 httpClient, qg1 inspectorSettingsDataStore, ek appInfo, pn appState, fg1 presenterFactory, iz3 webViewFactory, g83 rootTraceCreator, l43 requestConfigurationWrapper, dw2 webViewConfigurator, rd1 inspectorAdapterInfo, g30 consentManager, km appSettings, ja1 initializationConfigWrapper) {
        super(s11.CUI_NAME_SDKINIT_INIT_AD_INSPECTOR, false);
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(shakeDetector, "shakeDetector");
        Intrinsics.checkNotNullParameter(flickDetector, "flickDetector");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(inspectorSettingsDataStore, "inspectorSettingsDataStore");
        Intrinsics.checkNotNullParameter(appInfo, "appInfo");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(presenterFactory, "presenterFactory");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(requestConfigurationWrapper, "requestConfigurationWrapper");
        Intrinsics.checkNotNullParameter(webViewConfigurator, "webViewConfigurator");
        Intrinsics.checkNotNullParameter(inspectorAdapterInfo, "inspectorAdapterInfo");
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        Intrinsics.checkNotNullParameter(appSettings, "appSettings");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        this.c = applicationContext;
        this.d = backgroundScope;
        this.e = afmaVersion;
        this.f = shakeDetector;
        this.g = flickDetector;
        this.h = gson;
        this.i = flags;
        this.j = clock;
        this.k = httpClient;
        this.l = inspectorSettingsDataStore;
        this.m = appInfo;
        this.n = appState;
        this.o = presenterFactory;
        this.p = webViewFactory;
        this.q = rootTraceCreator;
        this.r = requestConfigurationWrapper;
        this.s = webViewConfigurator;
        this.t = inspectorAdapterInfo;
        this.u = consentManager;
        this.v = appSettings;
        this.w = initializationConfigWrapper;
        this.x = MutexKt.Mutex(false);
        this.A = new JsonObject();
        this.B = new JsonObject();
        this.C = ae1.UNKNOWN;
        this.D = MutexKt.Mutex(false);
        this.F = new LinkedHashMap();
        this.G = new LinkedHashMap();
        this.H = MutexKt.Mutex(false);
        this.I = new WeakReference(null);
        this.J = new AtomicBoolean(false);
        this.K = new AtomicBoolean(false);
        this.L = new AtomicBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0386 A[Catch: all -> 0x0259, TRY_ENTER, TryCatch #27 {all -> 0x0259, blocks: (B:64:0x01ed, B:67:0x0219, B:112:0x03e6, B:182:0x05c5, B:183:0x05c8, B:70:0x0244, B:97:0x0348, B:99:0x034d, B:102:0x0386, B:104:0x038e, B:107:0x03c7, B:185:0x05ca, B:186:0x05ce, B:111:0x03e2, B:96:0x0344), top: B:368:0x0038, inners: #10, #15 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x038e A[Catch: all -> 0x0259, TRY_LEAVE, TryCatch #27 {all -> 0x0259, blocks: (B:64:0x01ed, B:67:0x0219, B:112:0x03e6, B:182:0x05c5, B:183:0x05c8, B:70:0x0244, B:97:0x0348, B:99:0x034d, B:102:0x0386, B:104:0x038e, B:107:0x03c7, B:185:0x05ca, B:186:0x05ce, B:111:0x03e2, B:96:0x0344), top: B:368:0x0038, inners: #10, #15 }] */
    /* JADX WARN: Code duplicated, block: B:107:0x03c7 A[Catch: all -> 0x0259, TRY_ENTER, TRY_LEAVE, TryCatch #27 {all -> 0x0259, blocks: (B:64:0x01ed, B:67:0x0219, B:112:0x03e6, B:182:0x05c5, B:183:0x05c8, B:70:0x0244, B:97:0x0348, B:99:0x034d, B:102:0x0386, B:104:0x038e, B:107:0x03c7, B:185:0x05ca, B:186:0x05ce, B:111:0x03e2, B:96:0x0344), top: B:368:0x0038, inners: #10, #15 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:115:0x0403  */
    /* JADX WARN: Code duplicated, block: B:118:0x0410 A[Catch: all -> 0x05b0, TryCatch #2 {all -> 0x05b0, blocks: (B:147:0x0522, B:149:0x0528, B:154:0x0566, B:143:0x04f2, B:129:0x047b, B:131:0x0481, B:136:0x04bf, B:138:0x04c3, B:173:0x05b5, B:174:0x05ba, B:116:0x0406, B:118:0x0410, B:120:0x0414, B:122:0x041a, B:126:0x0458), top: B:371:0x0406 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x0479  */
    /* JADX WARN: Code duplicated, block: B:129:0x047b A[Catch: all -> 0x05b0, PHI: r0 r1 r2 r3 r6 r8 r17 r18 r19 r20
  0x047b: PHI (r0v63 ??) = (r0v170 ??), (r0v171 ??) binds: [B:127:0x0477, B:60:0x01cc] A[DONT_GENERATE, DONT_INLINE]
  0x047b: PHI (r1v42 ??) = (r1v112 ??), (r1v113 ??) binds: [B:127:0x0477, B:60:0x01cc] A[DONT_GENERATE, DONT_INLINE]
  0x047b: PHI (r2v35 ??) = (r2v100 ??), (r2v101 ??) binds: [B:127:0x0477, B:60:0x01cc] A[DONT_GENERATE, DONT_INLINE]
  0x047b: PHI (r3v47 java.lang.Object) = (r3v37 java.lang.Object), (r3v1 java.lang.Object) binds: [B:127:0x0477, B:60:0x01cc] A[DONT_GENERATE, DONT_INLINE]
  0x047b: PHI (r6v30 ??) = (r6v86 ??), (r6v87 ??) binds: [B:127:0x0477, B:60:0x01cc] A[DONT_GENERATE, DONT_INLINE]
  0x047b: PHI (r8v11 ads_mobile_sdk.if1) = (r8v8 ads_mobile_sdk.if1), (r8v13 ads_mobile_sdk.if1) binds: [B:127:0x0477, B:60:0x01cc] A[DONT_GENERATE, DONT_INLINE]
  0x047b: PHI (r17v10 java.lang.String) = (r17v7 java.lang.String), (r17v11 java.lang.String) binds: [B:127:0x0477, B:60:0x01cc] A[DONT_GENERATE, DONT_INLINE]
  0x047b: PHI (r18v9 java.lang.Object) = (r18v7 java.lang.Object), (r18v10 java.lang.Object) binds: [B:127:0x0477, B:60:0x01cc] A[DONT_GENERATE, DONT_INLINE]
  0x047b: PHI (r19v9 java.lang.String) = (r19v7 java.lang.String), (r19v10 java.lang.String) binds: [B:127:0x0477, B:60:0x01cc] A[DONT_GENERATE, DONT_INLINE]
  0x047b: PHI (r20v9 java.lang.String) = (r20v7 java.lang.String), (r20v10 java.lang.String) binds: [B:127:0x0477, B:60:0x01cc] A[DONT_GENERATE, DONT_INLINE], TryCatch #2 {all -> 0x05b0, blocks: (B:147:0x0522, B:149:0x0528, B:154:0x0566, B:143:0x04f2, B:129:0x047b, B:131:0x0481, B:136:0x04bf, B:138:0x04c3, B:173:0x05b5, B:174:0x05ba, B:116:0x0406, B:118:0x0410, B:120:0x0414, B:122:0x041a, B:126:0x0458), top: B:371:0x0406 }] */
    /* JADX WARN: Code duplicated, block: B:131:0x0481 A[Catch: all -> 0x05b0, TRY_LEAVE, TryCatch #2 {all -> 0x05b0, blocks: (B:147:0x0522, B:149:0x0528, B:154:0x0566, B:143:0x04f2, B:129:0x047b, B:131:0x0481, B:136:0x04bf, B:138:0x04c3, B:173:0x05b5, B:174:0x05ba, B:116:0x0406, B:118:0x0410, B:120:0x0414, B:122:0x041a, B:126:0x0458), top: B:371:0x0406 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x04bf A[Catch: all -> 0x05b0, TRY_ENTER, TryCatch #2 {all -> 0x05b0, blocks: (B:147:0x0522, B:149:0x0528, B:154:0x0566, B:143:0x04f2, B:129:0x047b, B:131:0x0481, B:136:0x04bf, B:138:0x04c3, B:173:0x05b5, B:174:0x05ba, B:116:0x0406, B:118:0x0410, B:120:0x0414, B:122:0x041a, B:126:0x0458), top: B:371:0x0406 }] */
    /* JADX WARN: Code duplicated, block: B:138:0x04c3 A[Catch: all -> 0x05b0, TRY_LEAVE, TryCatch #2 {all -> 0x05b0, blocks: (B:147:0x0522, B:149:0x0528, B:154:0x0566, B:143:0x04f2, B:129:0x047b, B:131:0x0481, B:136:0x04bf, B:138:0x04c3, B:173:0x05b5, B:174:0x05ba, B:116:0x0406, B:118:0x0410, B:120:0x0414, B:122:0x041a, B:126:0x0458), top: B:371:0x0406 }] */
    /* JADX WARN: Code duplicated, block: B:141:0x04ee  */
    /* JADX WARN: Code duplicated, block: B:147:0x0522 A[Catch: all -> 0x05b0, PHI: r0 r1 r2 r3 r6 r7 r8
  0x0522: PHI (r0v75 ads_mobile_sdk.r31) = (r0v72 ads_mobile_sdk.r31), (r0v85 ads_mobile_sdk.r31) binds: [B:145:0x051e, B:53:0x018c] A[DONT_GENERATE, DONT_INLINE]
  0x0522: PHI (r1v48 ??) = (r1v108 ??), (r1v109 ??) binds: [B:145:0x051e, B:53:0x018c] A[DONT_GENERATE, DONT_INLINE]
  0x0522: PHI (r2v41 ??) = (r2v96 ??), (r2v97 ??) binds: [B:145:0x051e, B:53:0x018c] A[DONT_GENERATE, DONT_INLINE]
  0x0522: PHI (r3v57 java.lang.Object) = (r3v56 java.lang.Object), (r3v1 java.lang.Object) binds: [B:145:0x051e, B:53:0x018c] A[DONT_GENERATE, DONT_INLINE]
  0x0522: PHI (r6v36 ??) = (r6v82 ??), (r6v83 ??) binds: [B:145:0x051e, B:53:0x018c] A[DONT_GENERATE, DONT_INLINE]
  0x0522: PHI (r7v41 ??) = (r7v83 ??), (r7v84 ??) binds: [B:145:0x051e, B:53:0x018c] A[DONT_GENERATE, DONT_INLINE]
  0x0522: PHI (r8v16 ads_mobile_sdk.if1) = (r8v14 ads_mobile_sdk.if1), (r8v18 ads_mobile_sdk.if1) binds: [B:145:0x051e, B:53:0x018c] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #2 {all -> 0x05b0, blocks: (B:147:0x0522, B:149:0x0528, B:154:0x0566, B:143:0x04f2, B:129:0x047b, B:131:0x0481, B:136:0x04bf, B:138:0x04c3, B:173:0x05b5, B:174:0x05ba, B:116:0x0406, B:118:0x0410, B:120:0x0414, B:122:0x041a, B:126:0x0458), top: B:371:0x0406 }] */
    /* JADX WARN: Code duplicated, block: B:149:0x0528 A[Catch: all -> 0x05b0, TRY_LEAVE, TryCatch #2 {all -> 0x05b0, blocks: (B:147:0x0522, B:149:0x0528, B:154:0x0566, B:143:0x04f2, B:129:0x047b, B:131:0x0481, B:136:0x04bf, B:138:0x04c3, B:173:0x05b5, B:174:0x05ba, B:116:0x0406, B:118:0x0410, B:120:0x0414, B:122:0x041a, B:126:0x0458), top: B:371:0x0406 }] */
    /* JADX WARN: Code duplicated, block: B:154:0x0566 A[Catch: all -> 0x05b0, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x05b0, blocks: (B:147:0x0522, B:149:0x0528, B:154:0x0566, B:143:0x04f2, B:129:0x047b, B:131:0x0481, B:136:0x04bf, B:138:0x04c3, B:173:0x05b5, B:174:0x05ba, B:116:0x0406, B:118:0x0410, B:120:0x0414, B:122:0x041a, B:126:0x0458), top: B:371:0x0406 }] */
    /* JADX WARN: Code duplicated, block: B:157:0x0587  */
    /* JADX WARN: Code duplicated, block: B:160:0x0591 A[Catch: all -> 0x0173, TryCatch #4 {all -> 0x0173, blocks: (B:48:0x016e, B:158:0x0589, B:160:0x0591, B:161:0x0598), top: B:372:0x016e }] */
    /* JADX WARN: Code duplicated, block: B:165:0x05a2 A[Catch: all -> 0x05ad, TRY_LEAVE, TryCatch #1 {all -> 0x05ad, blocks: (B:163:0x059b, B:165:0x05a2), top: B:369:0x059b }] */
    /* JADX WARN: Code duplicated, block: B:173:0x05b5 A[Catch: all -> 0x05b0, TRY_ENTER, TryCatch #2 {all -> 0x05b0, blocks: (B:147:0x0522, B:149:0x0528, B:154:0x0566, B:143:0x04f2, B:129:0x047b, B:131:0x0481, B:136:0x04bf, B:138:0x04c3, B:173:0x05b5, B:174:0x05ba, B:116:0x0406, B:118:0x0410, B:120:0x0414, B:122:0x041a, B:126:0x0458), top: B:371:0x0406 }] */
    /* JADX WARN: Code duplicated, block: B:198:0x05e2 A[Catch: all -> 0x0611, TryCatch #20 {all -> 0x0611, blocks: (B:196:0x05db, B:198:0x05e2, B:200:0x05e6, B:202:0x05ea, B:203:0x05ed, B:205:0x05f1, B:207:0x05f5, B:209:0x05f9, B:210:0x05fa, B:211:0x05ff, B:212:0x0600, B:213:0x0607, B:214:0x0608, B:215:0x060f, B:216:0x0610), top: B:395:0x05db }] */
    /* JADX WARN: Code duplicated, block: B:200:0x05e6 A[Catch: all -> 0x0611, TryCatch #20 {all -> 0x0611, blocks: (B:196:0x05db, B:198:0x05e2, B:200:0x05e6, B:202:0x05ea, B:203:0x05ed, B:205:0x05f1, B:207:0x05f5, B:209:0x05f9, B:210:0x05fa, B:211:0x05ff, B:212:0x0600, B:213:0x0607, B:214:0x0608, B:215:0x060f, B:216:0x0610), top: B:395:0x05db }] */
    /* JADX WARN: Code duplicated, block: B:205:0x05f1 A[Catch: all -> 0x0611, TryCatch #20 {all -> 0x0611, blocks: (B:196:0x05db, B:198:0x05e2, B:200:0x05e6, B:202:0x05ea, B:203:0x05ed, B:205:0x05f1, B:207:0x05f5, B:209:0x05f9, B:210:0x05fa, B:211:0x05ff, B:212:0x0600, B:213:0x0607, B:214:0x0608, B:215:0x060f, B:216:0x0610), top: B:395:0x05db }] */
    /* JADX WARN: Code duplicated, block: B:207:0x05f5 A[Catch: all -> 0x0611, TryCatch #20 {all -> 0x0611, blocks: (B:196:0x05db, B:198:0x05e2, B:200:0x05e6, B:202:0x05ea, B:203:0x05ed, B:205:0x05f1, B:207:0x05f5, B:209:0x05f9, B:210:0x05fa, B:211:0x05ff, B:212:0x0600, B:213:0x0607, B:214:0x0608, B:215:0x060f, B:216:0x0610), top: B:395:0x05db }] */
    /* JADX WARN: Code duplicated, block: B:209:0x05f9 A[Catch: all -> 0x0611, TryCatch #20 {all -> 0x0611, blocks: (B:196:0x05db, B:198:0x05e2, B:200:0x05e6, B:202:0x05ea, B:203:0x05ed, B:205:0x05f1, B:207:0x05f5, B:209:0x05f9, B:210:0x05fa, B:211:0x05ff, B:212:0x0600, B:213:0x0607, B:214:0x0608, B:215:0x060f, B:216:0x0610), top: B:395:0x05db }] */
    /* JADX WARN: Code duplicated, block: B:210:0x05fa A[Catch: all -> 0x0611, TryCatch #20 {all -> 0x0611, blocks: (B:196:0x05db, B:198:0x05e2, B:200:0x05e6, B:202:0x05ea, B:203:0x05ed, B:205:0x05f1, B:207:0x05f5, B:209:0x05f9, B:210:0x05fa, B:211:0x05ff, B:212:0x0600, B:213:0x0607, B:214:0x0608, B:215:0x060f, B:216:0x0610), top: B:395:0x05db }] */
    /* JADX WARN: Code duplicated, block: B:212:0x0600 A[Catch: all -> 0x0611, TryCatch #20 {all -> 0x0611, blocks: (B:196:0x05db, B:198:0x05e2, B:200:0x05e6, B:202:0x05ea, B:203:0x05ed, B:205:0x05f1, B:207:0x05f5, B:209:0x05f9, B:210:0x05fa, B:211:0x05ff, B:212:0x0600, B:213:0x0607, B:214:0x0608, B:215:0x060f, B:216:0x0610), top: B:395:0x05db }] */
    /* JADX WARN: Code duplicated, block: B:214:0x0608 A[Catch: all -> 0x0611, TryCatch #20 {all -> 0x0611, blocks: (B:196:0x05db, B:198:0x05e2, B:200:0x05e6, B:202:0x05ea, B:203:0x05ed, B:205:0x05f1, B:207:0x05f5, B:209:0x05f9, B:210:0x05fa, B:211:0x05ff, B:212:0x0600, B:213:0x0607, B:214:0x0608, B:215:0x060f, B:216:0x0610), top: B:395:0x05db }] */
    /* JADX WARN: Code duplicated, block: B:216:0x0610 A[Catch: all -> 0x0611, TRY_LEAVE, TryCatch #20 {all -> 0x0611, blocks: (B:196:0x05db, B:198:0x05e2, B:200:0x05e6, B:202:0x05ea, B:203:0x05ed, B:205:0x05f1, B:207:0x05f5, B:209:0x05f9, B:210:0x05fa, B:211:0x05ff, B:212:0x0600, B:213:0x0607, B:214:0x0608, B:215:0x060f, B:216:0x0610), top: B:395:0x05db }] */
    /* JADX WARN: Code duplicated, block: B:231:0x0654 A[Catch: all -> 0x0944, TRY_LEAVE, TryCatch #12 {all -> 0x0944, blocks: (B:229:0x064f, B:231:0x0654, B:234:0x068d), top: B:384:0x064f }] */
    /* JADX WARN: Code duplicated, block: B:234:0x068d A[Catch: all -> 0x0944, TRY_ENTER, TRY_LEAVE, TryCatch #12 {all -> 0x0944, blocks: (B:229:0x064f, B:231:0x0654, B:234:0x068d), top: B:384:0x064f }] */
    /* JADX WARN: Code duplicated, block: B:239:0x06ac  */
    /* JADX WARN: Code duplicated, block: B:243:0x06bb A[Catch: all -> 0x0129, TRY_LEAVE, TryCatch #0 {all -> 0x0129, blocks: (B:32:0x00d2, B:266:0x07bc, B:35:0x00f4, B:256:0x0755, B:325:0x0937, B:326:0x093a, B:38:0x011a, B:241:0x06b6, B:243:0x06bb, B:246:0x06f4, B:248:0x06fc, B:251:0x0735, B:328:0x093c, B:329:0x0940, B:255:0x0751, B:240:0x06b2), top: B:368:0x0038, inners: #5, #7 }] */
    /* JADX WARN: Code duplicated, block: B:246:0x06f4 A[Catch: all -> 0x0129, TRY_ENTER, TryCatch #0 {all -> 0x0129, blocks: (B:32:0x00d2, B:266:0x07bc, B:35:0x00f4, B:256:0x0755, B:325:0x0937, B:326:0x093a, B:38:0x011a, B:241:0x06b6, B:243:0x06bb, B:246:0x06f4, B:248:0x06fc, B:251:0x0735, B:328:0x093c, B:329:0x0940, B:255:0x0751, B:240:0x06b2), top: B:368:0x0038, inners: #5, #7 }] */
    /* JADX WARN: Code duplicated, block: B:248:0x06fc A[Catch: all -> 0x0129, TRY_LEAVE, TryCatch #0 {all -> 0x0129, blocks: (B:32:0x00d2, B:266:0x07bc, B:35:0x00f4, B:256:0x0755, B:325:0x0937, B:326:0x093a, B:38:0x011a, B:241:0x06b6, B:243:0x06bb, B:246:0x06f4, B:248:0x06fc, B:251:0x0735, B:328:0x093c, B:329:0x0940, B:255:0x0751, B:240:0x06b2), top: B:368:0x0038, inners: #5, #7 }] */
    /* JADX WARN: Code duplicated, block: B:251:0x0735 A[Catch: all -> 0x0129, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0129, blocks: (B:32:0x00d2, B:266:0x07bc, B:35:0x00f4, B:256:0x0755, B:325:0x0937, B:326:0x093a, B:38:0x011a, B:241:0x06b6, B:243:0x06bb, B:246:0x06f4, B:248:0x06fc, B:251:0x0735, B:328:0x093c, B:329:0x0940, B:255:0x0751, B:240:0x06b2), top: B:368:0x0038, inners: #5, #7 }] */
    /* JADX WARN: Code duplicated, block: B:254:0x0750  */
    /* JADX WARN: Code duplicated, block: B:261:0x077d A[Catch: all -> 0x07c3, TryCatch #11 {all -> 0x07c3, blocks: (B:259:0x0773, B:261:0x077d, B:263:0x0781, B:265:0x0787, B:271:0x07c9), top: B:383:0x0773 }] */
    /* JADX WARN: Code duplicated, block: B:274:0x07ed  */
    /* JADX WARN: Code duplicated, block: B:277:0x07fa A[Catch: all -> 0x0099, TRY_LEAVE, TryCatch #28 {all -> 0x0099, blocks: (B:18:0x0072, B:21:0x008d, B:290:0x086f, B:275:0x07f4, B:277:0x07fa, B:284:0x083d, B:286:0x0841, B:317:0x0928, B:318:0x092d), top: B:368:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:284:0x083d A[Catch: all -> 0x0099, TRY_ENTER, TryCatch #28 {all -> 0x0099, blocks: (B:18:0x0072, B:21:0x008d, B:290:0x086f, B:275:0x07f4, B:277:0x07fa, B:284:0x083d, B:286:0x0841, B:317:0x0928, B:318:0x092d), top: B:368:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:286:0x0841 A[Catch: all -> 0x0099, TryCatch #28 {all -> 0x0099, blocks: (B:18:0x0072, B:21:0x008d, B:290:0x086f, B:275:0x07f4, B:277:0x07fa, B:284:0x083d, B:286:0x0841, B:317:0x0928, B:318:0x092d), top: B:368:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:288:0x086b  */
    /* JADX WARN: Code duplicated, block: B:289:0x086d  */
    /* JADX WARN: Code duplicated, block: B:293:0x0899 A[Catch: all -> 0x00bb, PHI: r0 r1 r2 r3 r6 r7 r8
  0x0899: PHI (r0v146 ads_mobile_sdk.r31) = (r0v143 ads_mobile_sdk.r31), (r0v157 ads_mobile_sdk.r31) binds: [B:291:0x0896, B:18:0x0072] A[DONT_GENERATE, DONT_INLINE]
  0x0899: PHI (r1v86 ??) = (r1v96 ??), (r1v97 ??) binds: [B:291:0x0896, B:18:0x0072] A[DONT_GENERATE, DONT_INLINE]
  0x0899: PHI (r2v71 ??) = (r2v79 ??), (r2v80 ??) binds: [B:291:0x0896, B:18:0x0072] A[DONT_GENERATE, DONT_INLINE]
  0x0899: PHI (r3v106 java.lang.Object) = (r3v105 java.lang.Object), (r3v1 java.lang.Object) binds: [B:291:0x0896, B:18:0x0072] A[DONT_GENERATE, DONT_INLINE]
  0x0899: PHI (r6v74 ??) = (r6v77 ??), (r6v78 ??) binds: [B:291:0x0896, B:18:0x0072] A[DONT_GENERATE, DONT_INLINE]
  0x0899: PHI (r7v72 ??) = (r7v80 ??), (r7v81 ??) binds: [B:291:0x0896, B:18:0x0072] A[DONT_GENERATE, DONT_INLINE]
  0x0899: PHI (r8v36 ads_mobile_sdk.if1) = (r8v34 ads_mobile_sdk.if1), (r8v38 ads_mobile_sdk.if1) binds: [B:291:0x0896, B:18:0x0072] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #8 {all -> 0x00bb, blocks: (B:293:0x0899, B:295:0x089f, B:302:0x08e1, B:26:0x00b0), top: B:380:0x00b0 }] */
    /* JADX WARN: Code duplicated, block: B:295:0x089f A[Catch: all -> 0x00bb, TRY_LEAVE, TryCatch #8 {all -> 0x00bb, blocks: (B:293:0x0899, B:295:0x089f, B:302:0x08e1, B:26:0x00b0), top: B:380:0x00b0 }] */
    /* JADX WARN: Code duplicated, block: B:302:0x08e1 A[Catch: all -> 0x00bb, TRY_ENTER, TRY_LEAVE, TryCatch #8 {all -> 0x00bb, blocks: (B:293:0x0899, B:295:0x089f, B:302:0x08e1, B:26:0x00b0), top: B:380:0x00b0 }] */
    /* JADX WARN: Code duplicated, block: B:305:0x0901  */
    /* JADX WARN: Code duplicated, block: B:308:0x090b A[Catch: all -> 0x005a, TryCatch #29 {all -> 0x005a, blocks: (B:13:0x0055, B:306:0x0903, B:308:0x090b, B:309:0x0912), top: B:405:0x0055 }] */
    /* JADX WARN: Code duplicated, block: B:313:0x091c A[Catch: all -> 0x0932, TRY_LEAVE, TryCatch #3 {all -> 0x0932, blocks: (B:311:0x0915, B:313:0x091c, B:319:0x092e, B:320:0x0931), top: B:368:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:317:0x0928 A[Catch: all -> 0x0099, TRY_ENTER, TryCatch #28 {all -> 0x0099, blocks: (B:18:0x0072, B:21:0x008d, B:290:0x086f, B:275:0x07f4, B:277:0x07fa, B:284:0x083d, B:286:0x0841, B:317:0x0928, B:318:0x092d), top: B:368:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:343:0x095d A[Catch: all -> 0x098c, TryCatch #16 {all -> 0x098c, blocks: (B:341:0x0956, B:343:0x095d, B:345:0x0961, B:347:0x0965, B:348:0x0968, B:350:0x096c, B:352:0x0970, B:354:0x0974, B:355:0x0975, B:356:0x097a, B:357:0x097b, B:358:0x0982, B:359:0x0983, B:360:0x098a, B:361:0x098b), top: B:391:0x0956 }] */
    /* JADX WARN: Code duplicated, block: B:345:0x0961 A[Catch: all -> 0x098c, TryCatch #16 {all -> 0x098c, blocks: (B:341:0x0956, B:343:0x095d, B:345:0x0961, B:347:0x0965, B:348:0x0968, B:350:0x096c, B:352:0x0970, B:354:0x0974, B:355:0x0975, B:356:0x097a, B:357:0x097b, B:358:0x0982, B:359:0x0983, B:360:0x098a, B:361:0x098b), top: B:391:0x0956 }] */
    /* JADX WARN: Code duplicated, block: B:350:0x096c A[Catch: all -> 0x098c, TryCatch #16 {all -> 0x098c, blocks: (B:341:0x0956, B:343:0x095d, B:345:0x0961, B:347:0x0965, B:348:0x0968, B:350:0x096c, B:352:0x0970, B:354:0x0974, B:355:0x0975, B:356:0x097a, B:357:0x097b, B:358:0x0982, B:359:0x0983, B:360:0x098a, B:361:0x098b), top: B:391:0x0956 }] */
    /* JADX WARN: Code duplicated, block: B:352:0x0970 A[Catch: all -> 0x098c, TryCatch #16 {all -> 0x098c, blocks: (B:341:0x0956, B:343:0x095d, B:345:0x0961, B:347:0x0965, B:348:0x0968, B:350:0x096c, B:352:0x0970, B:354:0x0974, B:355:0x0975, B:356:0x097a, B:357:0x097b, B:358:0x0982, B:359:0x0983, B:360:0x098a, B:361:0x098b), top: B:391:0x0956 }] */
    /* JADX WARN: Code duplicated, block: B:354:0x0974 A[Catch: all -> 0x098c, TryCatch #16 {all -> 0x098c, blocks: (B:341:0x0956, B:343:0x095d, B:345:0x0961, B:347:0x0965, B:348:0x0968, B:350:0x096c, B:352:0x0970, B:354:0x0974, B:355:0x0975, B:356:0x097a, B:357:0x097b, B:358:0x0982, B:359:0x0983, B:360:0x098a, B:361:0x098b), top: B:391:0x0956 }] */
    /* JADX WARN: Code duplicated, block: B:355:0x0975 A[Catch: all -> 0x098c, TryCatch #16 {all -> 0x098c, blocks: (B:341:0x0956, B:343:0x095d, B:345:0x0961, B:347:0x0965, B:348:0x0968, B:350:0x096c, B:352:0x0970, B:354:0x0974, B:355:0x0975, B:356:0x097a, B:357:0x097b, B:358:0x0982, B:359:0x0983, B:360:0x098a, B:361:0x098b), top: B:391:0x0956 }] */
    /* JADX WARN: Code duplicated, block: B:357:0x097b A[Catch: all -> 0x098c, TryCatch #16 {all -> 0x098c, blocks: (B:341:0x0956, B:343:0x095d, B:345:0x0961, B:347:0x0965, B:348:0x0968, B:350:0x096c, B:352:0x0970, B:354:0x0974, B:355:0x0975, B:356:0x097a, B:357:0x097b, B:358:0x0982, B:359:0x0983, B:360:0x098a, B:361:0x098b), top: B:391:0x0956 }] */
    /* JADX WARN: Code duplicated, block: B:359:0x0983 A[Catch: all -> 0x098c, TryCatch #16 {all -> 0x098c, blocks: (B:341:0x0956, B:343:0x095d, B:345:0x0961, B:347:0x0965, B:348:0x0968, B:350:0x096c, B:352:0x0970, B:354:0x0974, B:355:0x0975, B:356:0x097a, B:357:0x097b, B:358:0x0982, B:359:0x0983, B:360:0x098a, B:361:0x098b), top: B:391:0x0956 }] */
    /* JADX WARN: Code duplicated, block: B:361:0x098b A[Catch: all -> 0x098c, TRY_LEAVE, TryCatch #16 {all -> 0x098c, blocks: (B:341:0x0956, B:343:0x095d, B:345:0x0961, B:347:0x0965, B:348:0x0968, B:350:0x096c, B:352:0x0970, B:354:0x0974, B:355:0x0975, B:356:0x097a, B:357:0x097b, B:358:0x0982, B:359:0x0983, B:360:0x098a, B:361:0x098b), top: B:391:0x0956 }] */
    /* JADX WARN: Code duplicated, block: B:383:0x0773 A[EXC_TOP_SPLITTER, PHI: r0 r1 r2 r3 r7 r8 r11 r12 r13 r14
  0x0773: PHI (r0v125 ??) = (r0v168 ??), (r0v131 ??) binds: [B:257:0x076f, B:33:0x00d5] A[DONT_GENERATE, DONT_INLINE]
  0x0773: PHI (r1v74 ??) = (r1v101 ??), (r1v102 ??) binds: [B:257:0x076f, B:33:0x00d5] A[DONT_GENERATE, DONT_INLINE]
  0x0773: PHI (r2v59 ??) = (r2v86 ??), (r2v87 ??) binds: [B:257:0x076f, B:33:0x00d5] A[DONT_GENERATE, DONT_INLINE]
  0x0773: PHI (r3v92 kotlinx.coroutines.sync.Mutex) = (r3v91 kotlinx.coroutines.sync.Mutex), (r3v95 kotlinx.coroutines.sync.Mutex) binds: [B:257:0x076f, B:33:0x00d5] A[DONT_GENERATE, DONT_INLINE]
  0x0773: PHI (r7v57 java.lang.String) = (r7v55 java.lang.String), (r7v0 java.lang.String) binds: [B:257:0x076f, B:33:0x00d5] A[DONT_GENERATE, DONT_INLINE]
  0x0773: PHI (r8v27 ads_mobile_sdk.if1) = (r8v23 ads_mobile_sdk.if1), (r8v29 ads_mobile_sdk.if1) binds: [B:257:0x076f, B:33:0x00d5] A[DONT_GENERATE, DONT_INLINE]
  0x0773: PHI (r11v24 java.lang.String) = (r11v22 java.lang.String), (r11v26 java.lang.String) binds: [B:257:0x076f, B:33:0x00d5] A[DONT_GENERATE, DONT_INLINE]
  0x0773: PHI (r12v17 java.lang.String) = (r12v15 java.lang.String), (r12v19 java.lang.String) binds: [B:257:0x076f, B:33:0x00d5] A[DONT_GENERATE, DONT_INLINE]
  0x0773: PHI (r13v15 java.lang.String) = (r13v13 java.lang.String), (r13v17 java.lang.String) binds: [B:257:0x076f, B:33:0x00d5] A[DONT_GENERATE, DONT_INLINE]
  0x0773: PHI (r14v14 java.lang.Object) = (r14v12 java.lang.Object), (r14v15 java.lang.Object) binds: [B:257:0x076f, B:33:0x00d5] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Code duplicated, block: B:89:0x02eb A[Catch: all -> 0x05d1, TRY_LEAVE, TryCatch #19 {all -> 0x05d1, blocks: (B:87:0x02e6, B:89:0x02eb, B:92:0x0324, B:192:0x05d5, B:193:0x05d8, B:86:0x02e2), top: B:394:0x02e2, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x0324 A[Catch: all -> 0x05d1, TRY_ENTER, TRY_LEAVE, TryCatch #19 {all -> 0x05d1, blocks: (B:87:0x02e6, B:89:0x02eb, B:92:0x0324, B:192:0x05d5, B:193:0x05d8, B:86:0x02e2), top: B:394:0x02e2, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x033e  */
    /* JADX WARN: Code duplicated, block: B:99:0x034d A[Catch: all -> 0x0259, TRY_LEAVE, TryCatch #27 {all -> 0x0259, blocks: (B:64:0x01ed, B:67:0x0219, B:112:0x03e6, B:182:0x05c5, B:183:0x05c8, B:70:0x0244, B:97:0x0348, B:99:0x034d, B:102:0x0386, B:104:0x038e, B:107:0x03c7, B:185:0x05ca, B:186:0x05ce, B:111:0x03e2, B:96:0x0344), top: B:368:0x0038, inners: #10, #15 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v111, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v119 */
    /* JADX WARN: Type inference failed for: r0v120, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v124 */
    /* JADX WARN: Type inference failed for: r0v125, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v131 */
    /* JADX WARN: Type inference failed for: r0v132, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v166 */
    /* JADX WARN: Type inference failed for: r0v167 */
    /* JADX WARN: Type inference failed for: r0v168 */
    /* JADX WARN: Type inference failed for: r0v169 */
    /* JADX WARN: Type inference failed for: r0v170 */
    /* JADX WARN: Type inference failed for: r0v171 */
    /* JADX WARN: Type inference failed for: r0v172 */
    /* JADX WARN: Type inference failed for: r0v173 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v42, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v51, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v55 */
    /* JADX WARN: Type inference failed for: r0v56, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v62 */
    /* JADX WARN: Type inference failed for: r0v63, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v98 */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v12, types: [ads_mobile_sdk.ae1] */
    /* JADX WARN: Type inference failed for: r15v14 */
    /* JADX WARN: Type inference failed for: r15v30 */
    /* JADX WARN: Type inference failed for: r15v31 */
    /* JADX WARN: Type inference failed for: r15v32 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v100 */
    /* JADX WARN: Type inference failed for: r1v101 */
    /* JADX WARN: Type inference failed for: r1v102 */
    /* JADX WARN: Type inference failed for: r1v103 */
    /* JADX WARN: Type inference failed for: r1v104 */
    /* JADX WARN: Type inference failed for: r1v105 */
    /* JADX WARN: Type inference failed for: r1v106 */
    /* JADX WARN: Type inference failed for: r1v107 */
    /* JADX WARN: Type inference failed for: r1v108 */
    /* JADX WARN: Type inference failed for: r1v109 */
    /* JADX WARN: Type inference failed for: r1v110 */
    /* JADX WARN: Type inference failed for: r1v111 */
    /* JADX WARN: Type inference failed for: r1v112 */
    /* JADX WARN: Type inference failed for: r1v113 */
    /* JADX WARN: Type inference failed for: r1v114 */
    /* JADX WARN: Type inference failed for: r1v115 */
    /* JADX WARN: Type inference failed for: r1v116 */
    /* JADX WARN: Type inference failed for: r1v117 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v34, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v38, types: [java.lang.Object, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v41 */
    /* JADX WARN: Type inference failed for: r1v42, types: [java.lang.Object, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v45, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v48, types: [java.lang.Object, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v51 */
    /* JADX WARN: Type inference failed for: r1v52, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v55, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v58 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v66 */
    /* JADX WARN: Type inference failed for: r1v68, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v71, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v74, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v75 */
    /* JADX WARN: Type inference failed for: r1v76 */
    /* JADX WARN: Type inference failed for: r1v79, types: [java.lang.Object, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v80 */
    /* JADX WARN: Type inference failed for: r1v82, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v83, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v86, types: [java.lang.Object, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v89 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r1v90, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v93, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v94 */
    /* JADX WARN: Type inference failed for: r1v95 */
    /* JADX WARN: Type inference failed for: r1v96 */
    /* JADX WARN: Type inference failed for: r1v97 */
    /* JADX WARN: Type inference failed for: r1v98 */
    /* JADX WARN: Type inference failed for: r1v99 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v100 */
    /* JADX WARN: Type inference failed for: r2v101 */
    /* JADX WARN: Type inference failed for: r2v102 */
    /* JADX WARN: Type inference failed for: r2v103 */
    /* JADX WARN: Type inference failed for: r2v104 */
    /* JADX WARN: Type inference failed for: r2v105 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v22, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v27, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v31, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v38, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v41, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v44, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v47, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v48 */
    /* JADX WARN: Type inference failed for: r2v49 */
    /* JADX WARN: Type inference failed for: r2v51, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v52 */
    /* JADX WARN: Type inference failed for: r2v53, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v56, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v59, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v60 */
    /* JADX WARN: Type inference failed for: r2v61 */
    /* JADX WARN: Type inference failed for: r2v64, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v65 */
    /* JADX WARN: Type inference failed for: r2v68, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v71, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v74, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v77 */
    /* JADX WARN: Type inference failed for: r2v78 */
    /* JADX WARN: Type inference failed for: r2v79 */
    /* JADX WARN: Type inference failed for: r2v80 */
    /* JADX WARN: Type inference failed for: r2v81 */
    /* JADX WARN: Type inference failed for: r2v82 */
    /* JADX WARN: Type inference failed for: r2v83 */
    /* JADX WARN: Type inference failed for: r2v84 */
    /* JADX WARN: Type inference failed for: r2v85 */
    /* JADX WARN: Type inference failed for: r2v86 */
    /* JADX WARN: Type inference failed for: r2v87 */
    /* JADX WARN: Type inference failed for: r2v88 */
    /* JADX WARN: Type inference failed for: r2v89 */
    /* JADX WARN: Type inference failed for: r2v90 */
    /* JADX WARN: Type inference failed for: r2v91 */
    /* JADX WARN: Type inference failed for: r2v92 */
    /* JADX WARN: Type inference failed for: r2v93 */
    /* JADX WARN: Type inference failed for: r2v94 */
    /* JADX WARN: Type inference failed for: r2v95 */
    /* JADX WARN: Type inference failed for: r2v96 */
    /* JADX WARN: Type inference failed for: r2v97 */
    /* JADX WARN: Type inference failed for: r2v98 */
    /* JADX WARN: Type inference failed for: r2v99 */
    /* JADX WARN: Type inference failed for: r3v109, types: [ads_mobile_sdk.gg1] */
    /* JADX WARN: Type inference failed for: r3v113 */
    /* JADX WARN: Type inference failed for: r3v118 */
    /* JADX WARN: Type inference failed for: r3v12, types: [ads_mobile_sdk.tu2, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v120 */
    /* JADX WARN: Type inference failed for: r3v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v60, types: [ads_mobile_sdk.gg1] */
    /* JADX WARN: Type inference failed for: r3v67 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v70 */
    /* JADX WARN: Type inference failed for: r3v8, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v14, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r6v0, types: [int] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v26, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v29 */
    /* JADX WARN: Type inference failed for: r6v30, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v33, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v36, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v63 */
    /* JADX WARN: Type inference failed for: r6v68, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v70, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v71, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v74, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v77 */
    /* JADX WARN: Type inference failed for: r6v78 */
    /* JADX WARN: Type inference failed for: r6v79 */
    /* JADX WARN: Type inference failed for: r6v80 */
    /* JADX WARN: Type inference failed for: r6v81 */
    /* JADX WARN: Type inference failed for: r6v82 */
    /* JADX WARN: Type inference failed for: r6v83 */
    /* JADX WARN: Type inference failed for: r6v84 */
    /* JADX WARN: Type inference failed for: r6v85 */
    /* JADX WARN: Type inference failed for: r6v86 */
    /* JADX WARN: Type inference failed for: r6v87 */
    /* JADX WARN: Type inference failed for: r7v34 */
    /* JADX WARN: Type inference failed for: r7v38, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v41, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener] */
    /* JADX WARN: Type inference failed for: r7v65 */
    /* JADX WARN: Type inference failed for: r7v69, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v72, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener] */
    /* JADX WARN: Type inference failed for: r7v80 */
    /* JADX WARN: Type inference failed for: r7v81 */
    /* JADX WARN: Type inference failed for: r7v82 */
    /* JADX WARN: Type inference failed for: r7v83 */
    /* JADX WARN: Type inference failed for: r7v84 */
    /* JADX WARN: Type inference failed for: r7v85 */
    public static Object a(if1 if1Var, ae1 ae1Var, OnAdInspectorClosedListener onAdInspectorClosedListener, Continuation continuation) {
        qe1 qe1Var;
        ?? r5;
        ?? A;
        ?? r3;
        ?? r2;
        ?? r4;
        String str;
        Object obj;
        String str2;
        String str3;
        String str4;
        String str5;
        Object obj2;
        String str6;
        String str7;
        Mutex mutex;
        Object obj3;
        ae1 ae1Var2;
        ?? r22;
        Mutex mutex2;
        Object obj4;
        ?? r15;
        ?? r6;
        boolean zK;
        Mutex mutex3;
        Object obj5;
        if1 if1Var2;
        ?? r0;
        ?? r16;
        boolean zL;
        Mutex mutex4;
        Object obj6;
        if1 if1Var3;
        ?? r17;
        ?? r1;
        Mutex mutex5;
        ?? r7;
        ?? r8;
        ?? r9;
        eg1 eg1Var;
        AtomicBoolean atomicBoolean;
        ?? r10;
        ?? r11;
        ?? r12;
        ?? r13;
        v01 v01Var;
        r31 r31Var;
        yd1 yd1Var;
        nr1 nr1VarC;
        ?? r14;
        r31 r31Var2;
        ?? r18;
        ?? r19;
        ?? r20;
        ?? r21;
        ?? r23;
        ?? r24;
        ?? r25;
        v01 v01Var2;
        eg1 eg1VarA;
        if1 if1Var4;
        ?? r26;
        Object obj7;
        Closeable closeable;
        ?? r27;
        boolean zK2;
        Mutex mutex6;
        ?? r110;
        ae1 ae1Var3;
        Object obj8;
        if1 if1Var5;
        ?? r28;
        ae1 ae1Var4;
        boolean zL2;
        Mutex mutex7;
        Object obj9;
        if1 if1Var6;
        ?? r29;
        Mutex mutex8;
        ?? r30;
        ?? r31;
        ?? r32;
        eg1 eg1Var2;
        Object objA;
        ?? r33;
        ?? r34;
        ?? r35;
        AtomicBoolean atomicBoolean2;
        ?? r36;
        v01 v01Var3;
        r31 r31Var3;
        yd1 yd1Var2;
        nr1 nr1VarC2;
        ?? r37;
        r31 r31Var4;
        ?? r38;
        ?? r39;
        ?? r40;
        ?? r41;
        ?? r42;
        ?? r43;
        ?? r44;
        v01 v01Var4;
        eg1 eg1VarA2;
        if1 if1Var7;
        ?? r45;
        Object obj10;
        if1 if1Var8 = if1Var;
        ?? r46 = ae1Var;
        ?? r47 = onAdInspectorClosedListener;
        if (continuation instanceof qe1) {
            qe1Var = (qe1) continuation;
            int i = qe1Var.i;
            if ((i & Integer.MIN_VALUE) != 0) {
                qe1Var.i = i - Integer.MIN_VALUE;
            } else {
                qe1Var = new qe1(if1Var8, continuation);
            }
        } else {
            qe1Var = new qe1(if1Var8, continuation);
        }
        Object objA2 = qe1Var.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r48 = qe1Var.i;
        String str8 = "Ad inspector cannot be opened because it is already open.";
        ?? r111 = "Ad inspector cannot be opened because it is disabled in the AndroidManifest.xml.";
        try {
            try {
                try {
                    try {
                        try {
                            try {
                                switch (r48) {
                                    case 0:
                                        p005kotlin.ResultKt.throwOnFailure(objA2);
                                        g83 g83Var = if1Var8.q;
                                        s11 s11Var = s11.CUI_NAME_SHOW_AD_INSPECTOR;
                                        List listEmptyList = CollectionsKt.emptyList();
                                        str = "defaultValue";
                                        obj = "https://admob-gmats.uc.r.appspot.com/";
                                        n03 n03Var = new n03();
                                        str2 = C3510b4.i.W;
                                        str3 = "gads:inspector:ui_url";
                                        str4 = "Ad inspector cannot be opened because it is already open.";
                                        ks3 ks3Var = new ks3(n03Var, new tn1(), new m33(), new zb());
                                        if (hs3.c() == null) {
                                            A = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                                            try {
                                                mutex2 = if1Var8.x;
                                                qe1Var.a = if1Var8;
                                                qe1Var.b = r46;
                                                qe1Var.c = r47;
                                                qe1Var.d = A;
                                                qe1Var.e = A;
                                                qe1Var.f = mutex2;
                                                qe1Var.i = 1;
                                                obj4 = null;
                                                if (mutex2.lock(null, qe1Var) != coroutine_suspended) {
                                                    r15 = r46;
                                                    r46 = A;
                                                    r6 = r47;
                                                    A = A;
                                                    try {
                                                        try {
                                                            zK = if1Var8.k();
                                                            mutex2.unlock(obj4);
                                                            if (zK) {
                                                                m21 m21Var = o21.f;
                                                                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new re1(null, r6), 3, null);
                                                                xs3.a("Ad inspector cannot be opened because it is disabled in the AndroidManifest.xml.", null, 6);
                                                                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                                                                CloseableKt.closeFinally(r46, null);
                                                                return unit;
                                                            }
                                                            mutex3 = if1Var8.x;
                                                            qe1Var.a = if1Var8;
                                                            qe1Var.b = r15;
                                                            qe1Var.c = r6;
                                                            qe1Var.d = A;
                                                            qe1Var.e = r46;
                                                            qe1Var.f = mutex3;
                                                            qe1Var.i = 2;
                                                            obj5 = null;
                                                            if (mutex3.lock(null, qe1Var) != coroutine_suspended) {
                                                                ?? r210 = A;
                                                                if1Var2 = if1Var8;
                                                                r0 = r6;
                                                                r47 = r210;
                                                                r46 = r46;
                                                                r16 = r15;
                                                                try {
                                                                    zL = if1Var2.l();
                                                                    mutex3.unlock(obj5);
                                                                    if (!zL) {
                                                                        m21 m21Var2 = o21.f;
                                                                        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new se1(null, r0), 3, null);
                                                                        xs3.a("Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.", null, 6);
                                                                        p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                                                                        CloseableKt.closeFinally(r46, null);
                                                                        return unit2;
                                                                    }
                                                                    if (!if1Var2.i.a0()) {
                                                                        m21 m21Var3 = o21.f;
                                                                        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new te1(null, r0), 3, null);
                                                                        xs3.a("Ad inspector is disabled", null, 6);
                                                                        p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                                                                        CloseableKt.closeFinally(r46, null);
                                                                        return unit3;
                                                                    }
                                                                    mutex4 = if1Var2.x;
                                                                    qe1Var.a = if1Var2;
                                                                    qe1Var.b = r16;
                                                                    qe1Var.c = r0;
                                                                    qe1Var.d = r47;
                                                                    qe1Var.e = r46;
                                                                    qe1Var.f = mutex4;
                                                                    qe1Var.i = 3;
                                                                    obj6 = null;
                                                                    if (mutex4.lock(null, qe1Var) != coroutine_suspended) {
                                                                        if1Var3 = if1Var2;
                                                                        r1 = r0;
                                                                        r46 = r46;
                                                                        r47 = r47;
                                                                        r17 = r16;
                                                                        try {
                                                                            if1Var3.C = r17;
                                                                            p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                                                                            mutex4.unlock(obj6);
                                                                            mutex5 = if1Var3.H;
                                                                            qe1Var.a = if1Var3;
                                                                            qe1Var.b = r1;
                                                                            qe1Var.c = r47;
                                                                            qe1Var.d = r46;
                                                                            qe1Var.e = mutex5;
                                                                            qe1Var.f = null;
                                                                            qe1Var.i = 4;
                                                                            if (mutex5.lock(null, qe1Var) != coroutine_suspended) {
                                                                                r7 = r47;
                                                                                r8 = r46;
                                                                                r46 = mutex5;
                                                                                r9 = r1;
                                                                                try {
                                                                                    eg1Var = (eg1) if1Var3.I.get();
                                                                                    if (eg1Var == null && (atomicBoolean = eg1Var.n) != null && !atomicBoolean.get()) {
                                                                                        m21 m21Var4 = o21.f;
                                                                                        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new ue1(null, r9), 3, null);
                                                                                        xs3.a(str4, null, 6);
                                                                                        p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                                                                                        r46.unlock(null);
                                                                                        CloseableKt.closeFinally(r8, null);
                                                                                        return unit5;
                                                                                    }
                                                                                    iz3 iz3Var = if1Var3.p;
                                                                                    int i2 = 0;
                                                                                    v14 v14Var = new v14(u14.FULLSCREEN, i2, i2, 14);
                                                                                    qe1Var.a = if1Var3;
                                                                                    qe1Var.b = r9;
                                                                                    qe1Var.c = r7;
                                                                                    qe1Var.d = r8;
                                                                                    qe1Var.e = r46;
                                                                                    qe1Var.i = 5;
                                                                                    objA2 = iz3Var.a(v14Var, null, true, qe1Var);
                                                                                    r13 = r9;
                                                                                    r12 = r46;
                                                                                    r11 = r8;
                                                                                    r10 = r7;
                                                                                    if (objA2 != coroutine_suspended) {
                                                                                        v01Var = (v01) objA2;
                                                                                        if (v01Var instanceof i01) {
                                                                                            m21 m21Var5 = o21.f;
                                                                                            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new ve1(null, r13), 3, null);
                                                                                            xs3.a((i01) v01Var, false);
                                                                                            p005kotlin.Unit unit6 = p005kotlin.Unit.INSTANCE;
                                                                                            r12.unlock(null);
                                                                                            CloseableKt.closeFinally(r11, null);
                                                                                            return unit6;
                                                                                        }
                                                                                        if (v01Var instanceof q01) {
                                                                                            throw new p005kotlin.NoWhenBranchMatchedException();
                                                                                        }
                                                                                        r31Var = (r31) ((q01) v01Var).a();
                                                                                        yd1Var = (yd1) if1Var3.s.get();
                                                                                        nr1VarC = r31Var.c();
                                                                                        qe1Var.a = if1Var3;
                                                                                        qe1Var.b = r13;
                                                                                        qe1Var.c = r10;
                                                                                        qe1Var.d = r11;
                                                                                        qe1Var.e = r12;
                                                                                        qe1Var.f = r31Var;
                                                                                        qe1Var.i = 6;
                                                                                        if (yd1Var.a(nr1VarC, qe1Var) != coroutine_suspended) {
                                                                                            r14 = r13;
                                                                                            r31Var2 = r31Var;
                                                                                            r20 = r12;
                                                                                            r19 = r11;
                                                                                            r18 = r10;
                                                                                            ex0 ex0Var = if1Var3.i;
                                                                                            ex0Var.getClass();
                                                                                            String str9 = str3;
                                                                                            Intrinsics.checkNotNullParameter(str9, str2);
                                                                                            Object obj11 = obj;
                                                                                            Intrinsics.checkNotNullParameter(obj11, str);
                                                                                            String str10 = (String) ex0Var.a(str9, obj11, yr.o);
                                                                                            qe1Var.a = if1Var3;
                                                                                            qe1Var.b = r14;
                                                                                            qe1Var.c = r18;
                                                                                            qe1Var.d = r19;
                                                                                            qe1Var.e = r20;
                                                                                            qe1Var.f = r31Var2;
                                                                                            qe1Var.i = 7;
                                                                                            objA2 = r31Var2.c(str10, qe1Var);
                                                                                            r25 = r20;
                                                                                            r24 = r19;
                                                                                            r23 = r18;
                                                                                            r21 = r14;
                                                                                            if (objA2 != coroutine_suspended) {
                                                                                                v01Var2 = (v01) objA2;
                                                                                                if (v01Var2 instanceof i01) {
                                                                                                    m21 m21Var6 = o21.f;
                                                                                                    BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we1(null, r21), 3, null);
                                                                                                    xs3.a((i01) v01Var2, false);
                                                                                                    p005kotlin.Unit unit7 = p005kotlin.Unit.INSTANCE;
                                                                                                    r25.unlock(null);
                                                                                                    CloseableKt.closeFinally(r24, null);
                                                                                                    return unit7;
                                                                                                }
                                                                                                eg1VarA = ((gg1) if1Var3.o).a(if1Var3, r31Var2, r21);
                                                                                                qe1Var.a = if1Var3;
                                                                                                qe1Var.b = r23;
                                                                                                qe1Var.c = r24;
                                                                                                qe1Var.d = r25;
                                                                                                qe1Var.e = eg1VarA;
                                                                                                qe1Var.f = null;
                                                                                                qe1Var.i = 8;
                                                                                                objA2 = eg1VarA.g(qe1Var);
                                                                                                if (objA2 != coroutine_suspended) {
                                                                                                    r5 = r23;
                                                                                                    if1Var4 = if1Var3;
                                                                                                    r46 = r25;
                                                                                                    r26 = r24;
                                                                                                    if (((Boolean) objA2).booleanValue()) {
                                                                                                        if1Var4.I = new WeakReference(eg1VarA);
                                                                                                    }
                                                                                                    obj7 = p005kotlin.Unit.INSTANCE;
                                                                                                    try {
                                                                                                        r46.unlock(null);
                                                                                                        if (obj7 instanceof i01) {
                                                                                                            xs3.a((i01) obj7, false);
                                                                                                            break;
                                                                                                        }
                                                                                                        CloseableKt.closeFinally(r26, null);
                                                                                                        return p005kotlin.Unit.INSTANCE;
                                                                                                    } catch (Throwable th) {
                                                                                                        th = th;
                                                                                                        A = r5;
                                                                                                        r2 = r26;
                                                                                                        r46 = r2;
                                                                                                        try {
                                                                                                            A.b(th);
                                                                                                            if (th instanceof v24) {
                                                                                                                throw th;
                                                                                                            }
                                                                                                            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                                                                                                A.a(th);
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
                                                                                                                CloseableKt.closeFinally(r46, th2);
                                                                                                                throw th3;
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                } catch (Throwable th4) {
                                                                                    th = th4;
                                                                                    r46.unlock(null);
                                                                                    throw th;
                                                                                }
                                                                            }
                                                                        } catch (Throwable th5) {
                                                                            mutex4.unlock(null);
                                                                            throw th5;
                                                                        }
                                                                    }
                                                                } catch (Throwable th6) {
                                                                    mutex3.unlock(null);
                                                                    throw th6;
                                                                }
                                                            }
                                                        } catch (Throwable th7) {
                                                            th = th7;
                                                            A.b(th);
                                                            if (th instanceof v24) {
                                                                throw th;
                                                            }
                                                            if (!(th instanceof TimeoutCancellationException)) {
                                                                A.a(th);
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
                                                    } catch (Throwable th8) {
                                                        mutex2.unlock(null);
                                                        throw th8;
                                                    }
                                                }
                                            } catch (Throwable th9) {
                                                th = th9;
                                                r46 = A;
                                                A.b(th);
                                                if (th instanceof v24) {
                                                    throw th;
                                                }
                                                if (!(th instanceof TimeoutCancellationException)) {
                                                    A.a(th);
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
                                            str5 = str;
                                            obj2 = obj;
                                            str6 = str2;
                                            str7 = str3;
                                            str8 = str4;
                                            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                                            try {
                                                mutex = if1Var8.x;
                                                qe1Var.a = if1Var8;
                                                qe1Var.b = r46;
                                                qe1Var.c = r47;
                                                qe1Var.d = rr3VarA;
                                                qe1Var.e = rr3VarA;
                                                qe1Var.f = mutex;
                                                qe1Var.i = 9;
                                                obj3 = null;
                                                if (mutex.lock(null, qe1Var) != coroutine_suspended) {
                                                    ae1Var2 = ae1Var;
                                                    r22 = rr3VarA;
                                                    r27 = r47;
                                                    closeable = rr3VarA;
                                                    try {
                                                        try {
                                                            zK2 = if1Var8.k();
                                                            try {
                                                                mutex.unlock(obj3);
                                                                if (zK2) {
                                                                    m21 m21Var7 = o21.f;
                                                                    BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new re1(null, r27), 3, null);
                                                                    xs3.a("Ad inspector cannot be opened because it is disabled in the AndroidManifest.xml.", null, 6);
                                                                    p005kotlin.Unit unit8 = p005kotlin.Unit.INSTANCE;
                                                                    CloseableKt.closeFinally(closeable, null);
                                                                    return unit8;
                                                                }
                                                                mutex6 = if1Var8.x;
                                                                qe1Var.a = if1Var8;
                                                                qe1Var.b = ae1Var2;
                                                                qe1Var.c = r27;
                                                                r110 = r22;
                                                                qe1Var.d = r110;
                                                                qe1Var.e = closeable;
                                                                qe1Var.f = mutex6;
                                                                qe1Var.i = 10;
                                                                ae1Var3 = ae1Var2;
                                                                obj8 = null;
                                                                if (mutex6.lock(null, qe1Var) != coroutine_suspended) {
                                                                    r46 = closeable;
                                                                    if1Var5 = if1Var8;
                                                                    r28 = r27;
                                                                    r47 = r110;
                                                                    ae1Var4 = ae1Var3;
                                                                    try {
                                                                        zL2 = if1Var5.l();
                                                                        mutex6.unlock(obj8);
                                                                        if (!zL2) {
                                                                            m21 m21Var8 = o21.f;
                                                                            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new se1(null, r28), 3, null);
                                                                            xs3.a("Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.", null, 6);
                                                                            p005kotlin.Unit unit9 = p005kotlin.Unit.INSTANCE;
                                                                            CloseableKt.closeFinally(r46, null);
                                                                            return unit9;
                                                                        }
                                                                        if (!if1Var5.i.a0()) {
                                                                            m21 m21Var9 = o21.f;
                                                                            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new te1(null, r28), 3, null);
                                                                            xs3.a("Ad inspector is disabled", null, 6);
                                                                            p005kotlin.Unit unit10 = p005kotlin.Unit.INSTANCE;
                                                                            CloseableKt.closeFinally(r46, null);
                                                                            return unit10;
                                                                        }
                                                                        mutex7 = if1Var5.x;
                                                                        qe1Var.a = if1Var5;
                                                                        qe1Var.b = ae1Var4;
                                                                        qe1Var.c = r28;
                                                                        qe1Var.d = r47;
                                                                        qe1Var.e = r46;
                                                                        qe1Var.f = mutex7;
                                                                        qe1Var.i = 11;
                                                                        obj9 = null;
                                                                        if (mutex7.lock(null, qe1Var) != coroutine_suspended) {
                                                                            if1Var6 = if1Var5;
                                                                            r29 = r28;
                                                                            r46 = r46;
                                                                            r47 = r47;
                                                                            try {
                                                                                if1Var6.C = ae1Var4;
                                                                                p005kotlin.Unit unit11 = p005kotlin.Unit.INSTANCE;
                                                                                mutex7.unlock(obj9);
                                                                                mutex8 = if1Var6.H;
                                                                                qe1Var.a = if1Var6;
                                                                                qe1Var.b = r29;
                                                                                qe1Var.c = r47;
                                                                                qe1Var.d = r46;
                                                                                qe1Var.e = mutex8;
                                                                                qe1Var.f = null;
                                                                                qe1Var.i = 12;
                                                                                r32 = r29;
                                                                                r31 = r46;
                                                                                r30 = r47;
                                                                                if (mutex8.lock(null, qe1Var) != coroutine_suspended) {
                                                                                    try {
                                                                                        eg1Var2 = (eg1) if1Var6.I.get();
                                                                                        if (eg1Var2 == null && (atomicBoolean2 = eg1Var2.n) != null && !atomicBoolean2.get()) {
                                                                                            m21 m21Var10 = o21.f;
                                                                                            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new ue1(null, r32), 3, null);
                                                                                            xs3.a(str8, null, 6);
                                                                                            p005kotlin.Unit unit12 = p005kotlin.Unit.INSTANCE;
                                                                                            mutex8.unlock(null);
                                                                                            CloseableKt.closeFinally(r31, null);
                                                                                            return unit12;
                                                                                        }
                                                                                        iz3 iz3Var2 = if1Var6.p;
                                                                                        int i3 = 0;
                                                                                        v14 v14Var2 = new v14(u14.FULLSCREEN, i3, i3, 14);
                                                                                        qe1Var.a = if1Var6;
                                                                                        qe1Var.b = r32;
                                                                                        qe1Var.c = r30;
                                                                                        qe1Var.d = r31;
                                                                                        qe1Var.e = mutex8;
                                                                                        qe1Var.i = 13;
                                                                                        objA = iz3Var2.a(v14Var2, null, true, qe1Var);
                                                                                        if (objA != coroutine_suspended) {
                                                                                            ?? r211 = r30;
                                                                                            r33 = r31;
                                                                                            r34 = mutex8;
                                                                                            objA2 = objA;
                                                                                            r35 = r211;
                                                                                            r36 = r32;
                                                                                            v01Var3 = (v01) objA2;
                                                                                            if (v01Var3 instanceof i01) {
                                                                                                m21 m21Var11 = o21.f;
                                                                                                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new ve1(null, r36), 3, null);
                                                                                                xs3.a((i01) v01Var3, false);
                                                                                                p005kotlin.Unit unit13 = p005kotlin.Unit.INSTANCE;
                                                                                                try {
                                                                                                    r34.unlock(null);
                                                                                                    CloseableKt.closeFinally(r33, null);
                                                                                                    return unit13;
                                                                                                } catch (Throwable th10) {
                                                                                                    th = th10;
                                                                                                    r46 = r33;
                                                                                                    r47 = r35;
                                                                                                    r3 = r47;
                                                                                                    r4 = r46;
                                                                                                    try {
                                                                                                        r3.b(th);
                                                                                                        if (th instanceof v24) {
                                                                                                            throw th;
                                                                                                        }
                                                                                                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                                                                                            r3.a(th);
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
                                                                                                    } catch (Throwable th11) {
                                                                                                        try {
                                                                                                            throw th11;
                                                                                                        } catch (Throwable th12) {
                                                                                                            CloseableKt.closeFinally(r4, th11);
                                                                                                            throw th12;
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                            if (v01Var3 instanceof q01) {
                                                                                                throw new p005kotlin.NoWhenBranchMatchedException();
                                                                                            }
                                                                                            r31Var3 = (r31) ((q01) v01Var3).a();
                                                                                            yd1Var2 = (yd1) if1Var6.s.get();
                                                                                            nr1VarC2 = r31Var3.c();
                                                                                            qe1Var.a = if1Var6;
                                                                                            qe1Var.b = r36;
                                                                                            qe1Var.c = r35;
                                                                                            qe1Var.d = r33;
                                                                                            qe1Var.e = r34;
                                                                                            qe1Var.f = r31Var3;
                                                                                            qe1Var.i = 14;
                                                                                            if (yd1Var2.a(nr1VarC2, qe1Var) == coroutine_suspended) {
                                                                                                r37 = r36;
                                                                                                r31Var4 = r31Var3;
                                                                                                r40 = r34;
                                                                                                r39 = r33;
                                                                                                r38 = r35;
                                                                                                ex0 ex0Var2 = if1Var6.i;
                                                                                                ex0Var2.getClass();
                                                                                                Intrinsics.checkNotNullParameter(str7, str6);
                                                                                                Intrinsics.checkNotNullParameter(obj2, str5);
                                                                                                String str11 = (String) ex0Var2.a(str7, obj2, yr.o);
                                                                                                qe1Var.a = if1Var6;
                                                                                                qe1Var.b = r37;
                                                                                                qe1Var.c = r38;
                                                                                                qe1Var.d = r39;
                                                                                                qe1Var.e = r40;
                                                                                                qe1Var.f = r31Var4;
                                                                                                qe1Var.i = 15;
                                                                                                objA2 = r31Var4.c(str11, qe1Var);
                                                                                                r44 = r40;
                                                                                                r43 = r39;
                                                                                                r42 = r38;
                                                                                                r41 = r37;
                                                                                                if (objA2 != coroutine_suspended) {
                                                                                                    v01Var4 = (v01) objA2;
                                                                                                    if (v01Var4 instanceof i01) {
                                                                                                        m21 m21Var12 = o21.f;
                                                                                                        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we1(null, r41), 3, null);
                                                                                                        xs3.a((i01) v01Var4, false);
                                                                                                        p005kotlin.Unit unit14 = p005kotlin.Unit.INSTANCE;
                                                                                                        try {
                                                                                                            r44.unlock(null);
                                                                                                            CloseableKt.closeFinally(r43, null);
                                                                                                            return unit14;
                                                                                                        } catch (Throwable th13) {
                                                                                                            th = th13;
                                                                                                            r3 = r42;
                                                                                                            r4 = r43;
                                                                                                            r3.b(th);
                                                                                                            if (th instanceof v24) {
                                                                                                                throw th;
                                                                                                            }
                                                                                                            if (!(th instanceof TimeoutCancellationException)) {
                                                                                                                r3.a(th);
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
                                                                                                    eg1VarA2 = ((gg1) if1Var6.o).a(if1Var6, r31Var4, r41);
                                                                                                    qe1Var.a = if1Var6;
                                                                                                    qe1Var.b = r42;
                                                                                                    qe1Var.c = r43;
                                                                                                    qe1Var.d = r44;
                                                                                                    qe1Var.e = eg1VarA2;
                                                                                                    qe1Var.f = null;
                                                                                                    qe1Var.i = 16;
                                                                                                    objA2 = eg1VarA2.g(qe1Var);
                                                                                                    if (objA2 != coroutine_suspended) {
                                                                                                        if1Var7 = if1Var6;
                                                                                                        r46 = r44;
                                                                                                        r45 = r43;
                                                                                                        if (((Boolean) objA2).booleanValue()) {
                                                                                                            if1Var7.I = new WeakReference(eg1VarA2);
                                                                                                        }
                                                                                                        obj10 = p005kotlin.Unit.INSTANCE;
                                                                                                        r46.unlock(null);
                                                                                                        if (obj10 instanceof i01) {
                                                                                                            xs3.a((i01) obj10, false);
                                                                                                        }
                                                                                                        CloseableKt.closeFinally(r45, null);
                                                                                                        return p005kotlin.Unit.INSTANCE;
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    } catch (Throwable th14) {
                                                                                        th = th14;
                                                                                        r46 = mutex8;
                                                                                        r46.unlock(null);
                                                                                        throw th;
                                                                                    }
                                                                                }
                                                                            } catch (Throwable th15) {
                                                                                mutex7.unlock(null);
                                                                                throw th15;
                                                                            }
                                                                        }
                                                                    } catch (Throwable th16) {
                                                                        mutex6.unlock(null);
                                                                        throw th16;
                                                                    }
                                                                }
                                                            } catch (Throwable th17) {
                                                                th = th17;
                                                                r111 = r22;
                                                                r4 = closeable;
                                                                r3 = r111;
                                                                r3.b(th);
                                                                if (th instanceof v24) {
                                                                    throw th;
                                                                }
                                                                if (!(th instanceof TimeoutCancellationException)) {
                                                                    r3.a(th);
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
                                                        } catch (Throwable th18) {
                                                            mutex.unlock(null);
                                                            throw th18;
                                                        }
                                                    } catch (Throwable th19) {
                                                        th = th19;
                                                    }
                                                }
                                            } catch (Throwable th20) {
                                                th = th20;
                                                r4 = rr3VarA;
                                                r3 = rr3VarA;
                                                r3.b(th);
                                                if (th instanceof v24) {
                                                    throw th;
                                                }
                                                if (!(th instanceof TimeoutCancellationException)) {
                                                    r3.a(th);
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
                                        return coroutine_suspended;
                                    case 1:
                                        Mutex mutex9 = (Mutex) qe1Var.f;
                                        Closeable closeable2 = (Closeable) qe1Var.e;
                                        r47 = (rr3) qe1Var.d;
                                        OnAdInspectorClosedListener onAdInspectorClosedListener2 = (OnAdInspectorClosedListener) qe1Var.c;
                                        ae1 ae1Var5 = (ae1) qe1Var.b;
                                        if1 if1Var9 = qe1Var.a;
                                        try {
                                            p005kotlin.ResultKt.throwOnFailure(objA2);
                                            A = r47;
                                            r6 = onAdInspectorClosedListener2;
                                            str4 = "Ad inspector cannot be opened because it is already open.";
                                            str = "defaultValue";
                                            str2 = C3510b4.i.W;
                                            obj = "https://admob-gmats.uc.r.appspot.com/";
                                            str3 = "gads:inspector:ui_url";
                                            obj4 = null;
                                            mutex2 = mutex9;
                                            if1Var8 = if1Var9;
                                            r46 = closeable2;
                                            r15 = ae1Var5;
                                            zK = if1Var8.k();
                                            mutex2.unlock(obj4);
                                            if (zK) {
                                                m21 m21Var13 = o21.f;
                                                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new re1(null, r6), 3, null);
                                                xs3.a("Ad inspector cannot be opened because it is disabled in the AndroidManifest.xml.", null, 6);
                                                p005kotlin.Unit unit15 = p005kotlin.Unit.INSTANCE;
                                                CloseableKt.closeFinally(r46, null);
                                                return unit15;
                                            }
                                            mutex3 = if1Var8.x;
                                            qe1Var.a = if1Var8;
                                            qe1Var.b = r15;
                                            qe1Var.c = r6;
                                            qe1Var.d = A;
                                            qe1Var.e = r46;
                                            qe1Var.f = mutex3;
                                            qe1Var.i = 2;
                                            obj5 = null;
                                            if (mutex3.lock(null, qe1Var) != coroutine_suspended) {
                                                ?? r212 = A;
                                                if1Var2 = if1Var8;
                                                r0 = r6;
                                                r47 = r212;
                                                r46 = r46;
                                                r16 = r15;
                                                zL = if1Var2.l();
                                                mutex3.unlock(obj5);
                                                if (!zL) {
                                                    m21 m21Var14 = o21.f;
                                                    BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new se1(null, r0), 3, null);
                                                    xs3.a("Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.", null, 6);
                                                    p005kotlin.Unit unit16 = p005kotlin.Unit.INSTANCE;
                                                    CloseableKt.closeFinally(r46, null);
                                                    return unit16;
                                                }
                                                if (!if1Var2.i.a0()) {
                                                    m21 m21Var15 = o21.f;
                                                    BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new te1(null, r0), 3, null);
                                                    xs3.a("Ad inspector is disabled", null, 6);
                                                    p005kotlin.Unit unit17 = p005kotlin.Unit.INSTANCE;
                                                    CloseableKt.closeFinally(r46, null);
                                                    return unit17;
                                                }
                                                mutex4 = if1Var2.x;
                                                qe1Var.a = if1Var2;
                                                qe1Var.b = r16;
                                                qe1Var.c = r0;
                                                qe1Var.d = r47;
                                                qe1Var.e = r46;
                                                qe1Var.f = mutex4;
                                                qe1Var.i = 3;
                                                obj6 = null;
                                                if (mutex4.lock(null, qe1Var) != coroutine_suspended) {
                                                    if1Var3 = if1Var2;
                                                    r1 = r0;
                                                    r46 = r46;
                                                    r47 = r47;
                                                    r17 = r16;
                                                    if1Var3.C = r17;
                                                    p005kotlin.Unit unit18 = p005kotlin.Unit.INSTANCE;
                                                    mutex4.unlock(obj6);
                                                    mutex5 = if1Var3.H;
                                                    qe1Var.a = if1Var3;
                                                    qe1Var.b = r1;
                                                    qe1Var.c = r47;
                                                    qe1Var.d = r46;
                                                    qe1Var.e = mutex5;
                                                    qe1Var.f = null;
                                                    qe1Var.i = 4;
                                                    if (mutex5.lock(null, qe1Var) != coroutine_suspended) {
                                                        r7 = r47;
                                                        r8 = r46;
                                                        r46 = mutex5;
                                                        r9 = r1;
                                                        eg1Var = (eg1) if1Var3.I.get();
                                                        if (eg1Var == null) {
                                                        }
                                                        iz3 iz3Var3 = if1Var3.p;
                                                        int i4 = 0;
                                                        v14 v14Var3 = new v14(u14.FULLSCREEN, i4, i4, 14);
                                                        qe1Var.a = if1Var3;
                                                        qe1Var.b = r9;
                                                        qe1Var.c = r7;
                                                        qe1Var.d = r8;
                                                        qe1Var.e = r46;
                                                        qe1Var.i = 5;
                                                        objA2 = iz3Var3.a(v14Var3, null, true, qe1Var);
                                                        r13 = r9;
                                                        r12 = r46;
                                                        r11 = r8;
                                                        r10 = r7;
                                                        if (objA2 != coroutine_suspended) {
                                                            v01Var = (v01) objA2;
                                                            if (v01Var instanceof i01) {
                                                                m21 m21Var16 = o21.f;
                                                                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new ve1(null, r13), 3, null);
                                                                xs3.a((i01) v01Var, false);
                                                                p005kotlin.Unit unit19 = p005kotlin.Unit.INSTANCE;
                                                                r12.unlock(null);
                                                                CloseableKt.closeFinally(r11, null);
                                                                return unit19;
                                                            }
                                                            if (v01Var instanceof q01) {
                                                                throw new p005kotlin.NoWhenBranchMatchedException();
                                                            }
                                                            r31Var = (r31) ((q01) v01Var).a();
                                                            yd1Var = (yd1) if1Var3.s.get();
                                                            nr1VarC = r31Var.c();
                                                            qe1Var.a = if1Var3;
                                                            qe1Var.b = r13;
                                                            qe1Var.c = r10;
                                                            qe1Var.d = r11;
                                                            qe1Var.e = r12;
                                                            qe1Var.f = r31Var;
                                                            qe1Var.i = 6;
                                                            if (yd1Var.a(nr1VarC, qe1Var) != coroutine_suspended) {
                                                                r14 = r13;
                                                                r31Var2 = r31Var;
                                                                r20 = r12;
                                                                r19 = r11;
                                                                r18 = r10;
                                                                ex0 ex0Var3 = if1Var3.i;
                                                                ex0Var3.getClass();
                                                                String str12 = str3;
                                                                Intrinsics.checkNotNullParameter(str12, str2);
                                                                Object obj12 = obj;
                                                                Intrinsics.checkNotNullParameter(obj12, str);
                                                                String str13 = (String) ex0Var3.a(str12, obj12, yr.o);
                                                                qe1Var.a = if1Var3;
                                                                qe1Var.b = r14;
                                                                qe1Var.c = r18;
                                                                qe1Var.d = r19;
                                                                qe1Var.e = r20;
                                                                qe1Var.f = r31Var2;
                                                                qe1Var.i = 7;
                                                                objA2 = r31Var2.c(str13, qe1Var);
                                                                r25 = r20;
                                                                r24 = r19;
                                                                r23 = r18;
                                                                r21 = r14;
                                                                if (objA2 != coroutine_suspended) {
                                                                    v01Var2 = (v01) objA2;
                                                                    if (v01Var2 instanceof i01) {
                                                                        m21 m21Var17 = o21.f;
                                                                        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we1(null, r21), 3, null);
                                                                        xs3.a((i01) v01Var2, false);
                                                                        p005kotlin.Unit unit20 = p005kotlin.Unit.INSTANCE;
                                                                        r25.unlock(null);
                                                                        CloseableKt.closeFinally(r24, null);
                                                                        return unit20;
                                                                    }
                                                                    eg1VarA = ((gg1) if1Var3.o).a(if1Var3, r31Var2, r21);
                                                                    qe1Var.a = if1Var3;
                                                                    qe1Var.b = r23;
                                                                    qe1Var.c = r24;
                                                                    qe1Var.d = r25;
                                                                    qe1Var.e = eg1VarA;
                                                                    qe1Var.f = null;
                                                                    qe1Var.i = 8;
                                                                    objA2 = eg1VarA.g(qe1Var);
                                                                    if (objA2 != coroutine_suspended) {
                                                                        r5 = r23;
                                                                        if1Var4 = if1Var3;
                                                                        r46 = r25;
                                                                        r26 = r24;
                                                                        if (((Boolean) objA2).booleanValue()) {
                                                                            if1Var4.I = new WeakReference(eg1VarA);
                                                                        }
                                                                        obj7 = p005kotlin.Unit.INSTANCE;
                                                                        r46.unlock(null);
                                                                        if (obj7 instanceof i01) {
                                                                            xs3.a((i01) obj7, false);
                                                                            break;
                                                                        }
                                                                        CloseableKt.closeFinally(r26, null);
                                                                        return p005kotlin.Unit.INSTANCE;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                break;
                                            }
                                            return coroutine_suspended;
                                        } catch (Throwable th21) {
                                            th = th21;
                                            r46 = closeable2;
                                            A = r47;
                                            A.b(th);
                                            if (th instanceof v24) {
                                                throw th;
                                            }
                                            if (!(th instanceof TimeoutCancellationException)) {
                                                A.a(th);
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
                                    case 2:
                                        Mutex mutex10 = (Mutex) qe1Var.f;
                                        Closeable closeable3 = (Closeable) qe1Var.e;
                                        rr3 rr3Var = (rr3) qe1Var.d;
                                        OnAdInspectorClosedListener onAdInspectorClosedListener3 = (OnAdInspectorClosedListener) qe1Var.c;
                                        ae1 ae1Var6 = (ae1) qe1Var.b;
                                        if1 if1Var10 = qe1Var.a;
                                        p005kotlin.ResultKt.throwOnFailure(objA2);
                                        mutex3 = mutex10;
                                        r0 = onAdInspectorClosedListener3;
                                        str4 = "Ad inspector cannot be opened because it is already open.";
                                        str = "defaultValue";
                                        str2 = C3510b4.i.W;
                                        obj = "https://admob-gmats.uc.r.appspot.com/";
                                        str3 = "gads:inspector:ui_url";
                                        if1Var2 = if1Var10;
                                        obj5 = null;
                                        r16 = ae1Var6;
                                        r46 = closeable3;
                                        r47 = rr3Var;
                                        zL = if1Var2.l();
                                        mutex3.unlock(obj5);
                                        if (!zL) {
                                            m21 m21Var18 = o21.f;
                                            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new se1(null, r0), 3, null);
                                            xs3.a("Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.", null, 6);
                                            p005kotlin.Unit unit110 = p005kotlin.Unit.INSTANCE;
                                            CloseableKt.closeFinally(r46, null);
                                            return unit110;
                                        }
                                        if (!if1Var2.i.a0()) {
                                            m21 m21Var19 = o21.f;
                                            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new te1(null, r0), 3, null);
                                            xs3.a("Ad inspector is disabled", null, 6);
                                            p005kotlin.Unit unit111 = p005kotlin.Unit.INSTANCE;
                                            CloseableKt.closeFinally(r46, null);
                                            return unit111;
                                        }
                                        mutex4 = if1Var2.x;
                                        qe1Var.a = if1Var2;
                                        qe1Var.b = r16;
                                        qe1Var.c = r0;
                                        qe1Var.d = r47;
                                        qe1Var.e = r46;
                                        qe1Var.f = mutex4;
                                        qe1Var.i = 3;
                                        obj6 = null;
                                        if (mutex4.lock(null, qe1Var) != coroutine_suspended) {
                                            if1Var3 = if1Var2;
                                            r1 = r0;
                                            r46 = r46;
                                            r47 = r47;
                                            r17 = r16;
                                            if1Var3.C = r17;
                                            p005kotlin.Unit unit112 = p005kotlin.Unit.INSTANCE;
                                            mutex4.unlock(obj6);
                                            mutex5 = if1Var3.H;
                                            qe1Var.a = if1Var3;
                                            qe1Var.b = r1;
                                            qe1Var.c = r47;
                                            qe1Var.d = r46;
                                            qe1Var.e = mutex5;
                                            qe1Var.f = null;
                                            qe1Var.i = 4;
                                            if (mutex5.lock(null, qe1Var) != coroutine_suspended) {
                                                r7 = r47;
                                                r8 = r46;
                                                r46 = mutex5;
                                                r9 = r1;
                                                eg1Var = (eg1) if1Var3.I.get();
                                                if (eg1Var == null) {
                                                }
                                                iz3 iz3Var4 = if1Var3.p;
                                                int i5 = 0;
                                                v14 v14Var4 = new v14(u14.FULLSCREEN, i5, i5, 14);
                                                qe1Var.a = if1Var3;
                                                qe1Var.b = r9;
                                                qe1Var.c = r7;
                                                qe1Var.d = r8;
                                                qe1Var.e = r46;
                                                qe1Var.i = 5;
                                                objA2 = iz3Var4.a(v14Var4, null, true, qe1Var);
                                                r13 = r9;
                                                r12 = r46;
                                                r11 = r8;
                                                r10 = r7;
                                                if (objA2 != coroutine_suspended) {
                                                    v01Var = (v01) objA2;
                                                    if (v01Var instanceof i01) {
                                                        m21 m21Var110 = o21.f;
                                                        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new ve1(null, r13), 3, null);
                                                        xs3.a((i01) v01Var, false);
                                                        p005kotlin.Unit unit113 = p005kotlin.Unit.INSTANCE;
                                                        r12.unlock(null);
                                                        CloseableKt.closeFinally(r11, null);
                                                        return unit113;
                                                    }
                                                    if (v01Var instanceof q01) {
                                                        throw new p005kotlin.NoWhenBranchMatchedException();
                                                    }
                                                    r31Var = (r31) ((q01) v01Var).a();
                                                    yd1Var = (yd1) if1Var3.s.get();
                                                    nr1VarC = r31Var.c();
                                                    qe1Var.a = if1Var3;
                                                    qe1Var.b = r13;
                                                    qe1Var.c = r10;
                                                    qe1Var.d = r11;
                                                    qe1Var.e = r12;
                                                    qe1Var.f = r31Var;
                                                    qe1Var.i = 6;
                                                    if (yd1Var.a(nr1VarC, qe1Var) != coroutine_suspended) {
                                                        r14 = r13;
                                                        r31Var2 = r31Var;
                                                        r20 = r12;
                                                        r19 = r11;
                                                        r18 = r10;
                                                        ex0 ex0Var4 = if1Var3.i;
                                                        ex0Var4.getClass();
                                                        String str14 = str3;
                                                        Intrinsics.checkNotNullParameter(str14, str2);
                                                        Object obj13 = obj;
                                                        Intrinsics.checkNotNullParameter(obj13, str);
                                                        String str15 = (String) ex0Var4.a(str14, obj13, yr.o);
                                                        qe1Var.a = if1Var3;
                                                        qe1Var.b = r14;
                                                        qe1Var.c = r18;
                                                        qe1Var.d = r19;
                                                        qe1Var.e = r20;
                                                        qe1Var.f = r31Var2;
                                                        qe1Var.i = 7;
                                                        objA2 = r31Var2.c(str15, qe1Var);
                                                        r25 = r20;
                                                        r24 = r19;
                                                        r23 = r18;
                                                        r21 = r14;
                                                        if (objA2 != coroutine_suspended) {
                                                            v01Var2 = (v01) objA2;
                                                            if (v01Var2 instanceof i01) {
                                                                m21 m21Var111 = o21.f;
                                                                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we1(null, r21), 3, null);
                                                                xs3.a((i01) v01Var2, false);
                                                                p005kotlin.Unit unit21 = p005kotlin.Unit.INSTANCE;
                                                                r25.unlock(null);
                                                                CloseableKt.closeFinally(r24, null);
                                                                return unit21;
                                                            }
                                                            eg1VarA = ((gg1) if1Var3.o).a(if1Var3, r31Var2, r21);
                                                            qe1Var.a = if1Var3;
                                                            qe1Var.b = r23;
                                                            qe1Var.c = r24;
                                                            qe1Var.d = r25;
                                                            qe1Var.e = eg1VarA;
                                                            qe1Var.f = null;
                                                            qe1Var.i = 8;
                                                            objA2 = eg1VarA.g(qe1Var);
                                                            if (objA2 != coroutine_suspended) {
                                                                r5 = r23;
                                                                if1Var4 = if1Var3;
                                                                r46 = r25;
                                                                r26 = r24;
                                                                if (((Boolean) objA2).booleanValue()) {
                                                                    if1Var4.I = new WeakReference(eg1VarA);
                                                                }
                                                                obj7 = p005kotlin.Unit.INSTANCE;
                                                                r46.unlock(null);
                                                                if (obj7 instanceof i01) {
                                                                    xs3.a((i01) obj7, false);
                                                                    break;
                                                                }
                                                                CloseableKt.closeFinally(r26, null);
                                                                return p005kotlin.Unit.INSTANCE;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            break;
                                        }
                                        return coroutine_suspended;
                                    case 3:
                                        Mutex mutex11 = (Mutex) qe1Var.f;
                                        Closeable closeable4 = (Closeable) qe1Var.e;
                                        rr3 rr3Var2 = (rr3) qe1Var.d;
                                        OnAdInspectorClosedListener onAdInspectorClosedListener4 = (OnAdInspectorClosedListener) qe1Var.c;
                                        ae1 ae1Var7 = (ae1) qe1Var.b;
                                        if1 if1Var11 = qe1Var.a;
                                        p005kotlin.ResultKt.throwOnFailure(objA2);
                                        mutex4 = mutex11;
                                        r1 = onAdInspectorClosedListener4;
                                        str4 = "Ad inspector cannot be opened because it is already open.";
                                        r17 = ae1Var7;
                                        if1Var3 = if1Var11;
                                        str = "defaultValue";
                                        str2 = C3510b4.i.W;
                                        obj = "https://admob-gmats.uc.r.appspot.com/";
                                        str3 = "gads:inspector:ui_url";
                                        obj6 = null;
                                        r46 = closeable4;
                                        r47 = rr3Var2;
                                        if1Var3.C = r17;
                                        p005kotlin.Unit unit114 = p005kotlin.Unit.INSTANCE;
                                        mutex4.unlock(obj6);
                                        mutex5 = if1Var3.H;
                                        qe1Var.a = if1Var3;
                                        qe1Var.b = r1;
                                        qe1Var.c = r47;
                                        qe1Var.d = r46;
                                        qe1Var.e = mutex5;
                                        qe1Var.f = null;
                                        qe1Var.i = 4;
                                        if (mutex5.lock(null, qe1Var) != coroutine_suspended) {
                                            r7 = r47;
                                            r8 = r46;
                                            r46 = mutex5;
                                            r9 = r1;
                                            eg1Var = (eg1) if1Var3.I.get();
                                            if (eg1Var == null) {
                                            }
                                            iz3 iz3Var5 = if1Var3.p;
                                            int i6 = 0;
                                            v14 v14Var5 = new v14(u14.FULLSCREEN, i6, i6, 14);
                                            qe1Var.a = if1Var3;
                                            qe1Var.b = r9;
                                            qe1Var.c = r7;
                                            qe1Var.d = r8;
                                            qe1Var.e = r46;
                                            qe1Var.i = 5;
                                            objA2 = iz3Var5.a(v14Var5, null, true, qe1Var);
                                            r13 = r9;
                                            r12 = r46;
                                            r11 = r8;
                                            r10 = r7;
                                            if (objA2 != coroutine_suspended) {
                                                v01Var = (v01) objA2;
                                                if (v01Var instanceof i01) {
                                                    m21 m21Var112 = o21.f;
                                                    BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new ve1(null, r13), 3, null);
                                                    xs3.a((i01) v01Var, false);
                                                    p005kotlin.Unit unit115 = p005kotlin.Unit.INSTANCE;
                                                    r12.unlock(null);
                                                    CloseableKt.closeFinally(r11, null);
                                                    return unit115;
                                                }
                                                if (v01Var instanceof q01) {
                                                    throw new p005kotlin.NoWhenBranchMatchedException();
                                                }
                                                r31Var = (r31) ((q01) v01Var).a();
                                                yd1Var = (yd1) if1Var3.s.get();
                                                nr1VarC = r31Var.c();
                                                qe1Var.a = if1Var3;
                                                qe1Var.b = r13;
                                                qe1Var.c = r10;
                                                qe1Var.d = r11;
                                                qe1Var.e = r12;
                                                qe1Var.f = r31Var;
                                                qe1Var.i = 6;
                                                if (yd1Var.a(nr1VarC, qe1Var) != coroutine_suspended) {
                                                    r14 = r13;
                                                    r31Var2 = r31Var;
                                                    r20 = r12;
                                                    r19 = r11;
                                                    r18 = r10;
                                                    ex0 ex0Var5 = if1Var3.i;
                                                    ex0Var5.getClass();
                                                    String str16 = str3;
                                                    Intrinsics.checkNotNullParameter(str16, str2);
                                                    Object obj14 = obj;
                                                    Intrinsics.checkNotNullParameter(obj14, str);
                                                    String str17 = (String) ex0Var5.a(str16, obj14, yr.o);
                                                    qe1Var.a = if1Var3;
                                                    qe1Var.b = r14;
                                                    qe1Var.c = r18;
                                                    qe1Var.d = r19;
                                                    qe1Var.e = r20;
                                                    qe1Var.f = r31Var2;
                                                    qe1Var.i = 7;
                                                    objA2 = r31Var2.c(str17, qe1Var);
                                                    r25 = r20;
                                                    r24 = r19;
                                                    r23 = r18;
                                                    r21 = r14;
                                                    if (objA2 != coroutine_suspended) {
                                                        v01Var2 = (v01) objA2;
                                                        if (v01Var2 instanceof i01) {
                                                            m21 m21Var113 = o21.f;
                                                            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we1(null, r21), 3, null);
                                                            xs3.a((i01) v01Var2, false);
                                                            p005kotlin.Unit unit22 = p005kotlin.Unit.INSTANCE;
                                                            r25.unlock(null);
                                                            CloseableKt.closeFinally(r24, null);
                                                            return unit22;
                                                        }
                                                        eg1VarA = ((gg1) if1Var3.o).a(if1Var3, r31Var2, r21);
                                                        qe1Var.a = if1Var3;
                                                        qe1Var.b = r23;
                                                        qe1Var.c = r24;
                                                        qe1Var.d = r25;
                                                        qe1Var.e = eg1VarA;
                                                        qe1Var.f = null;
                                                        qe1Var.i = 8;
                                                        objA2 = eg1VarA.g(qe1Var);
                                                        if (objA2 != coroutine_suspended) {
                                                            r5 = r23;
                                                            if1Var4 = if1Var3;
                                                            r46 = r25;
                                                            r26 = r24;
                                                            if (((Boolean) objA2).booleanValue()) {
                                                                if1Var4.I = new WeakReference(eg1VarA);
                                                            }
                                                            obj7 = p005kotlin.Unit.INSTANCE;
                                                            r46.unlock(null);
                                                            if (obj7 instanceof i01) {
                                                                xs3.a((i01) obj7, false);
                                                                break;
                                                            }
                                                            CloseableKt.closeFinally(r26, null);
                                                            return p005kotlin.Unit.INSTANCE;
                                                        }
                                                    }
                                                }
                                            }
                                            break;
                                        }
                                        return coroutine_suspended;
                                    case 4:
                                        Mutex mutex12 = (Mutex) qe1Var.e;
                                        Closeable closeable5 = (Closeable) qe1Var.d;
                                        rr3 rr3Var3 = (rr3) qe1Var.c;
                                        OnAdInspectorClosedListener onAdInspectorClosedListener5 = (OnAdInspectorClosedListener) qe1Var.b;
                                        if1Var3 = qe1Var.a;
                                        p005kotlin.ResultKt.throwOnFailure(objA2);
                                        r46 = mutex12;
                                        r9 = onAdInspectorClosedListener5;
                                        r7 = rr3Var3;
                                        r8 = closeable5;
                                        str4 = "Ad inspector cannot be opened because it is already open.";
                                        str = "defaultValue";
                                        str2 = C3510b4.i.W;
                                        obj = "https://admob-gmats.uc.r.appspot.com/";
                                        str3 = "gads:inspector:ui_url";
                                        eg1Var = (eg1) if1Var3.I.get();
                                        if (eg1Var == null) {
                                            break;
                                        }
                                        iz3 iz3Var6 = if1Var3.p;
                                        int i7 = 0;
                                        v14 v14Var6 = new v14(u14.FULLSCREEN, i7, i7, 14);
                                        qe1Var.a = if1Var3;
                                        qe1Var.b = r9;
                                        qe1Var.c = r7;
                                        qe1Var.d = r8;
                                        qe1Var.e = r46;
                                        qe1Var.i = 5;
                                        objA2 = iz3Var6.a(v14Var6, null, true, qe1Var);
                                        r13 = r9;
                                        r12 = r46;
                                        r11 = r8;
                                        r10 = r7;
                                        if (objA2 != coroutine_suspended) {
                                            v01Var = (v01) objA2;
                                            if (v01Var instanceof i01) {
                                                m21 m21Var114 = o21.f;
                                                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new ve1(null, r13), 3, null);
                                                xs3.a((i01) v01Var, false);
                                                p005kotlin.Unit unit116 = p005kotlin.Unit.INSTANCE;
                                                r12.unlock(null);
                                                CloseableKt.closeFinally(r11, null);
                                                return unit116;
                                            }
                                            if (v01Var instanceof q01) {
                                                throw new p005kotlin.NoWhenBranchMatchedException();
                                            }
                                            r31Var = (r31) ((q01) v01Var).a();
                                            yd1Var = (yd1) if1Var3.s.get();
                                            nr1VarC = r31Var.c();
                                            qe1Var.a = if1Var3;
                                            qe1Var.b = r13;
                                            qe1Var.c = r10;
                                            qe1Var.d = r11;
                                            qe1Var.e = r12;
                                            qe1Var.f = r31Var;
                                            qe1Var.i = 6;
                                            if (yd1Var.a(nr1VarC, qe1Var) != coroutine_suspended) {
                                                r14 = r13;
                                                r31Var2 = r31Var;
                                                r20 = r12;
                                                r19 = r11;
                                                r18 = r10;
                                                ex0 ex0Var6 = if1Var3.i;
                                                ex0Var6.getClass();
                                                String str18 = str3;
                                                Intrinsics.checkNotNullParameter(str18, str2);
                                                Object obj15 = obj;
                                                Intrinsics.checkNotNullParameter(obj15, str);
                                                String str19 = (String) ex0Var6.a(str18, obj15, yr.o);
                                                qe1Var.a = if1Var3;
                                                qe1Var.b = r14;
                                                qe1Var.c = r18;
                                                qe1Var.d = r19;
                                                qe1Var.e = r20;
                                                qe1Var.f = r31Var2;
                                                qe1Var.i = 7;
                                                objA2 = r31Var2.c(str19, qe1Var);
                                                r25 = r20;
                                                r24 = r19;
                                                r23 = r18;
                                                r21 = r14;
                                                if (objA2 != coroutine_suspended) {
                                                    v01Var2 = (v01) objA2;
                                                    if (v01Var2 instanceof i01) {
                                                        m21 m21Var115 = o21.f;
                                                        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we1(null, r21), 3, null);
                                                        xs3.a((i01) v01Var2, false);
                                                        p005kotlin.Unit unit23 = p005kotlin.Unit.INSTANCE;
                                                        r25.unlock(null);
                                                        CloseableKt.closeFinally(r24, null);
                                                        return unit23;
                                                    }
                                                    eg1VarA = ((gg1) if1Var3.o).a(if1Var3, r31Var2, r21);
                                                    qe1Var.a = if1Var3;
                                                    qe1Var.b = r23;
                                                    qe1Var.c = r24;
                                                    qe1Var.d = r25;
                                                    qe1Var.e = eg1VarA;
                                                    qe1Var.f = null;
                                                    qe1Var.i = 8;
                                                    objA2 = eg1VarA.g(qe1Var);
                                                    if (objA2 != coroutine_suspended) {
                                                        r5 = r23;
                                                        if1Var4 = if1Var3;
                                                        r46 = r25;
                                                        r26 = r24;
                                                        if (((Boolean) objA2).booleanValue()) {
                                                            if1Var4.I = new WeakReference(eg1VarA);
                                                        }
                                                        obj7 = p005kotlin.Unit.INSTANCE;
                                                        r46.unlock(null);
                                                        if (obj7 instanceof i01) {
                                                            xs3.a((i01) obj7, false);
                                                            break;
                                                        }
                                                        CloseableKt.closeFinally(r26, null);
                                                        return p005kotlin.Unit.INSTANCE;
                                                    }
                                                }
                                            }
                                        }
                                        return coroutine_suspended;
                                    case 5:
                                        Mutex mutex13 = (Mutex) qe1Var.e;
                                        Closeable closeable6 = (Closeable) qe1Var.d;
                                        rr3 rr3Var4 = (rr3) qe1Var.c;
                                        OnAdInspectorClosedListener onAdInspectorClosedListener6 = (OnAdInspectorClosedListener) qe1Var.b;
                                        if1 if1Var12 = qe1Var.a;
                                        p005kotlin.ResultKt.throwOnFailure(objA2);
                                        if1Var3 = if1Var12;
                                        str = "defaultValue";
                                        str2 = C3510b4.i.W;
                                        obj = "https://admob-gmats.uc.r.appspot.com/";
                                        str3 = "gads:inspector:ui_url";
                                        r13 = onAdInspectorClosedListener6;
                                        r12 = mutex13;
                                        r11 = closeable6;
                                        r10 = rr3Var4;
                                        v01Var = (v01) objA2;
                                        if (v01Var instanceof i01) {
                                            m21 m21Var116 = o21.f;
                                            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new ve1(null, r13), 3, null);
                                            xs3.a((i01) v01Var, false);
                                            p005kotlin.Unit unit117 = p005kotlin.Unit.INSTANCE;
                                            r12.unlock(null);
                                            CloseableKt.closeFinally(r11, null);
                                            return unit117;
                                        }
                                        if (v01Var instanceof q01) {
                                            throw new p005kotlin.NoWhenBranchMatchedException();
                                        }
                                        r31Var = (r31) ((q01) v01Var).a();
                                        yd1Var = (yd1) if1Var3.s.get();
                                        nr1VarC = r31Var.c();
                                        qe1Var.a = if1Var3;
                                        qe1Var.b = r13;
                                        qe1Var.c = r10;
                                        qe1Var.d = r11;
                                        qe1Var.e = r12;
                                        qe1Var.f = r31Var;
                                        qe1Var.i = 6;
                                        if (yd1Var.a(nr1VarC, qe1Var) != coroutine_suspended) {
                                            r14 = r13;
                                            r31Var2 = r31Var;
                                            r20 = r12;
                                            r19 = r11;
                                            r18 = r10;
                                            ex0 ex0Var7 = if1Var3.i;
                                            ex0Var7.getClass();
                                            String str110 = str3;
                                            Intrinsics.checkNotNullParameter(str110, str2);
                                            Object obj16 = obj;
                                            Intrinsics.checkNotNullParameter(obj16, str);
                                            String str111 = (String) ex0Var7.a(str110, obj16, yr.o);
                                            qe1Var.a = if1Var3;
                                            qe1Var.b = r14;
                                            qe1Var.c = r18;
                                            qe1Var.d = r19;
                                            qe1Var.e = r20;
                                            qe1Var.f = r31Var2;
                                            qe1Var.i = 7;
                                            objA2 = r31Var2.c(str111, qe1Var);
                                            r25 = r20;
                                            r24 = r19;
                                            r23 = r18;
                                            r21 = r14;
                                            if (objA2 != coroutine_suspended) {
                                                v01Var2 = (v01) objA2;
                                                if (v01Var2 instanceof i01) {
                                                    m21 m21Var117 = o21.f;
                                                    BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we1(null, r21), 3, null);
                                                    xs3.a((i01) v01Var2, false);
                                                    p005kotlin.Unit unit24 = p005kotlin.Unit.INSTANCE;
                                                    r25.unlock(null);
                                                    CloseableKt.closeFinally(r24, null);
                                                    return unit24;
                                                }
                                                eg1VarA = ((gg1) if1Var3.o).a(if1Var3, r31Var2, r21);
                                                qe1Var.a = if1Var3;
                                                qe1Var.b = r23;
                                                qe1Var.c = r24;
                                                qe1Var.d = r25;
                                                qe1Var.e = eg1VarA;
                                                qe1Var.f = null;
                                                qe1Var.i = 8;
                                                objA2 = eg1VarA.g(qe1Var);
                                                if (objA2 != coroutine_suspended) {
                                                    r5 = r23;
                                                    if1Var4 = if1Var3;
                                                    r46 = r25;
                                                    r26 = r24;
                                                    if (((Boolean) objA2).booleanValue()) {
                                                        if1Var4.I = new WeakReference(eg1VarA);
                                                    }
                                                    obj7 = p005kotlin.Unit.INSTANCE;
                                                    r46.unlock(null);
                                                    if (obj7 instanceof i01) {
                                                        xs3.a((i01) obj7, false);
                                                        break;
                                                    }
                                                    CloseableKt.closeFinally(r26, null);
                                                    return p005kotlin.Unit.INSTANCE;
                                                }
                                            }
                                        }
                                        return coroutine_suspended;
                                    case 6:
                                        r31Var2 = (r31) qe1Var.f;
                                        Mutex mutex14 = (Mutex) qe1Var.e;
                                        Closeable closeable7 = (Closeable) qe1Var.d;
                                        rr3 rr3Var5 = (rr3) qe1Var.c;
                                        OnAdInspectorClosedListener onAdInspectorClosedListener7 = (OnAdInspectorClosedListener) qe1Var.b;
                                        if1Var3 = qe1Var.a;
                                        p005kotlin.ResultKt.throwOnFailure(objA2);
                                        str = "defaultValue";
                                        str2 = C3510b4.i.W;
                                        obj = "https://admob-gmats.uc.r.appspot.com/";
                                        str3 = "gads:inspector:ui_url";
                                        r20 = mutex14;
                                        r19 = closeable7;
                                        r18 = rr3Var5;
                                        r14 = onAdInspectorClosedListener7;
                                        ex0 ex0Var8 = if1Var3.i;
                                        ex0Var8.getClass();
                                        String str112 = str3;
                                        Intrinsics.checkNotNullParameter(str112, str2);
                                        Object obj17 = obj;
                                        Intrinsics.checkNotNullParameter(obj17, str);
                                        String str113 = (String) ex0Var8.a(str112, obj17, yr.o);
                                        qe1Var.a = if1Var3;
                                        qe1Var.b = r14;
                                        qe1Var.c = r18;
                                        qe1Var.d = r19;
                                        qe1Var.e = r20;
                                        qe1Var.f = r31Var2;
                                        qe1Var.i = 7;
                                        objA2 = r31Var2.c(str113, qe1Var);
                                        r25 = r20;
                                        r24 = r19;
                                        r23 = r18;
                                        r21 = r14;
                                        if (objA2 != coroutine_suspended) {
                                            v01Var2 = (v01) objA2;
                                            if (v01Var2 instanceof i01) {
                                                m21 m21Var118 = o21.f;
                                                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we1(null, r21), 3, null);
                                                xs3.a((i01) v01Var2, false);
                                                p005kotlin.Unit unit25 = p005kotlin.Unit.INSTANCE;
                                                r25.unlock(null);
                                                CloseableKt.closeFinally(r24, null);
                                                return unit25;
                                            }
                                            eg1VarA = ((gg1) if1Var3.o).a(if1Var3, r31Var2, r21);
                                            qe1Var.a = if1Var3;
                                            qe1Var.b = r23;
                                            qe1Var.c = r24;
                                            qe1Var.d = r25;
                                            qe1Var.e = eg1VarA;
                                            qe1Var.f = null;
                                            qe1Var.i = 8;
                                            objA2 = eg1VarA.g(qe1Var);
                                            if (objA2 != coroutine_suspended) {
                                                r5 = r23;
                                                if1Var4 = if1Var3;
                                                r46 = r25;
                                                r26 = r24;
                                                if (((Boolean) objA2).booleanValue()) {
                                                    if1Var4.I = new WeakReference(eg1VarA);
                                                }
                                                obj7 = p005kotlin.Unit.INSTANCE;
                                                r46.unlock(null);
                                                if (obj7 instanceof i01) {
                                                    xs3.a((i01) obj7, false);
                                                    break;
                                                }
                                                CloseableKt.closeFinally(r26, null);
                                                return p005kotlin.Unit.INSTANCE;
                                            }
                                        }
                                        return coroutine_suspended;
                                    case 7:
                                        r31Var2 = (r31) qe1Var.f;
                                        Mutex mutex15 = (Mutex) qe1Var.e;
                                        Closeable closeable8 = (Closeable) qe1Var.d;
                                        rr3 rr3Var6 = (rr3) qe1Var.c;
                                        OnAdInspectorClosedListener onAdInspectorClosedListener8 = (OnAdInspectorClosedListener) qe1Var.b;
                                        if1Var3 = qe1Var.a;
                                        p005kotlin.ResultKt.throwOnFailure(objA2);
                                        r25 = mutex15;
                                        r24 = closeable8;
                                        r23 = rr3Var6;
                                        r21 = onAdInspectorClosedListener8;
                                        v01Var2 = (v01) objA2;
                                        if (v01Var2 instanceof i01) {
                                            m21 m21Var119 = o21.f;
                                            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we1(null, r21), 3, null);
                                            xs3.a((i01) v01Var2, false);
                                            p005kotlin.Unit unit26 = p005kotlin.Unit.INSTANCE;
                                            r25.unlock(null);
                                            CloseableKt.closeFinally(r24, null);
                                            return unit26;
                                        }
                                        eg1VarA = ((gg1) if1Var3.o).a(if1Var3, r31Var2, r21);
                                        qe1Var.a = if1Var3;
                                        qe1Var.b = r23;
                                        qe1Var.c = r24;
                                        qe1Var.d = r25;
                                        qe1Var.e = eg1VarA;
                                        qe1Var.f = null;
                                        qe1Var.i = 8;
                                        objA2 = eg1VarA.g(qe1Var);
                                        if (objA2 != coroutine_suspended) {
                                            r5 = r23;
                                            if1Var4 = if1Var3;
                                            r46 = r25;
                                            r26 = r24;
                                            if (((Boolean) objA2).booleanValue()) {
                                                if1Var4.I = new WeakReference(eg1VarA);
                                            }
                                            obj7 = p005kotlin.Unit.INSTANCE;
                                            r46.unlock(null);
                                            if (obj7 instanceof i01) {
                                                xs3.a((i01) obj7, false);
                                                break;
                                            }
                                            CloseableKt.closeFinally(r26, null);
                                            return p005kotlin.Unit.INSTANCE;
                                        }
                                        return coroutine_suspended;
                                    case 8:
                                        eg1VarA = (eg1) qe1Var.e;
                                        r46 = (Mutex) qe1Var.d;
                                        Closeable closeable9 = (Closeable) qe1Var.c;
                                        r5 = (rr3) qe1Var.b;
                                        if1Var4 = qe1Var.a;
                                        try {
                                            p005kotlin.ResultKt.throwOnFailure(objA2);
                                            r46 = r46;
                                            r26 = closeable9;
                                            r5 = r5;
                                            if (((Boolean) objA2).booleanValue()) {
                                                if1Var4.I = new WeakReference(eg1VarA);
                                            }
                                            obj7 = p005kotlin.Unit.INSTANCE;
                                            r46.unlock(null);
                                            if (obj7 instanceof i01) {
                                                xs3.a((i01) obj7, false);
                                                break;
                                            }
                                            CloseableKt.closeFinally(r26, null);
                                            return p005kotlin.Unit.INSTANCE;
                                        } catch (Throwable th22) {
                                            th = th22;
                                            r46.unlock(null);
                                            throw th;
                                        }
                                    case 9:
                                        Mutex mutex16 = (Mutex) qe1Var.f;
                                        Closeable closeable10 = (Closeable) qe1Var.e;
                                        r47 = (rr3) qe1Var.d;
                                        OnAdInspectorClosedListener onAdInspectorClosedListener9 = (OnAdInspectorClosedListener) qe1Var.c;
                                        ae1 ae1Var8 = (ae1) qe1Var.b;
                                        if1 if1Var13 = qe1Var.a;
                                        try {
                                            p005kotlin.ResultKt.throwOnFailure(objA2);
                                            str5 = "defaultValue";
                                            str6 = C3510b4.i.W;
                                            str7 = "gads:inspector:ui_url";
                                            obj2 = "https://admob-gmats.uc.r.appspot.com/";
                                            closeable = closeable10;
                                            r22 = r47;
                                            r27 = onAdInspectorClosedListener9;
                                            mutex = mutex16;
                                            if1Var8 = if1Var13;
                                            ae1Var2 = ae1Var8;
                                            obj3 = null;
                                            zK2 = if1Var8.k();
                                            mutex.unlock(obj3);
                                            if (zK2) {
                                                m21 m21Var20 = o21.f;
                                                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new re1(null, r27), 3, null);
                                                xs3.a("Ad inspector cannot be opened because it is disabled in the AndroidManifest.xml.", null, 6);
                                                p005kotlin.Unit unit27 = p005kotlin.Unit.INSTANCE;
                                                CloseableKt.closeFinally(closeable, null);
                                                return unit27;
                                            }
                                            mutex6 = if1Var8.x;
                                            qe1Var.a = if1Var8;
                                            qe1Var.b = ae1Var2;
                                            qe1Var.c = r27;
                                            r110 = r22;
                                            qe1Var.d = r110;
                                            qe1Var.e = closeable;
                                            qe1Var.f = mutex6;
                                            qe1Var.i = 10;
                                            ae1Var3 = ae1Var2;
                                            obj8 = null;
                                            if (mutex6.lock(null, qe1Var) != coroutine_suspended) {
                                                r46 = closeable;
                                                if1Var5 = if1Var8;
                                                r28 = r27;
                                                r47 = r110;
                                                ae1Var4 = ae1Var3;
                                                zL2 = if1Var5.l();
                                                mutex6.unlock(obj8);
                                                if (!zL2) {
                                                    m21 m21Var21 = o21.f;
                                                    BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new se1(null, r28), 3, null);
                                                    xs3.a("Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.", null, 6);
                                                    p005kotlin.Unit unit28 = p005kotlin.Unit.INSTANCE;
                                                    CloseableKt.closeFinally(r46, null);
                                                    return unit28;
                                                }
                                                if (!if1Var5.i.a0()) {
                                                    m21 m21Var22 = o21.f;
                                                    BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new te1(null, r28), 3, null);
                                                    xs3.a("Ad inspector is disabled", null, 6);
                                                    p005kotlin.Unit unit118 = p005kotlin.Unit.INSTANCE;
                                                    CloseableKt.closeFinally(r46, null);
                                                    return unit118;
                                                }
                                                mutex7 = if1Var5.x;
                                                qe1Var.a = if1Var5;
                                                qe1Var.b = ae1Var4;
                                                qe1Var.c = r28;
                                                qe1Var.d = r47;
                                                qe1Var.e = r46;
                                                qe1Var.f = mutex7;
                                                qe1Var.i = 11;
                                                obj9 = null;
                                                if (mutex7.lock(null, qe1Var) != coroutine_suspended) {
                                                    if1Var6 = if1Var5;
                                                    r29 = r28;
                                                    r46 = r46;
                                                    r47 = r47;
                                                    if1Var6.C = ae1Var4;
                                                    p005kotlin.Unit unit119 = p005kotlin.Unit.INSTANCE;
                                                    mutex7.unlock(obj9);
                                                    mutex8 = if1Var6.H;
                                                    qe1Var.a = if1Var6;
                                                    qe1Var.b = r29;
                                                    qe1Var.c = r47;
                                                    qe1Var.d = r46;
                                                    qe1Var.e = mutex8;
                                                    qe1Var.f = null;
                                                    qe1Var.i = 12;
                                                    r32 = r29;
                                                    r31 = r46;
                                                    r30 = r47;
                                                    if (mutex8.lock(null, qe1Var) != coroutine_suspended) {
                                                        eg1Var2 = (eg1) if1Var6.I.get();
                                                        if (eg1Var2 == null) {
                                                        }
                                                        iz3 iz3Var7 = if1Var6.p;
                                                        int i8 = 0;
                                                        v14 v14Var7 = new v14(u14.FULLSCREEN, i8, i8, 14);
                                                        qe1Var.a = if1Var6;
                                                        qe1Var.b = r32;
                                                        qe1Var.c = r30;
                                                        qe1Var.d = r31;
                                                        qe1Var.e = mutex8;
                                                        qe1Var.i = 13;
                                                        objA = iz3Var7.a(v14Var7, null, true, qe1Var);
                                                        if (objA != coroutine_suspended) {
                                                            ?? r213 = r30;
                                                            r33 = r31;
                                                            r34 = mutex8;
                                                            objA2 = objA;
                                                            r35 = r213;
                                                            r36 = r32;
                                                            v01Var3 = (v01) objA2;
                                                            if (v01Var3 instanceof i01) {
                                                                m21 m21Var120 = o21.f;
                                                                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new ve1(null, r36), 3, null);
                                                                xs3.a((i01) v01Var3, false);
                                                                p005kotlin.Unit unit120 = p005kotlin.Unit.INSTANCE;
                                                                r34.unlock(null);
                                                                CloseableKt.closeFinally(r33, null);
                                                                return unit120;
                                                            }
                                                            if (v01Var3 instanceof q01) {
                                                                throw new p005kotlin.NoWhenBranchMatchedException();
                                                            }
                                                            r31Var3 = (r31) ((q01) v01Var3).a();
                                                            yd1Var2 = (yd1) if1Var6.s.get();
                                                            nr1VarC2 = r31Var3.c();
                                                            qe1Var.a = if1Var6;
                                                            qe1Var.b = r36;
                                                            qe1Var.c = r35;
                                                            qe1Var.d = r33;
                                                            qe1Var.e = r34;
                                                            qe1Var.f = r31Var3;
                                                            qe1Var.i = 14;
                                                            if (yd1Var2.a(nr1VarC2, qe1Var) == coroutine_suspended) {
                                                                r37 = r36;
                                                                r31Var4 = r31Var3;
                                                                r40 = r34;
                                                                r39 = r33;
                                                                r38 = r35;
                                                                ex0 ex0Var9 = if1Var6.i;
                                                                ex0Var9.getClass();
                                                                Intrinsics.checkNotNullParameter(str7, str6);
                                                                Intrinsics.checkNotNullParameter(obj2, str5);
                                                                String str114 = (String) ex0Var9.a(str7, obj2, yr.o);
                                                                qe1Var.a = if1Var6;
                                                                qe1Var.b = r37;
                                                                qe1Var.c = r38;
                                                                qe1Var.d = r39;
                                                                qe1Var.e = r40;
                                                                qe1Var.f = r31Var4;
                                                                qe1Var.i = 15;
                                                                objA2 = r31Var4.c(str114, qe1Var);
                                                                r44 = r40;
                                                                r43 = r39;
                                                                r42 = r38;
                                                                r41 = r37;
                                                                if (objA2 != coroutine_suspended) {
                                                                    v01Var4 = (v01) objA2;
                                                                    if (v01Var4 instanceof i01) {
                                                                        m21 m21Var121 = o21.f;
                                                                        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we1(null, r41), 3, null);
                                                                        xs3.a((i01) v01Var4, false);
                                                                        p005kotlin.Unit unit121 = p005kotlin.Unit.INSTANCE;
                                                                        r44.unlock(null);
                                                                        CloseableKt.closeFinally(r43, null);
                                                                        return unit121;
                                                                    }
                                                                    eg1VarA2 = ((gg1) if1Var6.o).a(if1Var6, r31Var4, r41);
                                                                    qe1Var.a = if1Var6;
                                                                    qe1Var.b = r42;
                                                                    qe1Var.c = r43;
                                                                    qe1Var.d = r44;
                                                                    qe1Var.e = eg1VarA2;
                                                                    qe1Var.f = null;
                                                                    qe1Var.i = 16;
                                                                    objA2 = eg1VarA2.g(qe1Var);
                                                                    if (objA2 != coroutine_suspended) {
                                                                        if1Var7 = if1Var6;
                                                                        r46 = r44;
                                                                        r45 = r43;
                                                                        if (((Boolean) objA2).booleanValue()) {
                                                                            if1Var7.I = new WeakReference(eg1VarA2);
                                                                        }
                                                                        obj10 = p005kotlin.Unit.INSTANCE;
                                                                        r46.unlock(null);
                                                                        if (obj10 instanceof i01) {
                                                                            xs3.a((i01) obj10, false);
                                                                        }
                                                                        CloseableKt.closeFinally(r45, null);
                                                                        return p005kotlin.Unit.INSTANCE;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                break;
                                            }
                                            return coroutine_suspended;
                                        } catch (Throwable th23) {
                                            th = th23;
                                            r46 = closeable10;
                                            r3 = r47;
                                            r4 = r46;
                                            r3.b(th);
                                            if (th instanceof v24) {
                                                throw th;
                                            }
                                            if (!(th instanceof TimeoutCancellationException)) {
                                                r3.a(th);
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
                                        Mutex mutex17 = (Mutex) qe1Var.f;
                                        Closeable closeable11 = (Closeable) qe1Var.e;
                                        rr3 rr3Var7 = (rr3) qe1Var.d;
                                        OnAdInspectorClosedListener onAdInspectorClosedListener10 = (OnAdInspectorClosedListener) qe1Var.c;
                                        ae1Var4 = (ae1) qe1Var.b;
                                        if1 if1Var14 = qe1Var.a;
                                        p005kotlin.ResultKt.throwOnFailure(objA2);
                                        mutex6 = mutex17;
                                        r28 = onAdInspectorClosedListener10;
                                        str5 = "defaultValue";
                                        str6 = C3510b4.i.W;
                                        str7 = "gads:inspector:ui_url";
                                        obj2 = "https://admob-gmats.uc.r.appspot.com/";
                                        if1Var5 = if1Var14;
                                        obj8 = null;
                                        r46 = closeable11;
                                        r47 = rr3Var7;
                                        zL2 = if1Var5.l();
                                        mutex6.unlock(obj8);
                                        if (!zL2) {
                                            m21 m21Var23 = o21.f;
                                            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new se1(null, r28), 3, null);
                                            xs3.a("Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.", null, 6);
                                            p005kotlin.Unit unit29 = p005kotlin.Unit.INSTANCE;
                                            CloseableKt.closeFinally(r46, null);
                                            return unit29;
                                        }
                                        if (!if1Var5.i.a0()) {
                                            m21 m21Var24 = o21.f;
                                            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new te1(null, r28), 3, null);
                                            xs3.a("Ad inspector is disabled", null, 6);
                                            p005kotlin.Unit unit1110 = p005kotlin.Unit.INSTANCE;
                                            CloseableKt.closeFinally(r46, null);
                                            return unit1110;
                                        }
                                        mutex7 = if1Var5.x;
                                        qe1Var.a = if1Var5;
                                        qe1Var.b = ae1Var4;
                                        qe1Var.c = r28;
                                        qe1Var.d = r47;
                                        qe1Var.e = r46;
                                        qe1Var.f = mutex7;
                                        qe1Var.i = 11;
                                        obj9 = null;
                                        if (mutex7.lock(null, qe1Var) != coroutine_suspended) {
                                            if1Var6 = if1Var5;
                                            r29 = r28;
                                            r46 = r46;
                                            r47 = r47;
                                            if1Var6.C = ae1Var4;
                                            p005kotlin.Unit unit1111 = p005kotlin.Unit.INSTANCE;
                                            mutex7.unlock(obj9);
                                            mutex8 = if1Var6.H;
                                            qe1Var.a = if1Var6;
                                            qe1Var.b = r29;
                                            qe1Var.c = r47;
                                            qe1Var.d = r46;
                                            qe1Var.e = mutex8;
                                            qe1Var.f = null;
                                            qe1Var.i = 12;
                                            r32 = r29;
                                            r31 = r46;
                                            r30 = r47;
                                            if (mutex8.lock(null, qe1Var) != coroutine_suspended) {
                                                eg1Var2 = (eg1) if1Var6.I.get();
                                                if (eg1Var2 == null) {
                                                }
                                                iz3 iz3Var8 = if1Var6.p;
                                                int i9 = 0;
                                                v14 v14Var8 = new v14(u14.FULLSCREEN, i9, i9, 14);
                                                qe1Var.a = if1Var6;
                                                qe1Var.b = r32;
                                                qe1Var.c = r30;
                                                qe1Var.d = r31;
                                                qe1Var.e = mutex8;
                                                qe1Var.i = 13;
                                                objA = iz3Var8.a(v14Var8, null, true, qe1Var);
                                                if (objA != coroutine_suspended) {
                                                    ?? r214 = r30;
                                                    r33 = r31;
                                                    r34 = mutex8;
                                                    objA2 = objA;
                                                    r35 = r214;
                                                    r36 = r32;
                                                    v01Var3 = (v01) objA2;
                                                    if (v01Var3 instanceof i01) {
                                                        m21 m21Var122 = o21.f;
                                                        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new ve1(null, r36), 3, null);
                                                        xs3.a((i01) v01Var3, false);
                                                        p005kotlin.Unit unit122 = p005kotlin.Unit.INSTANCE;
                                                        r34.unlock(null);
                                                        CloseableKt.closeFinally(r33, null);
                                                        return unit122;
                                                    }
                                                    if (v01Var3 instanceof q01) {
                                                        throw new p005kotlin.NoWhenBranchMatchedException();
                                                    }
                                                    r31Var3 = (r31) ((q01) v01Var3).a();
                                                    yd1Var2 = (yd1) if1Var6.s.get();
                                                    nr1VarC2 = r31Var3.c();
                                                    qe1Var.a = if1Var6;
                                                    qe1Var.b = r36;
                                                    qe1Var.c = r35;
                                                    qe1Var.d = r33;
                                                    qe1Var.e = r34;
                                                    qe1Var.f = r31Var3;
                                                    qe1Var.i = 14;
                                                    if (yd1Var2.a(nr1VarC2, qe1Var) == coroutine_suspended) {
                                                        r37 = r36;
                                                        r31Var4 = r31Var3;
                                                        r40 = r34;
                                                        r39 = r33;
                                                        r38 = r35;
                                                        ex0 ex0Var10 = if1Var6.i;
                                                        ex0Var10.getClass();
                                                        Intrinsics.checkNotNullParameter(str7, str6);
                                                        Intrinsics.checkNotNullParameter(obj2, str5);
                                                        String str115 = (String) ex0Var10.a(str7, obj2, yr.o);
                                                        qe1Var.a = if1Var6;
                                                        qe1Var.b = r37;
                                                        qe1Var.c = r38;
                                                        qe1Var.d = r39;
                                                        qe1Var.e = r40;
                                                        qe1Var.f = r31Var4;
                                                        qe1Var.i = 15;
                                                        objA2 = r31Var4.c(str115, qe1Var);
                                                        r44 = r40;
                                                        r43 = r39;
                                                        r42 = r38;
                                                        r41 = r37;
                                                        if (objA2 != coroutine_suspended) {
                                                            v01Var4 = (v01) objA2;
                                                            if (v01Var4 instanceof i01) {
                                                                m21 m21Var123 = o21.f;
                                                                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we1(null, r41), 3, null);
                                                                xs3.a((i01) v01Var4, false);
                                                                p005kotlin.Unit unit123 = p005kotlin.Unit.INSTANCE;
                                                                r44.unlock(null);
                                                                CloseableKt.closeFinally(r43, null);
                                                                return unit123;
                                                            }
                                                            eg1VarA2 = ((gg1) if1Var6.o).a(if1Var6, r31Var4, r41);
                                                            qe1Var.a = if1Var6;
                                                            qe1Var.b = r42;
                                                            qe1Var.c = r43;
                                                            qe1Var.d = r44;
                                                            qe1Var.e = eg1VarA2;
                                                            qe1Var.f = null;
                                                            qe1Var.i = 16;
                                                            objA2 = eg1VarA2.g(qe1Var);
                                                            if (objA2 != coroutine_suspended) {
                                                                if1Var7 = if1Var6;
                                                                r46 = r44;
                                                                r45 = r43;
                                                                if (((Boolean) objA2).booleanValue()) {
                                                                    if1Var7.I = new WeakReference(eg1VarA2);
                                                                }
                                                                obj10 = p005kotlin.Unit.INSTANCE;
                                                                r46.unlock(null);
                                                                if (obj10 instanceof i01) {
                                                                    xs3.a((i01) obj10, false);
                                                                }
                                                                CloseableKt.closeFinally(r45, null);
                                                                return p005kotlin.Unit.INSTANCE;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            break;
                                        }
                                        return coroutine_suspended;
                                    case 11:
                                        Mutex mutex18 = (Mutex) qe1Var.f;
                                        Closeable closeable12 = (Closeable) qe1Var.e;
                                        rr3 rr3Var8 = (rr3) qe1Var.d;
                                        OnAdInspectorClosedListener onAdInspectorClosedListener11 = (OnAdInspectorClosedListener) qe1Var.c;
                                        ae1 ae1Var9 = (ae1) qe1Var.b;
                                        if1 if1Var15 = qe1Var.a;
                                        p005kotlin.ResultKt.throwOnFailure(objA2);
                                        mutex7 = mutex18;
                                        r29 = onAdInspectorClosedListener11;
                                        str5 = "defaultValue";
                                        str6 = C3510b4.i.W;
                                        str7 = "gads:inspector:ui_url";
                                        obj2 = "https://admob-gmats.uc.r.appspot.com/";
                                        ae1Var4 = ae1Var9;
                                        if1Var6 = if1Var15;
                                        obj9 = null;
                                        r46 = closeable12;
                                        r47 = rr3Var8;
                                        if1Var6.C = ae1Var4;
                                        p005kotlin.Unit unit1112 = p005kotlin.Unit.INSTANCE;
                                        mutex7.unlock(obj9);
                                        mutex8 = if1Var6.H;
                                        qe1Var.a = if1Var6;
                                        qe1Var.b = r29;
                                        qe1Var.c = r47;
                                        qe1Var.d = r46;
                                        qe1Var.e = mutex8;
                                        qe1Var.f = null;
                                        qe1Var.i = 12;
                                        r32 = r29;
                                        r31 = r46;
                                        r30 = r47;
                                        if (mutex8.lock(null, qe1Var) != coroutine_suspended) {
                                            eg1Var2 = (eg1) if1Var6.I.get();
                                            if (eg1Var2 == null) {
                                            }
                                            iz3 iz3Var9 = if1Var6.p;
                                            int i10 = 0;
                                            v14 v14Var9 = new v14(u14.FULLSCREEN, i10, i10, 14);
                                            qe1Var.a = if1Var6;
                                            qe1Var.b = r32;
                                            qe1Var.c = r30;
                                            qe1Var.d = r31;
                                            qe1Var.e = mutex8;
                                            qe1Var.i = 13;
                                            objA = iz3Var9.a(v14Var9, null, true, qe1Var);
                                            if (objA != coroutine_suspended) {
                                                ?? r215 = r30;
                                                r33 = r31;
                                                r34 = mutex8;
                                                objA2 = objA;
                                                r35 = r215;
                                                r36 = r32;
                                                v01Var3 = (v01) objA2;
                                                if (v01Var3 instanceof i01) {
                                                    m21 m21Var124 = o21.f;
                                                    BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new ve1(null, r36), 3, null);
                                                    xs3.a((i01) v01Var3, false);
                                                    p005kotlin.Unit unit124 = p005kotlin.Unit.INSTANCE;
                                                    r34.unlock(null);
                                                    CloseableKt.closeFinally(r33, null);
                                                    return unit124;
                                                }
                                                if (v01Var3 instanceof q01) {
                                                    throw new p005kotlin.NoWhenBranchMatchedException();
                                                }
                                                r31Var3 = (r31) ((q01) v01Var3).a();
                                                yd1Var2 = (yd1) if1Var6.s.get();
                                                nr1VarC2 = r31Var3.c();
                                                qe1Var.a = if1Var6;
                                                qe1Var.b = r36;
                                                qe1Var.c = r35;
                                                qe1Var.d = r33;
                                                qe1Var.e = r34;
                                                qe1Var.f = r31Var3;
                                                qe1Var.i = 14;
                                                if (yd1Var2.a(nr1VarC2, qe1Var) == coroutine_suspended) {
                                                    r37 = r36;
                                                    r31Var4 = r31Var3;
                                                    r40 = r34;
                                                    r39 = r33;
                                                    r38 = r35;
                                                    ex0 ex0Var11 = if1Var6.i;
                                                    ex0Var11.getClass();
                                                    Intrinsics.checkNotNullParameter(str7, str6);
                                                    Intrinsics.checkNotNullParameter(obj2, str5);
                                                    String str116 = (String) ex0Var11.a(str7, obj2, yr.o);
                                                    qe1Var.a = if1Var6;
                                                    qe1Var.b = r37;
                                                    qe1Var.c = r38;
                                                    qe1Var.d = r39;
                                                    qe1Var.e = r40;
                                                    qe1Var.f = r31Var4;
                                                    qe1Var.i = 15;
                                                    objA2 = r31Var4.c(str116, qe1Var);
                                                    r44 = r40;
                                                    r43 = r39;
                                                    r42 = r38;
                                                    r41 = r37;
                                                    if (objA2 != coroutine_suspended) {
                                                        v01Var4 = (v01) objA2;
                                                        if (v01Var4 instanceof i01) {
                                                            m21 m21Var125 = o21.f;
                                                            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we1(null, r41), 3, null);
                                                            xs3.a((i01) v01Var4, false);
                                                            p005kotlin.Unit unit125 = p005kotlin.Unit.INSTANCE;
                                                            r44.unlock(null);
                                                            CloseableKt.closeFinally(r43, null);
                                                            return unit125;
                                                        }
                                                        eg1VarA2 = ((gg1) if1Var6.o).a(if1Var6, r31Var4, r41);
                                                        qe1Var.a = if1Var6;
                                                        qe1Var.b = r42;
                                                        qe1Var.c = r43;
                                                        qe1Var.d = r44;
                                                        qe1Var.e = eg1VarA2;
                                                        qe1Var.f = null;
                                                        qe1Var.i = 16;
                                                        objA2 = eg1VarA2.g(qe1Var);
                                                        if (objA2 != coroutine_suspended) {
                                                            if1Var7 = if1Var6;
                                                            r46 = r44;
                                                            r45 = r43;
                                                            if (((Boolean) objA2).booleanValue()) {
                                                                if1Var7.I = new WeakReference(eg1VarA2);
                                                            }
                                                            obj10 = p005kotlin.Unit.INSTANCE;
                                                            r46.unlock(null);
                                                            if (obj10 instanceof i01) {
                                                                xs3.a((i01) obj10, false);
                                                            }
                                                            CloseableKt.closeFinally(r45, null);
                                                            return p005kotlin.Unit.INSTANCE;
                                                        }
                                                    }
                                                }
                                            }
                                            break;
                                        }
                                        return coroutine_suspended;
                                    case 12:
                                        Mutex mutex19 = (Mutex) qe1Var.e;
                                        Closeable closeable13 = (Closeable) qe1Var.d;
                                        rr3 rr3Var9 = (rr3) qe1Var.c;
                                        OnAdInspectorClosedListener onAdInspectorClosedListener12 = (OnAdInspectorClosedListener) qe1Var.b;
                                        if1Var6 = qe1Var.a;
                                        p005kotlin.ResultKt.throwOnFailure(objA2);
                                        str5 = "defaultValue";
                                        str6 = C3510b4.i.W;
                                        str7 = "gads:inspector:ui_url";
                                        obj2 = "https://admob-gmats.uc.r.appspot.com/";
                                        mutex8 = mutex19;
                                        r32 = onAdInspectorClosedListener12;
                                        r31 = closeable13;
                                        r30 = rr3Var9;
                                        eg1Var2 = (eg1) if1Var6.I.get();
                                        if (eg1Var2 == null) {
                                            break;
                                        }
                                        iz3 iz3Var10 = if1Var6.p;
                                        int i11 = 0;
                                        v14 v14Var10 = new v14(u14.FULLSCREEN, i11, i11, 14);
                                        qe1Var.a = if1Var6;
                                        qe1Var.b = r32;
                                        qe1Var.c = r30;
                                        qe1Var.d = r31;
                                        qe1Var.e = mutex8;
                                        qe1Var.i = 13;
                                        objA = iz3Var10.a(v14Var10, null, true, qe1Var);
                                        if (objA != coroutine_suspended) {
                                            ?? r216 = r30;
                                            r33 = r31;
                                            r34 = mutex8;
                                            objA2 = objA;
                                            r35 = r216;
                                            r36 = r32;
                                            v01Var3 = (v01) objA2;
                                            if (v01Var3 instanceof i01) {
                                                m21 m21Var126 = o21.f;
                                                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new ve1(null, r36), 3, null);
                                                xs3.a((i01) v01Var3, false);
                                                p005kotlin.Unit unit126 = p005kotlin.Unit.INSTANCE;
                                                r34.unlock(null);
                                                CloseableKt.closeFinally(r33, null);
                                                return unit126;
                                            }
                                            if (v01Var3 instanceof q01) {
                                                throw new p005kotlin.NoWhenBranchMatchedException();
                                            }
                                            r31Var3 = (r31) ((q01) v01Var3).a();
                                            yd1Var2 = (yd1) if1Var6.s.get();
                                            nr1VarC2 = r31Var3.c();
                                            qe1Var.a = if1Var6;
                                            qe1Var.b = r36;
                                            qe1Var.c = r35;
                                            qe1Var.d = r33;
                                            qe1Var.e = r34;
                                            qe1Var.f = r31Var3;
                                            qe1Var.i = 14;
                                            if (yd1Var2.a(nr1VarC2, qe1Var) == coroutine_suspended) {
                                                r37 = r36;
                                                r31Var4 = r31Var3;
                                                r40 = r34;
                                                r39 = r33;
                                                r38 = r35;
                                                ex0 ex0Var12 = if1Var6.i;
                                                ex0Var12.getClass();
                                                Intrinsics.checkNotNullParameter(str7, str6);
                                                Intrinsics.checkNotNullParameter(obj2, str5);
                                                String str117 = (String) ex0Var12.a(str7, obj2, yr.o);
                                                qe1Var.a = if1Var6;
                                                qe1Var.b = r37;
                                                qe1Var.c = r38;
                                                qe1Var.d = r39;
                                                qe1Var.e = r40;
                                                qe1Var.f = r31Var4;
                                                qe1Var.i = 15;
                                                objA2 = r31Var4.c(str117, qe1Var);
                                                r44 = r40;
                                                r43 = r39;
                                                r42 = r38;
                                                r41 = r37;
                                                if (objA2 != coroutine_suspended) {
                                                    v01Var4 = (v01) objA2;
                                                    if (v01Var4 instanceof i01) {
                                                        m21 m21Var127 = o21.f;
                                                        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we1(null, r41), 3, null);
                                                        xs3.a((i01) v01Var4, false);
                                                        p005kotlin.Unit unit127 = p005kotlin.Unit.INSTANCE;
                                                        r44.unlock(null);
                                                        CloseableKt.closeFinally(r43, null);
                                                        return unit127;
                                                    }
                                                    eg1VarA2 = ((gg1) if1Var6.o).a(if1Var6, r31Var4, r41);
                                                    qe1Var.a = if1Var6;
                                                    qe1Var.b = r42;
                                                    qe1Var.c = r43;
                                                    qe1Var.d = r44;
                                                    qe1Var.e = eg1VarA2;
                                                    qe1Var.f = null;
                                                    qe1Var.i = 16;
                                                    objA2 = eg1VarA2.g(qe1Var);
                                                    if (objA2 != coroutine_suspended) {
                                                        if1Var7 = if1Var6;
                                                        r46 = r44;
                                                        r45 = r43;
                                                        if (((Boolean) objA2).booleanValue()) {
                                                            if1Var7.I = new WeakReference(eg1VarA2);
                                                        }
                                                        obj10 = p005kotlin.Unit.INSTANCE;
                                                        r46.unlock(null);
                                                        if (obj10 instanceof i01) {
                                                            xs3.a((i01) obj10, false);
                                                        }
                                                        CloseableKt.closeFinally(r45, null);
                                                        return p005kotlin.Unit.INSTANCE;
                                                    }
                                                }
                                            }
                                        }
                                        return coroutine_suspended;
                                    case 13:
                                        r46 = (Mutex) qe1Var.e;
                                        Closeable closeable14 = (Closeable) qe1Var.d;
                                        r48 = (rr3) qe1Var.c;
                                        OnAdInspectorClosedListener onAdInspectorClosedListener13 = (OnAdInspectorClosedListener) qe1Var.b;
                                        if1 if1Var16 = qe1Var.a;
                                        try {
                                            p005kotlin.ResultKt.throwOnFailure(objA2);
                                            str5 = "defaultValue";
                                            str6 = C3510b4.i.W;
                                            str7 = "gads:inspector:ui_url";
                                            obj2 = "https://admob-gmats.uc.r.appspot.com/";
                                            if1Var6 = if1Var16;
                                            r36 = onAdInspectorClosedListener13;
                                            r34 = r46;
                                            r33 = closeable14;
                                            r35 = r48;
                                            v01Var3 = (v01) objA2;
                                            if (v01Var3 instanceof i01) {
                                                m21 m21Var128 = o21.f;
                                                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new ve1(null, r36), 3, null);
                                                xs3.a((i01) v01Var3, false);
                                                p005kotlin.Unit unit128 = p005kotlin.Unit.INSTANCE;
                                                r34.unlock(null);
                                                CloseableKt.closeFinally(r33, null);
                                                return unit128;
                                            }
                                            if (v01Var3 instanceof q01) {
                                                throw new p005kotlin.NoWhenBranchMatchedException();
                                            }
                                            r31Var3 = (r31) ((q01) v01Var3).a();
                                            yd1Var2 = (yd1) if1Var6.s.get();
                                            nr1VarC2 = r31Var3.c();
                                            qe1Var.a = if1Var6;
                                            qe1Var.b = r36;
                                            qe1Var.c = r35;
                                            qe1Var.d = r33;
                                            qe1Var.e = r34;
                                            qe1Var.f = r31Var3;
                                            qe1Var.i = 14;
                                            if (yd1Var2.a(nr1VarC2, qe1Var) == coroutine_suspended) {
                                                r37 = r36;
                                                r31Var4 = r31Var3;
                                                r40 = r34;
                                                r39 = r33;
                                                r38 = r35;
                                                ex0 ex0Var13 = if1Var6.i;
                                                ex0Var13.getClass();
                                                Intrinsics.checkNotNullParameter(str7, str6);
                                                Intrinsics.checkNotNullParameter(obj2, str5);
                                                String str118 = (String) ex0Var13.a(str7, obj2, yr.o);
                                                qe1Var.a = if1Var6;
                                                qe1Var.b = r37;
                                                qe1Var.c = r38;
                                                qe1Var.d = r39;
                                                qe1Var.e = r40;
                                                qe1Var.f = r31Var4;
                                                qe1Var.i = 15;
                                                objA2 = r31Var4.c(str118, qe1Var);
                                                r44 = r40;
                                                r43 = r39;
                                                r42 = r38;
                                                r41 = r37;
                                                if (objA2 != coroutine_suspended) {
                                                    v01Var4 = (v01) objA2;
                                                    if (v01Var4 instanceof i01) {
                                                        m21 m21Var129 = o21.f;
                                                        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we1(null, r41), 3, null);
                                                        xs3.a((i01) v01Var4, false);
                                                        p005kotlin.Unit unit129 = p005kotlin.Unit.INSTANCE;
                                                        r44.unlock(null);
                                                        CloseableKt.closeFinally(r43, null);
                                                        return unit129;
                                                    }
                                                    eg1VarA2 = ((gg1) if1Var6.o).a(if1Var6, r31Var4, r41);
                                                    qe1Var.a = if1Var6;
                                                    qe1Var.b = r42;
                                                    qe1Var.c = r43;
                                                    qe1Var.d = r44;
                                                    qe1Var.e = eg1VarA2;
                                                    qe1Var.f = null;
                                                    qe1Var.i = 16;
                                                    objA2 = eg1VarA2.g(qe1Var);
                                                    if (objA2 != coroutine_suspended) {
                                                        if1Var7 = if1Var6;
                                                        r46 = r44;
                                                        r45 = r43;
                                                        if (((Boolean) objA2).booleanValue()) {
                                                            if1Var7.I = new WeakReference(eg1VarA2);
                                                        }
                                                        obj10 = p005kotlin.Unit.INSTANCE;
                                                        r46.unlock(null);
                                                        if (obj10 instanceof i01) {
                                                            xs3.a((i01) obj10, false);
                                                        }
                                                        CloseableKt.closeFinally(r45, null);
                                                        return p005kotlin.Unit.INSTANCE;
                                                    }
                                                }
                                            }
                                            return coroutine_suspended;
                                        } catch (Throwable th24) {
                                            th = th24;
                                            r46.unlock(null);
                                            throw th;
                                        }
                                    case 14:
                                        r31Var4 = (r31) qe1Var.f;
                                        Mutex mutex20 = (Mutex) qe1Var.e;
                                        Closeable closeable15 = (Closeable) qe1Var.d;
                                        rr3 rr3Var10 = (rr3) qe1Var.c;
                                        OnAdInspectorClosedListener onAdInspectorClosedListener14 = (OnAdInspectorClosedListener) qe1Var.b;
                                        if1Var6 = qe1Var.a;
                                        p005kotlin.ResultKt.throwOnFailure(objA2);
                                        str5 = "defaultValue";
                                        str6 = C3510b4.i.W;
                                        str7 = "gads:inspector:ui_url";
                                        obj2 = "https://admob-gmats.uc.r.appspot.com/";
                                        r40 = mutex20;
                                        r39 = closeable15;
                                        r38 = rr3Var10;
                                        r37 = onAdInspectorClosedListener14;
                                        ex0 ex0Var14 = if1Var6.i;
                                        ex0Var14.getClass();
                                        Intrinsics.checkNotNullParameter(str7, str6);
                                        Intrinsics.checkNotNullParameter(obj2, str5);
                                        String str119 = (String) ex0Var14.a(str7, obj2, yr.o);
                                        qe1Var.a = if1Var6;
                                        qe1Var.b = r37;
                                        qe1Var.c = r38;
                                        qe1Var.d = r39;
                                        qe1Var.e = r40;
                                        qe1Var.f = r31Var4;
                                        qe1Var.i = 15;
                                        objA2 = r31Var4.c(str119, qe1Var);
                                        r44 = r40;
                                        r43 = r39;
                                        r42 = r38;
                                        r41 = r37;
                                        if (objA2 != coroutine_suspended) {
                                            v01Var4 = (v01) objA2;
                                            if (v01Var4 instanceof i01) {
                                                m21 m21Var1210 = o21.f;
                                                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we1(null, r41), 3, null);
                                                xs3.a((i01) v01Var4, false);
                                                p005kotlin.Unit unit1210 = p005kotlin.Unit.INSTANCE;
                                                r44.unlock(null);
                                                CloseableKt.closeFinally(r43, null);
                                                return unit1210;
                                            }
                                            eg1VarA2 = ((gg1) if1Var6.o).a(if1Var6, r31Var4, r41);
                                            qe1Var.a = if1Var6;
                                            qe1Var.b = r42;
                                            qe1Var.c = r43;
                                            qe1Var.d = r44;
                                            qe1Var.e = eg1VarA2;
                                            qe1Var.f = null;
                                            qe1Var.i = 16;
                                            objA2 = eg1VarA2.g(qe1Var);
                                            if (objA2 != coroutine_suspended) {
                                                if1Var7 = if1Var6;
                                                r46 = r44;
                                                r45 = r43;
                                                if (((Boolean) objA2).booleanValue()) {
                                                    if1Var7.I = new WeakReference(eg1VarA2);
                                                }
                                                obj10 = p005kotlin.Unit.INSTANCE;
                                                r46.unlock(null);
                                                if (obj10 instanceof i01) {
                                                    xs3.a((i01) obj10, false);
                                                }
                                                CloseableKt.closeFinally(r45, null);
                                                return p005kotlin.Unit.INSTANCE;
                                            }
                                        }
                                        return coroutine_suspended;
                                    case 15:
                                        r31Var4 = (r31) qe1Var.f;
                                        Mutex mutex21 = (Mutex) qe1Var.e;
                                        Closeable closeable16 = (Closeable) qe1Var.d;
                                        rr3 rr3Var11 = (rr3) qe1Var.c;
                                        OnAdInspectorClosedListener onAdInspectorClosedListener15 = (OnAdInspectorClosedListener) qe1Var.b;
                                        if1Var6 = qe1Var.a;
                                        p005kotlin.ResultKt.throwOnFailure(objA2);
                                        r44 = mutex21;
                                        r43 = closeable16;
                                        r42 = rr3Var11;
                                        r41 = onAdInspectorClosedListener15;
                                        v01Var4 = (v01) objA2;
                                        if (v01Var4 instanceof i01) {
                                            m21 m21Var1211 = o21.f;
                                            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(qe1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we1(null, r41), 3, null);
                                            xs3.a((i01) v01Var4, false);
                                            p005kotlin.Unit unit1211 = p005kotlin.Unit.INSTANCE;
                                            r44.unlock(null);
                                            CloseableKt.closeFinally(r43, null);
                                            return unit1211;
                                        }
                                        eg1VarA2 = ((gg1) if1Var6.o).a(if1Var6, r31Var4, r41);
                                        qe1Var.a = if1Var6;
                                        qe1Var.b = r42;
                                        qe1Var.c = r43;
                                        qe1Var.d = r44;
                                        qe1Var.e = eg1VarA2;
                                        qe1Var.f = null;
                                        qe1Var.i = 16;
                                        objA2 = eg1VarA2.g(qe1Var);
                                        if (objA2 != coroutine_suspended) {
                                            if1Var7 = if1Var6;
                                            r46 = r44;
                                            r45 = r43;
                                            if (((Boolean) objA2).booleanValue()) {
                                                if1Var7.I = new WeakReference(eg1VarA2);
                                            }
                                            obj10 = p005kotlin.Unit.INSTANCE;
                                            r46.unlock(null);
                                            if (obj10 instanceof i01) {
                                                xs3.a((i01) obj10, false);
                                            }
                                            CloseableKt.closeFinally(r45, null);
                                            return p005kotlin.Unit.INSTANCE;
                                        }
                                        return coroutine_suspended;
                                    case 16:
                                        eg1VarA2 = (eg1) qe1Var.e;
                                        r46 = (Mutex) qe1Var.d;
                                        Closeable closeable17 = (Closeable) qe1Var.c;
                                        if1Var7 = qe1Var.a;
                                        try {
                                            p005kotlin.ResultKt.throwOnFailure(objA2);
                                            r46 = r46;
                                            r45 = closeable17;
                                            if (((Boolean) objA2).booleanValue()) {
                                                if1Var7.I = new WeakReference(eg1VarA2);
                                            }
                                            obj10 = p005kotlin.Unit.INSTANCE;
                                            r46.unlock(null);
                                            if (obj10 instanceof i01) {
                                                xs3.a((i01) obj10, false);
                                            }
                                            CloseableKt.closeFinally(r45, null);
                                            return p005kotlin.Unit.INSTANCE;
                                        } catch (Throwable th25) {
                                            th = th25;
                                            r46.unlock(null);
                                            throw th;
                                        }
                                    default:
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                            } catch (Throwable th26) {
                                th = th26;
                            }
                        } catch (Throwable th27) {
                            th = th27;
                            r3 = coroutine_suspended;
                            r4 = r47;
                        }
                    } catch (Throwable th28) {
                        th = th28;
                        A = r48;
                        r2 = r47;
                    }
                } catch (Throwable th29) {
                    th = th29;
                    r5 = r48;
                }
            } catch (Throwable th30) {
                th = th30;
                A = r47;
                A.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    A.a(th);
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
        } catch (Throwable th31) {
            th = th31;
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00ab A[Catch: all -> 0x0039, TRY_LEAVE, TryCatch #1 {all -> 0x0039, blocks: (B:13:0x0034, B:40:0x00a5, B:42:0x00ab, B:45:0x00b1, B:47:0x00b7, B:48:0x00d3), top: B:56:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00b1 A[Catch: all -> 0x0039, TRY_ENTER, TryCatch #1 {all -> 0x0039, blocks: (B:13:0x0034, B:40:0x00a5, B:42:0x00ab, B:45:0x00b1, B:47:0x00b7, B:48:0x00d3), top: B:56:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00b7 A[Catch: all -> 0x0039, TryCatch #1 {all -> 0x0039, blocks: (B:13:0x0034, B:40:0x00a5, B:42:0x00ab, B:45:0x00b1, B:47:0x00b7, B:48:0x00d3), top: B:56:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public static Object a(if1 if1Var, vd1 vd1Var, Continuation continuation) throws Throwable {
        af1 af1Var;
        Mutex mutex;
        vd1 vd1Var2;
        if1 if1Var2;
        Mutex mutex2;
        vd1 vd1Var3;
        if (continuation instanceof af1) {
            af1Var = (af1) continuation;
            int i = af1Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                af1Var.f = i - Integer.MIN_VALUE;
            } else {
                af1Var = new af1(if1Var, continuation);
            }
        } else {
            af1Var = new af1(if1Var, continuation);
        }
        af1 af1Var2 = af1Var;
        Object obj = af1Var2.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = af1Var2.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                if (!if1Var.i.a0()) {
                    return p005kotlin.Unit.INSTANCE;
                }
                mutex = if1Var.x;
                af1Var2.a = if1Var;
                af1Var2.b = vd1Var;
                af1Var2.c = mutex;
                af1Var2.f = 1;
                if (mutex.lock(null, af1Var2) != coroutine_suspended) {
                    vd1Var2 = vd1Var;
                    if1Var2 = if1Var;
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = af1Var2.c;
                vd1Var3 = af1Var2.b;
                if1Var2 = af1Var2.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    if (if1Var2.k()) {
                        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                        mutex2.unlock(null);
                        return unit;
                    }
                    if (if1Var2.l()) {
                        if1Var2.i();
                        ((ed3) if1Var2.f.get()).a();
                        ((ix0) if1Var2.g.get()).a();
                        if1Var2.a(vd1Var3);
                    }
                    p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    return unit2;
                } catch (Throwable th) {
                    th = th;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            Mutex mutex3 = af1Var2.c;
            vd1 vd1Var4 = af1Var2.b;
            if1 if1Var3 = af1Var2.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            vd1Var2 = vd1Var4;
            if1Var2 = if1Var3;
            og1 og1Var = if1Var2.y;
            if (og1Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                og1Var = null;
            }
            if (og1Var.y() == vd1Var2) {
                p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                mutex.unlock(null);
                return unit3;
            }
            af1Var2.a = if1Var2;
            af1Var2.b = vd1Var2;
            af1Var2.c = mutex;
            af1Var2.f = 2;
            if (a(if1Var2, null, null, vd1Var2, null, null, null, null, null, null, af1Var2, TypedValues.PositionType.TYPE_PERCENT_Y) != coroutine_suspended) {
                mutex2 = mutex;
                vd1Var3 = vd1Var2;
                if (if1Var2.k()) {
                    p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    return unit4;
                }
                if (if1Var2.l()) {
                    if1Var2.i();
                    ((ed3) if1Var2.f.get()).a();
                    ((ix0) if1Var2.g.get()).a();
                    if1Var2.a(vd1Var3);
                }
                p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                mutex2.unlock(null);
                return unit5;
            }
            return coroutine_suspended;
        } catch (Throwable th2) {
            th = th2;
            mutex2 = mutex;
            mutex2.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a4, code lost:
    
        if (a(r3, null, null, null, null, null, null, null, null, r12, r13, 255) == r2) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object a(kotlin.if1 r17, com.google.gson.JsonObject r18, p005kotlin.coroutines.Continuation r19) throws java.lang.Throwable {
        /*
            r0 = r17
            r1 = r19
            boolean r2 = r1 instanceof kotlin.cf1
            if (r2 == 0) goto L17
            r2 = r1
            ads_mobile_sdk.cf1 r2 = (kotlin.cf1) r2
            int r3 = r2.f
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.f = r3
            goto L1c
        L17:
            ads_mobile_sdk.cf1 r2 = new ads_mobile_sdk.cf1
            r2.<init>(r0, r1)
        L1c:
            r13 = r2
            java.lang.Object r1 = r13.d
            java.lang.Object r2 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r13.f
            r4 = 2
            r5 = 1
            r15 = 0
            if (r3 == 0) goto L54
            if (r3 == r5) goto L45
            if (r3 != r4) goto L3d
            java.lang.Object r0 = r13.b
            r2 = r0
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            ads_mobile_sdk.if1 r0 = r13.a
            p005kotlin.ResultKt.throwOnFailure(r1)     // Catch: java.lang.Throwable -> L3a
            goto La9
        L3a:
            r0 = move-exception
            goto Lbe
        L3d:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L45:
            kotlinx.coroutines.sync.Mutex r0 = r13.c
            java.lang.Object r3 = r13.b
            com.google.gson.JsonObject r3 = (com.google.gson.JsonObject) r3
            ads_mobile_sdk.if1 r5 = r13.a
            p005kotlin.ResultKt.throwOnFailure(r1)
            r1 = r0
            r0 = r3
            r3 = r5
            goto L6f
        L54:
            p005kotlin.ResultKt.throwOnFailure(r1)
            kotlinx.coroutines.sync.Mutex r1 = r0.x
            r13.a = r0
            r3 = r18
            r13.b = r3
            r13.c = r1
            r13.f = r5
            java.lang.Object r5 = r1.lock(r15, r13)
            if (r5 != r2) goto L6a
            goto La6
        L6a:
            r16 = r3
            r3 = r0
            r0 = r16
        L6f:
            r3.A = r0     // Catch: java.lang.Throwable -> Lbc
            ads_mobile_sdk.ds1 r5 = kotlin.ds1.a     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r5 = "is_globally_allowlisted"
            r6 = 0
            boolean r0 = kotlin.ds1.a(r0, r5, r6)     // Catch: java.lang.Throwable -> Lbc
            ads_mobile_sdk.og1 r5 = r3.y     // Catch: java.lang.Throwable -> Lbc
            if (r5 != 0) goto L84
            java.lang.String r5 = "storedInspectorSettings"
            p005kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r5)     // Catch: java.lang.Throwable -> Lbc
            r5 = r15
        L84:
            boolean r5 = r5.z()     // Catch: java.lang.Throwable -> Lbc
            if (r0 == r5) goto La7
            java.lang.Boolean r12 = p005kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r0)     // Catch: java.lang.Throwable -> Lbc
            r13.a = r3     // Catch: java.lang.Throwable -> Lbc
            r13.b = r1     // Catch: java.lang.Throwable -> Lbc
            r13.c = r15     // Catch: java.lang.Throwable -> Lbc
            r13.f = r4     // Catch: java.lang.Throwable -> Lbc
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r14 = 255(0xff, float:3.57E-43)
            java.lang.Object r0 = a(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14)     // Catch: java.lang.Throwable -> Lbc
            if (r0 != r2) goto La7
        La6:
            return r2
        La7:
            r2 = r1
            r0 = r3
        La9:
            boolean r1 = r0.l()     // Catch: java.lang.Throwable -> L3a
            if (r1 == 0) goto Lb6
            boolean r1 = r0.z     // Catch: java.lang.Throwable -> L3a
            if (r1 != 0) goto Lb6
            r0.i()     // Catch: java.lang.Throwable -> L3a
        Lb6:
            kotlin.Unit r0 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L3a
            r2.unlock(r15)
            return r0
        Lbc:
            r0 = move-exception
            r2 = r1
        Lbe:
            r2.unlock(r15)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.if1.a(ads_mobile_sdk.if1, com.google.gson.JsonObject, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public static /* synthetic */ Object a(if1 if1Var, Boolean bool, Boolean bool2, vd1 vd1Var, String str, Long l, String str2, String str3, String str4, Boolean bool3, Continuation continuation) throws Throwable {
        gf1 gf1Var;
        Mutex mutex;
        Boolean bool4;
        vd1 vd1Var2;
        String str5;
        Long l2;
        String str6;
        String str7;
        String str8;
        Boolean bool5;
        Boolean bool6;
        if1 if1Var2;
        Mutex mutex2;
        if (continuation instanceof gf1) {
            gf1Var = (gf1) continuation;
            int i = gf1Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                gf1Var.n = i - Integer.MIN_VALUE;
            } else {
                gf1Var = new gf1(if1Var, continuation);
            }
        } else {
            gf1Var = new gf1(if1Var, continuation);
        }
        Object obj = gf1Var.l;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = gf1Var.n;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = if1Var.x;
                gf1Var.a = if1Var;
                gf1Var.b = bool;
                bool4 = bool2;
                gf1Var.c = bool4;
                vd1Var2 = vd1Var;
                gf1Var.d = vd1Var2;
                str5 = str;
                gf1Var.e = str5;
                l2 = l;
                gf1Var.f = l2;
                str6 = str2;
                gf1Var.g = str6;
                str7 = str3;
                gf1Var.h = str7;
                gf1Var.i = str4;
                gf1Var.j = bool3;
                gf1Var.k = mutex;
                gf1Var.n = 1;
                if (mutex.lock(null, gf1Var) != coroutine_suspended) {
                    str8 = str4;
                    bool5 = bool;
                    bool6 = bool3;
                    if1Var2 = if1Var;
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = (Mutex) gf1Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    return unit;
                } catch (Throwable th) {
                    th = th;
                    mutex = mutex2;
                    mutex.unlock(null);
                    throw th;
                }
            }
            Mutex mutex3 = gf1Var.k;
            bool6 = gf1Var.j;
            str8 = gf1Var.i;
            String str9 = gf1Var.h;
            String str10 = gf1Var.g;
            Long l3 = gf1Var.f;
            String str11 = gf1Var.e;
            vd1 vd1Var3 = gf1Var.d;
            Boolean bool7 = gf1Var.c;
            bool5 = gf1Var.b;
            if1Var2 = (if1) gf1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            str7 = str9;
            bool4 = bool7;
            str6 = str10;
            vd1Var2 = vd1Var3;
            l2 = l3;
            str5 = str11;
            mutex = mutex3;
            gf1Var.a = mutex;
            gf1Var.b = null;
            gf1Var.c = null;
            gf1Var.d = null;
            gf1Var.e = null;
            gf1Var.f = null;
            gf1Var.g = null;
            gf1Var.h = null;
            gf1Var.i = null;
            gf1Var.j = null;
            gf1Var.k = null;
            gf1Var.n = 2;
            if (if1Var2.a(bool5, bool4, vd1Var2, str5, l2, str6, str7, str8, bool6, gf1Var) != coroutine_suspended) {
                mutex2 = mutex;
                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                mutex2.unlock(null);
                return unit2;
            }
            return coroutine_suspended;
        } catch (Throwable th2) {
            th = th2;
            mutex.unlock(null);
            throw th;
        }
    }

    public static /* synthetic */ Object a(if1 if1Var, Boolean bool, Boolean bool2, vd1 vd1Var, String str, Long l, String str2, String str3, String str4, Boolean bool3, Continuation continuation, int i) {
        if ((i & 1) != 0) {
            bool = null;
        }
        if ((i & 2) != 0) {
            bool2 = null;
        }
        if ((i & 4) != 0) {
            vd1Var = null;
        }
        if ((i & 8) != 0) {
            str = null;
        }
        if ((i & 16) != 0) {
            l = null;
        }
        if ((i & 32) != 0) {
            str2 = null;
        }
        if ((i & 64) != 0) {
            str3 = null;
        }
        if ((i & 128) != 0) {
            str4 = null;
        }
        if ((i & 256) != 0) {
            bool3 = null;
        }
        return if1Var.a(bool, bool2, vd1Var, str, l, str2, str3, str4, bool3, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:104:0x02cf A[Catch: all -> 0x02ef, TryCatch #4 {all -> 0x02ef, blocks: (B:95:0x02b9, B:97:0x02c0, B:99:0x02c4, B:101:0x02c8, B:102:0x02cb, B:104:0x02cf, B:106:0x02d3, B:108:0x02d7, B:109:0x02d8, B:110:0x02dd, B:111:0x02de, B:112:0x02e5, B:113:0x02e6, B:114:0x02ed, B:115:0x02ee), top: B:202:0x02b9 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x02d3 A[Catch: all -> 0x02ef, TryCatch #4 {all -> 0x02ef, blocks: (B:95:0x02b9, B:97:0x02c0, B:99:0x02c4, B:101:0x02c8, B:102:0x02cb, B:104:0x02cf, B:106:0x02d3, B:108:0x02d7, B:109:0x02d8, B:110:0x02dd, B:111:0x02de, B:112:0x02e5, B:113:0x02e6, B:114:0x02ed, B:115:0x02ee), top: B:202:0x02b9 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x02d7 A[Catch: all -> 0x02ef, TryCatch #4 {all -> 0x02ef, blocks: (B:95:0x02b9, B:97:0x02c0, B:99:0x02c4, B:101:0x02c8, B:102:0x02cb, B:104:0x02cf, B:106:0x02d3, B:108:0x02d7, B:109:0x02d8, B:110:0x02dd, B:111:0x02de, B:112:0x02e5, B:113:0x02e6, B:114:0x02ed, B:115:0x02ee), top: B:202:0x02b9 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x02d8 A[Catch: all -> 0x02ef, TryCatch #4 {all -> 0x02ef, blocks: (B:95:0x02b9, B:97:0x02c0, B:99:0x02c4, B:101:0x02c8, B:102:0x02cb, B:104:0x02cf, B:106:0x02d3, B:108:0x02d7, B:109:0x02d8, B:110:0x02dd, B:111:0x02de, B:112:0x02e5, B:113:0x02e6, B:114:0x02ed, B:115:0x02ee), top: B:202:0x02b9 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x02de A[Catch: all -> 0x02ef, TryCatch #4 {all -> 0x02ef, blocks: (B:95:0x02b9, B:97:0x02c0, B:99:0x02c4, B:101:0x02c8, B:102:0x02cb, B:104:0x02cf, B:106:0x02d3, B:108:0x02d7, B:109:0x02d8, B:110:0x02dd, B:111:0x02de, B:112:0x02e5, B:113:0x02e6, B:114:0x02ed, B:115:0x02ee), top: B:202:0x02b9 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x02e6 A[Catch: all -> 0x02ef, TryCatch #4 {all -> 0x02ef, blocks: (B:95:0x02b9, B:97:0x02c0, B:99:0x02c4, B:101:0x02c8, B:102:0x02cb, B:104:0x02cf, B:106:0x02d3, B:108:0x02d7, B:109:0x02d8, B:110:0x02dd, B:111:0x02de, B:112:0x02e5, B:113:0x02e6, B:114:0x02ed, B:115:0x02ee), top: B:202:0x02b9 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x02ee A[Catch: all -> 0x02ef, TRY_LEAVE, TryCatch #4 {all -> 0x02ef, blocks: (B:95:0x02b9, B:97:0x02c0, B:99:0x02c4, B:101:0x02c8, B:102:0x02cb, B:104:0x02cf, B:106:0x02d3, B:108:0x02d7, B:109:0x02d8, B:110:0x02dd, B:111:0x02de, B:112:0x02e5, B:113:0x02e6, B:114:0x02ed, B:115:0x02ee), top: B:202:0x02b9 }] */
    /* JADX WARN: Code duplicated, block: B:130:0x0398  */
    /* JADX WARN: Code duplicated, block: B:133:0x03a2 A[Catch: all -> 0x008c, TRY_LEAVE, TryCatch #2 {all -> 0x008c, blocks: (B:13:0x0052, B:158:0x0427, B:16:0x0065, B:155:0x040e, B:19:0x0079, B:131:0x039c, B:133:0x03a2, B:137:0x03b2, B:148:0x03ec, B:163:0x0433, B:138:0x03bb, B:140:0x03bf, B:143:0x03c7, B:146:0x03d5), top: B:198:0x003d, inners: #7 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x03b1  */
    /* JADX WARN: Code duplicated, block: B:140:0x03bf A[Catch: all -> 0x0430, TryCatch #7 {all -> 0x0430, blocks: (B:138:0x03bb, B:140:0x03bf, B:143:0x03c7, B:146:0x03d5), top: B:207:0x03bb, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:141:0x03c4  */
    /* JADX WARN: Code duplicated, block: B:143:0x03c7 A[Catch: all -> 0x0430, TRY_LEAVE, TryCatch #7 {all -> 0x0430, blocks: (B:138:0x03bb, B:140:0x03bf, B:143:0x03c7, B:146:0x03d5), top: B:207:0x03bb, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:146:0x03d5 A[Catch: all -> 0x0430, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x0430, blocks: (B:138:0x03bb, B:140:0x03bf, B:143:0x03c7, B:146:0x03d5), top: B:207:0x03bb, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:150:0x0406  */
    /* JADX WARN: Code duplicated, block: B:151:0x0407  */
    /* JADX WARN: Code duplicated, block: B:153:0x040b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:154:0x040d  */
    /* JADX WARN: Code duplicated, block: B:173:0x045b A[Catch: all -> 0x048a, TryCatch #1 {all -> 0x048a, blocks: (B:171:0x0454, B:173:0x045b, B:175:0x045f, B:177:0x0463, B:178:0x0466, B:180:0x046a, B:182:0x046e, B:184:0x0472, B:185:0x0473, B:186:0x0478, B:187:0x0479, B:188:0x0480, B:189:0x0481, B:190:0x0488, B:191:0x0489), top: B:199:0x0454 }] */
    /* JADX WARN: Code duplicated, block: B:175:0x045f A[Catch: all -> 0x048a, TryCatch #1 {all -> 0x048a, blocks: (B:171:0x0454, B:173:0x045b, B:175:0x045f, B:177:0x0463, B:178:0x0466, B:180:0x046a, B:182:0x046e, B:184:0x0472, B:185:0x0473, B:186:0x0478, B:187:0x0479, B:188:0x0480, B:189:0x0481, B:190:0x0488, B:191:0x0489), top: B:199:0x0454 }] */
    /* JADX WARN: Code duplicated, block: B:180:0x046a A[Catch: all -> 0x048a, TryCatch #1 {all -> 0x048a, blocks: (B:171:0x0454, B:173:0x045b, B:175:0x045f, B:177:0x0463, B:178:0x0466, B:180:0x046a, B:182:0x046e, B:184:0x0472, B:185:0x0473, B:186:0x0478, B:187:0x0479, B:188:0x0480, B:189:0x0481, B:190:0x0488, B:191:0x0489), top: B:199:0x0454 }] */
    /* JADX WARN: Code duplicated, block: B:182:0x046e A[Catch: all -> 0x048a, TryCatch #1 {all -> 0x048a, blocks: (B:171:0x0454, B:173:0x045b, B:175:0x045f, B:177:0x0463, B:178:0x0466, B:180:0x046a, B:182:0x046e, B:184:0x0472, B:185:0x0473, B:186:0x0478, B:187:0x0479, B:188:0x0480, B:189:0x0481, B:190:0x0488, B:191:0x0489), top: B:199:0x0454 }] */
    /* JADX WARN: Code duplicated, block: B:184:0x0472 A[Catch: all -> 0x048a, TryCatch #1 {all -> 0x048a, blocks: (B:171:0x0454, B:173:0x045b, B:175:0x045f, B:177:0x0463, B:178:0x0466, B:180:0x046a, B:182:0x046e, B:184:0x0472, B:185:0x0473, B:186:0x0478, B:187:0x0479, B:188:0x0480, B:189:0x0481, B:190:0x0488, B:191:0x0489), top: B:199:0x0454 }] */
    /* JADX WARN: Code duplicated, block: B:185:0x0473 A[Catch: all -> 0x048a, TryCatch #1 {all -> 0x048a, blocks: (B:171:0x0454, B:173:0x045b, B:175:0x045f, B:177:0x0463, B:178:0x0466, B:180:0x046a, B:182:0x046e, B:184:0x0472, B:185:0x0473, B:186:0x0478, B:187:0x0479, B:188:0x0480, B:189:0x0481, B:190:0x0488, B:191:0x0489), top: B:199:0x0454 }] */
    /* JADX WARN: Code duplicated, block: B:187:0x0479 A[Catch: all -> 0x048a, TryCatch #1 {all -> 0x048a, blocks: (B:171:0x0454, B:173:0x045b, B:175:0x045f, B:177:0x0463, B:178:0x0466, B:180:0x046a, B:182:0x046e, B:184:0x0472, B:185:0x0473, B:186:0x0478, B:187:0x0479, B:188:0x0480, B:189:0x0481, B:190:0x0488, B:191:0x0489), top: B:199:0x0454 }] */
    /* JADX WARN: Code duplicated, block: B:189:0x0481 A[Catch: all -> 0x048a, TryCatch #1 {all -> 0x048a, blocks: (B:171:0x0454, B:173:0x045b, B:175:0x045f, B:177:0x0463, B:178:0x0466, B:180:0x046a, B:182:0x046e, B:184:0x0472, B:185:0x0473, B:186:0x0478, B:187:0x0479, B:188:0x0480, B:189:0x0481, B:190:0x0488, B:191:0x0489), top: B:199:0x0454 }] */
    /* JADX WARN: Code duplicated, block: B:191:0x0489 A[Catch: all -> 0x048a, TRY_LEAVE, TryCatch #1 {all -> 0x048a, blocks: (B:171:0x0454, B:173:0x045b, B:175:0x045f, B:177:0x0463, B:178:0x0466, B:180:0x046a, B:182:0x046e, B:184:0x0472, B:185:0x0473, B:186:0x0478, B:187:0x0479, B:188:0x0480, B:189:0x0481, B:190:0x0488, B:191:0x0489), top: B:199:0x0454 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0200  */
    /* JADX WARN: Code duplicated, block: B:57:0x020a A[Catch: all -> 0x0104, TRY_LEAVE, TryCatch #0 {all -> 0x0104, blocks: (B:29:0x00c5, B:82:0x028d, B:32:0x00d9, B:79:0x0275, B:35:0x00ee, B:55:0x0204, B:57:0x020a, B:61:0x0219, B:72:0x0252, B:87:0x0298, B:62:0x0222, B:64:0x0226, B:67:0x022e, B:70:0x023b), top: B:198:0x003d, inners: #11 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0217  */
    /* JADX WARN: Code duplicated, block: B:64:0x0226 A[Catch: all -> 0x0295, TryCatch #11 {all -> 0x0295, blocks: (B:62:0x0222, B:64:0x0226, B:67:0x022e, B:70:0x023b), top: B:214:0x0222, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x022b  */
    /* JADX WARN: Code duplicated, block: B:67:0x022e A[Catch: all -> 0x0295, TRY_LEAVE, TryCatch #11 {all -> 0x0295, blocks: (B:62:0x0222, B:64:0x0226, B:67:0x022e, B:70:0x023b), top: B:214:0x0222, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x023b A[Catch: all -> 0x0295, TRY_ENTER, TRY_LEAVE, TryCatch #11 {all -> 0x0295, blocks: (B:62:0x0222, B:64:0x0226, B:67:0x022e, B:70:0x023b), top: B:214:0x0222, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x026c  */
    /* JADX WARN: Code duplicated, block: B:75:0x026e  */
    /* JADX WARN: Code duplicated, block: B:77:0x0272 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:78:0x0274  */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Code duplicated, block: B:81:0x028b  */
    /* JADX WARN: Code duplicated, block: B:97:0x02c0 A[Catch: all -> 0x02ef, TryCatch #4 {all -> 0x02ef, blocks: (B:95:0x02b9, B:97:0x02c0, B:99:0x02c4, B:101:0x02c8, B:102:0x02cb, B:104:0x02cf, B:106:0x02d3, B:108:0x02d7, B:109:0x02d8, B:110:0x02dd, B:111:0x02de, B:112:0x02e5, B:113:0x02e6, B:114:0x02ed, B:115:0x02ee), top: B:202:0x02b9 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x02c4 A[Catch: all -> 0x02ef, TryCatch #4 {all -> 0x02ef, blocks: (B:95:0x02b9, B:97:0x02c0, B:99:0x02c4, B:101:0x02c8, B:102:0x02cb, B:104:0x02cf, B:106:0x02d3, B:108:0x02d7, B:109:0x02d8, B:110:0x02dd, B:111:0x02de, B:112:0x02e5, B:113:0x02e6, B:114:0x02ed, B:115:0x02ee), top: B:202:0x02b9 }] */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0424, code lost:
    
        if (a(r6, (java.lang.String) r10, r9) == r4) goto L157;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference failed for: r0v42, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v56 */
    /* JADX WARN: Type inference failed for: r0v57 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v35 */
    /* JADX WARN: Type inference failed for: r10v37 */
    /* JADX WARN: Type inference failed for: r10v38 */
    /* JADX WARN: Type inference failed for: r10v39, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v40 */
    /* JADX WARN: Type inference failed for: r10v41 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v7, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r12v15, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r14v10, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v8, types: [ads_mobile_sdk.rr3, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v23, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v29, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v31, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v34, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r1v38, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v40, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v42, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v45 */
    /* JADX WARN: Type inference failed for: r1v46 */
    /* JADX WARN: Type inference failed for: r1v47 */
    /* JADX WARN: Type inference failed for: r1v48 */
    /* JADX WARN: Type inference failed for: r1v49 */
    /* JADX WARN: Type inference failed for: r1v50 */
    /* JADX WARN: Type inference failed for: r1v51 */
    /* JADX WARN: Type inference failed for: r1v52 */
    /* JADX WARN: Type inference failed for: r1v53 */
    /* JADX WARN: Type inference failed for: r1v54 */
    /* JADX WARN: Type inference failed for: r1v55 */
    /* JADX WARN: Type inference failed for: r1v56 */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.gson.JsonObject] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v16, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v18, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v22, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v25, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v27, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v13, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v21, types: [com.google.gson.Gson] */
    /* JADX WARN: Type inference failed for: r5v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v34 */
    /* JADX WARN: Type inference failed for: r5v36, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v4, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v6, types: [ads_mobile_sdk.rr3, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(kotlin.if1 r27, java.lang.String r28, com.google.gson.JsonObject r29, p005kotlin.coroutines.Continuation r30) {
        /*
            Method dump skipped, instruction units count: 1192
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.if1.a(ads_mobile_sdk.if1, java.lang.String, com.google.gson.JsonObject, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static Object a(if1 if1Var, String str, Long l, gk3 gk3Var) {
        if1Var.getClass();
        return a(if1Var, null, null, null, str, l, null, null, null, null, gk3Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(if1 if1Var, String str, String str2, JsonObject jsonObject, Continuation continuation) {
        ce1 ce1Var;
        JsonObject jsonObject2;
        Object obj;
        if1 if1Var2;
        Uri.Builder builder;
        Uri.Builder builder2;
        String str3;
        Uri.Builder builder3;
        if (continuation instanceof ce1) {
            ce1Var = (ce1) continuation;
            int i = ce1Var.j;
            if ((i & Integer.MIN_VALUE) != 0) {
                ce1Var.j = i - Integer.MIN_VALUE;
            } else {
                ce1Var = new ce1(if1Var, continuation);
            }
        } else {
            ce1Var = new ce1(if1Var, continuation);
        }
        Object obj2 = ce1Var.h;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ce1Var.j;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj2);
            Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
            ce1Var.a = if1Var;
            ce1Var.b = str2;
            ce1Var.c = jsonObject;
            ce1Var.d = builderBuildUpon;
            ce1Var.e = builderBuildUpon;
            ce1Var.f = "linkedDeviceId";
            ce1Var.g = builderBuildUpon;
            ce1Var.j = 1;
            if1Var.getClass();
            Object objB = b(if1Var, ce1Var);
            if (objB == coroutine_suspended) {
                return coroutine_suspended;
            }
            jsonObject2 = jsonObject;
            obj = objB;
            if1Var2 = if1Var;
            builder = builderBuildUpon;
            builder2 = builder;
            str3 = "linkedDeviceId";
            builder3 = builder2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            builder = ce1Var.g;
            str3 = ce1Var.f;
            Uri.Builder builder4 = ce1Var.e;
            Uri.Builder builder5 = ce1Var.d;
            jsonObject2 = ce1Var.c;
            String str4 = ce1Var.b;
            if1Var2 = ce1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj2);
            builder2 = builder4;
            str2 = str4;
            obj = obj2;
            builder3 = builder5;
        }
        builder.appendQueryParameter(str3, ((og1) obj).x());
        if (str2 != null) {
            builder2.appendQueryParameter("adSlotPath", str2);
        }
        builder2.appendQueryParameter("afmaVersion", if1Var2.e);
        if (jsonObject2 != null) {
            builder2.appendQueryParameter("debugData", jsonObject2.toString());
        }
        Uri uriBuild = builder3.build();
        Intrinsics.checkNotNullExpressionValue(uriBuild, "build(...)");
        return uriBuild;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public static /* synthetic */ Object a(if1 if1Var, String str, Continuation continuation) throws Throwable {
        ze1 ze1Var;
        Mutex mutex;
        String str2;
        if1 if1Var2;
        Mutex mutex2;
        if (continuation instanceof ze1) {
            ze1Var = (ze1) continuation;
            int i = ze1Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                ze1Var.f = i - Integer.MIN_VALUE;
            } else {
                ze1Var = new ze1(if1Var, continuation);
            }
        } else {
            ze1Var = new ze1(if1Var, continuation);
        }
        ze1 ze1Var2 = ze1Var;
        Object obj = ze1Var2.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ze1Var2.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = if1Var.x;
                ze1Var2.a = if1Var;
                ze1Var2.b = str;
                ze1Var2.c = mutex;
                ze1Var2.f = 1;
                if (mutex.lock(null, ze1Var2) != coroutine_suspended) {
                    str2 = str;
                    if1Var2 = if1Var;
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = (Mutex) ze1Var2.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    return unit;
                } catch (Throwable th) {
                    th = th;
                    mutex = mutex2;
                    mutex.unlock(null);
                    throw th;
                }
            }
            Mutex mutex3 = ze1Var2.c;
            String str3 = ze1Var2.b;
            if1 if1Var3 = (if1) ze1Var2.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            str2 = str3;
            if1Var2 = if1Var3;
            ze1Var2.a = mutex;
            ze1Var2.b = null;
            ze1Var2.c = null;
            ze1Var2.f = 2;
            if (a(if1Var2, null, null, null, null, null, null, str2, null, null, ze1Var2, 447) != coroutine_suspended) {
                mutex2 = mutex;
                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                mutex2.unlock(null);
                return unit2;
            }
            return coroutine_suspended;
        } catch (Throwable th2) {
            th = th2;
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(if1 if1Var, Continuation continuation) {
        ee1 ee1Var;
        Mutex mutex;
        if (continuation instanceof ee1) {
            ee1Var = (ee1) continuation;
            int i = ee1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                ee1Var.e = i - Integer.MIN_VALUE;
            } else {
                ee1Var = new ee1(if1Var, continuation);
            }
        } else {
            ee1Var = new ee1(if1Var, continuation);
        }
        Object obj = ee1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ee1Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = if1Var.x;
            ee1Var.a = if1Var;
            ee1Var.b = mutex;
            ee1Var.e = 1;
            if (mutex.lock(null, ee1Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = ee1Var.b;
            if1 if1Var2 = ee1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            if1Var = if1Var2;
        }
        try {
            return Boxing.boxBoolean(if1Var.l());
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00b5 A[Catch: all -> 0x0039, TRY_LEAVE, TryCatch #0 {all -> 0x0039, blocks: (B:13:0x0034, B:33:0x00af, B:35:0x00b5, B:38:0x00bb, B:41:0x00c1, B:43:0x00c6, B:46:0x00cc, B:47:0x00d0, B:49:0x00d6, B:51:0x00da, B:52:0x00de, B:56:0x0107, B:53:0x00eb, B:55:0x00f1), top: B:65:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00bb A[Catch: all -> 0x0039, TRY_ENTER, TryCatch #0 {all -> 0x0039, blocks: (B:13:0x0034, B:33:0x00af, B:35:0x00b5, B:38:0x00bb, B:41:0x00c1, B:43:0x00c6, B:46:0x00cc, B:47:0x00d0, B:49:0x00d6, B:51:0x00da, B:52:0x00de, B:56:0x0107, B:53:0x00eb, B:55:0x00f1), top: B:65:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00c6 A[Catch: all -> 0x0039, TRY_LEAVE, TryCatch #0 {all -> 0x0039, blocks: (B:13:0x0034, B:33:0x00af, B:35:0x00b5, B:38:0x00bb, B:41:0x00c1, B:43:0x00c6, B:46:0x00cc, B:47:0x00d0, B:49:0x00d6, B:51:0x00da, B:52:0x00de, B:56:0x0107, B:53:0x00eb, B:55:0x00f1), top: B:65:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00cc A[Catch: all -> 0x0039, TRY_ENTER, TryCatch #0 {all -> 0x0039, blocks: (B:13:0x0034, B:33:0x00af, B:35:0x00b5, B:38:0x00bb, B:41:0x00c1, B:43:0x00c6, B:46:0x00cc, B:47:0x00d0, B:49:0x00d6, B:51:0x00da, B:52:0x00de, B:56:0x0107, B:53:0x00eb, B:55:0x00f1), top: B:65:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00d6 A[Catch: all -> 0x0039, TryCatch #0 {all -> 0x0039, blocks: (B:13:0x0034, B:33:0x00af, B:35:0x00b5, B:38:0x00bb, B:41:0x00c1, B:43:0x00c6, B:46:0x00cc, B:47:0x00d0, B:49:0x00d6, B:51:0x00da, B:52:0x00de, B:56:0x0107, B:53:0x00eb, B:55:0x00f1), top: B:65:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00da A[Catch: all -> 0x0039, TryCatch #0 {all -> 0x0039, blocks: (B:13:0x0034, B:33:0x00af, B:35:0x00b5, B:38:0x00bb, B:41:0x00c1, B:43:0x00c6, B:46:0x00cc, B:47:0x00d0, B:49:0x00d6, B:51:0x00da, B:52:0x00de, B:56:0x0107, B:53:0x00eb, B:55:0x00f1), top: B:65:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00eb A[Catch: all -> 0x0039, TryCatch #0 {all -> 0x0039, blocks: (B:13:0x0034, B:33:0x00af, B:35:0x00b5, B:38:0x00bb, B:41:0x00c1, B:43:0x00c6, B:46:0x00cc, B:47:0x00d0, B:49:0x00d6, B:51:0x00da, B:52:0x00de, B:56:0x0107, B:53:0x00eb, B:55:0x00f1), top: B:65:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00f1 A[Catch: all -> 0x0039, TryCatch #0 {all -> 0x0039, blocks: (B:13:0x0034, B:33:0x00af, B:35:0x00b5, B:38:0x00bb, B:41:0x00c1, B:43:0x00c6, B:46:0x00cc, B:47:0x00d0, B:49:0x00d6, B:51:0x00da, B:52:0x00de, B:56:0x0107, B:53:0x00eb, B:55:0x00f1), top: B:65:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public static Object a(if1 if1Var, boolean z, Continuation continuation) throws Throwable {
        bf1 bf1Var;
        Mutex mutex;
        if1 if1Var2;
        boolean z2;
        Mutex mutex2;
        og1 og1Var;
        og1 og1Var2;
        if (continuation instanceof bf1) {
            bf1Var = (bf1) continuation;
            int i = bf1Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                bf1Var.f = i - Integer.MIN_VALUE;
            } else {
                bf1Var = new bf1(if1Var, continuation);
            }
        } else {
            bf1Var = new bf1(if1Var, continuation);
        }
        bf1 bf1Var2 = bf1Var;
        Object obj = bf1Var2.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = bf1Var2.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                if (if1Var.i.a0()) {
                    ex0 ex0Var = if1Var.i;
                    ex0Var.getClass();
                    Intrinsics.checkNotNullParameter("gads:inspector:linked_device_enable_inspector", C3510b4.i.W);
                    if (((Boolean) ex0Var.a("gads:inspector:linked_device_enable_inspector", Boolean.TRUE, yr.b)).booleanValue()) {
                        mutex = if1Var.x;
                        bf1Var2.a = if1Var;
                        bf1Var2.b = mutex;
                        bf1Var2.c = z;
                        bf1Var2.f = 1;
                        if (mutex.lock(null, bf1Var2) != coroutine_suspended) {
                            if1Var2 = if1Var;
                            z2 = z;
                        }
                        return coroutine_suspended;
                    }
                }
                return p005kotlin.Unit.INSTANCE;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                z2 = bf1Var2.c;
                mutex2 = bf1Var2.b;
                if1Var2 = bf1Var2.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    if (if1Var2.k()) {
                        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                        mutex2.unlock(null);
                        return unit;
                    }
                    if (!if1Var2.z && z2) {
                        if1Var2.i();
                    }
                    if (z2) {
                        og1Var = if1Var2.y;
                        if (og1Var == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                            og1Var = null;
                        }
                        if (!og1Var.B()) {
                            og1Var2 = if1Var2.y;
                            if (og1Var2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                                og1Var2 = null;
                            }
                            vd1 vd1VarY = og1Var2.y();
                            Intrinsics.checkNotNullExpressionValue(vd1VarY, "getGesture(...)");
                            if1Var2.a(vd1VarY);
                        } else if (!if1Var2.l()) {
                            ((ed3) if1Var2.f.get()).a();
                            ((ix0) if1Var2.g.get()).a();
                        }
                    } else if (!if1Var2.l()) {
                        ((ed3) if1Var2.f.get()).a();
                        ((ix0) if1Var2.g.get()).a();
                    }
                    p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    return unit2;
                } catch (Throwable th) {
                    th = th;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            z2 = bf1Var2.c;
            Mutex mutex3 = bf1Var2.b;
            if1 if1Var3 = bf1Var2.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            if1Var2 = if1Var3;
            Boolean boolBoxBoolean = Boxing.boxBoolean(z2);
            bf1Var2.a = if1Var2;
            bf1Var2.b = mutex;
            bf1Var2.c = z2;
            bf1Var2.f = 2;
            if (a(if1Var2, null, boolBoxBoolean, null, null, null, null, null, null, null, bf1Var2, 509) != coroutine_suspended) {
                mutex2 = mutex;
                if (if1Var2.k()) {
                    p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    return unit3;
                }
                if (!if1Var2.z) {
                    if1Var2.i();
                }
                if (z2) {
                    og1Var = if1Var2.y;
                    if (og1Var == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                        og1Var = null;
                    }
                    if (!og1Var.B()) {
                        og1Var2 = if1Var2.y;
                        if (og1Var2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                            og1Var2 = null;
                        }
                        vd1 vd1VarY2 = og1Var2.y();
                        Intrinsics.checkNotNullExpressionValue(vd1VarY2, "getGesture(...)");
                        if1Var2.a(vd1VarY2);
                    } else if (!if1Var2.l()) {
                        ((ed3) if1Var2.f.get()).a();
                        ((ix0) if1Var2.g.get()).a();
                    }
                } else if (!if1Var2.l()) {
                    ((ed3) if1Var2.f.get()).a();
                    ((ix0) if1Var2.g.get()).a();
                }
                p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                mutex2.unlock(null);
                return unit4;
            }
            return coroutine_suspended;
        } catch (Throwable th2) {
            th = th2;
            mutex2 = mutex;
            mutex2.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public static /* synthetic */ Object b(if1 if1Var, String str, Continuation continuation) throws Throwable {
        ef1 ef1Var;
        Mutex mutex;
        String str2;
        if1 if1Var2;
        Mutex mutex2;
        if (continuation instanceof ef1) {
            ef1Var = (ef1) continuation;
            int i = ef1Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                ef1Var.f = i - Integer.MIN_VALUE;
            } else {
                ef1Var = new ef1(if1Var, continuation);
            }
        } else {
            ef1Var = new ef1(if1Var, continuation);
        }
        ef1 ef1Var2 = ef1Var;
        Object obj = ef1Var2.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ef1Var2.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = if1Var.x;
                ef1Var2.a = if1Var;
                ef1Var2.b = str;
                ef1Var2.c = mutex;
                ef1Var2.f = 1;
                if (mutex.lock(null, ef1Var2) != coroutine_suspended) {
                    str2 = str;
                    if1Var2 = if1Var;
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = (Mutex) ef1Var2.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    return unit;
                } catch (Throwable th) {
                    th = th;
                    mutex = mutex2;
                    mutex.unlock(null);
                    throw th;
                }
            }
            Mutex mutex3 = ef1Var2.c;
            String str3 = ef1Var2.b;
            if1 if1Var3 = (if1) ef1Var2.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            str2 = str3;
            if1Var2 = if1Var3;
            ef1Var2.a = mutex;
            ef1Var2.b = null;
            ef1Var2.c = null;
            ef1Var2.f = 2;
            if (a(if1Var2, null, null, null, null, null, null, null, str2, null, ef1Var2, 383) != coroutine_suspended) {
                mutex2 = mutex;
                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                mutex2.unlock(null);
                return unit2;
            }
            return coroutine_suspended;
        } catch (Throwable th2) {
            th = th2;
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object b(if1 if1Var, Continuation continuation) {
        je1 je1Var;
        Mutex mutex;
        if (continuation instanceof je1) {
            je1Var = (je1) continuation;
            int i = je1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                je1Var.e = i - Integer.MIN_VALUE;
            } else {
                je1Var = new je1(if1Var, continuation);
            }
        } else {
            je1Var = new je1(if1Var, continuation);
        }
        Object obj = je1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = je1Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = if1Var.x;
            je1Var.a = if1Var;
            je1Var.b = mutex;
            je1Var.e = 1;
            if (mutex.lock(null, je1Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = je1Var.b;
            if1 if1Var2 = je1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            if1Var = if1Var2;
        }
        try {
            og1 og1Var = if1Var.y;
            if (og1Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                og1Var = null;
            }
            return og1Var;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00c5 A[Catch: all -> 0x011b, TRY_LEAVE, TryCatch #1 {all -> 0x011b, blocks: (B:45:0x00bf, B:47:0x00c5, B:50:0x00cb, B:53:0x00d1, B:55:0x00d6, B:57:0x00da, B:58:0x00de, B:60:0x00e4, B:62:0x00e8, B:63:0x00ec, B:67:0x0115, B:64:0x00f9, B:66:0x00ff), top: B:81:0x00bf }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00cb A[Catch: all -> 0x011b, TRY_ENTER, TryCatch #1 {all -> 0x011b, blocks: (B:45:0x00bf, B:47:0x00c5, B:50:0x00cb, B:53:0x00d1, B:55:0x00d6, B:57:0x00da, B:58:0x00de, B:60:0x00e4, B:62:0x00e8, B:63:0x00ec, B:67:0x0115, B:64:0x00f9, B:66:0x00ff), top: B:81:0x00bf }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00d6 A[Catch: all -> 0x011b, TryCatch #1 {all -> 0x011b, blocks: (B:45:0x00bf, B:47:0x00c5, B:50:0x00cb, B:53:0x00d1, B:55:0x00d6, B:57:0x00da, B:58:0x00de, B:60:0x00e4, B:62:0x00e8, B:63:0x00ec, B:67:0x0115, B:64:0x00f9, B:66:0x00ff), top: B:81:0x00bf }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00da A[Catch: all -> 0x011b, TryCatch #1 {all -> 0x011b, blocks: (B:45:0x00bf, B:47:0x00c5, B:50:0x00cb, B:53:0x00d1, B:55:0x00d6, B:57:0x00da, B:58:0x00de, B:60:0x00e4, B:62:0x00e8, B:63:0x00ec, B:67:0x0115, B:64:0x00f9, B:66:0x00ff), top: B:81:0x00bf }] */
    /* JADX WARN: Code duplicated, block: B:60:0x00e4 A[Catch: all -> 0x011b, TryCatch #1 {all -> 0x011b, blocks: (B:45:0x00bf, B:47:0x00c5, B:50:0x00cb, B:53:0x00d1, B:55:0x00d6, B:57:0x00da, B:58:0x00de, B:60:0x00e4, B:62:0x00e8, B:63:0x00ec, B:67:0x0115, B:64:0x00f9, B:66:0x00ff), top: B:81:0x00bf }] */
    /* JADX WARN: Code duplicated, block: B:62:0x00e8 A[Catch: all -> 0x011b, TryCatch #1 {all -> 0x011b, blocks: (B:45:0x00bf, B:47:0x00c5, B:50:0x00cb, B:53:0x00d1, B:55:0x00d6, B:57:0x00da, B:58:0x00de, B:60:0x00e4, B:62:0x00e8, B:63:0x00ec, B:67:0x0115, B:64:0x00f9, B:66:0x00ff), top: B:81:0x00bf }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00f9 A[Catch: all -> 0x011b, TryCatch #1 {all -> 0x011b, blocks: (B:45:0x00bf, B:47:0x00c5, B:50:0x00cb, B:53:0x00d1, B:55:0x00d6, B:57:0x00da, B:58:0x00de, B:60:0x00e4, B:62:0x00e8, B:63:0x00ec, B:67:0x0115, B:64:0x00f9, B:66:0x00ff), top: B:81:0x00bf }] */
    /* JADX WARN: Code duplicated, block: B:66:0x00ff A[Catch: all -> 0x011b, TryCatch #1 {all -> 0x011b, blocks: (B:45:0x00bf, B:47:0x00c5, B:50:0x00cb, B:53:0x00d1, B:55:0x00d6, B:57:0x00da, B:58:0x00de, B:60:0x00e4, B:62:0x00e8, B:63:0x00ec, B:67:0x0115, B:64:0x00f9, B:66:0x00ff), top: B:81:0x00bf }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public static Object b(if1 if1Var, boolean z, Continuation continuation) throws Throwable {
        df1 df1Var;
        Mutex mutex;
        if1 if1Var2;
        boolean z2;
        Mutex mutex2;
        og1 og1Var;
        Mutex mutex3;
        og1 og1Var2;
        og1 og1Var3;
        if (continuation instanceof df1) {
            df1Var = (df1) continuation;
            int i = df1Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                df1Var.f = i - Integer.MIN_VALUE;
            } else {
                df1Var = new df1(if1Var, continuation);
            }
        } else {
            df1Var = new df1(if1Var, continuation);
        }
        df1 df1Var2 = df1Var;
        Object obj = df1Var2.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = df1Var2.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                if (!if1Var.i.a0()) {
                    return p005kotlin.Unit.INSTANCE;
                }
                mutex = if1Var.x;
                df1Var2.a = if1Var;
                df1Var2.b = mutex;
                df1Var2.c = z;
                df1Var2.f = 1;
                if (mutex.lock(null, df1Var2) != coroutine_suspended) {
                    if1Var2 = if1Var;
                    z2 = z;
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                z2 = df1Var2.c;
                Mutex mutex4 = df1Var2.b;
                if1 if1Var3 = df1Var2.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = mutex4;
                if1Var2 = if1Var3;
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                z2 = df1Var2.c;
                mutex3 = df1Var2.b;
                if1Var2 = df1Var2.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    og1Var = null;
                    try {
                        if (if1Var2.k()) {
                            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                            mutex3.unlock(og1Var);
                            return unit;
                        }
                        if (!if1Var2.z && z2) {
                            if1Var2.i();
                        }
                        if (!z2) {
                            og1Var2 = if1Var2.y;
                            if (og1Var2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                                og1Var2 = og1Var;
                            }
                            if (!og1Var2.A()) {
                                og1Var3 = if1Var2.y;
                                if (og1Var3 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                                    og1Var3 = og1Var;
                                }
                                vd1 vd1VarY = og1Var3.y();
                                Intrinsics.checkNotNullExpressionValue(vd1VarY, "getGesture(...)");
                                if1Var2.a(vd1VarY);
                            } else if (!if1Var2.l()) {
                                ((ed3) if1Var2.f.get()).a();
                                ((ix0) if1Var2.g.get()).a();
                            }
                        } else if (!if1Var2.l()) {
                            ((ed3) if1Var2.f.get()).a();
                            ((ix0) if1Var2.g.get()).a();
                        }
                        p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                        mutex3.unlock(og1Var);
                        return unit2;
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    og1Var = null;
                }
            }
            og1 og1Var4 = if1Var2.y;
            if (og1Var4 == null) {
                try {
                    Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                    og1Var4 = null;
                } catch (Throwable th3) {
                    th = th3;
                    mutex3 = mutex;
                    og1Var = null;
                }
            }
            if (og1Var4.B() == z2) {
                p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                mutex.unlock(null);
                return unit3;
            }
            Boolean boolBoxBoolean = Boxing.boxBoolean(z2);
            df1Var2.a = if1Var2;
            df1Var2.b = mutex;
            df1Var2.c = z2;
            df1Var2.f = 2;
            mutex2 = mutex;
            og1Var = null;
            try {
                if (a(if1Var2, boolBoxBoolean, null, null, null, null, null, null, null, null, df1Var2, 510) != coroutine_suspended) {
                    mutex3 = mutex2;
                    if (if1Var2.k()) {
                        p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                        mutex3.unlock(og1Var);
                        return unit4;
                    }
                    if (!if1Var2.z) {
                        if1Var2.i();
                    }
                    if (!z2) {
                        og1Var2 = if1Var2.y;
                        if (og1Var2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                            og1Var2 = og1Var;
                        }
                        if (!og1Var2.A()) {
                            og1Var3 = if1Var2.y;
                            if (og1Var3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                                og1Var3 = og1Var;
                            }
                            vd1 vd1VarY2 = og1Var3.y();
                            Intrinsics.checkNotNullExpressionValue(vd1VarY2, "getGesture(...)");
                            if1Var2.a(vd1VarY2);
                        } else if (!if1Var2.l()) {
                            ((ed3) if1Var2.f.get()).a();
                            ((ix0) if1Var2.g.get()).a();
                        }
                    } else if (!if1Var2.l()) {
                        ((ed3) if1Var2.f.get()).a();
                        ((ix0) if1Var2.g.get()).a();
                    }
                    p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                    mutex3.unlock(og1Var);
                    return unit5;
                }
                return coroutine_suspended;
            } catch (Throwable th4) {
                th = th4;
                mutex3 = mutex2;
            }
        } catch (Throwable th5) {
            th = th5;
            mutex2 = mutex;
            og1Var = null;
        }
        mutex3 = mutex2;
        mutex3.unlock(og1Var);
        throw th;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object c(if1 if1Var, Continuation continuation) {
        ke1 ke1Var;
        Mutex mutex;
        if (continuation instanceof ke1) {
            ke1Var = (ke1) continuation;
            int i = ke1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                ke1Var.e = i - Integer.MIN_VALUE;
            } else {
                ke1Var = new ke1(if1Var, continuation);
            }
        } else {
            ke1Var = new ke1(if1Var, continuation);
        }
        Object obj = ke1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ke1Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = if1Var.x;
            ke1Var.a = if1Var;
            ke1Var.b = mutex;
            ke1Var.e = 1;
            if (mutex.lock(null, ke1Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = ke1Var.b;
            if1 if1Var2 = ke1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            if1Var = if1Var2;
        }
        try {
            return Boxing.boxBoolean(if1Var.k());
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006d, code lost:
    
        if (r7.f(r0) == r1) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object d(kotlin.if1 r7, p005kotlin.coroutines.Continuation r8) throws java.lang.Throwable {
        /*
            boolean r0 = r8 instanceof kotlin.ne1
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.ne1 r0 = (kotlin.ne1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ne1 r0 = new ads_mobile_sdk.ne1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L47
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r7 = r0.a
            kotlinx.coroutines.sync.Mutex r7 = (kotlinx.coroutines.sync.Mutex) r7
            p005kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L31
            goto L73
        L31:
            r8 = move-exception
            goto L79
        L33:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3b:
            kotlinx.coroutines.sync.Mutex r7 = r0.b
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.if1 r2 = (kotlin.if1) r2
            p005kotlin.ResultKt.throwOnFailure(r8)
            r8 = r7
            r7 = r2
            goto L59
        L47:
            p005kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.H
            r0.a = r7
            r0.b = r8
            r0.e = r4
            java.lang.Object r2 = r8.lock(r5, r0)
            if (r2 != r1) goto L59
            goto L6f
        L59:
            java.lang.ref.WeakReference r7 = r7.I     // Catch: java.lang.Throwable -> L70
            java.lang.Object r7 = r7.get()     // Catch: java.lang.Throwable -> L70
            ads_mobile_sdk.eg1 r7 = (kotlin.eg1) r7     // Catch: java.lang.Throwable -> L70
            if (r7 == 0) goto L72
            r0.a = r8     // Catch: java.lang.Throwable -> L70
            r0.b = r5     // Catch: java.lang.Throwable -> L70
            r0.e = r3     // Catch: java.lang.Throwable -> L70
            java.lang.Object r7 = r7.f(r0)     // Catch: java.lang.Throwable -> L70
            if (r7 != r1) goto L72
        L6f:
            return r1
        L70:
            r7 = move-exception
            goto L7c
        L72:
            r7 = r8
        L73:
            kotlin.Unit r8 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L31
            r7.unlock(r5)
            return r8
        L79:
            r6 = r8
            r8 = r7
            r7 = r6
        L7c:
            r8.unlock(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.if1.d(ads_mobile_sdk.if1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object e(if1 if1Var, Continuation continuation) {
        xe1 xe1Var;
        if (continuation instanceof xe1) {
            xe1Var = (xe1) continuation;
            int i = xe1Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                xe1Var.d = i - Integer.MIN_VALUE;
            } else {
                xe1Var = new xe1(if1Var, continuation);
            }
        } else {
            xe1Var = new xe1(if1Var, continuation);
        }
        Object obj = xe1Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = xe1Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            xe1Var.a = if1Var;
            xe1Var.d = 1;
            if (if1Var.A(xe1Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            if1Var = xe1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        CoroutineScope coroutineScope = if1Var.d;
        ye1 block = new ye1(if1Var, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return new q01(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0085  */
    /* JADX WARN: Code duplicated, block: B:39:0x0094  */
    /* JADX WARN: Code duplicated, block: B:42:0x009c A[Catch: all -> 0x00a5, TryCatch #0 {all -> 0x00a5, blocks: (B:40:0x0096, B:42:0x009c, B:43:0x009f), top: B:54:0x0096 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object A(Continuation continuation) {
        me1 me1Var;
        if1 if1Var;
        Mutex mutex;
        Mutex mutex2;
        Mutex mutex3;
        if1 if1Var2;
        if (continuation instanceof me1) {
            me1Var = (me1) continuation;
            int i = me1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                me1Var.e = i - Integer.MIN_VALUE;
            } else {
                me1Var = new me1(this, continuation);
            }
        } else {
            me1Var = new me1(this, continuation);
        }
        Object obj = me1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = me1Var.e;
        boolean z = true;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            me1Var.a = this;
            me1Var.e = 1;
            if (z(me1Var) != coroutine_suspended) {
                if1Var = this;
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            if1Var = me1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        } else {
            if (i2 == 2) {
                Mutex mutex4 = me1Var.b;
                if1 if1Var3 = me1Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = mutex4;
                if1Var = if1Var3;
                try {
                    if (!if1Var.z && !if1Var.k()) {
                        z = false;
                    }
                    mutex.unlock(null);
                    if (!z) {
                        mutex2 = if1Var.x;
                        me1Var.a = if1Var;
                        me1Var.b = mutex2;
                        me1Var.e = 3;
                        if (mutex2.lock(null, me1Var) != coroutine_suspended) {
                            mutex3 = mutex2;
                            if1Var2 = if1Var;
                        }
                        return coroutine_suspended;
                    }
                    return p005kotlin.Unit.INSTANCE;
                } catch (Throwable th) {
                    mutex.unlock(null);
                    throw th;
                }
            }
            if (i2 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex3 = me1Var.b;
            if1Var2 = me1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            if (if1Var2.l()) {
                if1Var2.i();
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex3.unlock(null);
        }
        if (if1Var.i.a0()) {
            mutex = if1Var.x;
            me1Var.a = if1Var;
            me1Var.b = mutex;
            me1Var.e = 2;
            if (mutex.lock(null, me1Var) != coroutine_suspended) {
                if (!if1Var.z) {
                    z = false;
                }
                mutex.unlock(null);
                if (!z) {
                    mutex2 = if1Var.x;
                    me1Var.a = if1Var;
                    me1Var.b = mutex2;
                    me1Var.e = 3;
                    if (mutex2.lock(null, me1Var) != coroutine_suspended) {
                        mutex3 = mutex2;
                        if1Var2 = if1Var;
                        if (if1Var2.l()) {
                            if1Var2.i();
                        }
                        return p005kotlin.Unit.INSTANCE;
                    }
                }
            }
            return coroutine_suspended;
        }
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(int i, Continuation continuation) {
        ff1 ff1Var;
        if1 if1Var;
        Mutex mutex;
        if (continuation instanceof ff1) {
            ff1Var = (ff1) continuation;
            int i2 = ff1Var.f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                ff1Var.f = i2 - Integer.MIN_VALUE;
            } else {
                ff1Var = new ff1(this, continuation);
            }
        } else {
            ff1Var = new ff1(this, continuation);
        }
        Object obj = ff1Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = ff1Var.f;
        if (i3 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.D;
            ff1Var.a = this;
            ff1Var.b = mutex2;
            ff1Var.c = i;
            ff1Var.f = 1;
            if (mutex2.lock(null, ff1Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            if1Var = this;
            mutex = mutex2;
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i = ff1Var.c;
            mutex = ff1Var.b;
            if1Var = ff1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            long j = i;
            long j2 = if1Var.E + j;
            ex0 ex0Var = if1Var.i;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:inspector:max_ad_response_logs_bytes", C3510b4.i.W);
            if (j2 >= ((Number) ex0Var.a("gads:inspector:max_ad_response_logs_bytes", Long.valueOf(ServiceProvider.HTTP_CACHE_DISK_SIZE), yr.d)).longValue()) {
                return Boxing.boxBoolean(false);
            }
            if1Var.E += j;
            return Boxing.boxBoolean(true);
        } finally {
            mutex.unlock(null);
        }
    }

    public final Object a(oh2 oh2Var) {
        return d(this, oh2Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public final Object a(Boolean bool, Boolean bool2, vd1 value, String value2, Long l, String str, String str2, String str3, Boolean bool3, Continuation continuation) {
        hf1 hf1Var;
        boolean zB;
        boolean zA;
        long jD;
        String value3;
        String value4;
        String value5;
        boolean z;
        if1 if1Var;
        if (continuation instanceof hf1) {
            hf1Var = (hf1) continuation;
            int i = hf1Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                hf1Var.d = i - Integer.MIN_VALUE;
            } else {
                hf1Var = new hf1(this, continuation);
            }
        } else {
            hf1Var = new hf1(this, continuation);
        }
        Object objUpdateData = hf1Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = hf1Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            qg1 qg1Var = this.l;
            ng1 builder = og1.F();
            Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
            Intrinsics.checkNotNullParameter(builder, "builder");
            if (bool != null) {
                zB = bool.booleanValue();
            } else {
                og1 og1Var = this.y;
                if (og1Var == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                    og1Var = null;
                }
                zB = og1Var.B();
            }
            builder.c(zB);
            if (bool2 != null) {
                zA = bool2.booleanValue();
            } else {
                og1 og1Var2 = this.y;
                if (og1Var2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                    og1Var2 = null;
                }
                zA = og1Var2.A();
            }
            builder.b(zA);
            if (value == null) {
                og1 og1Var3 = this.y;
                if (og1Var3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                    og1Var3 = null;
                }
                value = og1Var3.y();
                Intrinsics.checkNotNullExpressionValue(value, "getGesture(...)");
            }
            Intrinsics.checkNotNullParameter(value, "value");
            builder.a(value);
            if (l != null) {
                jD = l.longValue();
            } else {
                og1 og1Var4 = this.y;
                if (og1Var4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                    og1Var4 = null;
                }
                jD = og1Var4.D();
            }
            builder.a(jD);
            if (value2 == null) {
                og1 og1Var5 = this.y;
                if (og1Var5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                    og1Var5 = null;
                }
                value2 = og1Var5.C();
                Intrinsics.checkNotNullExpressionValue(value2, "getNetworkExtras(...)");
            }
            Intrinsics.checkNotNullParameter(value2, "value");
            builder.c(value2);
            if (str == null) {
                og1 og1Var6 = this.y;
                if (og1Var6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                    og1Var6 = null;
                }
                value3 = og1Var6.x();
                Intrinsics.checkNotNullExpressionValue(value3, "getDeviceIdForDebugging(...)");
            } else {
                value3 = str;
            }
            Intrinsics.checkNotNullParameter(value3, "value");
            builder.b(value3);
            if (str2 == null) {
                og1 og1Var7 = this.y;
                if (og1Var7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                    og1Var7 = null;
                }
                value4 = og1Var7.v();
                Intrinsics.checkNotNullExpressionValue(value4, "getDebugAdUnitId(...)");
            } else {
                value4 = str2;
            }
            Intrinsics.checkNotNullParameter(value4, "value");
            builder.a(value4);
            if (str3 == null) {
                og1 og1Var8 = this.y;
                if (og1Var8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                    og1Var8 = null;
                }
                value5 = og1Var8.E();
                Intrinsics.checkNotNullExpressionValue(value5, "getUiStorage(...)");
            } else {
                value5 = str3;
            }
            Intrinsics.checkNotNullParameter(value5, "value");
            builder.d(value5);
            if (bool3 != null) {
                z = bool3.booleanValue();
            } else {
                og1 og1Var9 = this.y;
                if (og1Var9 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                    og1Var9 = null;
                }
                z = og1Var9.z();
            }
            builder.a(z);
            vz0 vz0VarB = builder.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
            hf1Var.a = this;
            hf1Var.d = 1;
            objUpdateData = ((DataStore) qg1Var.a.get()).updateData(new pg1((og1) vz0VarB, null), hf1Var);
            if (objUpdateData == coroutine_suspended) {
                return coroutine_suspended;
            }
            if1Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            if1Var = hf1Var.a;
            p005kotlin.ResultKt.throwOnFailure(objUpdateData);
        }
        if1Var.y = (og1) objUpdateData;
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, md1 md1Var, Continuation continuation) {
        be1 be1Var;
        Mutex mutex;
        if1 if1Var;
        if (continuation instanceof be1) {
            be1Var = (be1) continuation;
            int i = be1Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                be1Var.g = i - Integer.MIN_VALUE;
            } else {
                be1Var = new be1(this, continuation);
            }
        } else {
            be1Var = new be1(this, continuation);
        }
        Object obj = be1Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = be1Var.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = this.D;
            be1Var.a = this;
            be1Var.b = str;
            be1Var.c = md1Var;
            be1Var.d = mutex;
            be1Var.g = 1;
            if (mutex.lock(null, be1Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            if1Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = be1Var.d;
            md1Var = be1Var.c;
            String str2 = be1Var.b;
            if1Var = be1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            str = str2;
        }
        try {
            int size = if1Var.F.size();
            ex0 ex0Var = if1Var.i;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:inspector:max_ad_life_cycles", C3510b4.i.W);
            if (size >= ((Number) ex0Var.a("gads:inspector:max_ad_life_cycles", 1000, yr.f)).intValue()) {
                Splitter splitter = f01.a;
                f01.c("Maximum number of stored ad requests reached. Dropping the current request.", null);
                return p005kotlin.Unit.INSTANCE;
            }
            List arrayList = (List) if1Var.G.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList();
                if1Var.G.put(str, arrayList);
            }
            arrayList.add(md1Var);
            if1Var.F.put(md1Var.d, md1Var);
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    public final void a(vd1 vd1Var) {
        int iOrdinal = vd1Var.ordinal();
        if (iOrdinal == 1) {
            ((ed3) this.f.get()).b();
        } else {
            if (iOrdinal != 2) {
                return;
            }
            ((ix0) this.g.get()).b();
        }
    }

    public final String g() {
        if (!l()) {
            return JsonUtils.EMPTY_JSON;
        }
        og1 og1Var = this.y;
        og1 og1Var2 = null;
        if (og1Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
            og1Var = null;
        }
        if (og1Var.D() > 0) {
            og1 og1Var3 = this.y;
            if (og1Var3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                og1Var3 = null;
            }
            long jD = og1Var3.D();
            this.j.getClass();
            if (jD < System.currentTimeMillis() / ((long) 1000)) {
                BuildersKt__Builders_commonKt.launch$default(this.d, null, null, new fe1(this, null), 3, null);
                return JsonUtils.EMPTY_JSON;
            }
        }
        og1 og1Var4 = this.y;
        if (og1Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
        } else {
            og1Var2 = og1Var4;
        }
        String strC = og1Var2.C();
        Intrinsics.checkNotNullExpressionValue(strC, "getNetworkExtras(...)");
        return strC;
    }

    public final void i() {
        if (this.z) {
            return;
        }
        ((ed3) this.f.get()).i = this;
        ix0 ix0Var = (ix0) this.g.get();
        ix0Var.getClass();
        Intrinsics.checkNotNullParameter(this, "listener");
        ix0Var.m = this;
        this.z = true;
        og1 og1Var = this.y;
        if (og1Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
            og1Var = null;
        }
        vd1 vd1VarY = og1Var.y();
        Intrinsics.checkNotNullExpressionValue(vd1VarY, "getGesture(...)");
        a(vd1VarY);
        v01 v01VarA = this.m.a();
        if (v01VarA instanceof q01) {
            this.B = (JsonObject) ((q01) v01VarA).b;
        }
        f01.a("Ad inspector enabled. Ad inspector can increase memory usage on test devices.", null, null, 6);
    }

    public final boolean k() {
        boolean zBooleanValue;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        ex0 ex0Var = this.i;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:inspector:disable_ad_inspector_from_manifest_enabled", C3510b4.i.W);
        if (((Boolean) ex0Var.a("gads:inspector:disable_ad_inspector_from_manifest_enabled", Boolean.TRUE, yr.b)).booleanValue()) {
            Boolean bool = this.M;
            if (bool != null) {
                zBooleanValue = bool.booleanValue();
            } else {
                try {
                    PackageManager packageManager = this.c.getPackageManager();
                    zBooleanValue = (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(this.c.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null) ? false : bundle.getBoolean("com.google.android.libraries.ads.mobile.sdk.flag.DISABLE_AD_INSPECTOR", false);
                } catch (PackageManager.NameNotFoundException unused) {
                }
                this.M = Boolean.valueOf(zBooleanValue);
            }
        } else {
            zBooleanValue = false;
        }
        og1 og1Var = this.y;
        if (og1Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
            og1Var = null;
        }
        boolean z = og1Var.z();
        boolean z2 = zBooleanValue && !z;
        if (zBooleanValue) {
            if (z) {
                if (this.L.compareAndSet(false, true)) {
                    g83 g83Var = this.q;
                    s11 s11Var = s11.CUI_NAME_AD_INSPECTOR_GLOBAL_ALLOWLIST_OVERRIDE;
                    List listEmptyList = CollectionsKt.emptyList();
                    ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                    if (hs3.b().a == null) {
                        tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                        try {
                            Object obj = p005kotlin.Unit.INSTANCE;
                            if (obj instanceof i01) {
                                xs3.a((i01) obj, false);
                            }
                            CloseableKt.closeFinally(tu2VarA, null);
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
                    } else {
                        rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                        try {
                            Object obj2 = p005kotlin.Unit.INSTANCE;
                            if (obj2 instanceof i01) {
                                xs3.a((i01) obj2, false);
                            }
                            CloseableKt.closeFinally(rr3VarA, null);
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
                    }
                }
            } else if (this.K.compareAndSet(false, true)) {
                g83 g83Var2 = this.q;
                s11 s11Var2 = s11.CUI_NAME_AD_INSPECTOR_DISABLED;
                List listEmptyList2 = CollectionsKt.emptyList();
                ks3 ks3Var2 = new ks3(new n03(), new tn1(), new m33(), new zb());
                if (hs3.b().a == null) {
                    tu2 tu2VarA2 = g83.a(g83Var2, s11Var2, listEmptyList2, ks3Var2);
                    try {
                        Object obj3 = p005kotlin.Unit.INSTANCE;
                        if (obj3 instanceof i01) {
                            xs3.a((i01) obj3, false);
                        }
                        CloseableKt.closeFinally(tu2VarA2, null);
                    } catch (Throwable th7) {
                        try {
                            tu2VarA2.b(th7);
                            if (th7 instanceof v24) {
                                throw th7;
                            }
                            if (!(th7 instanceof TimeoutCancellationException) && !(th7 instanceof CancellationException)) {
                                tu2VarA2.a(th7);
                            }
                            if (th7 instanceof TimeoutCancellationException) {
                                throw new i21(th7);
                            }
                            if (th7 instanceof CancellationException) {
                                throw new wz0(th7);
                            }
                            if (th7 instanceof w01) {
                                throw th7;
                            }
                            throw new b01(th7);
                        } catch (Throwable th8) {
                            try {
                                throw th8;
                            } catch (Throwable th9) {
                                CloseableKt.closeFinally(tu2VarA2, th8);
                                throw th9;
                            }
                        }
                    }
                } else {
                    rr3 rr3VarA2 = hs3.a(s11Var2, CollectionsKt.emptyList(), true);
                    try {
                        Object obj4 = p005kotlin.Unit.INSTANCE;
                        if (obj4 instanceof i01) {
                            xs3.a((i01) obj4, false);
                        }
                        CloseableKt.closeFinally(rr3VarA2, null);
                    } catch (Throwable th10) {
                        try {
                            rr3VarA2.b(th10);
                            if (th10 instanceof v24) {
                                throw th10;
                            }
                            if (!(th10 instanceof TimeoutCancellationException) && !(th10 instanceof CancellationException)) {
                                rr3VarA2.a(th10);
                            }
                            if (th10 instanceof TimeoutCancellationException) {
                                throw new i21(th10);
                            }
                            if (th10 instanceof CancellationException) {
                                throw new wz0(th10);
                            }
                            if (th10 instanceof w01) {
                                throw th10;
                            }
                            throw new b01(th10);
                        } catch (Throwable th11) {
                            try {
                                throw th11;
                            } catch (Throwable th12) {
                                CloseableKt.closeFinally(rr3VarA2, th11);
                                throw th12;
                            }
                        }
                    }
                }
            }
        }
        if (z2 && this.J.compareAndSet(false, true)) {
            f01.a("Ad inspector is disabled in the AndroidManifest.xml.", null, null, 6);
        }
        return z2;
    }

    public final boolean l() {
        if (k()) {
            return false;
        }
        og1 og1Var = this.y;
        og1 og1Var2 = null;
        if (og1Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
            og1Var = null;
        }
        if (og1Var.B()) {
            return true;
        }
        og1 og1Var3 = this.y;
        if (og1Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
        } else {
            og1Var2 = og1Var3;
        }
        if (og1Var2.A()) {
            ex0 ex0Var = this.i;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:inspector:linked_device_enable_inspector", C3510b4.i.W);
            if (((Boolean) ex0Var.a("gads:inspector:linked_device_enable_inspector", Boolean.TRUE, yr.b)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.nc1
    public final Object u(Continuation continuation) {
        return e(this, continuation);
    }

    public final Object v(Continuation continuation) {
        return a(this, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object w(Continuation continuation) {
        ge1 ge1Var;
        if (continuation instanceof ge1) {
            ge1Var = (ge1) continuation;
            int i = ge1Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                ge1Var.c = i - Integer.MIN_VALUE;
            } else {
                ge1Var = new ge1(this, continuation);
            }
        } else {
            ge1Var = new ge1(this, continuation);
        }
        Object objG = ge1Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ge1Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objG);
            ge1Var.c = 1;
            objG = g();
            if (objG == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objG);
        }
        String str = (String) objG;
        return Intrinsics.areEqual(str, JsonUtils.EMPTY_JSON) ? "" : str;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0093 A[Catch: all -> 0x00da, TRY_ENTER, TryCatch #1 {all -> 0x00da, blocks: (B:43:0x00c6, B:47:0x00d3, B:21:0x0059, B:32:0x008b, B:35:0x0093, B:36:0x0097, B:38:0x009f, B:39:0x00a3, B:28:0x007d), top: B:56:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x009f A[Catch: all -> 0x00da, TryCatch #1 {all -> 0x00da, blocks: (B:43:0x00c6, B:47:0x00d3, B:21:0x0059, B:32:0x008b, B:35:0x0093, B:36:0x0097, B:38:0x009f, B:39:0x00a3, B:28:0x007d), top: B:56:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v6, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v13 */
    public final Object x(Continuation continuation) throws Throwable {
        he1 he1Var;
        Throwable th;
        ?? r8;
        if1 if1Var;
        Mutex mutex;
        if1 if1Var2;
        Mutex mutex2;
        String str;
        og1 og1Var;
        boolean zB;
        og1 og1Var2;
        boolean zA;
        int i;
        Object objA;
        boolean z;
        int i2;
        String str2;
        boolean z2;
        boolean z3;
        if (continuation instanceof he1) {
            he1Var = (he1) continuation;
            int i3 = he1Var.h;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                he1Var.h = i3 - Integer.MIN_VALUE;
            } else {
                he1Var = new he1(this, continuation);
            }
        } else {
            he1Var = new he1(this, continuation);
        }
        Object objW = he1Var.f;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r2 = he1Var.h;
        try {
            if (r2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objW);
                Mutex mutex3 = this.x;
                he1Var.a = this;
                he1Var.b = mutex3;
                he1Var.h = 1;
                if (mutex3.lock(null, he1Var) != coroutine_suspended) {
                    if1Var = this;
                    mutex = mutex3;
                }
                return coroutine_suspended;
            }
            if (r2 == 1) {
                Mutex mutex4 = (Mutex) he1Var.b;
                if1Var = (if1) he1Var.a;
                p005kotlin.ResultKt.throwOnFailure(objW);
                mutex = mutex4;
            } else {
                if (r2 == 2) {
                    Mutex mutex5 = (Mutex) he1Var.b;
                    if1Var2 = (if1) he1Var.a;
                    p005kotlin.ResultKt.throwOnFailure(objW);
                    mutex2 = mutex5;
                    str = (String) objW;
                    og1Var = if1Var2.y;
                    if (og1Var == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                        og1Var = null;
                    }
                    zB = og1Var.B();
                    og1Var2 = if1Var2.y;
                    if (og1Var2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                        og1Var2 = null;
                    }
                    zA = og1Var2.A();
                    i = !if1Var2.A.isEmpty() ? 1 : 0;
                    he1Var.a = mutex2;
                    he1Var.b = str;
                    he1Var.c = i;
                    he1Var.d = zA;
                    he1Var.e = zB;
                    he1Var.h = 3;
                    objA = if1Var2.a(0, he1Var);
                    if (objA != coroutine_suspended) {
                        z = zA;
                        i2 = i;
                        str2 = str;
                        objW = objA;
                        z2 = zB;
                        r2 = mutex2;
                    }
                    return coroutine_suspended;
                }
                if (r2 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                boolean z4 = he1Var.e;
                boolean z5 = he1Var.d;
                i2 = he1Var.c;
                String str3 = (String) he1Var.b;
                Mutex mutex6 = (Mutex) he1Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objW);
                    z2 = z4;
                    z = z5;
                    str2 = str3;
                    r2 = mutex6;
                } catch (Throwable th2) {
                    th = th2;
                    r8 = mutex6;
                    r8.unlock(null);
                    throw th;
                }
            }
            boolean zBooleanValue = ((Boolean) objW).booleanValue();
            if (i2 != 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            vg1 vg1Var = new vg1(str2, z2, z, z3, zBooleanValue);
            r2.unlock(null);
            return vg1Var;
            he1Var.a = if1Var;
            he1Var.b = mutex;
            he1Var.h = 2;
            objW = if1Var.w(he1Var);
            if (objW != coroutine_suspended) {
                if1Var2 = if1Var;
                mutex2 = mutex;
                str = (String) objW;
                og1Var = if1Var2.y;
                if (og1Var == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                    og1Var = null;
                }
                zB = og1Var.B();
                og1Var2 = if1Var2.y;
                if (og1Var2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                    og1Var2 = null;
                }
                zA = og1Var2.A();
                i = !if1Var2.A.isEmpty() ? 1 : 0;
                he1Var.a = mutex2;
                he1Var.b = str;
                he1Var.c = i;
                he1Var.d = zA;
                he1Var.e = zB;
                he1Var.h = 3;
                objA = if1Var2.a(0, he1Var);
                if (objA != coroutine_suspended) {
                    z = zA;
                    i2 = i;
                    str2 = str;
                    objW = objA;
                    z2 = zB;
                    r2 = mutex2;
                    boolean zBooleanValue2 = ((Boolean) objW).booleanValue();
                    if (i2 != 0) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    vg1 vg1Var2 = new vg1(str2, z2, z, z3, zBooleanValue2);
                    r2.unlock(null);
                    return vg1Var2;
                }
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            th = th3;
            r8 = r2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:56:0x0256  */
    /* JADX WARN: Code duplicated, block: B:59:0x027c  */
    /* JADX WARN: Code duplicated, block: B:62:0x0286  */
    /* JADX WARN: Code duplicated, block: B:63:0x0289  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 17, insn: 0x010e: MOVE (r6 I:??[OBJECT, ARRAY]) = (r17 I:??[OBJECT, ARRAY]), block:B:25:0x010e */
    /* JADX WARN: Type inference failed for: r0v103 */
    /* JADX WARN: Type inference failed for: r0v83, types: [com.google.gson.Gson] */
    /* JADX WARN: Type inference failed for: r0v92, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v96 */
    /* JADX WARN: Type inference failed for: r10v34 */
    /* JADX WARN: Type inference failed for: r10v40, types: [com.google.gson.Gson] */
    /* JADX WARN: Type inference failed for: r10v42 */
    /* JADX WARN: Type inference failed for: r16v13 */
    /* JADX WARN: Type inference failed for: r16v15 */
    /* JADX WARN: Type inference failed for: r16v16 */
    /* JADX WARN: Type inference failed for: r16v17 */
    /* JADX WARN: Type inference failed for: r16v18 */
    /* JADX WARN: Type inference failed for: r16v19 */
    /* JADX WARN: Type inference failed for: r16v21 */
    /* JADX WARN: Type inference failed for: r16v22 */
    /* JADX WARN: Type inference failed for: r16v23 */
    /* JADX WARN: Type inference failed for: r16v24 */
    /* JADX WARN: Type inference failed for: r16v25 */
    /* JADX WARN: Type inference failed for: r16v26 */
    /* JADX WARN: Type inference failed for: r16v27 */
    /* JADX WARN: Type inference failed for: r16v28 */
    /* JADX WARN: Type inference failed for: r4v43, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v44 */
    /* JADX WARN: Type inference failed for: r4v48 */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v14, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v25, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v3, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x028c -> B:65:0x0296). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x02c0 -> B:71:0x02c3). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object y(p005kotlin.coroutines.Continuation r40) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.if1.y(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00b3 A[Catch: all -> 0x00bd, TRY_ENTER, TRY_LEAVE, TryCatch #8 {all -> 0x00bd, blocks: (B:28:0x0064, B:42:0x00b3, B:48:0x00d1), top: B:109:0x0064 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00d1 A[Catch: all -> 0x00bd, TRY_ENTER, TRY_LEAVE, TryCatch #8 {all -> 0x00bd, blocks: (B:28:0x0064, B:42:0x00b3, B:48:0x00d1), top: B:109:0x0064 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00db A[Catch: all -> 0x010d, TRY_LEAVE, TryCatch #7 {all -> 0x010d, blocks: (B:40:0x00af, B:46:0x00bf, B:50:0x00d5, B:52:0x00db), top: B:107:0x00af }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0112  */
    /* JADX WARN: Code duplicated, block: B:71:0x0135 A[Catch: all -> 0x0167, TRY_LEAVE, TryCatch #3 {all -> 0x0167, blocks: (B:63:0x011a, B:69:0x0126, B:71:0x0135), top: B:99:0x011a }] */
    /* JADX WARN: Code duplicated, block: B:78:0x015b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:95:0x011e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0105, code lost:
    
        if (a(r3, r0, null, null, null, null, null, null, null, null, r13, 510) == r2) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0156, code lost:
    
        if (a(r5, null, null, null, null, null, r9, null, null, null, r13, 479) == r2) goto L75;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v7, types: [ads_mobile_sdk.if1, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v13, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4, types: [ads_mobile_sdk.og1] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object z(p005kotlin.coroutines.Continuation r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.if1.z(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
