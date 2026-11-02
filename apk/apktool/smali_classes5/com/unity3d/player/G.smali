.class public final Lcom/unity3d/player/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/unity3d/player/UnityAccessibilityDelegate;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityAccessibilityDelegate;II)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/unity3d/player/G;->c:Lcom/unity3d/player/UnityAccessibilityDelegate;

    iput p2, p0, Lcom/unity3d/player/G;->a:I

    iput p3, p0, Lcom/unity3d/player/G;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/unity3d/player/G;->c:Lcom/unity3d/player/UnityAccessibilityDelegate;

    iget v1, p0, Lcom/unity3d/player/G;->a:I

    iget v2, p0, Lcom/unity3d/player/G;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/UnityAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    return-void
.end method
