.class public final Lcom/unity3d/player/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:Lcom/unity3d/player/UnityPlayer;

.field public final synthetic c:Lcom/unity3d/player/i;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/i;Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/unity3d/player/c;->c:Lcom/unity3d/player/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p2, p0, Lcom/unity3d/player/c;->b:Lcom/unity3d/player/UnityPlayer;

    .line 387
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/c;->a:Ljava/util/HashSet;

    .line 388
    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V
    .locals 1

    monitor-enter p0

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/c;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onStateUpdate(Ljava/lang/Object;)V
    .locals 11

    .line 379
    check-cast p1, Lcom/google/android/play/core/assetpacks/AssetPackState;

    monitor-enter p0

    .line 394
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 395
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 396
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v0

    if-nez v0, :cond_3

    .line 398
    :cond_0
    sget-object v1, Lcom/unity3d/player/i;->e:Lcom/unity3d/player/i;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 400
    :try_start_1
    iget-object v0, p0, Lcom/unity3d/player/c;->c:Lcom/unity3d/player/i;

    iget-object v0, v0, Lcom/unity3d/player/i;->c:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 401
    iget-object v0, p0, Lcom/unity3d/player/c;->c:Lcom/unity3d/player/i;

    iget-object v0, v0, Lcom/unity3d/player/i;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/unity3d/player/c;->c:Lcom/unity3d/player/i;

    iget-object v2, v0, Lcom/unity3d/player/i;->d:Lcom/unity3d/player/c;

    .line 120
    instance-of v3, v2, Lcom/unity3d/player/c;

    if-nez v3, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, v0, Lcom/unity3d/player/i;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {v0, v2}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->unregisterListener(Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;)V

    .line 404
    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/c;->c:Lcom/unity3d/player/i;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/unity3d/player/i;->d:Lcom/unity3d/player/c;

    .line 406
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/unity3d/player/c;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_4

    monitor-exit p0

    return-void

    .line 412
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/unity3d/player/c;->b:Lcom/unity3d/player/UnityPlayer;

    new-instance v1, Lcom/unity3d/player/b;

    iget-object v2, p0, Lcom/unity3d/player/c;->a:Ljava/util/HashSet;

    .line 432
    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 414
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v3

    .line 415
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v4

    .line 416
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->totalBytesToDownload()J

    move-result-wide v5

    .line 417
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->bytesDownloaded()J

    move-result-wide v7

    .line 418
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->transferProgressPercentage()I

    move-result v9

    .line 419
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v10

    invoke-direct/range {v1 .. v10}, Lcom/unity3d/player/b;-><init>(Ljava/util/Set;Ljava/lang/String;IJJII)V

    .line 412
    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    .line 422
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 406
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    monitor-exit p0

    throw p1
.end method
