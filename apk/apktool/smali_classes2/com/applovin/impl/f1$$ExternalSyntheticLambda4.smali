.class public final synthetic Lcom/applovin/impl/f1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/applovin/impl/f1;

.field public final synthetic f$1:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/f1;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/f1$$ExternalSyntheticLambda4;->f$0:Lcom/applovin/impl/f1;

    iput-object p2, p0, Lcom/applovin/impl/f1$$ExternalSyntheticLambda4;->f$1:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/applovin/impl/f1$$ExternalSyntheticLambda4;->f$0:Lcom/applovin/impl/f1;

    iget-object v1, p0, Lcom/applovin/impl/f1$$ExternalSyntheticLambda4;->f$1:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, p1, p2}, Lcom/applovin/impl/f1;->$r8$lambda$ciQAGDtLEOdqbJgal7BPn628_Zo(Lcom/applovin/impl/f1;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
