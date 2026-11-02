.class public abstract Lcom/unity3d/player/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static b:Landroid/widget/ProgressBar;

.field public static c:Landroid/view/View;

.field public static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0x1010079

    const v1, 0x1010288

    const v2, 0x101007a

    const v3, 0x1010289

    .line 15
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/unity3d/player/a/c;->a:[I

    const/4 v0, -0x1

    .line 24
    sput v0, Lcom/unity3d/player/a/c;->d:I

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/widget/FrameLayout;I)V
    .locals 5

    if-ltz p2, :cond_7

    .line 48
    sget-object v0, Lcom/unity3d/player/a/c;->a:[I

    const/4 v1, 0x4

    if-lt p2, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_6

    if-eqz p0, :cond_7

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 27
    :cond_1
    sget-object v1, Lcom/unity3d/player/a/c;->b:Landroid/widget/ProgressBar;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 61
    sget v4, Lcom/unity3d/player/a/c;->d:I

    if-ne v4, p2, :cond_2

    goto/16 :goto_0

    :cond_2
    if-eqz v1, :cond_5

    .line 35
    sget-object v4, Lcom/unity3d/player/a/c;->c:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 38
    sget-object v4, Lcom/unity3d/player/a/c;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 39
    sget-object v4, Lcom/unity3d/player/a/c;->c:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 41
    :cond_3
    sput-object v3, Lcom/unity3d/player/a/c;->b:Landroid/widget/ProgressBar;

    .line 42
    sput-object v3, Lcom/unity3d/player/a/c;->c:Landroid/view/View;

    .line 44
    :cond_4
    sput v2, Lcom/unity3d/player/a/c;->d:I

    .line 74
    :cond_5
    sput p2, Lcom/unity3d/player/a/c;->d:I

    .line 76
    new-instance v1, Landroid/widget/ProgressBar;

    aget p2, v0, p2

    invoke-direct {v1, p0, v3, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 78
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 79
    invoke-virtual {v1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 81
    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 82
    sput-object v1, Lcom/unity3d/player/a/c;->b:Landroid/widget/ProgressBar;

    .line 86
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 90
    invoke-virtual {v1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 91
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 93
    new-instance p0, Lcom/unity3d/player/a/a;

    invoke-direct {p0}, Lcom/unity3d/player/a/a;-><init>()V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    new-instance p0, Lcom/unity3d/player/a/b;

    invoke-direct {p0}, Lcom/unity3d/player/a/b;-><init>()V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 110
    sput-object v1, Lcom/unity3d/player/a/c;->c:Landroid/view/View;

    .line 69
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    sget-object p0, Lcom/unity3d/player/a/c;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 53
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ViewGroup cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_0
    return-void
.end method
