.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\t\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u000c\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000f\u001a\u00020\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u00118\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;",
        "",
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;",
        "batterySignals",
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;",
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BrowserSignals;",
        "browserSignals",
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BrowserSignals;",
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;",
        "memorySignals",
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;",
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceTierSignals;",
        "deviceTierSignals",
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceTierSignals;",
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/NetworkSignals;",
        "networkSignals",
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/NetworkSignals;",
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PlayStoreSignals;",
        "playStoreSignals",
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PlayStoreSignals;",
        "",
        "buildName",
        "Ljava/lang/String;",
        "",
        "remainingDataPartitionSpaceKilobytes",
        "Ljava/lang/Long;",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final batterySignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "battery"
    .end annotation
.end field

.field public final browserSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BrowserSignals;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "browser"
    .end annotation
.end field

.field public buildName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "build"
    .end annotation
.end field

.field public final deviceTierSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceTierSignals;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_tier"
    .end annotation
.end field

.field public memorySignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "android_mem_info"
    .end annotation
.end field

.field public final networkSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/NetworkSignals;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "network"
    .end annotation
.end field

.field public final playStoreSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PlayStoreSignals;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_store"
    .end annotation
.end field

.field public remainingDataPartitionSpaceKilobytes:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "remaining_data_partition_space"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 9

    .line 16
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;

    const/4 p1, 0x0

    invoke-direct {v1, p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;-><init>(I)V

    .line 17
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BrowserSignals;

    invoke-direct {v2, p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BrowserSignals;-><init>(I)V

    .line 18
    new-instance v3, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;

    invoke-direct {v3, p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;-><init>(I)V

    .line 21
    new-instance v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceTierSignals;

    invoke-direct {v4, p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceTierSignals;-><init>(I)V

    .line 22
    new-instance v5, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/NetworkSignals;

    invoke-direct {v5, p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/NetworkSignals;-><init>(I)V

    .line 25
    new-instance v6, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PlayStoreSignals;

    invoke-direct {v6, p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PlayStoreSignals;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 26
    invoke-direct/range {v0 .. v8}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BrowserSignals;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceTierSignals;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/NetworkSignals;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PlayStoreSignals;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BrowserSignals;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceTierSignals;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/NetworkSignals;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PlayStoreSignals;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "batterySignals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "browserSignals"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memorySignals"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceTierSignals"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkSignals"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playStoreSignals"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->batterySignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;

    .line 5
    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->browserSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BrowserSignals;

    .line 6
    iput-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->memorySignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;

    .line 7
    iput-object p4, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->deviceTierSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceTierSignals;

    .line 10
    iput-object p5, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->networkSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/NetworkSignals;

    .line 11
    iput-object p6, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->playStoreSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PlayStoreSignals;

    .line 14
    iput-object p7, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->buildName:Ljava/lang/String;

    .line 15
    iput-object p8, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->remainingDataPartitionSpaceKilobytes:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->batterySignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->batterySignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->browserSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BrowserSignals;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->browserSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BrowserSignals;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->memorySignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->memorySignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->deviceTierSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceTierSignals;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->deviceTierSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceTierSignals;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->networkSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/NetworkSignals;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->networkSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/NetworkSignals;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->playStoreSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PlayStoreSignals;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->playStoreSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PlayStoreSignals;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->buildName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->buildName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->remainingDataPartitionSpaceKilobytes:Ljava/lang/Long;

    iget-object p1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->remainingDataPartitionSpaceKilobytes:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->batterySignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->browserSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BrowserSignals;

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BrowserSignals;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->memorySignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->deviceTierSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceTierSignals;

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceTierSignals;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->networkSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/NetworkSignals;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/NetworkSignals;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->playStoreSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PlayStoreSignals;

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PlayStoreSignals;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->buildName:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->remainingDataPartitionSpaceKilobytes:Ljava/lang/Long;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->batterySignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->browserSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BrowserSignals;

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->memorySignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;

    iget-object v3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->deviceTierSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceTierSignals;

    iget-object v4, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->networkSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/NetworkSignals;

    iget-object v5, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->playStoreSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PlayStoreSignals;

    iget-object v6, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->buildName:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->remainingDataPartitionSpaceKilobytes:Ljava/lang/Long;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DeviceSignals(batterySignals="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", browserSignals="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", memorySignals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceTierSignals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkSignals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playStoreSignals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buildName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remainingDataPartitionSpaceKilobytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
