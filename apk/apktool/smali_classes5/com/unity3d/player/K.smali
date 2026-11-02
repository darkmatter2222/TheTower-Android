.class public final Lcom/unity3d/player/K;
.super Lcom/unity3d/player/UnityPlayer$b;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/unity3d/player/N;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/N;Lcom/unity3d/player/UnityPlayer;II)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/unity3d/player/K;->d:Lcom/unity3d/player/N;

    iput p3, p0, Lcom/unity3d/player/K;->b:I

    iput p4, p0, Lcom/unity3d/player/K;->c:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/unity3d/player/UnityPlayer$b;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 412
    iget v0, p0, Lcom/unity3d/player/K;->b:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 414
    iget v0, p0, Lcom/unity3d/player/K;->c:I

    invoke-static {v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$smonNodeIncremented(I)Z

    goto :goto_0

    .line 418
    :cond_0
    iget v0, p0, Lcom/unity3d/player/K;->c:I

    invoke-static {v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$smonNodeDecremented(I)Z

    .line 422
    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/K;->d:Lcom/unity3d/player/N;

    iget-object v0, v0, Lcom/unity3d/player/N;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    iget v1, p0, Lcom/unity3d/player/K;->c:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/UnityAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    return-void
.end method
