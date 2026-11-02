package kotlin;

import android.content.Context;
import android.util.DisplayMetrics;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRequest;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdRequest;
import com.ironsource.C3510b4;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a03 {
    public final qn2 a;
    public final cw2 b;

    public a03(qn2 pipAdConfig, dw2 requestComponentBuilderProvider) {
        Intrinsics.checkNotNullParameter(pipAdConfig, "pipAdConfig");
        Intrinsics.checkNotNullParameter(requestComponentBuilderProvider, "requestComponentBuilderProvider");
        this.a = pipAdConfig;
        this.b = requestComponentBuilderProvider;
    }

    public final zz2 a(Context context, PictureInPictureAdRequest request) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(request, "request");
        qn2 qn2Var = this.a;
        qn2Var.getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        DisplayMetrics displayMetrics = context.getApplicationContext().getResources().getDisplayMetrics();
        float f = displayMetrics.heightPixels;
        float f2 = displayMetrics.density;
        float fMax = Math.max(f / f2, displayMetrics.widthPixels / f2);
        ex0 ex0Var = qn2Var.a;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:picture_in_picture:ratio_of_screen_height", C3510b4.i.W);
        int iFloatValue = (int) (((Number) ex0Var.a("gads:picture_in_picture:ratio_of_screen_height", Float.valueOf(0.25f), yr.e)).floatValue() * fMax);
        BannerAdRequest bannerAdRequestBuild = new BannerAdRequest.Builder(request.getAdUnitId(), new AdSize(iFloatValue, iFloatValue)).build();
        ii0 ii0Var = (ii0) ((d03) this.b.get());
        ii0Var.getClass();
        ii0Var.i = request;
        ii0Var.d = j53.f;
        ii0Var.b = request;
        cz2 cz2VarA = ((bz2) ((bz2) ((bz2) ii0Var.a((BaseRequest) request)).a((BannerRequest) bannerAdRequestBuild).a(bannerAdRequestBuild).b(false)).a(false)).a();
        Intrinsics.checkNotNull(cz2VarA, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.pip.PublisherPipRequestComponent");
        return (zz2) ((ji0) ((e03) cz2VarA)).m.get();
    }
}
