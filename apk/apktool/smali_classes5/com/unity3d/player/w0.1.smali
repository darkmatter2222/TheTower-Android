.class public final Lcom/unity3d/player/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/unity3d/player/UnityPlayerForActivityOrService;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;II)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/unity3d/player/w0;->c:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iput p2, p0, Lcom/unity3d/player/w0;->a:I

    iput p3, p0, Lcom/unity3d/player/w0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/unity3d/player/w0;->c:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$fgetmSoftInput(Lcom/unity3d/player/UnityPlayerForActivityOrService;)Lcom/unity3d/player/a/r;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    iget v1, p0, Lcom/unity3d/player/w0;->a:I

    iget v2, p0, Lcom/unity3d/player/w0;->b:I

    invoke-interface {v0, v1, v2}, Lcom/unity3d/player/a/r;->setSelection(II)V

    :cond_0
    return-void
.end method
