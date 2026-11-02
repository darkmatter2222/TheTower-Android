package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Bu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1475Bu extends AbstractC2608ik<C1471Bq> {
    public int A00;
    public final int A01;
    public final C7O A04;
    public final C1618Hi A05;
    public final ViewOnClickListenerC1544El A06;
    public final List<String> A08;
    public final Application.ActivityLifecycleCallbacks A02 = new Application.ActivityLifecycleCallbacks() { // from class: com.facebook.ads.internal.view.rewardedvideo.EndCardV2ScreenshotRecyclerAdapter$1
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            if (activity == this.A00.A05.A0E()) {
                this.A00.A03.removeCallbacks(this.A00.A07);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            this.A00.A03.post(this.A00.A07);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }
    };
    public final Handler A03 = new Handler(Looper.getMainLooper());
    public final Runnable A07 = new RunnableC2489gk(this);

    public C1475Bu(C1618Hi c1618Hi, List<String> list, int i, C7O c7o, ViewOnClickListenerC1544El viewOnClickListenerC1544El, int i2) {
        this.A08 = list;
        this.A01 = i;
        this.A05 = c1618Hi;
        this.A04 = c7o;
        this.A06 = viewOnClickListenerC1544El;
        this.A00 = i2;
        this.A03.post(this.A07);
        if (Build.VERSION.SDK_INT < 29 || this.A05.A0E() == null) {
            return;
        }
        this.A05.A0E().registerActivityLifecycleCallbacks(this.A02);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
    /* JADX INFO: renamed from: A05, reason: merged with bridge method [inline-methods] */
    public final C1471Bq A0F(ViewGroup viewGroup, int i) {
        C1469Bo c1469Bo = new C1469Bo(this.A05);
        if (C2863mv.A1C(this.A05)) {
            c1469Bo.setOnClickListener(new ViewOnClickListenerC2488gj(this));
        }
        return new C1471Bq(c1469Bo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
    /* JADX INFO: renamed from: A07, reason: merged with bridge method [inline-methods] */
    public final void A0M(C1471Bq c1471Bq, int i) {
        String str = this.A08.get(i % this.A08.size());
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(400, -1);
        marginLayoutParams.setMargins(this.A01, 0, this.A01, 0);
        c1471Bq.A0w().setLayoutParams(marginLayoutParams);
        c1471Bq.A0w().setUrl(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
    public final int A0B() {
        return this.A08.size() * 1000;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
    public final void A0N(C7O c7o) {
        super.A0N(c7o);
        this.A03.removeCallbacks(this.A07);
        if (Build.VERSION.SDK_INT < 29 || this.A05.A0E() == null) {
            return;
        }
        this.A05.A0E().unregisterActivityLifecycleCallbacks(this.A02);
    }

    public final void A0Q(int i) {
        this.A00 = i;
    }
}
