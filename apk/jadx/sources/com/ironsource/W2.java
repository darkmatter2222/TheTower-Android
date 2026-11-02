package com.ironsource;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.ironsource.mediationsdk.IronSource;
import com.unity3d.ironsourceads.banner.BannerAdInfo;
import java.lang.ref.WeakReference;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class W2 implements N2 {
    private final R9 a;
    private final C3676k8 b;
    private final C3599g2 c;
    private final InterfaceC3798r1 d;
    private final InterfaceC3809rc e;
    private final InterfaceC3631hg f;
    private final Q8 g;
    private final Q8.a h;
    private final boolean i;
    private BannerAdInfo j;
    private WeakReference<X2> k;
    private View.OnAttachStateChangeListener l;
    private WeakReference<FrameLayout> m;

    public static final class a implements View.OnAttachStateChangeListener {
        a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View v) {
            Intrinsics.checkNotNullParameter(v, "v");
            C3641i8 size = W2.this.d().getSize();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(size.c(), size.a(), 17);
            if (W2.this.i) {
                ViewParent parent = W2.this.d().getParent();
                ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                if (viewGroup != null) {
                    viewGroup.removeView(W2.this.d());
                }
            }
            ((FrameLayout) v).addView(W2.this.d(), 0, layoutParams);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View v) {
            Intrinsics.checkNotNullParameter(v, "v");
            ((FrameLayout) v).removeAllViews();
        }
    }

    public W2(R9 adInstance, C3676k8 container, C3599g2 auctionDataReporter, InterfaceC3798r1 analytics, InterfaceC3809rc networkDestroyAPI, InterfaceC3631hg threadManager, Q8 sessionDepthService, Q8.a sessionDepthServiceEditor, D7 epService) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(auctionDataReporter, "auctionDataReporter");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(networkDestroyAPI, "networkDestroyAPI");
        Intrinsics.checkNotNullParameter(threadManager, "threadManager");
        Intrinsics.checkNotNullParameter(sessionDepthService, "sessionDepthService");
        Intrinsics.checkNotNullParameter(sessionDepthServiceEditor, "sessionDepthServiceEditor");
        Intrinsics.checkNotNullParameter(epService, "epService");
        this.a = adInstance;
        this.b = container;
        this.c = auctionDataReporter;
        this.d = analytics;
        this.e = networkDestroyAPI;
        this.f = threadManager;
        this.g = sessionDepthService;
        this.h = sessionDepthServiceEditor;
        this.i = epService.o();
        String strF = adInstance.f();
        Intrinsics.checkNotNullExpressionValue(strF, "getInstanceId(...)");
        String strE = adInstance.e();
        Intrinsics.checkNotNullExpressionValue(strE, "getId(...)");
        this.j = new BannerAdInfo(strF, strE);
        this.k = new WeakReference<>(null);
        this.m = new WeakReference<>(null);
        Qc qc = new Qc();
        adInstance.a(qc);
        qc.a(this);
    }

    public /* synthetic */ W2(R9 r9, C3676k8 c3676k8, C3599g2 c3599g2, InterfaceC3798r1 interfaceC3798r1, InterfaceC3809rc interfaceC3809rc, InterfaceC3631hg interfaceC3631hg, Q8 q8, Q8.a aVar, D7 d7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(r9, c3676k8, c3599g2, interfaceC3798r1, (i & 16) != 0 ? new C3827sc() : interfaceC3809rc, (i & 32) != 0 ? V7.a : interfaceC3631hg, (i & 64) != 0 ? Pb.w.d().s() : q8, (i & 128) != 0 ? Pb.w.a().i() : aVar, (i & 256) != 0 ? Pb.w.d().h() : d7);
    }

    private final a a() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(W2 w2) {
        InterfaceC3669k1.d.a.b().a(w2.d);
        w2.e.a(w2.a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(W2 w2) {
        X2 x2 = w2.k.get();
        if (x2 != null) {
            x2.onBannerAdClicked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(W2 w2) {
        X2 x2 = w2.k.get();
        if (x2 != null) {
            x2.onBannerAdShown();
        }
    }

    public final void a(BannerAdInfo bannerAdInfo) {
        Intrinsics.checkNotNullParameter(bannerAdInfo, "<set-?>");
        this.j = bannerAdInfo;
    }

    public final void a(WeakReference<X2> weakReference) {
        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
        this.k = weakReference;
    }

    public final void b() {
        InterfaceC3631hg.a(this.f, new Runnable() { // from class: com.ironsource.W2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                W2.b(this.f$0);
            }
        }, 0L, 2, null);
    }

    public final void b(WeakReference<FrameLayout> value) {
        FrameLayout frameLayout;
        Intrinsics.checkNotNullParameter(value, "value");
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.l;
        if (onAttachStateChangeListener != null && (frameLayout = this.m.get()) != null) {
            frameLayout.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        }
        this.m = value;
        a aVarA = a();
        this.l = aVarA;
        FrameLayout frameLayout2 = value.get();
        if (frameLayout2 != null) {
            frameLayout2.addOnAttachStateChangeListener(aVarA);
        }
    }

    public final BannerAdInfo c() {
        return this.j;
    }

    public final C3676k8 d() {
        return this.b;
    }

    public final WeakReference<X2> e() {
        return this.k;
    }

    public final WeakReference<FrameLayout> f() {
        return this.m;
    }

    protected final void finalize() {
        b();
    }

    @Override // com.ironsource.N2
    public void onBannerClick() {
        InterfaceC3669k1.a.a.a().a(this.d);
        this.f.a(new Runnable() { // from class: com.ironsource.W2$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                W2.c(this.f$0);
            }
        });
    }

    @Override // com.ironsource.N2
    public void onBannerShowSuccess() {
        Q8 q8 = this.g;
        IronSource.a aVar = IronSource.a.BANNER;
        InterfaceC3669k1.a.a.f(new C3723n1.w(q8.a(aVar))).a(this.d);
        this.h.b(aVar);
        this.c.b("onBannerShowSuccess");
        this.f.a(new Runnable() { // from class: com.ironsource.W2$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                W2.d(this.f$0);
            }
        });
    }
}
