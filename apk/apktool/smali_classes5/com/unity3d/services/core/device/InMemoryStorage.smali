.class public final Lcom/unity3d/services/core/device/InMemoryStorage;
.super Lcom/unity3d/services/core/device/Storage;
.source "InMemoryStorage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/unity3d/services/core/device/InMemoryStorage;",
        "Lcom/unity3d/services/core/device/Storage;",
        "<init>",
        "()V",
        "readStorage",
        "",
        "writeStorage",
        "clearStorage",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    const-string v0, ""

    sget-object v1, Lcom/unity3d/services/core/device/StorageManager$StorageType;->MEMORY:Lcom/unity3d/services/core/device/StorageManager$StorageType;

    invoke-direct {p0, v0, v1}, Lcom/unity3d/services/core/device/Storage;-><init>(Ljava/lang/String;Lcom/unity3d/services/core/device/StorageManager$StorageType;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized clearStorage()Z
    .locals 1

    monitor-enter p0

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/services/core/device/InMemoryStorage;->clearData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized readStorage()Z
    .locals 1

    monitor-enter p0

    .line 6
    monitor-exit p0

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized writeStorage()Z
    .locals 1

    monitor-enter p0

    .line 11
    monitor-exit p0

    const/4 v0, 0x1

    return v0
.end method
