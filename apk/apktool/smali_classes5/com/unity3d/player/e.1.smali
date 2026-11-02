.class public final Lcom/unity3d/player/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final a:Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;

.field public final b:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;)V
    .locals 0

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p1, p0, Lcom/unity3d/player/e;->b:Lcom/unity3d/player/UnityPlayer;

    .line 462
    iput-object p2, p0, Lcom/unity3d/player/e;->a:Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    .line 436
    check-cast p1, Ljava/lang/Integer;

    .line 468
    iget-object v0, p0, Lcom/unity3d/player/e;->a:Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;

    if-eqz v0, :cond_1

    .line 470
    iget-object v1, p0, Lcom/unity3d/player/e;->b:Lcom/unity3d/player/UnityPlayer;

    new-instance v2, Lcom/unity3d/player/d;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v2, v0, p1}, Lcom/unity3d/player/d;-><init>(Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;Z)V

    invoke-virtual {v1, v2}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
