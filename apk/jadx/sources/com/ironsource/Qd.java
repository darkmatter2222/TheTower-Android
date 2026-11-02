package com.ironsource;

import android.adservices.measurement.MeasurementManager;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.OutcomeReceiver;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.unity3d.mediation.LevelPlay;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import org.json.JSONObject;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.FunctionReferenceImpl;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class Qd {
    private final F7 a;
    private final Function0<Long> b;
    private final M7 c;
    private final Executor d;

    /* synthetic */ class a extends FunctionReferenceImpl implements Function0<Long> {
        public static final a a = new a();

        a() {
            super(0, System.class, "currentTimeMillis", "currentTimeMillis()J", 0);
        }

        @Override // p005kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Long invoke() {
            return Long.valueOf(System.currentTimeMillis());
        }
    }

    public static final class b implements OutcomeReceiver<Object, Exception> {
        b() {
        }

        @Override // android.os.OutcomeReceiver
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onError(Exception error) {
            Intrinsics.checkNotNullParameter(error, "error");
            Qd.this.a(error.getMessage());
        }

        @Override // android.os.OutcomeReceiver
        public void onResult(Object obj) {
            Qd.this.c();
        }
    }

    public Qd() {
        this(null, null, null, null, 15, null);
    }

    public Qd(F7 eventManager, Function0<Long> getTimeFunction, M7 serviceProvider, Executor executor) {
        Intrinsics.checkNotNullParameter(eventManager, "eventManager");
        Intrinsics.checkNotNullParameter(getTimeFunction, "getTimeFunction");
        Intrinsics.checkNotNullParameter(serviceProvider, "serviceProvider");
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.a = eventManager;
        this.b = getTimeFunction;
        this.c = serviceProvider;
        this.d = executor;
    }

    public /* synthetic */ Qd(F7 f7, Function0 function0, M7 m7, Executor executor, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Pb.w.d().q() : f7, (i & 2) != 0 ? a.a : function0, (i & 4) != 0 ? Pb.w.d() : m7, (i & 8) != 0 ? Executors.newSingleThreadExecutor() : executor);
    }

    private final Uri a(Context context) {
        B7 b7A = this.c.a();
        String strA = IronSourceUtils.a(context);
        Uri uriBuild = new Uri.Builder().scheme("https").authority("android-att.ironsrc.mobi").path("register_trigger").appendQueryParameter("osVersion", Build.VERSION.RELEASE).appendQueryParameter("apiLevel", String.valueOf(Build.VERSION.SDK_INT)).appendQueryParameter("deviceModel", Build.MODEL).appendQueryParameter("sdkVersion", LevelPlay.getSdkVersion()).appendQueryParameter("bundleID", context.getPackageName()).appendQueryParameter(R6.X0, b7A.I(context)).appendQueryParameter(R6.M0, b7A.z(context)).appendQueryParameter("auid", b7A.e(context)).appendQueryParameter("isFirstSession", String.valueOf(b(context))).appendQueryParameter("coppa", b()).appendQueryParameter(R6.j0, String.valueOf(C3686l0.a())).appendQueryParameter("origin", "1").appendQueryParameter("timestamp", String.valueOf(this.b.invoke().longValue())).appendQueryParameter(C3510b4.j.x, b7A.d(context)).appendQueryParameter("deviceCarrier", b7A.v(context)).appendQueryParameter("connectionType", strA).appendQueryParameter("wifi", String.valueOf(StringsKt.equals(strA, "wifi", true))).build();
        Intrinsics.checkNotNullExpressionValue(uriBuild, "build(...)");
        return uriBuild;
    }

    private final OutcomeReceiver<Object, Exception> a() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        this.a.a(new C5(D5.REGISTER_TRIGGER_FAIL, new JSONObject().put("reason", str)));
    }

    private final String b() {
        String str;
        ConcurrentHashMap<String, List<String>> concurrentHashMapC = C3845ta.b().c();
        List<String> list = concurrentHashMapC != null ? concurrentHashMapC.get(com.ironsource.mediationsdk.metadata.a.b) : null;
        return (list == null || (str = (String) CollectionsKt.first((List) list)) == null) ? "" : str;
    }

    private final boolean b(Context context) {
        return IronSourceUtils.c(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c() {
        this.a.a(new C5(D5.REGISTER_TRIGGER_SUCCESS, (JSONObject) null));
    }

    private final void d() {
        this.a.a(new C5(D5.REGISTER_TRIGGER, (JSONObject) null));
    }

    public final void c(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        d();
        try {
            MeasurementManager measurementManagerA = C3686l0.a(context);
            if (measurementManagerA == null) {
                a("could not obtain measurement manager");
            } else {
                measurementManagerA.registerTrigger(a(context), this.d, a());
            }
        } catch (Exception e) {
            a(e.getMessage());
            C3801r4.d().a(e);
        }
    }
}
