package com.google.android.gms.ads;

import kotlin.yx3;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u0010R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/google/android/gms/ads/VideoOptions;", "", "", "a", "Z", "getStartMuted", "()Z", "startMuted", "b", "getCustomControlsRequested", "customControlsRequested", "c", "getClickToExpandRequested", "clickToExpandRequested", "Companion", "Builder", "ads_mobile_sdk/yx3", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class VideoOptions {
    public static final yx3 Companion = new yx3();
    public static final boolean DEFAULT_START_MUTED = true;

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final boolean startMuted;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final boolean customControlsRequested;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final boolean clickToExpandRequested;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\u0005J\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/google/android/gms/ads/VideoOptions$Builder;", "", "", "startMuted", "setStartMuted", "(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;", "customControlsRequested", "setCustomControlsRequested", "clickToExpandRequested", "setClickToExpandRequested", "Lcom/google/android/gms/ads/VideoOptions;", "build", "()Lcom/google/android/gms/ads/VideoOptions;", "<init>", "()V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Builder {
        private boolean a = true;
        private boolean b;
        private boolean c;

        public final VideoOptions build() {
            return new VideoOptions(this.a, this.b, this.c, 0);
        }

        public final Builder setClickToExpandRequested(boolean clickToExpandRequested) {
            this.c = clickToExpandRequested;
            return this;
        }

        public final Builder setCustomControlsRequested(boolean customControlsRequested) {
            this.b = customControlsRequested;
            return this;
        }

        public final Builder setStartMuted(boolean startMuted) {
            this.a = startMuted;
            return this;
        }
    }

    private VideoOptions(boolean z, boolean z2, boolean z3) {
        this.startMuted = z;
        this.customControlsRequested = z2;
        this.clickToExpandRequested = z3;
    }

    public /* synthetic */ VideoOptions(boolean z, boolean z2, boolean z3, int i) {
        this(z, z2, z3);
    }

    public final boolean getClickToExpandRequested() {
        return this.clickToExpandRequested;
    }

    public final boolean getCustomControlsRequested() {
        return this.customControlsRequested;
    }

    public final boolean getStartMuted() {
        return this.startMuted;
    }
}
