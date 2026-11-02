.class public final Lcom/unity3d/player/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;Z)V
    .locals 0

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput-object p1, p0, Lcom/unity3d/player/d;->a:Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;

    .line 446
    iput-boolean p2, p0, Lcom/unity3d/player/d;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/unity3d/player/d;->a:Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;

    iget-boolean v1, p0, Lcom/unity3d/player/d;->b:Z

    invoke-interface {v0, v1}, Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;->onMobileDataConfirmationResult(Z)V

    return-void
.end method
