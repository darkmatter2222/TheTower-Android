package com.google.android.libraries.ads.mobile.sdk.pip;

import com.ironsource.C3510b4;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000eR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;", "", "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;", "a", "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;", "getPresentationScope", "()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;", "presentationScope", "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;", "b", "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;", "getPosition", "()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;", C3510b4.i.L, "Builder", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class PictureInPictureAdOptions {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final PictureInPictureAdPresentationScope presentationScope;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final PictureInPictureAdPosition position;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;", "", "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;", "presentationScope", "setPresentationScope", "(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;)Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;", C3510b4.i.L, "setPosition", "(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;)Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;", "build", "()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;", "<init>", "()V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Builder {
        private PictureInPictureAdPresentationScope a = PictureInPictureAdPresentationScope.SCREEN;
        private PictureInPictureAdPosition b = PictureInPictureAdPosition.DEFAULT;

        public final PictureInPictureAdOptions build() {
            return new PictureInPictureAdOptions(this.a, this.b, 0);
        }

        public final Builder setPosition(PictureInPictureAdPosition position) {
            Intrinsics.checkNotNullParameter(position, "position");
            this.b = position;
            return this;
        }

        public final Builder setPresentationScope(PictureInPictureAdPresentationScope presentationScope) {
            Intrinsics.checkNotNullParameter(presentationScope, "presentationScope");
            this.a = presentationScope;
            return this;
        }
    }

    private PictureInPictureAdOptions(PictureInPictureAdPresentationScope pictureInPictureAdPresentationScope, PictureInPictureAdPosition pictureInPictureAdPosition) {
        this.presentationScope = pictureInPictureAdPresentationScope;
        this.position = pictureInPictureAdPosition;
    }

    public /* synthetic */ PictureInPictureAdOptions(PictureInPictureAdPresentationScope pictureInPictureAdPresentationScope, PictureInPictureAdPosition pictureInPictureAdPosition, int i) {
        this(pictureInPictureAdPresentationScope, pictureInPictureAdPosition);
    }

    public final PictureInPictureAdPosition getPosition() {
        return this.position;
    }

    public final PictureInPictureAdPresentationScope getPresentationScope() {
        return this.presentationScope;
    }
}
