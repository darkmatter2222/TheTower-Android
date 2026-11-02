.class public final Lcom/unity3d/player/J;
.super Lcom/unity3d/player/UnityPlayer$b;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/unity3d/player/N;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/N;Lcom/unity3d/player/UnityPlayer;I)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/unity3d/player/J;->c:Lcom/unity3d/player/N;

    iput p3, p0, Lcom/unity3d/player/J;->b:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/unity3d/player/UnityPlayer$b;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 390
    iget v0, p0, Lcom/unity3d/player/J;->b:I

    invoke-static {v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$smonNodeInvoked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/unity3d/player/J;->c:Lcom/unity3d/player/N;

    iget-object v0, v0, Lcom/unity3d/player/N;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    iget v1, p0, Lcom/unity3d/player/J;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/UnityAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    :cond_0
    return-void
.end method
