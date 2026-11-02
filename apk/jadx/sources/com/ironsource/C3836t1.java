package com.ironsource;

import android.adservices.measurement.MeasurementManager;
import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.view.MotionEvent;
import com.ironsource.sdk.utils.Logger;
import java.util.concurrent.Executors;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.SafeContinuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.DebugProbesKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.t1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3836t1 {
    public static final b a;
    private static final String b;

    /* JADX INFO: renamed from: com.ironsource.t1$a */
    public static final class a {
        private final String a;
        private final C3843t8.e b;
        private final String c;
        private final JSONObject d;

        public a(String name, C3843t8.e productType, String demandSourceName, JSONObject params) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(productType, "productType");
            Intrinsics.checkNotNullParameter(demandSourceName, "demandSourceName");
            Intrinsics.checkNotNullParameter(params, "params");
            this.a = name;
            this.b = productType;
            this.c = demandSourceName;
            this.d = params;
        }

        public static /* synthetic */ a a(a aVar, String str, C3843t8.e eVar, String str2, JSONObject jSONObject, int i, Object obj) {
            if ((i & 1) != 0) {
                str = aVar.a;
            }
            if ((i & 2) != 0) {
                eVar = aVar.b;
            }
            if ((i & 4) != 0) {
                str2 = aVar.c;
            }
            if ((i & 8) != 0) {
                jSONObject = aVar.d;
            }
            return aVar.a(str, eVar, str2, jSONObject);
        }

        public final a a(String name, C3843t8.e productType, String demandSourceName, JSONObject params) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(productType, "productType");
            Intrinsics.checkNotNullParameter(demandSourceName, "demandSourceName");
            Intrinsics.checkNotNullParameter(params, "params");
            return new a(name, productType, demandSourceName, params);
        }

        public final String a() {
            return this.a;
        }

        public final C3843t8.e b() {
            return this.b;
        }

        public final String c() {
            return this.c;
        }

        public final JSONObject d() {
            return this.d;
        }

        public final String e() {
            return this.c;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            a aVar = (a) obj;
            return Intrinsics.areEqual(this.a, aVar.a) && this.b == aVar.b && Intrinsics.areEqual(this.c, aVar.c) && Intrinsics.areEqual(this.d.toString(), aVar.d.toString());
        }

        public final String f() {
            return this.a;
        }

        public final JSONObject g() {
            return this.d;
        }

        public final C3843t8.e h() {
            return this.b;
        }

        public int hashCode() {
            return super.hashCode();
        }

        public final JSONObject i() throws JSONException {
            JSONObject jSONObjectPut = new JSONObject(this.d.toString()).put(C3510b4.i.m, this.b).put("demandSourceName", this.c);
            Intrinsics.checkNotNullExpressionValue(jSONObjectPut, "put(...)");
            return jSONObjectPut;
        }

        public String toString() {
            return "CallbackResult(name=" + this.a + ", productType=" + this.b + ", demandSourceName=" + this.c + ", params=" + this.d + ")";
        }
    }

    /* JADX INFO: renamed from: com.ironsource.t1$b */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.ironsource.t1$c */
    @DebugMetadata(c = "com.ironsource.sdk.controller.androidSandbox.AndroidSandboxJSHandler$handleAttributionClick$1", f = "AndroidSandboxJSHandler.kt", i = {}, l = {80}, m = "invokeSuspend", n = {}, s = {})
    static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int a;
        final /* synthetic */ MeasurementManager c;
        final /* synthetic */ Uri d;
        final /* synthetic */ MotionEvent e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(MeasurementManager measurementManager, Uri uri, MotionEvent motionEvent, Continuation<? super c> continuation) {
            super(2, continuation);
            this.c = measurementManager;
            this.d = uri;
            this.e = motionEvent;
        }

        @Override // p005kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return C3836t1.this.new c(this.c, this.d, this.e, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                C3836t1 c3836t1 = C3836t1.this;
                MeasurementManager measurementManager = this.c;
                Uri uri = this.d;
                Intrinsics.checkNotNull(uri);
                MotionEvent motionEvent = this.e;
                this.a = 1;
                if (c3836t1.a(measurementManager, uri, motionEvent, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.ironsource.t1$d */
    @DebugMetadata(c = "com.ironsource.sdk.controller.androidSandbox.AndroidSandboxJSHandler$handleAttributionImpression$1", f = "AndroidSandboxJSHandler.kt", i = {}, l = {60}, m = "invokeSuspend", n = {}, s = {})
    static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int a;
        final /* synthetic */ MeasurementManager c;
        final /* synthetic */ Uri d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(MeasurementManager measurementManager, Uri uri, Continuation<? super d> continuation) {
            super(2, continuation);
            this.c = measurementManager;
            this.d = uri;
        }

        @Override // p005kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return C3836t1.this.new d(this.c, this.d, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                C3836t1 c3836t1 = C3836t1.this;
                MeasurementManager measurementManager = this.c;
                Uri uri = this.d;
                Intrinsics.checkNotNull(uri);
                this.a = 1;
                if (c3836t1.a(measurementManager, uri, null, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    static {
        b bVar = new b(null);
        a = bVar;
        String name = bVar.getClass().getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        b = name;
    }

    private final a a(Context context, InterfaceC3872v1.a aVar) {
        MeasurementManager measurementManagerA = C3686l0.a(context);
        if (measurementManagerA == null) {
            Logger.i(b, "could not obtain measurement manager");
            return a(aVar, "could not obtain measurement manager");
        }
        try {
            if (aVar instanceof InterfaceC3872v1.a.b) {
                return a(aVar, measurementManagerA);
            }
            if (aVar instanceof InterfaceC3872v1.a.C1129a) {
                return a((InterfaceC3872v1.a.C1129a) aVar, measurementManagerA);
            }
            throw new NoWhenBranchMatchedException();
        } catch (Exception e) {
            C3801r4.d().a(e);
            return a(aVar, "failed to handle attribution, message: " + e.getMessage());
        }
    }

    private final a a(InterfaceC3872v1.a.C1129a c1129a, MeasurementManager measurementManager) throws InterruptedException {
        Uri uri = Uri.parse(c1129a.b());
        long jUptimeMillis = SystemClock.uptimeMillis();
        BuildersKt__BuildersKt.runBlocking$default(null, new c(measurementManager, uri, MotionEvent.obtain(jUptimeMillis, jUptimeMillis, c1129a.n(), c1129a.o().c(), c1129a.o().d(), c1129a.p()), null), 1, null);
        return a(c1129a);
    }

    private final a a(InterfaceC3872v1.a aVar) throws JSONException {
        JSONObject jSONObjectPut = new JSONObject().put("params", new JSONObject().put("type", aVar instanceof InterfaceC3872v1.a.C1129a ? "click" : "impression"));
        String strA = aVar.a();
        C3843t8.e eVarD = aVar.d();
        String strE = aVar.e();
        Intrinsics.checkNotNull(jSONObjectPut);
        return new a(strA, eVarD, strE, jSONObjectPut);
    }

    private final a a(InterfaceC3872v1.a aVar, MeasurementManager measurementManager) throws InterruptedException {
        BuildersKt__BuildersKt.runBlocking$default(null, new d(measurementManager, Uri.parse(aVar.b()), null), 1, null);
        return a(aVar);
    }

    private final a a(InterfaceC3872v1 interfaceC3872v1, String str) throws JSONException {
        JSONObject jSONObjectPut = new JSONObject().put("reason", str).put("type", interfaceC3872v1 instanceof InterfaceC3872v1.a.C1129a ? "click" : "impression");
        String strC = interfaceC3872v1.c();
        C3843t8.e eVarD = interfaceC3872v1.d();
        String strE = interfaceC3872v1.e();
        JSONObject jSONObjectPut2 = new JSONObject().put("params", jSONObjectPut);
        Intrinsics.checkNotNullExpressionValue(jSONObjectPut2, "put(...)");
        return new a(strC, eVarD, strE, jSONObjectPut2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object a(MeasurementManager measurementManager, Uri uri, MotionEvent motionEvent, Continuation<? super Unit> continuation) throws Throwable {
        SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
        measurementManager.registerSource(uri, motionEvent, Executors.newSingleThreadExecutor(), C3854u1.a(safeContinuation));
        Object orThrow = safeContinuation.getOrThrow();
        if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? orThrow : Unit.INSTANCE;
    }

    public final a a(Context context, InterfaceC3872v1 message) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(message, "message");
        if (message instanceof InterfaceC3872v1.a) {
            return a(context, (InterfaceC3872v1.a) message);
        }
        throw new NoWhenBranchMatchedException();
    }
}
