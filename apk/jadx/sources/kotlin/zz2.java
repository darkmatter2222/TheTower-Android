package kotlin;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdRequest;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.SharedFlow;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class zz2 extends wy2 {
    public final PictureInPictureAdRequest D;
    public final cw2 E;
    public final qn2 F;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zz2(Context applicationContext, CoroutineContext uiContext, CoroutineContext loadContext, CoroutineScope loadScope, CoroutineScope backgroundScope, dw2 componentProvider, e33 refreshHelper, ao0 displayUtil, BannerAdRequest bannerAdRequest, ks3 traceMetaSet, ex0 flags, g83 rootTraceCreator, String publisherRequestId, j53 requestType, ja1 initializationConfigWrapper, boolean z, md1 inspectorAdLifecycleMonitor, SharedFlow cancellationChannel, qn appState, f0 activityTracker, PictureInPictureAdRequest pipAdRequest, dw2 pipPresenterProvider, CoroutineScope uiScope, qn2 pipAdConfig) {
        super(applicationContext, uiContext, loadContext, loadScope, backgroundScope, componentProvider, refreshHelper, displayUtil, bannerAdRequest, traceMetaSet, flags, rootTraceCreator, publisherRequestId, requestType, initializationConfigWrapper, z, inspectorAdLifecycleMonitor, cancellationChannel, appState);
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
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(pipAdRequest, "pipAdRequest");
        Intrinsics.checkNotNullParameter(pipPresenterProvider, "pipPresenterProvider");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(pipAdConfig, "pipAdConfig");
        this.D = pipAdRequest;
        this.E = pipPresenterProvider;
        this.F = pipAdConfig;
    }

    @Override // kotlin.wy2
    public final o53 a(Context context, AdSize adSize) {
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        Intrinsics.checkNotNullParameter(context, "context");
        return new do2(adSize, context, this.F, new xz2(this));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.wy2
    public final Object a(ck1 ck1Var, Continuation continuation) {
        yz2 yz2Var;
        zz2 zz2Var;
        ck1 ck1Var2;
        ao2 ao2Var;
        if (continuation instanceof yz2) {
            yz2Var = (yz2) continuation;
            int i = yz2Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                yz2Var.e = i - Integer.MIN_VALUE;
            } else {
                yz2Var = new yz2(this, continuation);
            }
        } else {
            yz2Var = new yz2(this, continuation);
        }
        Object obj = yz2Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = yz2Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            yz2Var.a = this;
            yz2Var.b = ck1Var;
            yz2Var.e = 1;
            if (wy2.a(this, ck1Var, yz2Var) != coroutine_suspended) {
                zz2Var = this;
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            ck1Var = (ck1) yz2Var.b;
            zz2Var = (zz2) yz2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ao2Var = (ao2) yz2Var.b;
            ck1Var2 = (ck1) yz2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        do2 view = (do2) obj;
        fm0 listener = ck1Var2.j();
        ao2Var.getClass();
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(listener, "listener");
        ao2Var.i = view;
        ao2Var.j.set(listener);
        ao2Var.k.compareAndSet(false, true);
        return p005kotlin.Unit.INSTANCE;
        if (!zz2Var.f().k.get()) {
            ao2 ao2VarF = zz2Var.f();
            yz2Var.a = ck1Var;
            yz2Var.b = ao2VarF;
            yz2Var.e = 2;
            Object objD = zz2Var.d(yz2Var);
            if (objD != coroutine_suspended) {
                ck1Var2 = ck1Var;
                ao2Var = ao2VarF;
                obj = objD;
                do2 view2 = (do2) obj;
                fm0 listener2 = ck1Var2.j();
                ao2Var.getClass();
                Intrinsics.checkNotNullParameter(view2, "view");
                Intrinsics.checkNotNullParameter(listener2, "listener");
                ao2Var.i = view2;
                ao2Var.j.set(listener2);
                ao2Var.k.compareAndSet(false, true);
            }
            return coroutine_suspended;
        }
        ao2 ao2VarF2 = zz2Var.f();
        fm0 listener3 = ck1Var.j();
        ao2VarF2.getClass();
        Intrinsics.checkNotNullParameter(listener3, "listener");
        ao2VarF2.j.set(listener3);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.wy2, kotlin.px2
    public final /* bridge */ /* synthetic */ Object a(zh1 zh1Var, yw2 yw2Var) {
        return a((ck1) zh1Var, (Continuation) yw2Var);
    }

    @Override // kotlin.wy2
    public final void a(ck1 oldAd) {
        PictureInPictureAdEventCallback pictureInPictureAdEventCallback;
        Intrinsics.checkNotNullParameter(oldAd, "oldAd");
        fm0 fm0VarJ = oldAd.j();
        synchronized (fm0VarJ) {
            pictureInPictureAdEventCallback = fm0VarJ.m;
        }
        oldAd.j().a((PictureInPictureAdEventCallback) null);
        ((ck1) this.u.a("The backing field has not yet been initialized.")).j().a(pictureInPictureAdEventCallback);
        ao2 ao2VarF = f();
        fm0 listener = ((ck1) this.u.a("The backing field has not yet been initialized.")).j();
        ao2VarF.getClass();
        Intrinsics.checkNotNullParameter(listener, "listener");
        ao2VarF.j.set(listener);
    }

    @Override // kotlin.wy2
    public final void b() {
        ao2 ao2VarF = f();
        Job job = ao2VarF.m;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        ao2VarF.p.set(false);
        ao2VarF.q.set(false);
        if (ao2VarF.l.compareAndSet(true, false)) {
            ao2VarF.a.b(ao2VarF);
        }
        CoroutineScope coroutineScope = ao2VarF.c;
        vn2 block = new vn2(ao2VarF, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        ao2VarF.j.set(null);
        ao2VarF.k.set(false);
        super.b();
    }

    @Override // kotlin.wy2
    public final BaseRequest d() {
        return this.D;
    }

    public final ao2 f() {
        Object obj = this.E.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        return (ao2) obj;
    }
}
