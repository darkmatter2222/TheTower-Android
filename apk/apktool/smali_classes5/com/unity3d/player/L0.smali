.class public final Lcom/unity3d/player/L0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lcom/unity3d/player/UnityPlayerForActivityOrService;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;F)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/unity3d/player/L0;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iput p2, p0, Lcom/unity3d/player/L0;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 338
    iget-object v0, p0, Lcom/unity3d/player/L0;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->getView()Lcom/unity3d/player/U;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 341
    iget v1, p0, Lcom/unity3d/player/L0;->a:F

    .line 127
    iget-object v0, v0, Lcom/unity3d/player/U;->a:Lcom/unity3d/player/a/g;

    .line 26
    iput v1, v0, Lcom/unity3d/player/a/g;->a:F

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v1, -0x1

    .line 30
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 31
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    .line 35
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
