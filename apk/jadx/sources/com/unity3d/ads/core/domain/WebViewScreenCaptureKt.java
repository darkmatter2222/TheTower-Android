package com.unity3d.ads.core.domain;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WebViewScreenCapture.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\b\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000¨\u0006\u0006"}, d2 = {"countBlackPixelRatio", "", "pixels", "", "threshold", "", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class WebViewScreenCaptureKt {
    public static final double countBlackPixelRatio(int[] pixels, int i) {
        Intrinsics.checkNotNullParameter(pixels, "pixels");
        if (pixels.length == 0) {
            return FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        }
        int i2 = 0;
        for (int i3 : pixels) {
            int i4 = (i3 >> 16) & 255;
            int i5 = (i3 >> 8) & 255;
            int i6 = i3 & 255;
            if (i4 < i && i5 < i && i6 < i) {
                i2++;
            }
        }
        return ((double) i2) / ((double) pixels.length);
    }
}
