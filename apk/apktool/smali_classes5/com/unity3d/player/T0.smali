.class public final Lcom/unity3d/player/T0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/unity3d/player/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/VideoPlayer;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/VideoPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/VideoPlayer;->destroyPlayer()V

    .line 139
    iget-object v0, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/VideoPlayer;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/unity3d/player/VideoPlayer;->-$$Nest$mchangeState(Lcom/unity3d/player/VideoPlayer;I)V

    return-void
.end method
