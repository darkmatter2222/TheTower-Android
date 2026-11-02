package kotlin;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.SharedFlow;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public abstract class wy2 extends px2 {
    public static final /* synthetic */ KProperty[] C = {kk.a(wy2.class, "refreshCallback", "getRefreshCallback()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRefreshCallback;", 0)};
    public Job A;
    public ViewGroup B;
    public final Context n;
    public final CoroutineContext o;
    public final CoroutineContext p;
    public final cw2 q;
    public final e33 r;
    public final ao0 s;
    public final BannerAdRequest t;
    public final js1 u;
    public final tn3 v;
    public final AtomicBoolean w;
    public final AtomicBoolean x;
    public ei1 y;
    public o53 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wy2(Context applicationContext, CoroutineContext uiContext, CoroutineContext loadContext, CoroutineScope loadScope, CoroutineScope backgroundScope, dw2 componentProvider, e33 refreshHelper, ao0 displayUtil, BannerAdRequest bannerAdRequest, ks3 traceMetaSet, ex0 flags, g83 rootTraceCreator, String publisherRequestId, j53 requestType, ja1 initializationConfigWrapper, boolean z, md1 inspectorAdLifecycleMonitor, SharedFlow cancellationChannel, qn appState) {
        super(loadScope, backgroundScope, traceMetaSet, flags, rootTraceCreator, publisherRequestId, requestType, bannerAdRequest, z, initializationConfigWrapper, inspectorAdLifecycleMonitor, cancellationChannel, appState);
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(loadContext, "loadContext");
        Intrinsics.checkNotNullParameter(loadScope, "loadScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(componentProvider, "componentProvider");
        Intrinsics.checkNotNullParameter(refreshHelper, "refreshHelper");
        Intrinsics.checkNotNullParameter(displayUtil, "displayUtil");
        Intrinsics.checkNotNullParameter(bannerAdRequest, "bannerAdRequest");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(publisherRequestId, "publisherRequestId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(cancellationChannel, "cancellationChannel");
        Intrinsics.checkNotNullParameter(appState, "appState");
        this.n = applicationContext;
        this.o = uiContext;
        this.p = loadContext;
        this.q = componentProvider;
        this.r = refreshHelper;
        this.s = displayUtil;
        this.t = bannerAdRequest;
        this.u = new js1();
        this.v = new tn3(null);
        this.w = new AtomicBoolean(false);
        this.x = new AtomicBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b8, code lost:
    
        if (r9.a(r8, r10, r0) == r1) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(kotlin.wy2 r8, kotlin.ck1 r9, p005kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof kotlin.ky2
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.ky2 r0 = (kotlin.ky2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ky2 r0 = new ads_mobile_sdk.ky2
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L48
            if (r2 == r5) goto L40
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            p005kotlin.ResultKt.throwOnFailure(r10)
            goto Lbb
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            ads_mobile_sdk.wy2 r8 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r10)
            goto Lac
        L40:
            ads_mobile_sdk.ck1 r9 = r0.b
            ads_mobile_sdk.wy2 r8 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r10)
            goto L63
        L48:
            p005kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.Job r10 = r8.A
            if (r10 == 0) goto L50
            goto L56
        L50:
            java.lang.String r10 = "adFrameJob"
            p005kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r10)
            r10 = r6
        L56:
            r0.a = r8
            r0.b = r9
            r0.e = r5
            java.lang.Object r10 = r10.join(r0)
            if (r10 != r1) goto L63
            goto Lba
        L63:
            r8.y = r6
            java.util.concurrent.atomic.AtomicBoolean r10 = r8.w
            ads_mobile_sdk.ao0 r2 = r8.s
            ads_mobile_sdk.j53 r5 = r8.g
            ads_mobile_sdk.i2 r7 = r9.b()
            boolean r2 = r2.a(r5, r7)
            r10.set(r2)
            ads_mobile_sdk.js1 r10 = r8.u
            boolean r10 = r10.b()
            if (r10 == 0) goto L89
            ads_mobile_sdk.js1 r10 = r8.u
            java.lang.String r2 = "The backing field has not yet been initialized."
            java.lang.Object r10 = r10.a(r2)
            ads_mobile_sdk.ck1 r10 = (kotlin.ck1) r10
            goto L8a
        L89:
            r10 = r6
        L8a:
            ads_mobile_sdk.js1 r2 = r8.u
            r2.a(r9)
            r0.a = r8
            r0.b = r6
            r0.e = r4
            kotlin.coroutines.CoroutineContext r2 = r8.o
            ads_mobile_sdk.vy2 r4 = new ads_mobile_sdk.vy2
            r4.<init>(r10, r8, r9, r6)
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r2, r4, r0)
            java.lang.Object r10 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r9 != r10) goto La7
            goto La9
        La7:
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE
        La9:
            if (r9 != r1) goto Lac
            goto Lba
        Lac:
            ads_mobile_sdk.e33 r9 = r8.r
            kotlinx.coroutines.flow.SharedFlow r10 = r8.l
            r0.a = r6
            r0.e = r3
            java.lang.Object r8 = r9.a(r8, r10, r0)
            if (r8 != r1) goto Lbb
        Lba:
            return r1
        Lbb:
            kotlin.Unit r8 = p005kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.wy2.a(ads_mobile_sdk.wy2, ads_mobile_sdk.ck1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0058, code lost:
    
        if (r7 == r1) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlin.wy2 r6, p005kotlin.coroutines.Continuation r7) {
        /*
            r6.getClass()
            boolean r0 = r7 instanceof kotlin.jy2
            if (r0 == 0) goto L16
            r0 = r7
            ads_mobile_sdk.jy2 r0 = (kotlin.jy2) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.d = r1
            goto L1b
        L16:
            ads_mobile_sdk.jy2 r0 = new ads_mobile_sdk.jy2
            r0.<init>(r6, r7)
        L1b:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L40
            if (r2 == r5) goto L3a
            if (r2 != r4) goto L32
            ads_mobile_sdk.wy2 r6 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L89
            goto L5b
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            ads_mobile_sdk.wy2 r6 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L89
            goto L4e
        L40:
            p005kotlin.ResultKt.throwOnFailure(r7)
            r0.a = r6     // Catch: java.lang.Exception -> L89
            r0.d = r5     // Catch: java.lang.Exception -> L89
            java.lang.Object r7 = r6.b(r0)     // Catch: java.lang.Exception -> L89
            if (r7 != r1) goto L4e
            goto L5a
        L4e:
            kotlinx.coroutines.flow.Flow r7 = (kotlinx.coroutines.flow.Flow) r7     // Catch: java.lang.Exception -> L89
            r0.a = r6     // Catch: java.lang.Exception -> L89
            r0.d = r4     // Catch: java.lang.Exception -> L89
            java.lang.Object r7 = kotlinx.coroutines.flow.FlowKt.first(r7, r0)     // Catch: java.lang.Exception -> L89
            if (r7 != r1) goto L5b
        L5a:
            return r1
        L5b:
            kotlin.Pair r7 = (p005kotlin.Pair) r7     // Catch: java.lang.Exception -> L89
            java.lang.Object r0 = r7.getFirst()     // Catch: java.lang.Exception -> L89
            ads_mobile_sdk.v01 r0 = (kotlin.v01) r0     // Catch: java.lang.Exception -> L89
            boolean r1 = r0 instanceof kotlin.q01     // Catch: java.lang.Exception -> L89
            if (r1 == 0) goto L7f
            java.util.concurrent.atomic.AtomicBoolean r1 = r6.w     // Catch: java.lang.Exception -> L89
            ads_mobile_sdk.ao0 r2 = r6.s     // Catch: java.lang.Exception -> L89
            ads_mobile_sdk.j53 r6 = r6.g     // Catch: java.lang.Exception -> L89
            ads_mobile_sdk.q01 r0 = (kotlin.q01) r0     // Catch: java.lang.Exception -> L89
            java.lang.Object r0 = r0.b     // Catch: java.lang.Exception -> L89
            ads_mobile_sdk.ck1 r0 = (kotlin.ck1) r0     // Catch: java.lang.Exception -> L89
            ads_mobile_sdk.i2 r0 = r0.b()     // Catch: java.lang.Exception -> L89
            boolean r6 = r2.a(r6, r0)     // Catch: java.lang.Exception -> L89
            r1.set(r6)     // Catch: java.lang.Exception -> L89
            return r7
        L7f:
            boolean r6 = r0 instanceof kotlin.i01     // Catch: java.lang.Exception -> L89
            if (r6 == 0) goto L88
            ads_mobile_sdk.i01 r0 = (kotlin.i01) r0     // Catch: java.lang.Exception -> L89
            kotlin.xs3.a(r0, r3)     // Catch: java.lang.Exception -> L89
        L88:
            return r7
        L89:
            r6 = move-exception
            java.lang.String r7 = "exception"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r7)
            ads_mobile_sdk.rr3 r7 = kotlin.hs3.a()
            ads_mobile_sdk.uj2 r0 = r7.e()
            r0.m = r3
            r7.a(r6)
            kotlin.Pair r7 = new kotlin.Pair
            ads_mobile_sdk.j01 r0 = new ads_mobile_sdk.j01
            r1 = 6
            r2 = 0
            r0.<init>(r6, r2, r2, r1)
            r7.<init>(r0, r2)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.wy2.a(ads_mobile_sdk.wy2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public abstract o53 a(Context context, AdSize adSize);

    public Object a(ck1 ck1Var, Continuation continuation) {
        return a(this, ck1Var, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x008d A[PHI: r9 r10
  0x008d: PHI (r9v4 ads_mobile_sdk.v01) = (r9v3 ads_mobile_sdk.v01), (r9v9 ads_mobile_sdk.v01) binds: [B:27:0x008a, B:18:0x0040] A[DONT_GENERATE, DONT_INLINE]
  0x008d: PHI (r10v7 ads_mobile_sdk.wy2) = (r10v6 ads_mobile_sdk.wy2), (r10v9 ads_mobile_sdk.wy2) binds: [B:27:0x008a, B:18:0x0040] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a2, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r11, r2, r0) == r1) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00bd, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r11, r2, r0) == r1) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.v01 r9, com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo r10, p005kotlin.coroutines.Continuation r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof kotlin.my2
            if (r0 == 0) goto L13
            r0 = r11
            ads_mobile_sdk.my2 r0 = (kotlin.my2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.my2 r0 = new ads_mobile_sdk.my2
            r0.<init>(r8, r11)
        L18:
            java.lang.Object r11 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L50
            if (r2 == r6) goto L48
            if (r2 == r5) goto L40
            if (r2 == r4) goto L3c
            if (r2 != r3) goto L34
            p005kotlin.ResultKt.throwOnFailure(r11)
            goto Lc0
        L34:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3c:
            p005kotlin.ResultKt.throwOnFailure(r11)
            goto La5
        L40:
            ads_mobile_sdk.v01 r9 = r0.b
            ads_mobile_sdk.wy2 r10 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r11)
            goto L8d
        L48:
            ads_mobile_sdk.v01 r9 = r0.b
            ads_mobile_sdk.wy2 r10 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r11)
            goto L79
        L50:
            p005kotlin.ResultKt.throwOnFailure(r11)
            boolean r11 = r9 instanceof kotlin.q01
            if (r11 == 0) goto La8
            ads_mobile_sdk.ks3 r10 = r8.c
            r11 = r9
            ads_mobile_sdk.q01 r11 = (kotlin.q01) r11
            java.lang.Object r2 = r11.b
            ads_mobile_sdk.ck1 r2 = (kotlin.ck1) r2
            ads_mobile_sdk.ks3 r2 = r2.a()
            r10.a(r2)
            java.lang.Object r10 = r11.b
            ads_mobile_sdk.ck1 r10 = (kotlin.ck1) r10
            r0.a = r8
            r0.b = r9
            r0.e = r6
            java.lang.Object r10 = r10.a(r0)
            if (r10 != r1) goto L78
            goto Lbf
        L78:
            r10 = r8
        L79:
            r11 = r9
            ads_mobile_sdk.q01 r11 = (kotlin.q01) r11
            java.lang.Object r11 = r11.b
            ads_mobile_sdk.ck1 r11 = (kotlin.ck1) r11
            r0.a = r10
            r0.b = r9
            r0.e = r5
            java.lang.Object r11 = r10.b(r11, r0)
            if (r11 != r1) goto L8d
            goto Lbf
        L8d:
            kotlinx.coroutines.CoroutineScope r11 = r10.b
            kotlin.coroutines.CoroutineContext r11 = r11.getCoroutineContext()
            ads_mobile_sdk.qy2 r2 = new ads_mobile_sdk.qy2
            r2.<init>(r10, r9, r7)
            r0.a = r7
            r0.b = r7
            r0.e = r4
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r11, r2, r0)
            if (r9 != r1) goto La5
            goto Lbf
        La5:
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE
            return r9
        La8:
            boolean r11 = r9 instanceof kotlin.i01
            if (r11 == 0) goto Lc3
            kotlinx.coroutines.CoroutineScope r11 = r8.b
            kotlin.coroutines.CoroutineContext r11 = r11.getCoroutineContext()
            ads_mobile_sdk.ty2 r2 = new ads_mobile_sdk.ty2
            r2.<init>(r10, r8, r9, r7)
            r0.e = r3
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r11, r2, r0)
            if (r9 != r1) goto Lc0
        Lbf:
            return r1
        Lc0:
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE
            return r9
        Lc3:
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.wy2.a(ads_mobile_sdk.v01, com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.px2
    public /* bridge */ /* synthetic */ Object a(zh1 zh1Var, yw2 yw2Var) {
        return a((ck1) zh1Var, (Continuation) yw2Var);
    }

    public void a(ck1 oldAd) {
        BannerAdEventCallback bannerAdEventCallback;
        Intrinsics.checkNotNullParameter(oldAd, "oldAd");
        fm0 fm0VarJ = oldAd.j();
        synchronized (fm0VarJ) {
            bannerAdEventCallback = fm0VarJ.g;
        }
        oldAd.j().a((BannerAdEventCallback) null);
        ((ck1) this.u.a("The backing field has not yet been initialized.")).j().a(bannerAdEventCallback);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(ck1 ck1Var, Continuation continuation) {
        uy2 uy2Var;
        ck1 ck1Var2;
        if (continuation instanceof uy2) {
            uy2Var = (uy2) continuation;
            int i = uy2Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                uy2Var.d = i - Integer.MIN_VALUE;
            } else {
                uy2Var = new uy2(this, continuation);
            }
        } else {
            uy2Var = new uy2(this, continuation);
        }
        Object obj = uy2Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = uy2Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ck1 ck1Var3 = this.u.b() ? (ck1) this.u.a("The backing field has not yet been initialized.") : null;
            this.u.a(ck1Var);
            if (ck1Var3 != null) {
                ((ck1) this.u.a("The backing field has not yet been initialized.")).c().a.set(ck1Var3.c().a.get());
                a(ck1Var3);
            }
            uy2Var.a = ck1Var3;
            uy2Var.d = 1;
            Object objWithContext = BuildersKt.withContext(this.o, new vy2(ck1Var3, this, ck1Var, null), uy2Var);
            if (objWithContext != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objWithContext = p005kotlin.Unit.INSTANCE;
            }
            if (objWithContext == coroutine_suspended) {
                return coroutine_suspended;
            }
            ck1Var2 = ck1Var3;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ck1Var2 = uy2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        if (ck1Var2 != null) {
            ck1Var2.destroy();
        }
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.px2
    public final Object b(Continuation continuation) {
        if (this.A == null) {
            CoroutineScope coroutineScope = this.b;
            hy2 block = new hy2(this, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            Intrinsics.checkNotNullParameter(jobLaunch$default, "<set-?>");
            this.A = jobLaunch$default;
        }
        ks3 ks3Var = this.c;
        ks3Var.getClass();
        ks3Var.b = new tn1();
        ks3Var.c = new m33();
        ks3Var.d = new zb();
        Object obj = this.q.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        ig0 ig0Var = (ig0) ((hk1) a((bn1) obj, d()));
        ig0Var.n = Boolean.valueOf(this.x.getAndSet(true));
        ig0Var.m = new h33(this.r);
        e33 e33Var = this.r;
        e33Var.getClass();
        ig0Var.l = e33Var;
        BannerAdRequest bannerAdRequest = this.t;
        bannerAdRequest.getClass();
        ig0Var.o = bannerAdRequest;
        return ((si1) ((mi1) ig0Var.a().J0.get())).a(continuation);
    }

    public void b() {
        CoroutineScope coroutineScope = this.b;
        ey2 block = new ey2(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    public final o53 c() {
        o53 o53Var = this.z;
        if (o53Var != null) {
            return o53Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("_adFrame");
        return null;
    }

    @Override // kotlin.px2
    public final Object c(Continuation continuation) {
        Object objA;
        return (this.y == null || (objA = this.r.a(this, this.l, continuation)) != IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? p005kotlin.Unit.INSTANCE : objA;
    }

    public BaseRequest d() {
        return this.t;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(Continuation continuation) {
        fy2 fy2Var;
        wy2 wy2Var;
        if (continuation instanceof fy2) {
            fy2Var = (fy2) continuation;
            int i = fy2Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                fy2Var.d = i - Integer.MIN_VALUE;
            } else {
                fy2Var = new fy2(this, continuation);
            }
        } else {
            fy2Var = new fy2(this, continuation);
        }
        Object obj = fy2Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = fy2Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Job job = this.A;
            if (job == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adFrameJob");
                job = null;
            }
            fy2Var.a = this;
            fy2Var.d = 1;
            if (job.join(fy2Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            wy2Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            wy2Var = fy2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        o53 o53Var = wy2Var.z;
        if (o53Var != null) {
            return o53Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("_adFrame");
        return null;
    }

    public final js1 e() {
        return this.u;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(Continuation continuation) {
        ly2 ly2Var;
        wy2 wy2Var;
        ao0 ao0Var;
        wy2 wy2Var2;
        if (continuation instanceof ly2) {
            ly2Var = (ly2) continuation;
            int i = ly2Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                ly2Var.e = i - Integer.MIN_VALUE;
            } else {
                ly2Var = new ly2(this, continuation);
            }
        } else {
            ly2Var = new ly2(this, continuation);
        }
        Object objD = ly2Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ly2Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objD);
            ly2Var.a = this;
            ly2Var.e = 1;
            objD = d(ly2Var);
            if (objD != coroutine_suspended) {
                wy2Var = this;
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            wy2Var = ly2Var.a;
            p005kotlin.ResultKt.throwOnFailure(objD);
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ao0Var = ly2Var.b;
            wy2Var2 = ly2Var.a;
            p005kotlin.ResultKt.throwOnFailure(objD);
        }
        return Boxing.boxBoolean(ao0Var.a((View) objD, wy2Var2.w.get()));
        if (!(((o53) objD).getParent() instanceof View)) {
            return Boxing.boxBoolean(false);
        }
        ao0 ao0Var2 = wy2Var.s;
        ly2Var.a = wy2Var;
        ly2Var.b = ao0Var2;
        ly2Var.e = 2;
        Object objD2 = wy2Var.d(ly2Var);
        if (objD2 != coroutine_suspended) {
            ao0Var = ao0Var2;
            objD = objD2;
            wy2Var2 = wy2Var;
            return Boxing.boxBoolean(ao0Var.a((View) objD, wy2Var2.w.get()));
        }
        return coroutine_suspended;
    }
}
