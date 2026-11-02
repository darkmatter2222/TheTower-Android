package com.google.android.libraries.ads.mobile.sdk.nativead;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import kotlin.av1;
import kotlin.m32;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016B\u0019\b\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0015\u0010\u0019B!\b\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u0015\u0010\u001cB)\b\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001a¢\u0006\u0004\b\u0015\u0010\u001eR.\u0010\n\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR.\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u000b8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001f"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;", "Lcom/google/android/gms/ads/nativead/MediaView;", "Landroid/widget/ImageView$ScaleType;", "value", "a", "Landroid/widget/ImageView$ScaleType;", "getImageScaleType", "()Landroid/widget/ImageView$ScaleType;", "setImageScaleType", "(Landroid/widget/ImageView$ScaleType;)V", "imageScaleType", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;", "b", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;", "getMediaContent", "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;", "setMediaContent", "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;)V", "mediaContent", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class MediaView extends com.google.android.gms.ads.nativead.MediaView {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private ImageView.ScaleType imageScaleType;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private MediaContent mediaContent;
    private av1 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaView(Context context, AttributeSet attrs, int i) {
        super(context, attrs, i);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaView(Context context, AttributeSet attrs, int i, int i2) {
        super(context, attrs, i, i2);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
    }

    public final void a(m32 m32Var) {
        synchronized (this) {
            this.c = m32Var;
            Unit unit = Unit.INSTANCE;
        }
        ImageView.ScaleType scaleType = this.imageScaleType;
        if (scaleType != null) {
            m32Var.a(scaleType);
        }
    }

    public final ImageView.ScaleType getImageScaleType() {
        return this.imageScaleType;
    }

    public final MediaContent getMediaContent() {
        return this.mediaContent;
    }

    public final void setImageScaleType(ImageView.ScaleType scaleType) {
        av1 av1Var;
        this.imageScaleType = scaleType;
        if (scaleType != null) {
            synchronized (this) {
                av1Var = this.c;
            }
            if (av1Var != null) {
                ((m32) av1Var).a(scaleType);
            }
        }
    }

    public final void setMediaContent(MediaContent mediaContent) {
        InternalNativeAd internalNativeAdA;
        this.mediaContent = mediaContent;
        if (mediaContent == null || (internalNativeAdA = mediaContent.a()) == null) {
            return;
        }
        internalNativeAdA.a(this);
    }
}
