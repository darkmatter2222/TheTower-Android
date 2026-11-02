.class public final Lcom/unity3d/player/Q;
.super Lcom/unity3d/player/UnityPlayer$b;
.source "SourceFile"


# instance fields
.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayer;Z)V
    .locals 0

    .line 601
    iput-boolean p2, p0, Lcom/unity3d/player/Q;->b:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer$b;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 604
    iget-boolean v0, p0, Lcom/unity3d/player/Q;->b:Z

    invoke-static {v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$smonClosedCaptioningStatusChanged(Z)V

    return-void
.end method
