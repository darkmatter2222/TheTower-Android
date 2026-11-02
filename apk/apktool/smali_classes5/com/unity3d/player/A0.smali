.class public final Lcom/unity3d/player/A0;
.super Lcom/unity3d/player/UnityPlayer$b;
.source "SourceFile"


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/unity3d/player/UnityPlayerForActivityOrService;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;Z)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/unity3d/player/A0;->c:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iput-boolean p2, p0, Lcom/unity3d/player/A0;->b:Z

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer$b;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/unity3d/player/A0;->c:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iget-boolean v1, p0, Lcom/unity3d/player/A0;->b:Z

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$mnativeSetKeyboardIsVisible(Lcom/unity3d/player/UnityPlayerForActivityOrService;Z)V

    return-void
.end method
