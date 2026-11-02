.class public final Lcom/unity3d/player/p0;
.super Lcom/unity3d/player/UnityPlayer$b;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/view/WindowInsets;

.field public final synthetic c:Lcom/unity3d/player/C0;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/C0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/unity3d/player/p0;->c:Lcom/unity3d/player/C0;

    iput-object p2, p0, Lcom/unity3d/player/p0;->b:Landroid/view/WindowInsets;

    iget-object p1, p1, Lcom/unity3d/player/C0;->a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer$b;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/unity3d/player/p0;->c:Lcom/unity3d/player/C0;

    iget-object v0, v0, Lcom/unity3d/player/C0;->a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iget-object v1, p0, Lcom/unity3d/player/p0;->b:Landroid/view/WindowInsets;

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$mnativeOnApplyWindowInsets(Lcom/unity3d/player/UnityPlayerForActivityOrService;Landroid/view/WindowInsets;)V

    return-void
.end method
