package kotlin;

import android.graphics.drawable.Drawable;
import com.google.android.libraries.ads.mobile.sdk.common.VideoController;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.MediaContent;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class su1 implements MediaContent {
    public final InternalNativeAd a;

    public su1(InternalNativeAd internalNativeAd) {
        Intrinsics.checkNotNullParameter(internalNativeAd, "internalNativeAd");
        this.a = internalNativeAd;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.MediaContent
    public final InternalNativeAd a() {
        return this.a;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.MediaContent
    public final float getAspectRatio() {
        Float fValueOf;
        Drawable drawable;
        int i;
        v14 v14VarE;
        int i2;
        float intrinsicWidth;
        float intrinsicHeight;
        hl1 s = this.a.getS();
        s02 s02Var = s.a;
        float f = s02Var.s;
        if (f != 0.0f) {
            return f;
        }
        q41 q41Var = s02Var.l;
        if (q41Var != null) {
            return q41Var.a();
        }
        Drawable drawable2 = s.b;
        if (drawable2 != null) {
            Intrinsics.checkNotNullParameter(drawable2, "<this>");
            if (drawable2.getIntrinsicWidth() != -1 && drawable2.getIntrinsicHeight() != -1) {
                intrinsicWidth = drawable2.getIntrinsicWidth();
                intrinsicHeight = drawable2.getIntrinsicHeight();
                return intrinsicWidth / intrinsicHeight;
            }
            return 0.0f;
        }
        r31 r31Var = s02Var.j;
        if (r31Var != null && (i2 = (v14VarE = r31Var.e()).c) > 0) {
            intrinsicWidth = v14VarE.b;
            intrinsicHeight = i2;
            return intrinsicWidth / intrinsicHeight;
        }
        km1 km1Var = s.a.f;
        if (km1Var != null) {
            int i3 = km1Var.d;
            fValueOf = Float.valueOf((i3 == -1 || (i = km1Var.e) == -1) ? 0.0f : i3 / i);
        } else {
            fValueOf = null;
        }
        if (fValueOf != null && !Intrinsics.areEqual(fValueOf, 0.0f)) {
            return fValueOf.floatValue();
        }
        km1 km1Var2 = s.a.f;
        if (km1Var2 != null && (drawable = km1Var2.a) != null) {
            Intrinsics.checkNotNullParameter(drawable, "<this>");
            if (drawable.getIntrinsicWidth() != -1 && drawable.getIntrinsicHeight() != -1) {
                return drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
            }
        }
        return 0.0f;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.MediaContent
    public final float getCurrentTime() {
        float f;
        q41 q41Var = this.a.getS().a.l;
        if (q41Var == null) {
            return 0.0f;
        }
        synchronized (q41Var.f) {
            f = q41Var.g;
        }
        return f;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.MediaContent
    public final float getDuration() {
        float f;
        q41 q41Var = this.a.getS().a.l;
        if (q41Var == null) {
            return 0.0f;
        }
        synchronized (q41Var.f) {
            f = q41Var.c;
        }
        return f;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.MediaContent
    public final boolean getHasVideoContent() {
        return this.a.getS().e;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.MediaContent
    public final Drawable getMainImage() {
        hl1 s = this.a.getS();
        Drawable drawable = s.c;
        if (drawable != null) {
            return drawable;
        }
        km1 km1Var = s.a.f;
        if (km1Var != null) {
            return km1Var.a;
        }
        return null;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.MediaContent
    public final VideoController getVideoController() {
        return this.a.getS().d;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.MediaContent
    public final void setMainImage(Drawable drawable) {
        hl1 s = this.a.getS();
        s.b = drawable;
        s.c = drawable;
    }
}
