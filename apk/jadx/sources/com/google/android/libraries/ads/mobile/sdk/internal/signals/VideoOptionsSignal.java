package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;", "", "", "startMuted", "Z", "clickToExpandRequested", "customControlsRequested", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class VideoOptionsSignal {

    @SerializedName("clickToExpandRequested")
    public boolean clickToExpandRequested;

    @SerializedName("customControlsRequested")
    public boolean customControlsRequested;

    @SerializedName("startMuted")
    public boolean startMuted;

    public VideoOptionsSignal() {
        this(0);
    }

    public /* synthetic */ VideoOptionsSignal(int i) {
        this(true, false, false);
    }

    public VideoOptionsSignal(boolean z, boolean z2, boolean z3) {
        this.startMuted = z;
        this.clickToExpandRequested = z2;
        this.customControlsRequested = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoOptionsSignal)) {
            return false;
        }
        VideoOptionsSignal videoOptionsSignal = (VideoOptionsSignal) obj;
        return this.startMuted == videoOptionsSignal.startMuted && this.clickToExpandRequested == videoOptionsSignal.clickToExpandRequested && this.customControlsRequested == videoOptionsSignal.customControlsRequested;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    public final int hashCode() {
        boolean z = this.startMuted;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        boolean z2 = this.clickToExpandRequested;
        ?? r2 = z2;
        if (z2) {
            r2 = 1;
        }
        int i2 = (i + r2) * 31;
        boolean z3 = this.customControlsRequested;
        return i2 + (z3 ? 1 : z3);
    }

    public final String toString() {
        return "VideoOptionsSignal(startMuted=" + this.startMuted + ", clickToExpandRequested=" + this.clickToExpandRequested + ", customControlsRequested=" + this.customControlsRequested + ")";
    }
}
