package com.ironsource;

import android.view.View;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class K8 {
    private G8 a;
    private View b;
    private View c;
    private View d;
    private View e;
    private View f;
    private View g;
    private View h;
    private a i;

    public interface a {
        void a(Dg dg);

        void a(b bVar);
    }

    public enum b {
        Title("title"),
        Advertiser(C3510b4.i.F0),
        Body(C3510b4.i.E0),
        Cta(C3510b4.i.G0),
        Icon(C3510b4.i.H0),
        Container("container"),
        PrivacyIcon(C3510b4.i.J0);

        private static final /* synthetic */ EnumEntries j = EnumEntriesKt.enumEntries(a());
        private final String a;

        b(String str) {
            this.a = str;
        }

        public static EnumEntries<b> b() {
            return j;
        }

        public final String c() {
            return this.a;
        }
    }

    public static final class c implements G8.a {
        c() {
        }

        @Override // com.ironsource.G8.a
        public void a(Dg viewVisibilityParams) {
            Intrinsics.checkNotNullParameter(viewVisibilityParams, "viewVisibilityParams");
            a aVarN = K8.this.n();
            if (aVarN != null) {
                aVarN.a(viewVisibilityParams);
            }
        }
    }

    public K8(G8 containerView, View view, View view2, View view3, View view4, View view5, View view6, View privacyIconView) {
        Intrinsics.checkNotNullParameter(containerView, "containerView");
        Intrinsics.checkNotNullParameter(privacyIconView, "privacyIconView");
        this.a = containerView;
        this.b = view;
        this.c = view2;
        this.d = view3;
        this.e = view4;
        this.f = view5;
        this.g = view6;
        this.h = privacyIconView;
        r();
        s();
    }

    public /* synthetic */ K8(G8 g8, View view, View view2, View view3, View view4, View view5, View view6, View view7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(g8, (i & 2) != 0 ? null : view, (i & 4) != 0 ? null : view2, (i & 8) != 0 ? null : view3, (i & 16) != 0 ? null : view4, (i & 32) != 0 ? null : view5, (i & 64) != 0 ? null : view6, view7);
    }

    public static /* synthetic */ K8 a(K8 k8, G8 g8, View view, View view2, View view3, View view4, View view5, View view6, View view7, int i, Object obj) {
        if ((i & 1) != 0) {
            g8 = k8.a;
        }
        if ((i & 2) != 0) {
            view = k8.b;
        }
        if ((i & 4) != 0) {
            view2 = k8.c;
        }
        if ((i & 8) != 0) {
            view3 = k8.d;
        }
        if ((i & 16) != 0) {
            view4 = k8.e;
        }
        if ((i & 32) != 0) {
            view5 = k8.f;
        }
        if ((i & 64) != 0) {
            view6 = k8.g;
        }
        if ((i & 128) != 0) {
            view7 = k8.h;
        }
        View view8 = view6;
        View view9 = view7;
        View view10 = view4;
        View view11 = view5;
        return k8.a(g8, view, view2, view3, view10, view11, view8, view9);
    }

    private static final void a(final K8 k8, View view, final b bVar) {
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.ironsource.K8$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    K8.a(this.f$0, bVar, view2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(K8 k8, b bVar, View view) {
        a aVar = k8.i;
        if (aVar != null) {
            aVar.a(bVar);
        }
    }

    private final void r() {
        a(this, this.b, b.Title);
        a(this, this.c, b.Advertiser);
        a(this, this.e, b.Body);
        a(this, this.g, b.Cta);
        a(this, this.d, b.Icon);
        a(this, this.a, b.Container);
        a(this, this.h, b.PrivacyIcon);
    }

    private final void s() {
        this.a.setListener$mediationsdk_release(new c());
    }

    public final G8 a() {
        return this.a;
    }

    public final K8 a(G8 containerView, View view, View view2, View view3, View view4, View view5, View view6, View privacyIconView) {
        Intrinsics.checkNotNullParameter(containerView, "containerView");
        Intrinsics.checkNotNullParameter(privacyIconView, "privacyIconView");
        return new K8(containerView, view, view2, view3, view4, view5, view6, privacyIconView);
    }

    public final void a(View view) {
        this.c = view;
    }

    public final void a(G8 g8) {
        Intrinsics.checkNotNullParameter(g8, "<set-?>");
        this.a = g8;
    }

    public final void a(a aVar) {
        this.i = aVar;
    }

    public final View b() {
        return this.b;
    }

    public final void b(View view) {
        this.e = view;
    }

    public final View c() {
        return this.c;
    }

    public final void c(View view) {
        this.g = view;
    }

    public final View d() {
        return this.d;
    }

    public final void d(View view) {
        this.d = view;
    }

    public final View e() {
        return this.e;
    }

    public final void e(View view) {
        this.f = view;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof K8)) {
            return false;
        }
        K8 k8 = (K8) obj;
        return Intrinsics.areEqual(this.a, k8.a) && Intrinsics.areEqual(this.b, k8.b) && Intrinsics.areEqual(this.c, k8.c) && Intrinsics.areEqual(this.d, k8.d) && Intrinsics.areEqual(this.e, k8.e) && Intrinsics.areEqual(this.f, k8.f) && Intrinsics.areEqual(this.g, k8.g) && Intrinsics.areEqual(this.h, k8.h);
    }

    public final View f() {
        return this.f;
    }

    public final void f(View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.h = view;
    }

    public final View g() {
        return this.g;
    }

    public final void g(View view) {
        this.b = view;
    }

    public final View h() {
        return this.h;
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        View view = this.b;
        int iHashCode2 = (iHashCode + (view == null ? 0 : view.hashCode())) * 31;
        View view2 = this.c;
        int iHashCode3 = (iHashCode2 + (view2 == null ? 0 : view2.hashCode())) * 31;
        View view3 = this.d;
        int iHashCode4 = (iHashCode3 + (view3 == null ? 0 : view3.hashCode())) * 31;
        View view4 = this.e;
        int iHashCode5 = (iHashCode4 + (view4 == null ? 0 : view4.hashCode())) * 31;
        View view5 = this.f;
        int iHashCode6 = (iHashCode5 + (view5 == null ? 0 : view5.hashCode())) * 31;
        View view6 = this.g;
        return ((iHashCode6 + (view6 != null ? view6.hashCode() : 0)) * 31) + this.h.hashCode();
    }

    public final View i() {
        return this.c;
    }

    public final View j() {
        return this.e;
    }

    public final G8 k() {
        return this.a;
    }

    public final View l() {
        return this.g;
    }

    public final View m() {
        return this.d;
    }

    public final a n() {
        return this.i;
    }

    public final View o() {
        return this.f;
    }

    public final View p() {
        return this.h;
    }

    public final View q() {
        return this.b;
    }

    public final JSONObject t() throws JSONException {
        JSONObject jSONObjectPut = new JSONObject().put("title", this.b != null).put(C3510b4.i.F0, this.c != null).put(C3510b4.i.E0, this.e != null).put(C3510b4.i.G0, this.g != null).put(C3510b4.i.I0, this.f != null).put(C3510b4.i.H0, this.d != null);
        Intrinsics.checkNotNullExpressionValue(jSONObjectPut, "put(...)");
        return jSONObjectPut;
    }

    public String toString() {
        return "ISNNativeAdViewHolder(containerView=" + this.a + ", titleView=" + this.b + ", advertiserView=" + this.c + ", iconView=" + this.d + ", bodyView=" + this.e + ", mediaView=" + this.f + ", ctaView=" + this.g + ", privacyIconView=" + this.h + ")";
    }
}
