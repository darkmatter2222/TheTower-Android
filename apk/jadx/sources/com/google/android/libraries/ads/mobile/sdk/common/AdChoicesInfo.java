package com.google.android.libraries.ads.mobile.sdk.common;

import com.ironsource.C3510b4;
import java.util.List;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;", "", "", "a", "Ljava/lang/String;", "getText", "()Ljava/lang/String;", C3510b4.i.K0, "", "Lcom/google/android/libraries/ads/mobile/sdk/common/Image;", "b", "Ljava/util/List;", "getImages", "()Ljava/util/List;", "images", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class AdChoicesInfo {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final String text;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final List images;

    public AdChoicesInfo(String text, List<Image> images) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(images, "images");
        this.text = text;
        this.images = images;
    }

    public final List<Image> getImages() {
        return this.images;
    }

    public final String getText() {
        return this.text;
    }
}
