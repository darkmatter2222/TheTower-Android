package kotlin;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.OnAppEventListener;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class q51 implements a51 {
    public final String a;
    public final long b;
    public final h51 c;
    public final cw2 d;
    public final f0 e;
    public final Context f;
    public pk1 g;

    public q51(String adUnitId, long j, h51 afmaMessenger, pf0 provider, f0 activityTracker, Context context) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(afmaMessenger, "afmaMessenger");
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = adUnitId;
        this.b = j;
        this.c = afmaMessenger;
        this.d = provider;
        this.e = activityTracker;
        this.f = context;
    }

    @Override // kotlin.a51
    public final void a() {
        pk1 pk1Var = this.g;
        if (pk1Var == null) {
            return;
        }
        fm0 fm0VarJ = pk1Var.j();
        p51 p51Var = new p51(this);
        synchronized (fm0VarJ) {
            fm0VarJ.h = p51Var;
            fm0VarJ.a((AdEventCallback) p51Var);
            fm0VarJ.a((OnAppEventListener) p51Var);
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
        Context contextG = this.e.g();
        if (contextG == null) {
            contextG = this.f;
        }
        pk1Var.a(contextG);
    }

    @Override // kotlin.a51
    public final void a(s51 h5LoadParams) {
        Intrinsics.checkNotNullParameter(h5LoadParams, "h5LoadParams");
        oz2 oz2Var = (oz2) this.d.get();
        j53 j53Var = j53.h;
        di0 di0Var = (di0) oz2Var;
        di0Var.getClass();
        di0Var.d = j53Var;
        ((kz2) ((di0) ((oz2) ((di0) ((oz2) ((di0) ((oz2) ((di0) ((oz2) di0Var.a(h5LoadParams.a))).a((BaseRequest) h5LoadParams.a))).b(false))).a(false))).b().i.get()).a(new o51(this));
    }

    @Override // kotlin.a51
    public final void dispose() {
        pk1 pk1Var = this.g;
        if (pk1Var != null) {
            pk1Var.destroy();
        }
        this.g = null;
    }

    @Override // kotlin.a51
    public final String getAdUnitId() {
        return this.a;
    }
}
