package kotlin;

import android.content.Context;
import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import java.util.Optional;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class ez0 extends yx0 {
    public final f0 P;
    public final v3 Q;
    public boolean R;
    public boolean S;

    /* JADX WARN: Illegal instructions before constructor call */
    public ez0(Context applicationContext, CoroutineScope uiScope, CoroutineContext uiContext, CoroutineScope backgroundScope, CoroutineContext backgroundContext, ex0 flags, ur3 traceLogger, String afmaVersion, j53 requestType, zy commonConfiguration, i2 adConfiguration, f0 activityTracker, v3 adEventEmitter, df2 omidMonitor, o21 gmaUtil, j1 backButtonStateDelegate) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(omidMonitor, "omidMonitor");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(backButtonStateDelegate, "backButtonStateDelegate");
        Optional optionalEmpty = Optional.empty();
        Intrinsics.checkNotNullExpressionValue(optionalEmpty, "empty(...)");
        super(applicationContext, uiScope, uiContext, backgroundScope, backgroundContext, flags, traceLogger, afmaVersion, requestType, commonConfiguration, adConfiguration, omidMonitor, gmaUtil, backButtonStateDelegate, optionalEmpty);
        this.P = activityTracker;
        this.Q = adEventEmitter;
        this.R = true;
        this.S = true;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0062 A[PHI: r6
  0x0062: PHI (r6v2 ads_mobile_sdk.ez0) = (r6v1 ads_mobile_sdk.ez0), (r6v1 ads_mobile_sdk.ez0), (r6v8 ads_mobile_sdk.ez0) binds: [B:22:0x0053, B:24:0x005f, B:16:0x0037] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:28:0x0066  */
    /* JADX WARN: Code duplicated, block: B:33:0x0077  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0071, code lost:
    
        if (r6.p(r0) == r1) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object a(kotlin.ez0 r6, android.view.View r7, p005kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof kotlin.dz0
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.dz0 r0 = (kotlin.dz0) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.dz0 r0 = new ads_mobile_sdk.dz0
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.b
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L43
            if (r2 == r5) goto L3d
            if (r2 == r4) goto L37
            if (r2 != r3) goto L2f
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L74
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            ads_mobile_sdk.ez0 r6 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L62
        L3d:
            ads_mobile_sdk.ez0 r6 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L51
        L43:
            p005kotlin.ResultKt.throwOnFailure(r8)
            r0.a = r6
            r0.d = r5
            java.lang.Object r7 = super.a(r7, r0)
            if (r7 != r1) goto L51
            goto L73
        L51:
            boolean r7 = r6.R
            if (r7 == 0) goto L62
            ads_mobile_sdk.v3 r7 = r6.Q
            r0.a = r6
            r0.d = r4
            java.lang.Object r7 = r7.o(r0)
            if (r7 != r1) goto L62
            goto L73
        L62:
            boolean r7 = r6.S
            if (r7 == 0) goto L77
            ads_mobile_sdk.v3 r6 = r6.Q
            r7 = 0
            r0.a = r7
            r0.d = r3
            java.lang.Object r6 = r6.p(r0)
            if (r6 != r1) goto L74
        L73:
            return r1
        L74:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        L77:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ez0.a(ads_mobile_sdk.ez0, android.view.View, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0071, code lost:
    
        if (r7.d(r0) == r1) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(kotlin.ez0 r7, p005kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof kotlin.zy0
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.zy0 r0 = (kotlin.zy0) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.zy0 r0 = new ads_mobile_sdk.zy0
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.b
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L3b
            if (r2 == r5) goto L35
            if (r2 != r3) goto L2d
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L74
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            ads_mobile_sdk.ez0 r7 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L4d
        L3b:
            p005kotlin.ResultKt.throwOnFailure(r8)
            r0.a = r7
            r0.d = r5
            ads_mobile_sdk.r31 r8 = r7.j()
            r8.p = r4
            kotlin.Unit r8 = p005kotlin.Unit.INSTANCE
            if (r8 != r1) goto L4d
            goto L73
        L4d:
            ads_mobile_sdk.ex0 r8 = r7.e
            r8.getClass()
            java.lang.String r2 = "key"
            java.lang.String r5 = "gad:interstitial_notify_publisher_without_delay"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r2)
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
            ads_mobile_sdk.ir r6 = kotlin.yr.b
            java.lang.Object r8 = r8.a(r5, r2, r6)
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L77
            r0.a = r4
            r0.d = r3
            kotlin.Unit r7 = r7.d(r0)
            if (r7 != r1) goto L74
        L73:
            return r1
        L74:
            kotlin.Unit r7 = p005kotlin.Unit.INSTANCE
            return r7
        L77:
            kotlin.Unit r7 = p005kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ez0.a(ads_mobile_sdk.ez0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object b(ez0 ez0Var, Continuation continuation) throws Throwable {
        az0 az0Var;
        if (continuation instanceof az0) {
            az0Var = (az0) continuation;
            int i = az0Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                az0Var.d = i - Integer.MIN_VALUE;
            } else {
                az0Var = new az0(ez0Var, continuation);
            }
        } else {
            az0Var = new az0(ez0Var, continuation);
        }
        Object objA = az0Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = az0Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            az0Var.a = ez0Var;
            az0Var.d = 1;
            ez0Var.getClass();
            objA = yy0.a(ez0Var, az0Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ez0Var = az0Var.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        if (!((Boolean) objA).booleanValue()) {
            return Boxing.boxBoolean(false);
        }
        CoroutineScope coroutineScope = ez0Var.d;
        bz0 block = new bz0(ez0Var, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return Boxing.boxBoolean(true);
    }

    @Override // kotlin.yx0, kotlin.yy0
    public Object a(View view, Continuation continuation) {
        return a(this, view, continuation);
    }

    @Override // kotlin.yy0, kotlin.h0
    public Object a(FullScreenContentError fullScreenContentError, Continuation continuation) {
        Object objA;
        return (this.S && (objA = this.Q.a(fullScreenContentError, continuation)) == IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? objA : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.yy0
    public Object b(Continuation continuation) {
        return a(this, continuation);
    }

    @Override // kotlin.yy0
    public final p005kotlin.Unit d(Continuation continuation) {
        if (this.S && this.m.get()) {
            CoroutineScope coroutineScope = this.d;
            cz0 block = new cz0(this, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.yy0
    public final Object e(Continuation continuation) {
        Object objA = a(new FullScreenContentError(FullScreenContentError.ErrorCode.INTERNAL_ERROR, "There was an internal error when attempting to show fullscreen content.", null), continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.yy0, kotlin.h0
    public final void onStop() {
        o();
    }
}
