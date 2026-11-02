package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\f\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u000f\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u00118\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;", "", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;", "batterySignals", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BrowserSignals;", "browserSignals", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BrowserSignals;", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;", "memorySignals", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceTierSignals;", "deviceTierSignals", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceTierSignals;", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/NetworkSignals;", "networkSignals", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/NetworkSignals;", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PlayStoreSignals;", "playStoreSignals", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PlayStoreSignals;", "", "buildName", "Ljava/lang/String;", "", "remainingDataPartitionSpaceKilobytes", "Ljava/lang/Long;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class DeviceSignals {

    @SerializedName("battery")
    public final BatterySignals batterySignals;

    @SerializedName("browser")
    public final BrowserSignals browserSignals;

    @SerializedName("build")
    public String buildName;

    @SerializedName("device_tier")
    public final DeviceTierSignals deviceTierSignals;

    @SerializedName("android_mem_info")
    public MemorySignals memorySignals;

    @SerializedName("network")
    public final NetworkSignals networkSignals;

    @SerializedName("play_store")
    public final PlayStoreSignals playStoreSignals;

    @SerializedName("remaining_data_partition_space")
    public Long remainingDataPartitionSpaceKilobytes;

    public DeviceSignals() {
        this(0);
    }

    public /* synthetic */ DeviceSignals(int i) {
        this(new BatterySignals(0), new BrowserSignals(0), new MemorySignals(0), new DeviceTierSignals(0), new NetworkSignals(0), new PlayStoreSignals(0), null, null);
    }

    public DeviceSignals(BatterySignals batterySignals, BrowserSignals browserSignals, MemorySignals memorySignals, DeviceTierSignals deviceTierSignals, NetworkSignals networkSignals, PlayStoreSignals playStoreSignals, String str, Long l) {
        Intrinsics.checkNotNullParameter(batterySignals, "batterySignals");
        Intrinsics.checkNotNullParameter(browserSignals, "browserSignals");
        Intrinsics.checkNotNullParameter(memorySignals, "memorySignals");
        Intrinsics.checkNotNullParameter(deviceTierSignals, "deviceTierSignals");
        Intrinsics.checkNotNullParameter(networkSignals, "networkSignals");
        Intrinsics.checkNotNullParameter(playStoreSignals, "playStoreSignals");
        this.batterySignals = batterySignals;
        this.browserSignals = browserSignals;
        this.memorySignals = memorySignals;
        this.deviceTierSignals = deviceTierSignals;
        this.networkSignals = networkSignals;
        this.playStoreSignals = playStoreSignals;
        this.buildName = str;
        this.remainingDataPartitionSpaceKilobytes = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceSignals)) {
            return false;
        }
        DeviceSignals deviceSignals = (DeviceSignals) obj;
        return Intrinsics.areEqual(this.batterySignals, deviceSignals.batterySignals) && Intrinsics.areEqual(this.browserSignals, deviceSignals.browserSignals) && Intrinsics.areEqual(this.memorySignals, deviceSignals.memorySignals) && Intrinsics.areEqual(this.deviceTierSignals, deviceSignals.deviceTierSignals) && Intrinsics.areEqual(this.networkSignals, deviceSignals.networkSignals) && Intrinsics.areEqual(this.playStoreSignals, deviceSignals.playStoreSignals) && Intrinsics.areEqual(this.buildName, deviceSignals.buildName) && Intrinsics.areEqual(this.remainingDataPartitionSpaceKilobytes, deviceSignals.remainingDataPartitionSpaceKilobytes);
    }

    public final int hashCode() {
        int iHashCode = (this.playStoreSignals.hashCode() + ((this.networkSignals.hashCode() + ((this.deviceTierSignals.hashCode() + ((this.memorySignals.hashCode() + ((this.browserSignals.hashCode() + (this.batterySignals.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        String str = this.buildName;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.remainingDataPartitionSpaceKilobytes;
        return iHashCode2 + (l != null ? l.hashCode() : 0);
    }

    public final String toString() {
        return "DeviceSignals(batterySignals=" + this.batterySignals + ", browserSignals=" + this.browserSignals + ", memorySignals=" + this.memorySignals + ", deviceTierSignals=" + this.deviceTierSignals + ", networkSignals=" + this.networkSignals + ", playStoreSignals=" + this.playStoreSignals + ", buildName=" + this.buildName + ", remainingDataPartitionSpaceKilobytes=" + this.remainingDataPartitionSpaceKilobytes + ")";
    }
}
