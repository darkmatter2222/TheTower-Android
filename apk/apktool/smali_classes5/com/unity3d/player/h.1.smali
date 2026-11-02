.class public final Lcom/unity3d/player/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

.field public final b:Lcom/unity3d/player/UnityPlayer;

.field public final c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;[Ljava/lang/String;)V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    .line 267
    iput-object p2, p0, Lcom/unity3d/player/h;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    .line 268
    iput-object p3, p0, Lcom/unity3d/player/h;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 18

    move-object/from16 v1, p0

    .line 274
    iget-object v0, v1, Lcom/unity3d/player/h;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 280
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/AssetPackStates;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->packStates()Ljava/util/Map;

    move-result-object v4

    .line 318
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    .line 319
    new-array v10, v5, [Ljava/lang/String;

    .line 320
    new-array v11, v5, [I

    .line 321
    new-array v12, v5, [I

    .line 323
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/play/core/assetpacks/AssetPackState;

    .line 325
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v3

    .line 326
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v6

    aput v6, v11, v3

    .line 327
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v5

    aput v5, v12, v3

    add-int/2addr v3, v2

    goto :goto_0

    .line 331
    :cond_1
    iget-object v2, v1, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    new-instance v6, Lcom/unity3d/player/g;

    iget-object v7, v1, Lcom/unity3d/player/h;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    .line 333
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->totalBytes()J

    move-result-wide v8

    invoke-direct/range {v6 .. v12}, Lcom/unity3d/player/g;-><init>(Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;J[Ljava/lang/String;[I[I)V

    .line 331
    invoke-virtual {v2, v6}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 286
    iget-object v5, v1, Lcom/unity3d/player/h;->c:[Ljava/lang/String;

    array-length v6, v5

    move v7, v3

    :goto_1
    const/16 v8, -0x64

    if-ge v7, v6, :cond_5

    aget-object v9, v5, v7

    .line 288
    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 290
    iget-object v10, v1, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    new-instance v11, Lcom/unity3d/player/g;

    iget-object v12, v1, Lcom/unity3d/player/h;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    new-array v15, v2, [Ljava/lang/String;

    aput-object v9, v15, v3

    filled-new-array {v3}, [I

    move-result-object v16

    .line 152
    :cond_2
    instance-of v2, v0, Lcom/google/android/play/core/assetpacks/AssetPackException;

    if-eqz v2, :cond_3

    .line 154
    check-cast v0, Lcom/google/android/play/core/assetpacks/AssetPackException;

    .line 155
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/AssetPackException;->getErrorCode()I

    move-result v8

    goto :goto_2

    .line 158
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 295
    :goto_2
    filled-new-array {v8}, [I

    move-result-object v17

    const-wide/16 v13, 0x0

    invoke-direct/range {v11 .. v17}, Lcom/unity3d/player/g;-><init>(Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;J[Ljava/lang/String;[I[I)V

    .line 290
    invoke-virtual {v10, v11}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 304
    :cond_5
    iget-object v2, v1, Lcom/unity3d/player/h;->c:[Ljava/lang/String;

    array-length v4, v2

    new-array v14, v4, [I

    .line 305
    array-length v2, v2

    new-array v15, v2, [I

    move v2, v3

    .line 306
    :goto_3
    iget-object v13, v1, Lcom/unity3d/player/h;->c:[Ljava/lang/String;

    array-length v4, v13

    if-ge v2, v4, :cond_8

    .line 308
    aput v3, v14, v2

    move-object v4, v0

    .line 152
    :cond_6
    instance-of v5, v4, Lcom/google/android/play/core/assetpacks/AssetPackException;

    if-eqz v5, :cond_7

    .line 154
    check-cast v4, Lcom/google/android/play/core/assetpacks/AssetPackException;

    .line 155
    invoke-virtual {v4}, Lcom/google/android/play/core/assetpacks/AssetPackException;->getErrorCode()I

    move-result v4

    goto :goto_4

    .line 158
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v8

    .line 309
    :goto_4
    aput v4, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 311
    :cond_8
    iget-object v0, v1, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    new-instance v9, Lcom/unity3d/player/g;

    iget-object v10, v1, Lcom/unity3d/player/h;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    const-wide/16 v11, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/unity3d/player/g;-><init>(Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;J[Ljava/lang/String;[I[I)V

    invoke-virtual {v0, v9}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
