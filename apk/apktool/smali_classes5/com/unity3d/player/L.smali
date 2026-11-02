.class public final Lcom/unity3d/player/L;
.super Lcom/unity3d/player/UnityPlayer$b;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayer;II)V
    .locals 0

    .line 435
    iput p2, p0, Lcom/unity3d/player/L;->b:I

    iput p3, p0, Lcom/unity3d/player/L;->c:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer$b;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 438
    iget v0, p0, Lcom/unity3d/player/L;->b:I

    iget v1, p0, Lcom/unity3d/player/L;->c:I

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$smonNodeScrolled(II)Z

    return-void
.end method
