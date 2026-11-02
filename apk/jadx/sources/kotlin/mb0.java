package kotlin;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ironsource.R6;
import com.ironsource.adapters.facebook.FacebookConstants;
import com.tapjoy.TapjoyConstants;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class mb0 {
    public final CoroutineScope a;
    public final ex0 b;
    public final tx c;
    public final d63 d;
    public final Mutex e;
    public final Map f;
    public final ArrayList g;
    public final LinkedHashMap h;

    public mb0(CoroutineScope backgroundScope, Context context, ex0 flags, tx clock, d63 urlPinger, j53 requestType, an0 deviceProperties, zy commonConfiguration) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(urlPinger, "urlPinger");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(deviceProperties, "deviceProperties");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        this.a = backgroundScope;
        this.b = flags;
        this.c = clock;
        this.d = urlPinger;
        this.e = MutexKt.Mutex$default(false, 1, null);
        p005kotlin.Pair[] pairArr = new p005kotlin.Pair[10];
        pairArr[0] = p005kotlin.TuplesKt.to(FirebaseAnalytics.Param.AD_FORMAT, requestType.d());
        pairArr[1] = p005kotlin.TuplesKt.to("api_v", String.valueOf(Build.VERSION.SDK_INT));
        pairArr[2] = p005kotlin.TuplesKt.to(TapjoyConstants.TJC_APP_PLACEMENT, context.getPackageName());
        pairArr[3] = p005kotlin.TuplesKt.to("s", "gmob_sdk");
        pairArr[4] = p005kotlin.TuplesKt.to("v", "3");
        pairArr[5] = p005kotlin.TuplesKt.to("device", fb0.b());
        pairArr[6] = p005kotlin.TuplesKt.to("is_bstar", deviceProperties.g() ? "1" : "0");
        pairArr[7] = p005kotlin.TuplesKt.to("is_lite_sdk", "0");
        pairArr[8] = p005kotlin.TuplesKt.to("gqi", commonConfiguration.h);
        pairArr[9] = p005kotlin.TuplesKt.to(R6.F, Build.VERSION.RELEASE);
        this.f = MapsKt.mutableMapOf(pairArr);
        this.g = new ArrayList();
        this.h = new LinkedHashMap();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(mb0 mb0Var, String str, Continuation continuation) {
        gb0 gb0Var;
        ir3 ir3Var;
        mb0 mb0Var2;
        ir3 ir3Var2;
        Mutex mutex;
        if (continuation instanceof gb0) {
            gb0Var = (gb0) continuation;
            int i = gb0Var.h;
            if ((i & Integer.MIN_VALUE) != 0) {
                gb0Var.h = i - Integer.MIN_VALUE;
            } else {
                gb0Var = new gb0(mb0Var, continuation);
            }
        } else {
            gb0Var = new gb0(mb0Var, continuation);
        }
        Object obj = gb0Var.f;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = gb0Var.h;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Duration.Companion companion = Duration.INSTANCE;
            mb0Var.c.getClass();
            ir3Var = new ir3(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), str);
            Mutex mutex2 = mb0Var.e;
            gb0Var.a = mb0Var;
            gb0Var.b = str;
            gb0Var.c = ir3Var;
            gb0Var.d = ir3Var;
            gb0Var.e = mutex2;
            gb0Var.h = 1;
            if (mutex2.lock(null, gb0Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            mb0Var2 = mb0Var;
            ir3Var2 = ir3Var;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = gb0Var.e;
            ir3 ir3Var3 = gb0Var.d;
            ir3Var2 = gb0Var.c;
            String str2 = gb0Var.b;
            mb0Var2 = gb0Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            ir3Var = ir3Var3;
            str = str2;
        }
        try {
            mb0Var2.h.put(str, ir3Var);
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            return ir3Var2;
        } finally {
            mutex.unlock(null);
        }
    }

    public final Uri a(String str, String str2, Map map) {
        Uri.Builder builderBuildUpon = Uri.parse(this.b.z()).buildUpon();
        for (Map.Entry entry : map.entrySet()) {
            builderBuildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        return Uri.parse(builderBuildUpon.build().toString() + "&it=" + str + "&blat=" + str2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, String str2, long j, Continuation continuation) {
        lb0 lb0Var;
        Mutex mutex;
        mb0 mb0Var;
        if (continuation instanceof lb0) {
            lb0Var = (lb0) continuation;
            int i = lb0Var.h;
            if ((i & Integer.MIN_VALUE) != 0) {
                lb0Var.h = i - Integer.MIN_VALUE;
            } else {
                lb0Var = new lb0(this, continuation);
            }
        } else {
            lb0Var = new lb0(this, continuation);
        }
        Object obj = lb0Var.f;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = lb0Var.h;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = this.e;
            lb0Var.a = this;
            lb0Var.b = str;
            lb0Var.c = str2;
            lb0Var.d = mutex;
            lb0Var.e = j;
            lb0Var.h = 1;
            if (mutex.lock(null, lb0Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            mb0Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j = lb0Var.e;
            Mutex mutex2 = lb0Var.d;
            str2 = lb0Var.c;
            String str3 = lb0Var.b;
            mb0Var = lb0Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            str = str3;
        }
        try {
            ir3 ir3Var = (ir3) mb0Var.h.get(str2);
            if (ir3Var != null) {
                Boxing.boxBoolean(mb0Var.g.add(new eb0(str, ir3Var, j)));
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, String str2, boolean z, Continuation continuation) {
        kb0 kb0Var;
        Mutex mutex;
        mb0 mb0Var;
        if (continuation instanceof kb0) {
            kb0Var = (kb0) continuation;
            int i = kb0Var.h;
            if ((i & Integer.MIN_VALUE) != 0) {
                kb0Var.h = i - Integer.MIN_VALUE;
            } else {
                kb0Var = new kb0(this, continuation);
            }
        } else {
            kb0Var = new kb0(this, continuation);
        }
        Object obj = kb0Var.f;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = kb0Var.h;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = this.e;
            kb0Var.a = this;
            kb0Var.b = str;
            kb0Var.c = str2;
            kb0Var.d = mutex;
            kb0Var.e = z;
            kb0Var.h = 1;
            if (mutex.lock(null, kb0Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            mb0Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z = kb0Var.e;
            Mutex mutex2 = kb0Var.d;
            str2 = kb0Var.c;
            String str3 = kb0Var.b;
            mb0Var = kb0Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            str = str3;
        }
        try {
            if (z) {
                mb0Var.f.put(str, str2);
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            } else {
                mb0Var.f.putIfAbsent(str, str2);
            }
            mutex.unlock(null);
            return p005kotlin.Unit.INSTANCE;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object a(Continuation continuation) {
        ib0 ib0Var;
        Mutex mutex;
        mb0 mb0Var;
        if (continuation instanceof ib0) {
            ib0Var = (ib0) continuation;
            int i = ib0Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                ib0Var.e = i - Integer.MIN_VALUE;
            } else {
                ib0Var = new ib0(this, continuation);
            }
        } else {
            ib0Var = new ib0(this, continuation);
        }
        Object obj = ib0Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ib0Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.e;
            ib0Var.a = this;
            ib0Var.b = mutex2;
            ib0Var.e = 1;
            if (mutex2.lock(null, ib0Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            mutex = mutex2;
            mb0Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = ib0Var.b;
            mb0Var = ib0Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            p005kotlin.Pair pair = new p005kotlin.Pair(CollectionsKt.toList(mb0Var.g), MapsKt.toMap(mb0Var.f));
            mutex.unlock(null);
            List<eb0> list = (List) pair.component1();
            Map map = (Map) pair.component2();
            String strJoinToString$default = CollectionsKt.joinToString$default(list, FacebookConstants.PLACEMENT_IDS_SEPARATOR, null, null, 0, null, jb0.a, 30, null);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (eb0 eb0Var : list) {
                Long lBoxLong = Boxing.boxLong(Duration.m4378getInWholeMillisecondsimpl(eb0Var.b.a()));
                Object arrayList = linkedHashMap.get(lBoxLong);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    linkedHashMap.put(lBoxLong, arrayList);
                }
                ((List) arrayList).add(eb0Var.a);
            }
            ArrayList arrayList2 = new ArrayList(linkedHashMap.size());
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                String strJoinToString$default2 = CollectionsKt.joinToString$default((Iterable) entry.getValue(), "+", null, null, 0, null, null, 62, null);
                m21 m21Var = o21.f;
                arrayList2.add(strJoinToString$default2 + "." + Duration.m4378getInWholeMillisecondsimpl(m21.a(mb0Var.c, ((Number) entry.getKey()).longValue())));
            }
            d63.a(mb0Var.d, mb0Var.a(strJoinToString$default, CollectionsKt.joinToString$default(arrayList2, FacebookConstants.PLACEMENT_IDS_SEPARATOR, null, null, 0, null, null, 62, null), map));
            return p005kotlin.Unit.INSTANCE;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }
}
