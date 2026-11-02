.class public final Lcom/unity3d/player/P0;
.super Lcom/unity3d/player/UnityPlayer$b;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/unity3d/player/UnityPlayerForGameActivity;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayerForGameActivity;II)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/unity3d/player/P0;->d:Lcom/unity3d/player/UnityPlayerForGameActivity;

    iput p2, p0, Lcom/unity3d/player/P0;->b:I

    iput p3, p0, Lcom/unity3d/player/P0;->c:I

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer$b;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/unity3d/player/P0;->d:Lcom/unity3d/player/UnityPlayerForGameActivity;

    iget v1, p0, Lcom/unity3d/player/P0;->b:I

    iget v2, p0, Lcom/unity3d/player/P0;->c:I

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayerForGameActivity;->-$$Nest$mnativeOrientationChanged(Lcom/unity3d/player/UnityPlayerForGameActivity;II)V

    return-void
.end method
