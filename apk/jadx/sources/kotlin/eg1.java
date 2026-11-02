package kotlin;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.NonCancellable;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class eg1 extends yy0 {
    public final if1 F;
    public final OnAdInspectorClosedListener G;
    public final f0 H;
    public final r31 I;
    public int J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eg1(if1 inspectorManager, r31 webView, OnAdInspectorClosedListener listener, f0 activityTracker, Context applicationContext, CoroutineScope uiScope, CoroutineContext uiContext, CoroutineScope backgroundScope, CoroutineContext backgroundContext, ex0 flags, ur3 traceLogger, String afmaVersion, o21 gmaUtil, lo backButtonStateDelegate) {
        super(applicationContext, uiScope, uiContext, backgroundScope, backgroundContext, flags, traceLogger, afmaVersion, gmaUtil, backButtonStateDelegate);
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(backButtonStateDelegate, "backButtonStateDelegate");
        this.F = inspectorManager;
        this.G = listener;
        this.H = activityTracker;
        this.I = webView;
        this.J = -1;
        a(webView);
        n();
    }

    @Override // kotlin.yy0, kotlin.h0
    public final Object a(FullScreenContentError fullScreenContentError, Continuation continuation) {
        m21 m21Var = o21.f;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(continuation.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new ag1(this, null), 3, null);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.yy0
    public final void a(int i) {
        this.J = i;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.yy0
    public final Object b(Continuation continuation) {
        zf1 zf1Var;
        eg1 eg1Var;
        if (continuation instanceof zf1) {
            zf1Var = (zf1) continuation;
            int i = zf1Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                zf1Var.d = i - Integer.MIN_VALUE;
            } else {
                zf1Var = new zf1(this, continuation);
            }
        } else {
            zf1Var = new zf1(this, continuation);
        }
        Object obj = zf1Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zf1Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            zf1Var.a = this;
            zf1Var.d = 1;
            j().p = null;
            if (p005kotlin.Unit.INSTANCE == coroutine_suspended) {
                return coroutine_suspended;
            }
            eg1Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            eg1Var = zf1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        if (!eg1Var.m.get()) {
            return p005kotlin.Unit.INSTANCE;
        }
        m21 m21Var = o21.f;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(zf1Var.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new yf1(eg1Var, null), 3, null);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.yy0
    public final Object e(Continuation continuation) {
        m21 m21Var = o21.f;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(continuation.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new bg1(this, null), 3, null);
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0068, code lost:
    
        if (r2.a(r6, r0) == r1) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(p005kotlin.coroutines.Continuation r6) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r6 instanceof kotlin.cg1
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.cg1 r0 = (kotlin.cg1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.cg1 r0 = new ads_mobile_sdk.cg1
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
            goto L6b
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            com.google.gson.Gson r2 = r0.b
            ads_mobile_sdk.eg1 r4 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r6)
            goto L54
        L3c:
            p005kotlin.ResultKt.throwOnFailure(r6)
            com.google.gson.Gson r2 = new com.google.gson.Gson
            r2.<init>()
            ads_mobile_sdk.if1 r6 = r5.F
            r0.a = r5
            r0.b = r2
            r0.e = r4
            java.lang.Object r6 = r6.y(r0)
            if (r6 != r1) goto L53
            goto L6a
        L53:
            r4 = r5
        L54:
            java.lang.String r6 = r2.toJson(r6)
            ads_mobile_sdk.r31 r2 = r4.I
            p005kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            r4 = 0
            r0.a = r4
            r0.b = r4
            r0.e = r3
            java.lang.Object r6 = r2.a(r6, r0)
            if (r6 != r1) goto L6b
        L6a:
            return r1
        L6b:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.eg1.f(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(Continuation continuation) {
        dg1 dg1Var;
        eg1 eg1Var;
        if (continuation instanceof dg1) {
            dg1Var = (dg1) continuation;
            int i = dg1Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                dg1Var.d = i - Integer.MIN_VALUE;
            } else {
                dg1Var = new dg1(this, continuation);
            }
        } else {
            dg1Var = new dg1(this, continuation);
        }
        Object obj = dg1Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = dg1Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            dg1Var.a = this;
            dg1Var.d = 1;
            if (f(dg1Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            eg1Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            eg1Var = dg1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        Context contextG = eg1Var.H.g();
        if (contextG == null) {
            contextG = eg1Var.a;
        }
        return Boxing.boxBoolean(eg1Var.a(contextG));
    }

    @Override // kotlin.yy0
    public final r31 j() {
        return this.I;
    }

    @Override // kotlin.yy0
    public final int l() {
        return this.J;
    }
}
