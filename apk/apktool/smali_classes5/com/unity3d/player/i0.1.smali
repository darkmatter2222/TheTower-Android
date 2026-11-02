.class public final Lcom/unity3d/player/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    .line 1096
    iput-object p1, p0, Lcom/unity3d/player/i0;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1097
    iget-object v0, p0, Lcom/unity3d/player/i0;->a:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$fputmVideoPlayerProxy(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/c1;)V

    return-void
.end method
