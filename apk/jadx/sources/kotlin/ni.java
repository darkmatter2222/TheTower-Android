package kotlin;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.os.Build;
import android.os.Looper;
import android.view.WindowManager;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.ironsource.C3510b4;
import com.ironsource.adapters.facebook.FacebookConstants;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import p005kotlin.collections.ArraysKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.StringCompanionObject;
import p005kotlin.text.Charsets;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class ni {
    public final Context a;
    public final tx b;
    public final g30 c;
    public final uv d;
    public final ex0 e;
    public final ao0 f;
    public final zw3 g;
    public final qn h;
    public final cn0 i;
    public final e11 j;

    public ni(Context context, ja1 initializationConfigWrapper, String afmaVersionString, String gmaVersion, tx clock, g30 consentManager, uv chromeVariationsProvider, ex0 flags, ao0 displayUtil, zw3 userAgentProvider, qn appState, cn0 deviceTierManager) {
        String applicationId;
        PackageInfo packageInfo;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(afmaVersionString, "afmaVersionString");
        Intrinsics.checkNotNullParameter(gmaVersion, "gmaVersion");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        Intrinsics.checkNotNullParameter(chromeVariationsProvider, "chromeVariationsProvider");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(displayUtil, "displayUtil");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(deviceTierManager, "deviceTierManager");
        this.a = context;
        this.b = clock;
        this.c = consentManager;
        this.d = chromeVariationsProvider;
        this.e = flags;
        this.f = displayUtil;
        this.g = userAgentProvider;
        this.h = appState;
        this.i = deviceTierManager;
        Rect rectA = a();
        PackageManager packageManager = context.getPackageManager();
        String str = "";
        String str2 = (packageManager == null || (packageInfo = packageManager.getPackageInfo(context.getPackageName(), 128)) == null || (str2 = packageInfo.versionName) == null) ? "" : str2;
        b11 b11VarW = e11.w();
        Intrinsics.checkNotNullExpressionValue(b11VarW, "newBuilder(...)");
        g11 g11VarA = f11.a(b11VarW);
        g11VarA.b();
        g11VarA.c();
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        g11VarA.g(RELEASE);
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        g11VarA.f(MODEL);
        g11VarA.c(Build.VERSION.SDK_INT);
        g11VarA.h(gmaVersion);
        g11VarA.a(afmaVersionString);
        String packageName = context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
        g11VarA.c(packageName);
        g11VarA.d(str2);
        InitializationConfig initializationConfigA = initializationConfigWrapper.a();
        if (initializationConfigA != null && (applicationId = initializationConfigA.getApplicationId()) != null) {
            str = applicationId;
        }
        g11VarA.b(str);
        String country = Locale.getDefault().getCountry();
        Intrinsics.checkNotNullExpressionValue(country, "getCountry(...)");
        g11VarA.e(country);
        g11VarA.b(rectA.width());
        g11VarA.a(rectA.height());
        this.j = g11VarA.a();
    }

    public final Rect a() {
        Rect bounds;
        WindowManager windowManagerB = this.f.b(this.a);
        if (Build.VERSION.SDK_INT >= 30) {
            bounds = windowManagerB.getMaximumWindowMetrics().getBounds();
        } else {
            Rect rect = new Rect();
            windowManagerB.getDefaultDisplay().getRectSize(rect);
            bounds = rect;
        }
        Intrinsics.checkNotNull(bounds);
        return bounds;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x04d1  */
    /* JADX WARN: Code duplicated, block: B:105:0x04d4  */
    /* JADX WARN: Code duplicated, block: B:108:0x050f  */
    /* JADX WARN: Code duplicated, block: B:110:0x051f  */
    /* JADX WARN: Code duplicated, block: B:114:0x0538  */
    /* JADX WARN: Code duplicated, block: B:124:0x0299 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:127:0x0287 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:0x0319 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:0x0301 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:138:0x03f1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:140:0x03d9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:145:0x0521 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x0243  */
    /* JADX WARN: Code duplicated, block: B:63:0x028d  */
    /* JADX WARN: Code duplicated, block: B:69:0x02d8 A[LOOP:1: B:67:0x02d2->B:69:0x02d8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:73:0x0307  */
    /* JADX WARN: Code duplicated, block: B:79:0x0333 A[LOOP:3: B:77:0x032d->B:79:0x0333, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:83:0x03b0 A[LOOP:4: B:81:0x03aa->B:83:0x03b0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:87:0x03df  */
    /* JADX WARN: Code duplicated, block: B:93:0x040b A[LOOP:6: B:91:0x0405->B:93:0x040b, LOOP_END] */
    public final Object a(Continuation continuation) {
        mi miVar;
        String value;
        ActivityManager.MemoryInfo memoryInfo;
        lv value2;
        rr3 rr3Var;
        ni niVar;
        ks3 ks3Var;
        g11 g11Var;
        g11 g11Var2;
        rr3 rr3Var2;
        g11 g11Var3;
        mt1 mt1Var;
        Object objA;
        g11 g11Var4;
        g11 g11Var5;
        ks3 ks3Var2;
        rr3 rr3Var3;
        String value3;
        ArrayList values;
        Iterator it;
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMap2;
        LinkedHashMap linkedHashMap3;
        LinkedHashMap linkedHashMap4;
        mt1 value4;
        ArrayList values2;
        mt1 mt1VarA;
        uj2 uj2VarE;
        s11 s11Var;
        Long longOrNull;
        if (continuation instanceof mi) {
            miVar = (mi) continuation;
            int i = miVar.k;
            if ((i & Integer.MIN_VALUE) != 0) {
                miVar.k = i - Integer.MIN_VALUE;
            } else {
                miVar = new mi(this, continuation);
            }
        } else {
            miVar = new mi(this, continuation);
        }
        Object obj = miVar.i;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = miVar.k;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Thread thread = Looper.getMainLooper().getThread();
            Intrinsics.checkNotNullExpressionValue(thread, "getThread(...)");
            StackTraceElement[] stackTrace = thread.getStackTrace();
            Intrinsics.checkNotNullExpressionValue(stackTrace, "getStackTrace(...)");
            String value5 = ArraysKt.joinToString$default(stackTrace, "\n", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null);
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                byte[] bytes = value5.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                messageDigest.update(bytes);
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                value = String.format(Locale.US, "%032X", Arrays.copyOf(new Object[]{new BigInteger(1, messageDigest.digest())}, 1));
                Intrinsics.checkNotNullExpressionValue(value, "format(...)");
            } catch (Exception unused) {
                value = null;
            }
            if (value == null) {
                value = "";
            }
            Object systemService = this.a.getSystemService("activity");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) systemService).getMemoryInfo(memoryInfo);
            uv uvVar = this.d;
            mv mvVar = uvVar.j;
            if (mvVar == null) {
                BuildersKt__Builders_commonKt.launch$default(uvVar.c, null, null, new sv(uvVar, null), 3, null);
            }
            value2 = mvVar != null ? mvVar.b : null;
            Thread thread2 = Looper.getMainLooper().getThread();
            Intrinsics.checkNotNullExpressionValue(thread2, "getThread(...)");
            WeakHashMap weakHashMap = hs3.a;
            Intrinsics.checkNotNullParameter(thread2, "thread");
            WeakHashMap weakHashMap2 = hs3.a;
            synchronized (weakHashMap2) {
                gs3 gs3Var = (gs3) weakHashMap2.get(thread2);
                rr3Var = gs3Var != null ? gs3Var.a : null;
            }
            ks3 ks3Var3 = rr3Var != null ? rr3Var.a : null;
            vz0.a aVarU = this.j.u();
            Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
            b11 builder = (b11) aVarU;
            Intrinsics.checkNotNullParameter(builder, "builder");
            g11 g11Var6 = new g11(builder);
            this.b.getClass();
            builder.e(System.currentTimeMillis());
            Intrinsics.checkNotNullParameter(value5, "value");
            builder.v(value5);
            Intrinsics.checkNotNullParameter(value, "value");
            builder.u(value);
            ex0 ex0Var = this.e;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:system_health:anr_watchdog:sample_rate", C3510b4.i.W);
            double dDoubleValue = ((Number) ex0Var.a("gads:system_health:anr_watchdog:sample_rate", Double.valueOf(0.05d), yr.c)).doubleValue();
            builder.c(dDoubleValue > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? (long) (((double) 1) / dDoubleValue) : 0L);
            g30 g30Var = this.c;
            miVar.a = this;
            miVar.b = memoryInfo;
            miVar.c = value2;
            miVar.d = rr3Var;
            miVar.e = ks3Var3;
            miVar.f = g11Var6;
            miVar.g = g11Var6;
            miVar.h = g11Var6;
            miVar.k = 1;
            g30Var.getClass();
            Object objI = g30.i(g30Var, miVar);
            if (objI != coroutine_suspended) {
                niVar = this;
                ks3Var = ks3Var3;
                g11Var = g11Var6;
                g11Var2 = g11Var;
                rr3Var2 = rr3Var;
                obj = objI;
                g11Var3 = g11Var2;
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            g11Var3 = miVar.h;
            g11Var = miVar.g;
            g11Var2 = miVar.f;
            ks3Var = (ks3) miVar.e;
            rr3Var2 = (rr3) miVar.d;
            value2 = (lv) miVar.c;
            memoryInfo = (ActivityManager.MemoryInfo) miVar.b;
            niVar = miVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            g11Var4 = (g11) miVar.e;
            g11Var5 = (g11) miVar.d;
            ks3Var2 = (ks3) miVar.c;
            rr3Var3 = (rr3) miVar.b;
            ni niVar2 = miVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            niVar = niVar2;
            mt1Var = null;
            objA = obj;
        }
        value3 = (String) objA;
        if (value3 != null) {
            g11Var4.getClass();
            Intrinsics.checkNotNullParameter(value3, "value");
            g11Var4.a.y(value3);
        }
        List listJ = g11Var4.a.j();
        Intrinsics.checkNotNullExpressionValue(listJ, "getExperimentIdList(...)");
        lo0 lo0Var = new lo0(listJ);
        List listSplit$default = StringsKt.split$default((CharSequence) niVar.e.s.c(), new String[]{FacebookConstants.PLACEMENT_IDS_SEPARATOR}, false, 0, 6, (Object) null);
        values = new ArrayList();
        it = listSplit$default.iterator();
        while (it.hasNext()) {
            longOrNull = StringsKt.toLongOrNull((String) it.next());
            if (longOrNull != null) {
                values.add(longOrNull);
            }
        }
        Intrinsics.checkNotNullParameter(lo0Var, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        g11Var4.a.b(values);
        g11Var4.a.c(((rs1) niVar.h.a).c);
        ConcurrentHashMap concurrentHashMap = niVar.h.d;
        linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(concurrentHashMap.size()));
        for (Map.Entry entry : concurrentHashMap.entrySet()) {
            linkedHashMap.put(entry.getKey(), Integer.valueOf(((AtomicInteger) entry.getValue()).get()));
        }
        linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            if (((Number) entry2.getValue()).intValue() > 0) {
                linkedHashMap2.put(entry2.getKey(), entry2.getValue());
            }
        }
        for (Map.Entry entry3 : linkedHashMap2.entrySet()) {
            j53 j53Var = (j53) entry3.getKey();
            int iIntValue = ((Number) entry3.getValue()).intValue();
            List listK = g11Var4.a.k();
            Intrinsics.checkNotNullExpressionValue(listK, "getLoadedAdsStatsList(...)");
            lo0 lo0Var2 = new lo0(listK);
            z01 builder2 = a11.v();
            Intrinsics.checkNotNullExpressionValue(builder2, "newBuilder(...)");
            Intrinsics.checkNotNullParameter(builder2, "builder");
            nt1 value6 = k53.a(j53Var);
            Intrinsics.checkNotNullParameter(value6, "value");
            builder2.a(value6);
            builder2.a(iIntValue);
            vz0 vz0VarB = builder2.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
            a11 value7 = (a11) vz0VarB;
            Intrinsics.checkNotNullParameter(lo0Var2, "<this>");
            Intrinsics.checkNotNullParameter(value7, "value");
            g11Var4.a.a(value7);
        }
        ConcurrentHashMap concurrentHashMap2 = niVar.h.e;
        linkedHashMap3 = new LinkedHashMap(MapsKt.mapCapacity(concurrentHashMap2.size()));
        for (Map.Entry entry4 : concurrentHashMap2.entrySet()) {
            linkedHashMap3.put(entry4.getKey(), Integer.valueOf(((AtomicInteger) entry4.getValue()).get()));
        }
        linkedHashMap4 = new LinkedHashMap();
        for (Map.Entry entry5 : linkedHashMap3.entrySet()) {
            if (((Number) entry5.getValue()).intValue() > 0) {
                linkedHashMap4.put(entry5.getKey(), entry5.getValue());
            }
        }
        for (Map.Entry entry6 : linkedHashMap4.entrySet()) {
            j53 j53Var2 = (j53) entry6.getKey();
            int iIntValue2 = ((Number) entry6.getValue()).intValue();
            List listL = g11Var4.a.l();
            Intrinsics.checkNotNullExpressionValue(listL, "getShowingAdsStatsList(...)");
            lo0 lo0Var3 = new lo0(listL);
            z01 builder3 = a11.v();
            Intrinsics.checkNotNullExpressionValue(builder3, "newBuilder(...)");
            Intrinsics.checkNotNullParameter(builder3, "builder");
            nt1 value8 = k53.a(j53Var2);
            Intrinsics.checkNotNullParameter(value8, "value");
            builder3.a(value8);
            builder3.a(iIntValue2);
            vz0 vz0VarB2 = builder3.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
            a11 value9 = (a11) vz0VarB2;
            Intrinsics.checkNotNullParameter(lo0Var3, "<this>");
            Intrinsics.checkNotNullParameter(value9, "value");
            g11Var4.a.b(value9);
        }
        Object obj2 = niVar.i.b.get();
        Intrinsics.checkNotNullExpressionValue(obj2, "get(...)");
        mm0 value10 = (mm0) obj2;
        Intrinsics.checkNotNullParameter(value10, "value");
        g11Var4.a.a(value10);
        g11Var4.a.b(niVar.i.d.get());
        Object obj3 = niVar.i.c.get();
        Intrinsics.checkNotNullExpressionValue(obj3, "get(...)");
        om0 value11 = (om0) obj3;
        Intrinsics.checkNotNullParameter(value11, "value");
        g11Var4.a.a(value11);
        nm0 value12 = niVar.i.a();
        Intrinsics.checkNotNullParameter(value12, "value");
        g11Var4.a.a(value12);
        if (rr3Var3 != null || (uj2VarE = rr3Var3.e()) == null || (s11Var = uj2VarE.c) == null) {
            value4 = mt1Var;
        } else {
            value4 = mt1.a(s11Var.getNumber());
            if (value4 == null) {
                value4 = mt1.CUI_NAME_UNKNOWN;
            }
        }
        if (value4 != null) {
            Intrinsics.checkNotNullParameter(value4, "value");
            g11Var4.a.a(value4);
        }
        List listI = g11Var4.a.i();
        Intrinsics.checkNotNullExpressionValue(listI, "getActiveCuiStackList(...)");
        Intrinsics.checkNotNullParameter(new lo0(listI), "<this>");
        g11Var4.a.h();
        List listI2 = g11Var4.a.i();
        Intrinsics.checkNotNullExpressionValue(listI2, "getActiveCuiStackList(...)");
        lo0 lo0Var4 = new lo0(listI2);
        values2 = new ArrayList();
        while (rr3Var3 != null) {
            mt1VarA = mt1.a(rr3Var3.e().c.getNumber());
            if (mt1VarA == null) {
                mt1VarA = mt1.CUI_NAME_UNKNOWN;
            }
            values2.add(mt1VarA);
            rr3Var3 = rr3Var3.b;
        }
        Intrinsics.checkNotNullParameter(lo0Var4, "<this>");
        Intrinsics.checkNotNullParameter(values2, "values");
        g11Var4.a.a(values2);
        if (ks3Var2 != null) {
            is3.a(g11Var4, ks3Var2);
        }
        return g11Var5.a();
        String value13 = (String) obj;
        if (value13 == null) {
            value13 = "";
        }
        g11Var3.getClass();
        Intrinsics.checkNotNullParameter(value13, "value");
        g11Var3.a.t(value13);
        g11Var.a.f(Runtime.getRuntime().availableProcessors());
        g11Var.a.f(memoryInfo.totalMem);
        g11Var.a.a(memoryInfo.availMem);
        g11Var.a.d(memoryInfo.threshold);
        g11Var.a.a(memoryInfo.lowMemory);
        if (value2 == null) {
            kv builder4 = lv.v();
            Intrinsics.checkNotNullExpressionValue(builder4, "newBuilder(...)");
            Intrinsics.checkNotNullParameter(builder4, "builder");
            vz0 vz0VarB3 = builder4.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB3, "build(...)");
            value2 = (lv) vz0VarB3;
        }
        Intrinsics.checkNotNullParameter(value2, "value");
        g11Var.a.a(value2);
        zw3 zw3Var = niVar.g;
        miVar.a = niVar;
        miVar.b = rr3Var2;
        miVar.c = ks3Var;
        miVar.d = g11Var2;
        miVar.e = g11Var;
        mt1Var = null;
        miVar.f = null;
        miVar.g = null;
        miVar.h = null;
        miVar.k = 2;
        zw3Var.getClass();
        objA = zw3.a(zw3Var, miVar);
        if (objA != coroutine_suspended) {
            g11Var4 = g11Var;
            g11Var5 = g11Var2;
            ks3Var2 = ks3Var;
            rr3Var3 = rr3Var2;
            value3 = (String) objA;
            if (value3 != null) {
                g11Var4.getClass();
                Intrinsics.checkNotNullParameter(value3, "value");
                g11Var4.a.y(value3);
            }
            List listJ2 = g11Var4.a.j();
            Intrinsics.checkNotNullExpressionValue(listJ2, "getExperimentIdList(...)");
            lo0 lo0Var5 = new lo0(listJ2);
            List listSplit$default2 = StringsKt.split$default((CharSequence) niVar.e.s.c(), new String[]{FacebookConstants.PLACEMENT_IDS_SEPARATOR}, false, 0, 6, (Object) null);
            values = new ArrayList();
            it = listSplit$default2.iterator();
            while (it.hasNext()) {
                longOrNull = StringsKt.toLongOrNull((String) it.next());
                if (longOrNull != null) {
                    values.add(longOrNull);
                }
            }
            Intrinsics.checkNotNullParameter(lo0Var5, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            g11Var4.a.b(values);
            g11Var4.a.c(((rs1) niVar.h.a).c);
            ConcurrentHashMap concurrentHashMap3 = niVar.h.d;
            linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(concurrentHashMap3.size()));
            while (r0.hasNext()) {
                linkedHashMap.put(entry.getKey(), Integer.valueOf(((AtomicInteger) entry.getValue()).get()));
            }
            linkedHashMap2 = new LinkedHashMap();
            while (r2.hasNext()) {
                if (((Number) entry2.getValue()).intValue() > 0) {
                    linkedHashMap2.put(entry2.getKey(), entry2.getValue());
                }
            }
            while (r0.hasNext()) {
                j53 j53Var3 = (j53) entry3.getKey();
                int iIntValue3 = ((Number) entry3.getValue()).intValue();
                List listK2 = g11Var4.a.k();
                Intrinsics.checkNotNullExpressionValue(listK2, "getLoadedAdsStatsList(...)");
                lo0 lo0Var6 = new lo0(listK2);
                z01 builder5 = a11.v();
                Intrinsics.checkNotNullExpressionValue(builder5, "newBuilder(...)");
                Intrinsics.checkNotNullParameter(builder5, "builder");
                nt1 value14 = k53.a(j53Var3);
                Intrinsics.checkNotNullParameter(value14, "value");
                builder5.a(value14);
                builder5.a(iIntValue3);
                vz0 vz0VarB4 = builder5.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB4, "build(...)");
                a11 value15 = (a11) vz0VarB4;
                Intrinsics.checkNotNullParameter(lo0Var6, "<this>");
                Intrinsics.checkNotNullParameter(value15, "value");
                g11Var4.a.a(value15);
            }
            ConcurrentHashMap concurrentHashMap4 = niVar.h.e;
            linkedHashMap3 = new LinkedHashMap(MapsKt.mapCapacity(concurrentHashMap4.size()));
            while (r0.hasNext()) {
                linkedHashMap3.put(entry4.getKey(), Integer.valueOf(((AtomicInteger) entry4.getValue()).get()));
            }
            linkedHashMap4 = new LinkedHashMap();
            while (r2.hasNext()) {
                if (((Number) entry5.getValue()).intValue() > 0) {
                    linkedHashMap4.put(entry5.getKey(), entry5.getValue());
                }
            }
            while (r0.hasNext()) {
                j53 j53Var4 = (j53) entry6.getKey();
                int iIntValue4 = ((Number) entry6.getValue()).intValue();
                List listL2 = g11Var4.a.l();
                Intrinsics.checkNotNullExpressionValue(listL2, "getShowingAdsStatsList(...)");
                lo0 lo0Var7 = new lo0(listL2);
                z01 builder6 = a11.v();
                Intrinsics.checkNotNullExpressionValue(builder6, "newBuilder(...)");
                Intrinsics.checkNotNullParameter(builder6, "builder");
                nt1 value16 = k53.a(j53Var4);
                Intrinsics.checkNotNullParameter(value16, "value");
                builder6.a(value16);
                builder6.a(iIntValue4);
                vz0 vz0VarB5 = builder6.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB5, "build(...)");
                a11 value17 = (a11) vz0VarB5;
                Intrinsics.checkNotNullParameter(lo0Var7, "<this>");
                Intrinsics.checkNotNullParameter(value17, "value");
                g11Var4.a.b(value17);
            }
            Object obj4 = niVar.i.b.get();
            Intrinsics.checkNotNullExpressionValue(obj4, "get(...)");
            mm0 value18 = (mm0) obj4;
            Intrinsics.checkNotNullParameter(value18, "value");
            g11Var4.a.a(value18);
            g11Var4.a.b(niVar.i.d.get());
            Object obj5 = niVar.i.c.get();
            Intrinsics.checkNotNullExpressionValue(obj5, "get(...)");
            om0 value19 = (om0) obj5;
            Intrinsics.checkNotNullParameter(value19, "value");
            g11Var4.a.a(value19);
            nm0 value110 = niVar.i.a();
            Intrinsics.checkNotNullParameter(value110, "value");
            g11Var4.a.a(value110);
            if (rr3Var3 != null) {
                value4 = mt1Var;
            } else {
                value4 = mt1Var;
            }
            if (value4 != null) {
                Intrinsics.checkNotNullParameter(value4, "value");
                g11Var4.a.a(value4);
            }
            List listI3 = g11Var4.a.i();
            Intrinsics.checkNotNullExpressionValue(listI3, "getActiveCuiStackList(...)");
            Intrinsics.checkNotNullParameter(new lo0(listI3), "<this>");
            g11Var4.a.h();
            List listI4 = g11Var4.a.i();
            Intrinsics.checkNotNullExpressionValue(listI4, "getActiveCuiStackList(...)");
            lo0 lo0Var8 = new lo0(listI4);
            values2 = new ArrayList();
            while (rr3Var3 != null) {
                mt1VarA = mt1.a(rr3Var3.e().c.getNumber());
                if (mt1VarA == null) {
                    mt1VarA = mt1.CUI_NAME_UNKNOWN;
                }
                values2.add(mt1VarA);
                rr3Var3 = rr3Var3.b;
            }
            Intrinsics.checkNotNullParameter(lo0Var8, "<this>");
            Intrinsics.checkNotNullParameter(values2, "values");
            g11Var4.a.a(values2);
            if (ks3Var2 != null) {
                is3.a(g11Var4, ks3Var2);
            }
            return g11Var5.a();
        }
        return coroutine_suspended;
    }
}
