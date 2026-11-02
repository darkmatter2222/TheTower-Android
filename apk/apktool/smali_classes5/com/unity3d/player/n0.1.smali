.class public final Lcom/unity3d/player/n0;
.super Lcom/unity3d/player/UnityPlayer$b;
.source "SourceFile"


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/unity3d/player/o0;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/o0;Z)V
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/unity3d/player/n0;->c:Lcom/unity3d/player/o0;

    iput-boolean p2, p0, Lcom/unity3d/player/n0;->b:Z

    iget-object p1, p1, Lcom/unity3d/player/o0;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer$b;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 749
    iget-object v0, p0, Lcom/unity3d/player/n0;->c:Lcom/unity3d/player/o0;

    iget-wide v0, v0, Lcom/unity3d/player/o0;->a:J

    iget-boolean v2, p0, Lcom/unity3d/player/n0;->b:Z

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->permissionResponseToNative(JZ)V

    return-void
.end method
