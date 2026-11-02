package kotlin;

import android.content.Context;
import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.google.common.base.Splitter;
import com.ironsource.C3510b4;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.ArraysKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ju0 extends yx0 implements zx0 {
    public final rb P;
    public final v3 Q;
    public final g83 R;
    public final ks3 S;
    public final vn T;
    public final AtomicBoolean U;

    /* JADX WARN: Illegal instructions before constructor call */
    public ju0(Context applicationContext, CoroutineScope uiScope, CoroutineContext uiContext, CoroutineScope backgroundScope, CoroutineContext backgroundContext, ex0 flags, ur3 traceLogger, rb adSpamClient, String afmaVersion, v3 adEventEmitter, c1 adActivityLifecycleEventEmitter, h41 fullscreenWebViewContainer, g83 rootTraceCreator, ks3 traceMetaSet, j53 requestType, zy commonConfiguration, i2 adConfiguration, df2 omidMonitor, o21 gmaUtil, j1 backButtonStateDelegate, vn appStatsTracker) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(adSpamClient, "adSpamClient");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(adActivityLifecycleEventEmitter, "adActivityLifecycleEventEmitter");
        Intrinsics.checkNotNullParameter(fullscreenWebViewContainer, "fullscreenWebViewContainer");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(omidMonitor, "omidMonitor");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(backButtonStateDelegate, "backButtonStateDelegate");
        Intrinsics.checkNotNullParameter(appStatsTracker, "appStatsTracker");
        Optional optionalOf = Optional.of(adActivityLifecycleEventEmitter);
        Intrinsics.checkNotNullExpressionValue(optionalOf, "of(...)");
        super(applicationContext, uiScope, uiContext, backgroundScope, backgroundContext, flags, traceLogger, afmaVersion, requestType, commonConfiguration, adConfiguration, omidMonitor, gmaUtil, backButtonStateDelegate, optionalOf);
        this.P = adSpamClient;
        this.Q = adEventEmitter;
        this.R = rootTraceCreator;
        this.S = traceMetaSet;
        this.T = appStatsTracker;
        a((View) fullscreenWebViewContainer);
        a(fullscreenWebViewContainer);
        this.U = new AtomicBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
    
        if (r6.p(r0) == r1) goto L22;
     */
    @Override // kotlin.yx0, kotlin.yy0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(android.view.View r6, p005kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlin.iu0
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.iu0 r0 = (kotlin.iu0) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.iu0 r0 = new ads_mobile_sdk.iu0
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L57
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            ads_mobile_sdk.ju0 r6 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L49
        L3a:
            p005kotlin.ResultKt.throwOnFailure(r7)
            r0.a = r5
            r0.d = r4
            java.lang.Object r6 = super.a(r6, r0)
            if (r6 != r1) goto L48
            goto L56
        L48:
            r6 = r5
        L49:
            ads_mobile_sdk.v3 r6 = r6.Q
            r7 = 0
            r0.a = r7
            r0.d = r3
            java.lang.Object r6 = r6.p(r0)
            if (r6 != r1) goto L57
        L56:
            return r1
        L57:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ju0.a(android.view.View, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.yy0, kotlin.h0
    public final Object a(FullScreenContentError fullScreenContentError, Continuation continuation) {
        Object objA = this.Q.a(fullScreenContentError, continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.zx0
    public final void a(Context context, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(context, "context");
        g83 g83Var = this.R;
        s11 s11Var = s11.CUI_NAME_ADSHOW;
        List listListOf = CollectionsKt.listOf(this.F.toString());
        ks3 ks3Var = this.S;
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listListOf, ks3Var);
            try {
                rb rbVar = this.P;
                StackTraceElement[] stackTrace = new Exception().getStackTrace();
                Intrinsics.checkNotNullExpressionValue(stackTrace, "getStackTrace(...)");
                rbVar.b(ArraysKt.toList(stackTrace));
                if (!q()) {
                    CloseableKt.closeFinally(tu2VarA, null);
                    return;
                }
                ex0 ex0Var = this.e;
                ex0Var.getClass();
                Intrinsics.checkNotNullParameter("gads:default_to_immersive:enabled", C3510b4.i.W);
                Boolean bool = Boolean.TRUE;
                ir irVar = yr.b;
                if (((Boolean) ex0Var.a("gads:default_to_immersive:enabled", bool, irVar)).booleanValue()) {
                    ex0 ex0Var2 = this.e;
                    ex0Var2.getClass();
                    Intrinsics.checkNotNullParameter("gads:override_pub_immersive_setting:enabled", C3510b4.i.W);
                    if (((Boolean) ex0Var2.a("gads:override_pub_immersive_setting:enabled", bool, irVar)).booleanValue() || !z2) {
                        this.v = true;
                    } else {
                        this.v = z;
                    }
                } else {
                    this.v = z;
                }
                a(context);
                Object obj = p005kotlin.Unit.INSTANCE;
                if (obj instanceof i01) {
                    xs3.a((i01) obj, false);
                }
                CloseableKt.closeFinally(tu2VarA, null);
                return;
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
                    if (!(th instanceof w01)) {
                        throw new b01(th);
                    }
                    throw th;
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.closeFinally(tu2VarA, th2);
                        throw th3;
                    }
                }
            }
        }
        rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
        try {
            rb rbVar2 = this.P;
            StackTraceElement[] stackTrace2 = new Exception().getStackTrace();
            Intrinsics.checkNotNullExpressionValue(stackTrace2, "getStackTrace(...)");
            rbVar2.b(ArraysKt.toList(stackTrace2));
            if (!q()) {
                CloseableKt.closeFinally(rr3VarA, null);
                return;
            }
            ex0 ex0Var3 = this.e;
            ex0Var3.getClass();
            Intrinsics.checkNotNullParameter("gads:default_to_immersive:enabled", C3510b4.i.W);
            Boolean bool2 = Boolean.TRUE;
            ir irVar2 = yr.b;
            if (((Boolean) ex0Var3.a("gads:default_to_immersive:enabled", bool2, irVar2)).booleanValue()) {
                ex0 ex0Var4 = this.e;
                ex0Var4.getClass();
                Intrinsics.checkNotNullParameter("gads:override_pub_immersive_setting:enabled", C3510b4.i.W);
                if (((Boolean) ex0Var4.a("gads:override_pub_immersive_setting:enabled", bool2, irVar2)).booleanValue() || !z2) {
                    this.v = true;
                } else {
                    this.v = z;
                }
            } else {
                this.v = z;
            }
            a(context);
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
                if (!(th4 instanceof w01)) {
                    throw new b01(th4);
                }
                throw th4;
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

    /* JADX WARN: Code duplicated, block: B:27:0x007e A[PHI: r2
  0x007e: PHI (r2v3 ads_mobile_sdk.ju0) = (r2v2 ads_mobile_sdk.ju0), (r2v2 ads_mobile_sdk.ju0), (r2v5 ads_mobile_sdk.ju0) binds: [B:23:0x0071, B:25:0x007b, B:16:0x0038] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0088, code lost:
    
        if (r10.a(r0) == r1) goto L29;
     */
    @Override // kotlin.yy0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(p005kotlin.coroutines.Continuation r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof kotlin.hu0
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.hu0 r0 = (kotlin.hu0) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.hu0 r0 = new ads_mobile_sdk.hu0
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.b
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 0
            r4 = 3
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L44
            if (r2 == r6) goto L3e
            if (r2 == r5) goto L38
            if (r2 != r4) goto L30
            p005kotlin.ResultKt.throwOnFailure(r10)
            goto L8b
        L30:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L38:
            ads_mobile_sdk.ju0 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r10)
            goto L7e
        L3e:
            ads_mobile_sdk.ju0 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r10)
            goto L57
        L44:
            p005kotlin.ResultKt.throwOnFailure(r10)
            r0.a = r9
            r0.d = r6
            ads_mobile_sdk.r31 r10 = r9.j()
            r10.p = r3
            kotlin.Unit r10 = p005kotlin.Unit.INSTANCE
            if (r10 != r1) goto L56
            goto L8a
        L56:
            r2 = r9
        L57:
            ads_mobile_sdk.ex0 r10 = r2.e
            r10.getClass()
            java.lang.String r6 = "key"
            java.lang.String r7 = "gad:interstitial_notify_publisher_without_delay"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r6)
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            ads_mobile_sdk.ir r8 = kotlin.yr.b
            java.lang.Object r10 = r10.a(r7, r6, r8)
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 != 0) goto L7e
            r0.a = r2
            r0.d = r5
            kotlin.Unit r10 = r2.d(r0)
            if (r10 != r1) goto L7e
            goto L8a
        L7e:
            ads_mobile_sdk.v3 r10 = r2.Q
            r0.a = r3
            r0.d = r4
            java.lang.Object r10 = r10.a(r0)
            if (r10 != r1) goto L8b
        L8a:
            return r1
        L8b:
            kotlin.Unit r10 = p005kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ju0.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.yy0
    public final p005kotlin.Unit d(Continuation continuation) {
        Object objH;
        if (this.m.get() && (objH = this.Q.h(continuation)) == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return (p005kotlin.Unit) objH;
        }
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.yy0
    public final Object e(Continuation continuation) {
        Object objA = a(new FullScreenContentError(FullScreenContentError.ErrorCode.INTERNAL_ERROR, "There was an internal error when attempting to show fullscreen content.", null), continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    public final boolean q() {
        int i;
        if (s.a(this.a)) {
            Splitter splitter = f01.a;
            f01.a("Fullscreen ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://goo.gle/admob-interstitial-policies", (Throwable) null);
            xs3.a(this.d, new eu0(this, null));
            xs3.a("Application process is in background", null, 6);
            return false;
        }
        i2 i2Var = this.G;
        if (i2Var.H0) {
            int i2 = i2Var.I0;
            vn vnVar = this.T;
            synchronized (vnVar.c) {
                i = vnVar.e;
            }
            if (i2 != i) {
                Splitter splitter2 = f01.a;
                f01.c("The consent form has already been shown.", null);
                xs3.a(this.d, new fu0(this, null));
                xs3.a("The consent form has already been shown.", null, 6);
                return false;
            }
        }
        if (!this.U.getAndSet(true)) {
            return true;
        }
        Splitter splitter3 = f01.a;
        f01.a("This ad has already been shown.", (Throwable) null);
        xs3.a(this.d, new gu0(this, null));
        xs3.a("The ad has already been shown", null, 6);
        return false;
    }
}
