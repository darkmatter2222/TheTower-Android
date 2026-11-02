.class public final Lcom/unity3d/player/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Lcom/unity3d/player/i;


# instance fields
.field public final a:Lcom/unity3d/player/UnityPlayer;

.field public final b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

.field public final c:Ljava/util/HashSet;

.field public d:Lcom/unity3d/player/c;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/unity3d/player/i;->e:Lcom/unity3d/player/i;

    if-nez v0, :cond_0

    .line 42
    iput-object p1, p0, Lcom/unity3d/player/i;->a:Lcom/unity3d/player/UnityPlayer;

    .line 43
    invoke-static {p2}, Lcom/google/android/play/core/assetpacks/AssetPackManagerFactory;->getInstance(Landroid/content/Context;)Lcom/google/android/play/core/assetpacks/AssetPackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/i;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    .line 44
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/i;->c:Ljava/util/HashSet;

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "AssetPackManagerWrapper should be created only once. Use getInstance() instead."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
