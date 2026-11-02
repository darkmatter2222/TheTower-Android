.class public Lcom/unity3d/player/UnityAccessibilityDelegate$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/UnityAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/unity3d/player/UnityAccessibilityDelegate;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityAccessibilityDelegate;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate$a;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 560
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x7

    const/16 v1, 0x100

    const/4 v2, -0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 579
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "hover unknown"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "a11y"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 574
    :cond_0
    iget-object p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate$a;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    .line 159
    invoke-static {p1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgeth(Lcom/unity3d/player/UnityAccessibilityDelegate;)I

    move-result p2

    if-ne p2, v2, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    invoke-static {p1, v2}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fputh(Lcom/unity3d/player/UnityAccessibilityDelegate;I)V

    if-eq p2, v2, :cond_5

    .line 174
    invoke-virtual {p1, p2, v1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    goto :goto_0

    .line 566
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$smhitTest(FF)I

    move-result p1

    .line 568
    iget-object p2, p0, Lcom/unity3d/player/UnityAccessibilityDelegate$a;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    .line 159
    invoke-static {p2}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgeth(Lcom/unity3d/player/UnityAccessibilityDelegate;)I

    move-result v0

    if-ne v0, p1, :cond_3

    goto :goto_0

    .line 165
    :cond_3
    invoke-static {p2, p1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fputh(Lcom/unity3d/player/UnityAccessibilityDelegate;I)V

    if-eq p1, v2, :cond_4

    const/16 v3, 0x80

    .line 169
    invoke-virtual {p2, p1, v3}, Lcom/unity3d/player/UnityAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    :cond_4
    if-eq v0, v2, :cond_5

    .line 174
    invoke-virtual {p2, v0, v1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    :cond_5
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
