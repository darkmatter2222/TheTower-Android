.class public final Lcom/unity3d/player/D;
.super Lcom/unity3d/player/w;
.source "SourceFile"


# instance fields
.field public h:Lcom/unity3d/player/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayerForActivityOrService;)V
    .locals 0

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/w;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/unity3d/player/D;->h:Lcom/unity3d/player/y;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final a(Ljava/lang/String;IZZZZLjava/lang/String;IZZ)V
    .locals 3

    .line 315
    new-instance v0, Lcom/unity3d/player/y;

    iget-object v1, p0, Lcom/unity3d/player/w;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/unity3d/player/w;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/y;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    iput-object v0, p0, Lcom/unity3d/player/D;->h:Lcom/unity3d/player/y;

    .line 316
    invoke-virtual {v0, p0, p9, p10}, Lcom/unity3d/player/y;->a(Lcom/unity3d/player/D;ZZ)V

    .line 317
    iget-object v0, p0, Lcom/unity3d/player/D;->h:Lcom/unity3d/player/y;

    new-instance v1, Lcom/unity3d/player/a/H;

    invoke-direct {v1, p0}, Lcom/unity3d/player/a/H;-><init>(Lcom/unity3d/player/D;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 116
    iput-boolean p10, p0, Lcom/unity3d/player/w;->e:Z

    .line 117
    invoke-virtual/range {p0 .. p8}, Lcom/unity3d/player/w;->setupTextInput(Ljava/lang/String;IZZZZLjava/lang/String;I)V

    move-object p1, p0

    .line 119
    invoke-virtual {p0, p9}, Lcom/unity3d/player/D;->setHideInputField(Z)V

    .line 329
    iget-object p2, p1, Lcom/unity3d/player/w;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {p2}, Lcom/unity3d/player/UnityPlayer;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/unity3d/player/a/I;

    invoke-direct {p3, p0}, Lcom/unity3d/player/a/I;-><init>(Lcom/unity3d/player/D;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 126
    iget-object p2, p1, Lcom/unity3d/player/w;->c:Landroid/widget/EditText;

    .line 340
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 341
    iget-object p2, p1, Lcom/unity3d/player/D;->h:Lcom/unity3d/player/y;

    new-instance p3, Lcom/unity3d/player/a/J;

    invoke-direct {p3, p0}, Lcom/unity3d/player/a/J;-><init>(Lcom/unity3d/player/D;)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public createEditText(Lcom/unity3d/player/w;)Landroid/widget/EditText;
    .locals 2

    .line 382
    new-instance v0, Lcom/unity3d/player/C;

    iget-object v1, p0, Lcom/unity3d/player/w;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/unity3d/player/C;-><init>(Lcom/unity3d/player/D;Landroid/content/Context;Lcom/unity3d/player/w;)V

    return-object v0
.end method

.method public final hide()V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/unity3d/player/D;->h:Lcom/unity3d/player/y;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public reportSoftInputArea()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/unity3d/player/D;->h:Lcom/unity3d/player/y;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/unity3d/player/D;->h:Lcom/unity3d/player/y;

    invoke-virtual {v0}, Lcom/unity3d/player/y;->a()Landroid/graphics/Rect;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/unity3d/player/w;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {v1, v0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->reportSoftInputArea(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public final setHideInputField(Z)V
    .locals 1

    .line 279
    iput-boolean p1, p0, Lcom/unity3d/player/w;->d:Z

    .line 375
    iget-object v0, p0, Lcom/unity3d/player/D;->h:Lcom/unity3d/player/y;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/y;->a(Z)V

    return-void
.end method
