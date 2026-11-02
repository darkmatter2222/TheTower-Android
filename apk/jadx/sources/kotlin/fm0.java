package kotlin;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.common.AdValue;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.google.android.libraries.ads.mobile.sdk.common.OnAppEventListener;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.nativead.OnCustomClickListener;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.rewarded.OnAdMetadataChangedListener;
import com.google.android.libraries.ads.mobile.sdk.rewarded.OnUserEarnedRewardListener;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.rewardedinterstitial.RewardedInterstitialAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialAdEventCallback;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class fm0 implements ai1, h73, q4 {
    public final CoroutineScope a;
    public final ks3 b;
    public final g83 c;
    public AdEventCallback d;
    public OnAppEventListener e;
    public OnAdMetadataChangedListener f;
    public BannerAdEventCallback g;
    public InterstitialAdEventCallback h;
    public RewardedAdEventCallback i;
    public RewardedInterstitialAdEventCallback j;
    public SwipeableInterstitialAdEventCallback k;
    public NativeAdEventCallback l;
    public PictureInPictureAdEventCallback m;
    public OnCustomClickListener n;
    public OnUserEarnedRewardListener o;
    public AppOpenAdEventCallback p;
    public IconAdEventCallback q;
    public final ArrayBlockingQueue r;
    public final AtomicBoolean s;

    public fm0(CoroutineScope backgroundScope, ex0 flags, ks3 traceMetaSet, g83 rootTraceCreator) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        this.a = backgroundScope;
        this.b = traceMetaSet;
        this.c = rootTraceCreator;
        this.r = new ArrayBlockingQueue(flags.q());
        this.s = new AtomicBoolean(true);
    }

    @Override // kotlin.q4
    public final Object a(Bundle bundle, Continuation continuation) {
        Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new wl0(this, null), continuation);
        return objCoroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.ai1
    public final Object a(FullScreenContentError fullScreenContentError, Continuation continuation) {
        m21 m21Var = o21.f;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new sl0(null, this, fullScreenContentError), 3, null);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.h73
    public final Object a(RewardItem rewardItem, Continuation continuation) {
        m21 m21Var = o21.f;
        Object objWithContext = BuildersKt.withContext(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE), new em0(null, this, rewardItem), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.ai1
    public final p005kotlin.Unit a(AdValue adValue, Continuation continuation) {
        m21 m21Var = o21.f;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new xl0(null, this, adValue), 3, null);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.ai1
    public final p005kotlin.Unit a(String str, String str2, Continuation continuation) {
        if (!this.s.get()) {
            m21 m21Var = o21.f;
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new bm0(null, this, str, str2), 3, null);
            return p005kotlin.Unit.INSTANCE;
        }
        if (!this.r.offer(new p005kotlin.Pair(str, str2))) {
            f01.b("The queue for app events is full, dropping the new event.", null);
            g83 g83Var = this.c;
            s11 s11Var = s11.CUI_NAME_UNKNOWN;
            List listEmptyList = CollectionsKt.emptyList();
            ks3 ks3Var = this.b;
            if (hs3.c() == null) {
                tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    xs3.a("App events queue overflow. name: " + str + ", data: " + str2, null, 6);
                    Object obj = p005kotlin.Unit.INSTANCE;
                    if (obj instanceof i01) {
                        xs3.a((i01) obj, false);
                    }
                    CloseableKt.closeFinally(tu2VarA, null);
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
                        if (th instanceof w01) {
                            throw th;
                        }
                        throw new b01(th);
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            CloseableKt.closeFinally(tu2VarA, th2);
                            throw th3;
                        }
                    }
                }
            } else {
                rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    xs3.a("App events queue overflow. name: " + str + ", data: " + str2, null, 6);
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
                        if (th4 instanceof w01) {
                            throw th4;
                        }
                        throw new b01(th4);
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
        }
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.ai1
    public final p005kotlin.Unit a(String str, Continuation continuation) {
        m21 m21Var = o21.f;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new dm0(null, this, str), 3, null);
        return p005kotlin.Unit.INSTANCE;
    }

    public final void a(BannerAdEventCallback bannerAdEventCallback) {
        synchronized (this) {
            this.g = bannerAdEventCallback;
            a((AdEventCallback) bannerAdEventCallback);
            a((OnAppEventListener) bannerAdEventCallback);
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
    }

    public final void a(AdEventCallback adEventCallback) {
        synchronized (this) {
            this.d = adEventCallback;
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
    }

    public final void a(OnAppEventListener onAppEventListener) {
        synchronized (this) {
            this.e = onAppEventListener;
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
        CoroutineScope coroutineScope = this.a;
        cm0 block = new cm0(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    public final void a(PictureInPictureAdEventCallback pictureInPictureAdEventCallback) {
        synchronized (this) {
            this.m = pictureInPictureAdEventCallback;
            a((AdEventCallback) pictureInPictureAdEventCallback);
            a((OnAppEventListener) pictureInPictureAdEventCallback);
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
    }

    public final void a(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        synchronized (this) {
            this.f = onAdMetadataChangedListener;
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
    }

    public final AdEventCallback f() {
        AdEventCallback adEventCallback;
        synchronized (this) {
            adEventCallback = this.d;
        }
        return adEventCallback;
    }

    @Override // kotlin.ai1
    public final p005kotlin.Unit f(Continuation continuation) {
        m21 m21Var = o21.f;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new am0(this, null), 3, null);
        return p005kotlin.Unit.INSTANCE;
    }

    public final OnCustomClickListener g() {
        OnCustomClickListener onCustomClickListener;
        synchronized (this) {
            onCustomClickListener = this.n;
        }
        return onCustomClickListener;
    }

    @Override // kotlin.ai1
    public final Object h(Continuation continuation) {
        m21 m21Var = o21.f;
        Object objWithContext = BuildersKt.withContext(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE), new rl0(this, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.mq0
    public final boolean h() {
        return true;
    }

    @Override // kotlin.ai1
    public final Object o(Continuation continuation) {
        m21 m21Var = o21.f;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new ql0(this, null), 3, null);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.ai1
    public final Object p(Continuation continuation) {
        m21 m21Var = o21.f;
        Object objWithContext = BuildersKt.withContext(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE), new yl0(this, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.ai1
    public final Object r(Continuation continuation) {
        m21 m21Var = o21.f;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new ul0(this, null), 3, null);
        return p005kotlin.Unit.INSTANCE;
    }
}
