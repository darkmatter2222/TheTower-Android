package com.applovin.impl;

import android.app.Activity;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class b2 extends d2 {
    private final v7 o0;
    private final Set p0;

    class a implements c1.b {
        a() {
        }

        @Override // com.applovin.impl.c1.b
        public void a() {
            long seconds = TimeUnit.MILLISECONDS.toSeconds(b2.this.f0 - ((long) (b2.this.Q.getDuration() - b2.this.Q.getCurrentPosition())));
            int iC = b2.this.C();
            HashSet hashSet = new HashSet();
            for (f8 f8Var : new HashSet(b2.this.p0)) {
                if (f8Var.a(seconds, iC)) {
                    hashSet.add(f8Var);
                    b2.this.p0.remove(f8Var);
                }
            }
            b2.this.a(hashSet);
            if (iC >= 25 && iC < 50) {
                b2.this.o0.getAdEventTracker().x();
                return;
            }
            if (iC >= 50 && iC < 75) {
                b2.this.o0.getAdEventTracker().y();
            } else if (iC >= 75) {
                b2.this.o0.getAdEventTracker().C();
            }
        }

        @Override // com.applovin.impl.c1.b
        public boolean b() {
            return !b2.this.i0;
        }
    }

    public b2(final com.applovin.impl.sdk.ad.b bVar, final Activity activity, Map map, final com.applovin.impl.sdk.l lVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(bVar, activity, map, lVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        HashSet hashSet = new HashSet();
        this.p0 = hashSet;
        v7 v7Var = (v7) bVar;
        this.o0 = v7Var;
        if (v7Var.r1()) {
            ImageView imageViewA = b8.a(v7Var.l1().e(), activity, lVar);
            this.X = imageViewA;
            imageViewA.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.b2$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.a(bVar, lVar, activity, view);
                }
            });
        }
        v7.d dVar = v7.d.VIDEO;
        hashSet.addAll(v7Var.a(dVar, g8.a));
        a(v7.d.IMPRESSION);
        a(dVar, "creativeView");
        v7Var.getAdEventTracker().g();
    }

    private boolean U() {
        return this.X != null && this.o0.r1();
    }

    private void V() {
        if (!G() || this.p0.isEmpty()) {
            return;
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.c.k("AppLovinFullscreenActivity", "Firing " + this.p0.size() + " un-fired video progress trackers when video was completed.");
        }
        a(this.p0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.l lVar, Activity activity, View view) {
        Uri uriC = this.o0.l1().c();
        if (uriC != null) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a("AppLovinFullscreenActivity", "Industry Icon clicked, opening URL: " + uriC);
            }
            a(v7.d.INDUSTRY_ICON_CLICK);
            if (bVar.isCustomTabsEnabled()) {
                lVar.A().a(uriC, b().getController(), activity);
            } else {
                q7.b(uriC, bVar, activity, lVar);
            }
        }
    }

    private void a(v7.d dVar) {
        a(dVar, a8.UNSPECIFIED);
    }

    private void a(v7.d dVar, a8 a8Var) {
        a(dVar, "", a8Var);
    }

    private void a(v7.d dVar, String str) {
        a(dVar, str, a8.UNSPECIFIED);
    }

    private void a(v7.d dVar, String str, a8 a8Var) {
        a(this.o0.a(dVar, str), a8Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Set set) {
        a(set, a8.UNSPECIFIED);
    }

    private void a(Set set, a8 a8Var) {
        if (set == null || set.isEmpty()) {
            return;
        }
        long seconds = TimeUnit.MILLISECONDS.toSeconds(this.Q.getCurrentPosition());
        j8 j8VarQ1 = this.o0.q1();
        Uri uriD = j8VarQ1 != null ? j8VarQ1.d() : null;
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a("AppLovinFullscreenActivity", "Firing " + set.size() + " tracker(s): " + set);
        }
        h8.a(set, seconds, uriD, a8Var, this.b);
    }

    @Override // com.applovin.impl.d2
    public void D() {
        a(v7.d.VIDEO, "skip");
        this.o0.getAdEventTracker().B();
        super.D();
    }

    @Override // com.applovin.impl.d2
    protected void E() {
        super.E();
        v7 v7Var = this.o0;
        if (v7Var != null) {
            v7Var.getAdEventTracker().i();
        }
    }

    @Override // com.applovin.impl.d2
    protected void N() {
        long jR;
        int iS;
        long millis = 0;
        if (this.o0.Q() >= 0 || this.o0.R() >= 0) {
            if (this.o0.Q() >= 0) {
                jR = this.o0.Q();
            } else {
                v7 v7Var = this.o0;
                i8 i8VarP1 = v7Var.p1();
                if (i8VarP1 == null || i8VarP1.d() <= 0) {
                    long j = this.f0;
                    if (j > 0) {
                        millis = j;
                    }
                } else {
                    millis = TimeUnit.SECONDS.toMillis(i8VarP1.d());
                }
                if (v7Var.W0() && (iS = (int) v7Var.s()) > 0) {
                    millis += TimeUnit.SECONDS.toMillis(iS);
                }
                jR = (long) (millis * (((double) this.o0.R()) / 100.0d));
            }
            c(jR);
        }
    }

    @Override // com.applovin.impl.d2
    protected void Q() {
        super.Q();
        v7 v7Var = this.o0;
        if (v7Var != null) {
            v7Var.getAdEventTracker().j();
        }
    }

    @Override // com.applovin.impl.d2
    public void R() {
        V();
        if (!h8.a(this.o0)) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a("AppLovinFullscreenActivity", "VAST ad does not have valid companion ad - dismissing...");
            }
            a("no_valid_companion_ad");
        } else {
            if (this.i0) {
                return;
            }
            a(v7.d.COMPANION, "creativeView");
            this.o0.getAdEventTracker().w();
            super.R();
        }
    }

    @Override // com.applovin.impl.d2
    public void T() {
        super.T();
        a(v7.d.VIDEO, this.e0 ? "mute" : "unmute");
        this.o0.getAdEventTracker().b(this.e0);
    }

    @Override // com.applovin.impl.d2
    public void a(MotionEvent motionEvent) {
        a(v7.d.VIDEO_CLICK);
        this.o0.getAdEventTracker().v();
        super.a(motionEvent);
    }

    @Override // com.applovin.impl.d2, com.applovin.impl.y1
    public void a(ViewGroup viewGroup) {
        super.a(viewGroup);
        if (U()) {
            a(v7.d.INDUSTRY_ICON_IMPRESSION);
            this.X.setVisibility(0);
        }
        this.b0.a("PROGRESS_TRACKING", TimeUnit.SECONDS.toMillis(1L), new a());
        ArrayList arrayList = new ArrayList();
        com.applovin.impl.a aVar = this.R;
        if (aVar != null) {
            arrayList.add(new m4(aVar, FriendlyObstructionPurpose.OTHER, "video stream buffering indicator"));
        }
        com.applovin.impl.adview.g gVar = this.S;
        if (gVar != null) {
            arrayList.add(new m4(gVar, FriendlyObstructionPurpose.CLOSE_AD, "skip button"));
        }
        k0 k0Var = this.T;
        if (k0Var != null) {
            arrayList.add(new m4(k0Var, FriendlyObstructionPurpose.OTHER, "countdown clock"));
        }
        ProgressBar progressBar = this.V;
        if (progressBar != null) {
            arrayList.add(new m4(progressBar, FriendlyObstructionPurpose.OTHER, "progress bar"));
        }
        ProgressBar progressBar2 = this.W;
        if (progressBar2 != null) {
            arrayList.add(new m4(progressBar2, FriendlyObstructionPurpose.OTHER, "postitial progress bar"));
        }
        ImageView imageView = this.U;
        if (imageView != null) {
            arrayList.add(new m4(imageView, FriendlyObstructionPurpose.VIDEO_CONTROLS, "mute button"));
        }
        com.applovin.impl.adview.k kVar = this.j;
        if (kVar != null && kVar.a()) {
            com.applovin.impl.adview.k kVar2 = this.j;
            arrayList.add(new m4(kVar2, FriendlyObstructionPurpose.NOT_VISIBLE, kVar2.getIdentifier()));
        }
        this.o0.getAdEventTracker().b(this.Q, arrayList);
    }

    @Override // com.applovin.impl.d2, com.applovin.impl.y1
    public void a(String str) {
        if (this.o0 != null) {
            a(v7.d.VIDEO, TJAdUnitConstants.String.CLOSE);
            a(v7.d.COMPANION, TJAdUnitConstants.String.CLOSE);
        }
        super.a(str);
    }

    @Override // com.applovin.impl.d2
    protected void d(long j) {
        super.d(j);
        this.o0.getAdEventTracker().b(TimeUnit.MILLISECONDS.toSeconds(j), u7.e(this.b));
    }

    @Override // com.applovin.impl.d2
    public void g(String str) {
        a(v7.d.ERROR, a8.MEDIA_FILE_ERROR);
        this.o0.getAdEventTracker().b(str);
        super.g(str);
    }

    @Override // com.applovin.impl.y1
    public void s() {
        super.s();
        a(this.i0 ? v7.d.COMPANION : v7.d.VIDEO, "pause");
        this.o0.getAdEventTracker().z();
    }

    @Override // com.applovin.impl.y1
    public void t() {
        super.t();
        a(this.i0 ? v7.d.COMPANION : v7.d.VIDEO, "resume");
        this.o0.getAdEventTracker().A();
    }

    @Override // com.applovin.impl.d2, com.applovin.impl.y1
    public void v() {
        this.b0.c();
        super.v();
    }

    @Override // com.applovin.impl.d2, com.applovin.impl.y1
    public void w() {
        a((ViewGroup) null);
    }
}
