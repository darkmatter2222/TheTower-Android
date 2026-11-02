package kotlin;

import com.google.common.base.Splitter;
import com.ironsource.C3510b4;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class s93 implements ai1, vm2 {
    public final e01 a;
    public final j53 b;
    public final ex0 c;
    public final o93 d;
    public final Mutex e;
    public final AtomicBoolean f;
    public final AtomicBoolean g;
    public final AtomicBoolean h;
    public final i80 i;
    public final LinkedHashMap j;

    public s93(String afmaVersion, i2 adConfiguration, o21 gmaUtil, e01 httpClient, j53 requestType, ex0 flags) {
        String str;
        String str2;
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = httpClient;
        this.b = requestType;
        this.c = flags;
        o93 o93Var = adConfiguration.o0;
        this.d = o93Var;
        this.e = MutexKt.Mutex$default(false, 1, null);
        this.f = new AtomicBoolean(false);
        this.g = new AtomicBoolean(false);
        this.h = new AtomicBoolean(false);
        i80 i80VarH = ra0.v().h();
        vc1 vc1Var = adConfiguration.J;
        String str3 = "";
        i80 i80VarC = i80VarH.c((vc1Var == null || (str2 = vc1Var.c) == null) ? "" : str2);
        vc1 vc1Var2 = adConfiguration.J;
        if (vc1Var2 != null && (str = vc1Var2.c) != null) {
            str3 = str;
        }
        i80 i80VarB = i80VarC.b(str3);
        j80 j80VarV = k80.v();
        Intrinsics.checkNotNullExpressionValue(j80VarV, "newBuilder(...)");
        qx qxVarA = px.a(j80VarV);
        qxVarA.a(o93Var.a);
        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        i80 i80VarA = i80VarB.a(qxVarA.a());
        z90 z90VarV = aa0.v();
        Intrinsics.checkNotNullExpressionValue(z90VarV, "newBuilder(...)");
        sx sxVarA = rx.a(z90VarV);
        sxVarA.a(afmaVersion);
        sxVarA.a(gmaUtil.c());
        this.i = i80VarA.a(sxVarA.a());
        this.j = new LinkedHashMap();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001f  */
    public static Object a(s93 s93Var, String str, w90 w90Var, Map map, Continuation continuation) throws Throwable {
        p93 p93Var;
        Mutex mutex;
        String str2;
        w90 w90Var2;
        Map map2;
        Object obj;
        s93 s93Var2 = s93Var;
        if (continuation instanceof p93) {
            p93Var = (p93) continuation;
            int i = p93Var.h;
            if ((i & Integer.MIN_VALUE) != 0) {
                p93Var.h = i - Integer.MIN_VALUE;
            } else {
                p93Var = new p93(s93Var2, continuation);
            }
        } else {
            p93Var = new p93(s93Var2, continuation);
        }
        Object obj2 = p93Var.f;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = p93Var.h;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj2);
            mutex = s93Var2.e;
            p93Var.a = s93Var2;
            str2 = str;
            p93Var.b = str2;
            w90Var2 = w90Var;
            p93Var.c = w90Var2;
            map2 = map;
            p93Var.d = map2;
            p93Var.e = mutex;
            p93Var.h = 1;
            if (mutex.lock(null, p93Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = p93Var.e;
            Map map3 = p93Var.d;
            w90 w90Var3 = p93Var.c;
            String str3 = p93Var.b;
            s93 s93Var3 = p93Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj2);
            mutex = mutex2;
            s93Var2 = s93Var3;
            map2 = map3;
            w90Var2 = w90Var3;
            str2 = str3;
        }
        try {
            x90 x90Var = (x90) s93Var2.j.get(str2);
            if (w90Var2 == w90.AD_RESOURCE_AUTO_CLICK_DESTINATION) {
                if (x90Var != null) {
                    try {
                        x90Var.a(w90Var2);
                    } catch (Throwable th) {
                        th = th;
                        obj = null;
                    }
                }
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                mutex.unlock(null);
                return unit;
            }
            LinkedHashMap linkedHashMap = s93Var2.j;
            x90 x90VarA = y90.v().a(w90Var2).a(s93Var2.j.size()).a(str2);
            x80 builder = a90.v();
            Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
            Intrinsics.checkNotNullParameter(builder, "builder");
            if (!s93Var2.d.e.isEmpty()) {
                for (Map.Entry entry : map2.entrySet()) {
                    String str4 = (String) entry.getKey();
                    String str5 = (String) entry.getValue();
                    List list = s93Var2.d.e;
                    Locale ENGLISH = Locale.ENGLISH;
                    s93 s93Var4 = s93Var2;
                    Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
                    String lowerCase = str4.toLowerCase(ENGLISH);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    if (list.contains(lowerCase)) {
                        List listH = builder.h();
                        Intrinsics.checkNotNullExpressionValue(listH, "getHeadersList(...)");
                        lo0 lo0Var = new lo0(listH);
                        v80 builder2 = w80.v();
                        Intrinsics.checkNotNullExpressionValue(builder2, "newBuilder(...)");
                        Intrinsics.checkNotNullParameter(builder2, "builder");
                        du value = du.a(str4);
                        Intrinsics.checkNotNullExpressionValue(value, "copyFromUtf8(...)");
                        Intrinsics.checkNotNullParameter(value, "value");
                        builder2.a(value);
                        du value2 = du.a(str5);
                        Intrinsics.checkNotNullExpressionValue(value2, "copyFromUtf8(...)");
                        Intrinsics.checkNotNullParameter(value2, "value");
                        builder2.b(value2);
                        vz0 vz0VarB = builder2.b();
                        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
                        w80 value3 = (w80) vz0VarB;
                        Intrinsics.checkNotNullParameter(lo0Var, "<this>");
                        Intrinsics.checkNotNullParameter(value3, "value");
                        builder.a(value3);
                    }
                    s93Var2 = s93Var4;
                }
            }
            vz0 vz0VarB2 = builder.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
            x90 x90VarA2 = x90VarA.a((a90) vz0VarB2);
            Intrinsics.checkNotNullExpressionValue(x90VarA2, "setRequest(...)");
            linkedHashMap.put(str2, x90VarA2);
            p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
            mutex.unlock(null);
            return unit2;
        } catch (Throwable th2) {
            th = th2;
            obj = null;
        }
        mutex.unlock(obj);
        throw th;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(s93 s93Var, String str, Continuation continuation) {
        r93 r93Var;
        s93 s93Var2;
        Mutex mutex;
        if (continuation instanceof r93) {
            r93Var = (r93) continuation;
            int i = r93Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                r93Var.f = i - Integer.MIN_VALUE;
            } else {
                r93Var = new r93(s93Var, continuation);
            }
        } else {
            r93Var = new r93(s93Var, continuation);
        }
        Object obj = r93Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = r93Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = s93Var.e;
            r93Var.a = s93Var;
            r93Var.b = str;
            r93Var.c = mutex2;
            r93Var.f = 1;
            if (mutex2.lock(null, r93Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            s93Var2 = s93Var;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = r93Var.c;
            str = r93Var.b;
            s93Var2 = r93Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            s93Var2.i.a(str);
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    public final Object a(String str, xg2 xg2Var) {
        return a(this, str, xg2Var);
    }

    @Override // kotlin.ai1
    public final Object a(Continuation continuation) {
        Object objS = s(continuation);
        return objS == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objS : p005kotlin.Unit.INSTANCE;
    }

    public final Object b(String str, Continuation continuation) throws Throwable {
        Splitter splitter = f01.a;
        f01.b("Blocked click action", null);
        this.h.set(true);
        Object objA = a(this, str, w90.AD_RESOURCE_AUTO_CLICK_DESTINATION, MapsKt.emptyMap(), continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.vm2
    public final Object b(Continuation continuation) {
        Object objS = s(continuation);
        return objS == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objS : p005kotlin.Unit.INSTANCE;
    }

    public final boolean f() {
        j53 j53Var;
        ex0 ex0Var = this.c;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:native_click_protection:enabled", C3510b4.i.W);
        return (!((Boolean) ex0Var.a("gads:native_click_protection:enabled", Boolean.FALSE, yr.b)).booleanValue() && ((j53Var = this.b) == j53.i || j53Var == j53.g)) || !this.d.d || this.g.get();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d9, code lost:
    
        if (kotlin.e01.a(r1, r9, (p005kotlin.time.Duration) null, false, (p005kotlin.coroutines.Continuation) r5, 30) == r0) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object s(p005kotlin.coroutines.Continuation r9) {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.s93.s(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
