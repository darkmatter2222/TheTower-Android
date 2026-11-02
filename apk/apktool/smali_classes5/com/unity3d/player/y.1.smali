.class public final Lcom/unity3d/player/y;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

.field public c:Lcom/unity3d/player/a/E;

.field public d:Lcom/unity3d/player/D;

.field public e:Lcom/unity3d/player/a/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayerForActivityOrService;)V
    .locals 1

    .line 139
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/unity3d/player/y;->c:Lcom/unity3d/player/a/E;

    .line 134
    iput-object v0, p0, Lcom/unity3d/player/y;->d:Lcom/unity3d/player/D;

    .line 135
    iput-object v0, p0, Lcom/unity3d/player/y;->e:Lcom/unity3d/player/a/x;

    .line 140
    iput-object p1, p0, Lcom/unity3d/player/y;->a:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/unity3d/player/y;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .locals 6

    .line 217
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 218
    iget-object v1, p0, Lcom/unity3d/player/y;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {v1}, Lcom/unity3d/player/UnityPlayer;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 219
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v2, 0x2

    .line 222
    new-array v2, v2, [I

    .line 223
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 225
    new-instance v3, Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    aget v2, v2, v5

    sub-int/2addr v4, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Lcom/unity3d/player/y;->c:Lcom/unity3d/player/a/E;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-direct {v3, v4, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 226
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 227
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 231
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, v1, v0

    .line 233
    iget v2, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    .line 239
    iget-object v2, p0, Lcom/unity3d/player/y;->c:Lcom/unity3d/player/a/E;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    if-eq v1, v2, :cond_0

    .line 241
    iget-object v0, p0, Lcom/unity3d/player/y;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->reportSoftInputIsVisible(Z)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/y;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {v0, v5}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->reportSoftInputIsVisible(Z)V

    .line 245
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    iget v2, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/unity3d/player/y;->c:Lcom/unity3d/player/a/E;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final a(Lcom/unity3d/player/D;ZZ)V
    .locals 2

    .line 146
    iput-object p1, p0, Lcom/unity3d/player/y;->d:Lcom/unity3d/player/D;

    .line 147
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 150
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    .line 151
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 152
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 153
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 158
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 159
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v0, p0, Lcom/unity3d/player/y;->d:Lcom/unity3d/player/D;

    .line 126
    iget-object v0, v0, Lcom/unity3d/player/w;->c:Landroid/widget/EditText;

    .line 161
    invoke-virtual {p0, v0}, Lcom/unity3d/player/y;->createSoftInputView(Landroid/widget/EditText;)Lcom/unity3d/player/a/E;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/y;->c:Lcom/unity3d/player/a/E;

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 163
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    const/4 v0, 0x2

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    if-nez p3, :cond_0

    const/16 p3, 0x20

    .line 170
    invoke-virtual {p1, p3}, Landroid/view/Window;->addFlags(I)V

    const/high16 p3, 0x40000

    .line 171
    invoke-virtual {p1, p3}, Landroid/view/Window;->addFlags(I)V

    .line 190
    :cond_0
    invoke-virtual {p0, p2}, Lcom/unity3d/player/y;->a(Z)V

    .line 192
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 194
    new-instance p1, Lcom/unity3d/player/x;

    invoke-direct {p1, p0}, Lcom/unity3d/player/x;-><init>(Lcom/unity3d/player/y;)V

    const p2, 0xf4240

    .line 201
    invoke-static {p0, p2, p1}, Lcom/unity3d/player/q;->a(Ljava/lang/Object;ILjava/lang/Runnable;)Lcom/unity3d/player/a/x;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/y;->e:Lcom/unity3d/player/a/x;

    return-void
.end method

.method public final a(Z)V
    .locals 5

    .line 252
    iget-object v0, p0, Lcom/unity3d/player/y;->c:Lcom/unity3d/player/a/E;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, v0, Lcom/unity3d/player/a/E;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x1

    .line 60
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 61
    iget-object v3, v0, Lcom/unity3d/player/a/E;->b:Landroid/widget/EditText;

    invoke-virtual {v3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object p1, v0, Lcom/unity3d/player/a/E;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 64
    iget-object v2, v0, Lcom/unity3d/player/a/E;->a:Landroid/widget/Button;

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object p1, v0, Lcom/unity3d/player/a/E;->e:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 70
    iget-object p1, v0, Lcom/unity3d/player/a/E;->b:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object p1, v0, Lcom/unity3d/player/a/E;->d:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 78
    iget-object p1, v0, Lcom/unity3d/player/a/E;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    .line 79
    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 80
    iget-object v2, v0, Lcom/unity3d/player/a/E;->b:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object p1, v0, Lcom/unity3d/player/a/E;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 82
    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 83
    iget-object v1, v0, Lcom/unity3d/player/a/E;->a:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public createSoftInputView(Landroid/widget/EditText;)Lcom/unity3d/player/a/E;
    .locals 2

    .line 294
    new-instance v0, Lcom/unity3d/player/a/E;

    iget-object v1, p0, Lcom/unity3d/player/y;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/unity3d/player/a/E;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 94
    iget-object p1, v0, Lcom/unity3d/player/a/E;->a:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-object v0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/unity3d/player/y;->d:Lcom/unity3d/player/D;

    .line 186
    iget-boolean v0, v0, Lcom/unity3d/player/w;->e:Z

    if-nez v0, :cond_1

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/y;->d:Lcom/unity3d/player/D;

    .line 191
    iget-boolean v0, v0, Lcom/unity3d/player/w;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 289
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onBackPressed()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/unity3d/player/y;->e:Lcom/unity3d/player/a/x;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, v0, Lcom/unity3d/player/a/x;->a:Lcom/unity3d/player/a/w;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, v0, Lcom/unity3d/player/a/w;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 258
    iget-object p1, p0, Lcom/unity3d/player/y;->d:Lcom/unity3d/player/D;

    invoke-virtual {p1}, Lcom/unity3d/player/w;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/player/w;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/unity3d/player/y;->e:Lcom/unity3d/player/a/x;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/unity3d/player/a/x;->unregisterOnBackPressedCallback()V

    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lcom/unity3d/player/y;->e:Lcom/unity3d/player/a/x;

    .line 279
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method
