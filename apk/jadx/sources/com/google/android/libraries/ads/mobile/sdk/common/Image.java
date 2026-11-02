package com.google.android.libraries.ads.mobile.sdk.common;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u000e¢\u0006\u0004\b\u0014\u0010\u0015R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/Image;", "", "Landroid/graphics/drawable/Drawable;", "a", "Landroid/graphics/drawable/Drawable;", "getDrawable", "()Landroid/graphics/drawable/Drawable;", "drawable", "Landroid/net/Uri;", "b", "Landroid/net/Uri;", "getUri", "()Landroid/net/Uri;", "uri", "", "c", "D", "getScale", "()D", "scale", "<init>", "(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class Image {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final Drawable drawable;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final Uri uri;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final double scale;

    public Image(Drawable drawable, Uri uri, double d) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        this.drawable = drawable;
        this.uri = uri;
        this.scale = d;
    }

    public final Drawable getDrawable() {
        return this.drawable;
    }

    public final double getScale() {
        return this.scale;
    }

    public final Uri getUri() {
        return this.uri;
    }
}
