package kotlin;

import android.app.Activity;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAd;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdOptions;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdPosition;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdPresentationScope;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class mn2 extends eq implements PictureInPictureAd {
    public final do2 b;
    public final zz2 c;
    public PictureInPictureAdPresentationScope d;
    public PictureInPictureAdEventCallback e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mn2(ck1 internalAd, do2 pipAdView, zz2 loader) {
        super(internalAd);
        Intrinsics.checkNotNullParameter(internalAd, "internalAd");
        Intrinsics.checkNotNullParameter(pipAdView, "pipAdView");
        Intrinsics.checkNotNullParameter(loader, "loader");
        this.b = pipAdView;
        this.c = loader;
        this.d = PictureInPictureAdPresentationScope.SCREEN;
    }

    @Override // kotlin.eq, com.google.android.libraries.ads.mobile.sdk.common.Ad
    public final void destroy() {
        this.c.b();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAd
    public final PictureInPictureAdEventCallback getAdEventCallback() {
        return this.e;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAd
    public final PictureInPictureAdPosition getPosition() {
        return this.b.d;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAd
    public final PictureInPictureAdPresentationScope getPresentationScope() {
        return this.d;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAd
    public final void hide() {
        this.c.f().a();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAd
    public final void setAdEventCallback(PictureInPictureAdEventCallback pictureInPictureAdEventCallback) {
        this.e = pictureInPictureAdEventCallback;
        ((ck1) this.c.u.a("The backing field has not yet been initialized.")).j().a(pictureInPictureAdEventCallback);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAd
    public final void show(Activity activity, PictureInPictureAdOptions options) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(options, "options");
        this.d = options.getPresentationScope();
        this.c.f().a(activity, options, true);
    }
}
