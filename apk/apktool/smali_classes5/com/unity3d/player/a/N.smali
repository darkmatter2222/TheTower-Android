.class public final Lcom/unity3d/player/a/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/unity3d/player/a/P;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/a/P;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/unity3d/player/a/N;->a:Lcom/unity3d/player/a/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/unity3d/player/a/N;->a:Lcom/unity3d/player/a/P;

    iget-object v0, v0, Lcom/unity3d/player/a/P;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestPointerCapture()V

    return-void
.end method
