.class public final Lcom/unity3d/player/Z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/unity3d/player/c1;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/c1;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/unity3d/player/Z0;->a:Lcom/unity3d/player/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/unity3d/player/Z0;->a:Lcom/unity3d/player/c1;

    iget-object v0, v0, Lcom/unity3d/player/c1;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->onPause()V

    return-void
.end method
