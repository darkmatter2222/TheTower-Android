.class public final Lcom/unity3d/player/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

.field public final b:Lcom/unity3d/player/UnityPlayer;

.field public final c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;[Ljava/lang/String;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/unity3d/player/f;->b:Lcom/unity3d/player/UnityPlayer;

    .line 174
    iput-object p2, p0, Lcom/unity3d/player/f;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    .line 175
    iput-object p3, p0, Lcom/unity3d/player/f;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 14

    .line 184
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/assetpacks/AssetPackStates;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->packStates()Ljava/util/Map;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 205
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 206
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/assetpacks/AssetPackState;

    .line 209
    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v3

    const/4 v4, 0x4

    if-nez v3, :cond_2

    .line 210
    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 211
    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_2

    .line 212
    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 218
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v6

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v12

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->totalBytes()J

    move-result-wide v7

    if-ne v6, v4, :cond_3

    move-wide v9, v7

    goto :goto_2

    :cond_3
    const-wide/16 v2, 0x0

    move-wide v9, v2

    .line 229
    :goto_2
    iget-object v2, p0, Lcom/unity3d/player/f;->b:Lcom/unity3d/player/UnityPlayer;

    new-instance v3, Lcom/unity3d/player/b;

    iget-object v4, p0, Lcom/unity3d/player/f;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    .line 230
    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/unity3d/player/b;-><init>(Ljava/util/Set;Ljava/lang/String;IJJII)V

    .line 229
    invoke-virtual {v2, v3}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 220
    :cond_4
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 222
    sget-object p1, Lcom/unity3d/player/i;->e:Lcom/unity3d/player/i;

    iget-object v0, p0, Lcom/unity3d/player/f;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v2, p0, Lcom/unity3d/player/f;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    sget-object v3, Lcom/unity3d/player/i;->e:Lcom/unity3d/player/i;

    monitor-enter v3

    .line 93
    :try_start_1
    iget-object v4, p1, Lcom/unity3d/player/i;->d:Lcom/unity3d/player/c;

    if-nez v4, :cond_5

    .line 95
    new-instance v4, Lcom/unity3d/player/c;

    invoke-direct {v4, p1, v0, v2}, Lcom/unity3d/player/c;-><init>(Lcom/unity3d/player/i;Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V

    .line 96
    iget-object v0, p1, Lcom/unity3d/player/i;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {v0, v4}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->registerListener(Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;)V

    .line 97
    iput-object v4, p1, Lcom/unity3d/player/i;->d:Lcom/unity3d/player/c;

    goto :goto_3

    .line 101
    :cond_5
    invoke-virtual {v4, v2}, Lcom/unity3d/player/c;->a(Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V

    .line 104
    :goto_3
    iget-object v0, p1, Lcom/unity3d/player/i;->c:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object p1, p1, Lcom/unity3d/player/i;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {p1, v1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->fetch(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    .line 106
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 188
    iget-object v0, p0, Lcom/unity3d/player/f;->c:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    .line 191
    aget-object v6, v0, v2

    .line 152
    :cond_6
    instance-of v0, p1, Lcom/google/android/play/core/assetpacks/AssetPackException;

    if-eqz v0, :cond_7

    .line 154
    check-cast p1, Lcom/google/android/play/core/assetpacks/AssetPackException;

    .line 155
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackException;->getErrorCode()I

    move-result p1

    :goto_4
    move v13, p1

    goto :goto_5

    .line 158
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    const/16 p1, -0x64

    goto :goto_4

    .line 229
    :goto_5
    iget-object p1, p0, Lcom/unity3d/player/f;->b:Lcom/unity3d/player/UnityPlayer;

    new-instance v4, Lcom/unity3d/player/b;

    iget-object v0, p0, Lcom/unity3d/player/f;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    .line 230
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/unity3d/player/b;-><init>(Ljava/util/Set;Ljava/lang/String;IJJII)V

    .line 229
    invoke-virtual {p1, v4}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 196
    :cond_8
    sget-object p1, Lcom/unity3d/player/i;->e:Lcom/unity3d/player/i;

    iget-object v1, p0, Lcom/unity3d/player/f;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    array-length v4, v0

    move v5, v2

    :goto_6
    if-ge v5, v4, :cond_9

    aget-object v6, v0, v5

    .line 82
    iget-object v7, p1, Lcom/unity3d/player/i;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->getPackStates(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v7

    new-instance v8, Lcom/unity3d/player/f;

    iget-object v9, p1, Lcom/unity3d/player/i;->a:Lcom/unity3d/player/UnityPlayer;

    new-array v10, v3, [Ljava/lang/String;

    aput-object v6, v10, v2

    invoke-direct {v8, v9, v1, v10}, Lcom/unity3d/player/f;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;[Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    return-void
.end method
