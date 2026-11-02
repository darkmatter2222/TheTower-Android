package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import kotlin.y1;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdSizeBundle;", "", "", "width", "I", "height", "", "isFluid", "Z", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class AdSizeBundle {

    @SerializedName("height")
    public final int height;

    @SerializedName("is_fluid_height")
    public final boolean isFluid;

    @SerializedName("width")
    public final int width;

    public AdSizeBundle(int i, int i2, boolean z) {
        this.width = i;
        this.height = i2;
        this.isFluid = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdSizeBundle)) {
            return false;
        }
        AdSizeBundle adSizeBundle = (AdSizeBundle) obj;
        return this.width == adSizeBundle.width && this.height == adSizeBundle.height && this.isFluid == adSizeBundle.isFluid;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    public final int hashCode() {
        int iA = y1.a(this.height, Integer.hashCode(this.width) * 31, 31);
        boolean z = this.isFluid;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iA + r1;
    }

    public final String toString() {
        return "AdSizeBundle(width=" + this.width + ", height=" + this.height + ", isFluid=" + this.isFluid + ")";
    }
}
