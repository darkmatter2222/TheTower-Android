package kotlin;

import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsSession;
import com.google.android.libraries.ads.mobile.sdk.signal.Signal;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import java.util.List;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class uc0 extends CustomTabsCallback {
    public final CoroutineScope a;
    public final tx b;
    public final ex0 c;
    public final xe3 d;
    public final Object e;
    public boolean f;
    public Job g;
    public long h;
    public long i;
    public String j;
    public CustomTabsSession k;
    public CustomTabsCallback l;
    public final JsonArray m;
    public final List n;

    public uc0(CoroutineScope backgroundScope, tx clock, ex0 flags, xe3 signalCache) {
        JsonArray jsonArray;
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(signalCache, "signalCache");
        this.a = backgroundScope;
        this.b = clock;
        this.c = flags;
        this.d = signalCache;
        this.e = new Object();
        Duration.Companion companion = Duration.INSTANCE;
        this.h = companion.m4458getZEROUwyO8pc();
        this.i = companion.m4458getZEROUwyO8pc();
        ds1 ds1Var = ds1.a;
        try {
            jsonArray = (JsonArray) new Gson().fromJson(flags.l0(), JsonArray.class);
        } catch (Exception e) {
            xs3.a(e);
            jsonArray = null;
        }
        this.m = jsonArray == null ? new JsonArray() : jsonArray;
        this.n = this.c.A();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(uc0 uc0Var, String str, Continuation continuation) {
        qc0 qc0Var;
        uc0Var.getClass();
        if (continuation instanceof qc0) {
            qc0Var = (qc0) continuation;
            int i = qc0Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                qc0Var.e = i - Integer.MIN_VALUE;
            } else {
                qc0Var = new qc0(uc0Var, continuation);
            }
        } else {
            qc0Var = new qc0(uc0Var, continuation);
        }
        Object objB = qc0Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = qc0Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objB);
            xe3 xe3Var = uc0Var.d;
            qc0Var.a = uc0Var;
            qc0Var.b = str;
            qc0Var.e = 1;
            xe3Var.getClass();
            objB = xe3.b(xe3Var, false, qc0Var);
            if (objB == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = qc0Var.b;
            uc0Var = qc0Var.a;
            p005kotlin.ResultKt.throwOnFailure(objB);
        }
        v01 v01Var = (v01) objB;
        if (v01Var instanceof q01) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.add("eids", uc0Var.m);
            jsonObject.addProperty("paw_id", str);
            jsonObject.addProperty("sdk_ttl_ms", Boxing.boxLong(uc0Var.c.E0() ? Duration.m4378getInWholeMillisecondsimpl(uc0Var.c.F0()) : 0L));
            jsonObject.addProperty("signal", ((Signal) ((q01) v01Var).b).getSignalString());
            synchronized (uc0Var.e) {
                CustomTabsSession customTabsSession = uc0Var.k;
                if (customTabsSession == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("session");
                    customTabsSession = null;
                }
                customTabsSession.postMessage(jsonObject.toString(), null);
            }
        } else if (v01Var instanceof i01) {
            JsonObject jsonObject2 = new JsonObject();
            jsonObject2.add("eids", uc0Var.m);
            jsonObject2.addProperty("paw_id", str);
            jsonObject2.addProperty("sdk_ttl_ms", Boxing.boxLong(uc0Var.c.E0() ? Duration.m4378getInWholeMillisecondsimpl(uc0Var.c.F0()) : 0L));
            jsonObject2.addProperty("error", v01Var.toString());
            synchronized (uc0Var.e) {
                CustomTabsSession customTabsSession2 = uc0Var.k;
                if (customTabsSession2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("session");
                    customTabsSession2 = null;
                }
                customTabsSession2.postMessage(jsonObject2.toString(), null);
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(uc0 uc0Var, Continuation continuation) {
        oc0 oc0Var;
        uc0Var.getClass();
        if (continuation instanceof oc0) {
            oc0Var = (oc0) continuation;
            int i = oc0Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                oc0Var.d = i - Integer.MIN_VALUE;
            } else {
                oc0Var = new oc0(uc0Var, continuation);
            }
        } else {
            oc0Var = new oc0(uc0Var, continuation);
        }
        Object obj = oc0Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = oc0Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            synchronized (uc0Var.e) {
                if (!uc0Var.f) {
                    Duration.Companion companion = Duration.INSTANCE;
                    uc0Var.b.getClass();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    DurationUnit durationUnit = DurationUnit.MILLISECONDS;
                    if (Duration.m4366compareToLRDsOJo(DurationKt.toDuration(jCurrentTimeMillis, durationUnit), uc0Var.i) <= 0) {
                        CustomTabsSession customTabsSession = uc0Var.k;
                        if (customTabsSession == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("session");
                            customTabsSession = null;
                        }
                        String str = uc0Var.j;
                        if (str == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("origin");
                            str = null;
                        }
                        customTabsSession.requestPostMessageChannel(Uri.parse(str));
                        ex0 ex0Var = uc0Var.c;
                        ex0Var.getClass();
                        long duration = DurationKt.toDuration(100, durationUnit);
                        Intrinsics.checkNotNullParameter("gads:pact_polling_interval_ms", C3510b4.i.W);
                        long rawValue = ((Duration) ex0Var.a("gads:pact_polling_interval_ms", Duration.m4365boximpl(duration), yr.j)).getRawValue();
                        oc0Var.a = uc0Var;
                        oc0Var.d = 1;
                        if (DelayKt.m4512delayVtjQ1oo(rawValue, oc0Var) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                }
                return p005kotlin.Unit.INSTANCE;
            }
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        uc0Var = oc0Var.a;
        p005kotlin.ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = uc0Var.a;
        pc0 block = new pc0(uc0Var, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return p005kotlin.Unit.INSTANCE;
    }

    public final void a(String str) {
        synchronized (this.e) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.add("eids", this.m);
            jsonObject.addProperty("gsppack", Boolean.TRUE);
            jsonObject.addProperty("fpt", String.valueOf(Duration.m4378getInWholeMillisecondsimpl(this.h)));
            CustomTabsSession customTabsSession = this.k;
            if (customTabsSession == null) {
                Intrinsics.throwUninitializedPropertyAccessException("session");
                customTabsSession = null;
            }
            customTabsSession.postMessage(jsonObject.toString(), null);
            CoroutineScope coroutineScope = this.a;
            tc0 block = new tc0(this, str, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void extraCallback(String callbackName, Bundle bundle) {
        CustomTabsCallback customTabsCallback;
        Intrinsics.checkNotNullParameter(callbackName, "callbackName");
        synchronized (this.e) {
            customTabsCallback = this.l;
        }
        if (customTabsCallback != null) {
            customTabsCallback.extraCallback(callbackName, bundle);
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final Bundle extraCallbackWithResult(String callbackName, Bundle bundle) {
        CustomTabsCallback customTabsCallback;
        Intrinsics.checkNotNullParameter(callbackName, "callbackName");
        synchronized (this.e) {
            customTabsCallback = this.l;
        }
        if (customTabsCallback != null) {
            return customTabsCallback.extraCallbackWithResult(callbackName, bundle);
        }
        return null;
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onActivityResized(int i, int i2, Bundle extras) {
        CustomTabsCallback customTabsCallback;
        Intrinsics.checkNotNullParameter(extras, "extras");
        try {
            synchronized (this.e) {
                customTabsCallback = this.l;
            }
            if (customTabsCallback != null) {
                customTabsCallback.onActivityResized(i, i2, extras);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onMessageChannelReady(Bundle bundle) {
        synchronized (this.e) {
            this.f = false;
            CustomTabsCallback customTabsCallback = this.l;
            if (customTabsCallback != null) {
                customTabsCallback.onMessageChannelReady(bundle);
            }
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onNavigationEvent(int i, Bundle bundle) {
        long rawValue;
        synchronized (this.e) {
            this.f = false;
            CustomTabsCallback customTabsCallback = this.l;
            if (customTabsCallback != null) {
                customTabsCallback.onNavigationEvent(i, bundle);
            }
            Duration.Companion companion = Duration.INSTANCE;
            this.b.getClass();
            this.h = DurationKt.toDuration(System.currentTimeMillis(), DurationUnit.MILLISECONDS);
            if (this.n.contains(String.valueOf(i))) {
                long j = this.h;
                ex0 ex0Var = this.c;
                ex0Var.getClass();
                Intrinsics.checkNotNullParameter("gads:pact_polling_forever:enabled", C3510b4.i.W);
                if (((Boolean) ex0Var.a("gads:pact_polling_forever:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                    rawValue = companion.m4456getINFINITEUwyO8pc();
                } else {
                    ex0 ex0Var2 = this.c;
                    ex0Var2.getClass();
                    long duration = DurationKt.toDuration(60, DurationUnit.SECONDS);
                    Intrinsics.checkNotNullParameter("gads:pact_polling_duration_ms", C3510b4.i.W);
                    rawValue = ((Duration) ex0Var2.a("gads:pact_polling_duration_ms", Duration.m4365boximpl(duration), yr.j)).getRawValue();
                }
                this.i = Duration.m4396plusLRDsOJo(j, rawValue);
                Job job = this.g;
                if (job == null || job.isCompleted()) {
                    CoroutineScope coroutineScope = this.a;
                    rc0 block = new rc0(this, null);
                    EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                    Intrinsics.checkNotNullParameter(context, "context");
                    Intrinsics.checkNotNullParameter(block, "block");
                    this.g = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                }
            }
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onPostMessage(String message, Bundle bundle) {
        JsonObject jsonObject;
        CustomTabsCallback customTabsCallback;
        Intrinsics.checkNotNullParameter(message, "message");
        ds1 ds1Var = ds1.a;
        try {
            jsonObject = (JsonObject) new Gson().fromJson(message, JsonObject.class);
        } catch (Exception e) {
            List list = a2.a(e, "t", e).s;
            String message2 = e.getMessage();
            if (message2 == null) {
                message2 = e.getClass().getName();
            }
            Intrinsics.checkNotNull(message2);
            list.add(message2);
            jsonObject = null;
        }
        if (jsonObject != null) {
            ds1 ds1Var2 = ds1.a;
            if (ds1.a(jsonObject, "gpa", -1) == 0) {
                synchronized (this.e) {
                    this.f = true;
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                }
                a(ds1.a(jsonObject, "paw_id", ""));
            }
        }
        synchronized (this.e) {
            customTabsCallback = this.l;
        }
        if (customTabsCallback != null) {
            customTabsCallback.onPostMessage(message, bundle);
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onRelationshipValidationResult(int i, Uri requestedOrigin, boolean z, Bundle bundle) {
        CustomTabsCallback customTabsCallback;
        Intrinsics.checkNotNullParameter(requestedOrigin, "requestedOrigin");
        synchronized (this.e) {
            customTabsCallback = this.l;
        }
        if (customTabsCallback != null) {
            customTabsCallback.onRelationshipValidationResult(i, requestedOrigin, z, bundle);
        }
    }
}
