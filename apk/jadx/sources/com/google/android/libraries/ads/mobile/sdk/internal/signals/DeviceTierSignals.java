package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceTierSignals;", "", "", "advertisedMemoryTier", "Ljava/lang/Integer;", "availableMemoryTier", "availableProcessorsTier", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class DeviceTierSignals {

    @SerializedName("ad_mem_tier")
    public Integer advertisedMemoryTier;

    @SerializedName("avai_mem_tier")
    public Integer availableMemoryTier;

    @SerializedName("avai_proc_tier")
    public Integer availableProcessorsTier;

    public DeviceTierSignals() {
        this(0);
    }

    public /* synthetic */ DeviceTierSignals(int i) {
        this(null, null, null);
    }

    public DeviceTierSignals(Integer num, Integer num2, Integer num3) {
        this.advertisedMemoryTier = num;
        this.availableMemoryTier = num2;
        this.availableProcessorsTier = num3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceTierSignals)) {
            return false;
        }
        DeviceTierSignals deviceTierSignals = (DeviceTierSignals) obj;
        return Intrinsics.areEqual(this.advertisedMemoryTier, deviceTierSignals.advertisedMemoryTier) && Intrinsics.areEqual(this.availableMemoryTier, deviceTierSignals.availableMemoryTier) && Intrinsics.areEqual(this.availableProcessorsTier, deviceTierSignals.availableProcessorsTier);
    }

    public final int hashCode() {
        Integer num = this.advertisedMemoryTier;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.availableMemoryTier;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.availableProcessorsTier;
        return iHashCode2 + (num3 != null ? num3.hashCode() : 0);
    }

    public final String toString() {
        return "DeviceTierSignals(advertisedMemoryTier=" + this.advertisedMemoryTier + ", availableMemoryTier=" + this.availableMemoryTier + ", availableProcessorsTier=" + this.availableProcessorsTier + ")";
    }
}
