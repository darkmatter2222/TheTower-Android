.class final Lcom/tapjoy/internal/iy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/iy;->a(Lcom/tapjoy/internal/ik;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/iq;

.field final synthetic b:Landroid/widget/RelativeLayout;

.field final synthetic c:Lcom/tapjoy/internal/iq;

.field final synthetic d:Lcom/tapjoy/internal/ij;

.field final synthetic e:Lcom/tapjoy/internal/iy;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/iy;Lcom/tapjoy/internal/iq;Landroid/widget/RelativeLayout;Lcom/tapjoy/internal/iq;Lcom/tapjoy/internal/ij;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/tapjoy/internal/iy$2;->e:Lcom/tapjoy/internal/iy;

    iput-object p2, p0, Lcom/tapjoy/internal/iy$2;->a:Lcom/tapjoy/internal/iq;

    iput-object p3, p0, Lcom/tapjoy/internal/iy$2;->b:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/tapjoy/internal/iy$2;->c:Lcom/tapjoy/internal/iq;

    iput-object p5, p0, Lcom/tapjoy/internal/iy$2;->d:Lcom/tapjoy/internal/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 282
    iget-object p1, p0, Lcom/tapjoy/internal/iy$2;->a:Lcom/tapjoy/internal/iq;

    if-eqz p1, :cond_0

    .line 283
    invoke-virtual {p1}, Lcom/tapjoy/internal/iq;->b()V

    .line 284
    iget-object p1, p0, Lcom/tapjoy/internal/iy$2;->b:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/tapjoy/internal/iy$2;->a:Lcom/tapjoy/internal/iq;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/tapjoy/internal/iy$2;->c:Lcom/tapjoy/internal/iq;

    if-eqz p1, :cond_1

    .line 287
    invoke-virtual {p1}, Lcom/tapjoy/internal/iq;->b()V

    .line 288
    iget-object p1, p0, Lcom/tapjoy/internal/iy$2;->b:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/tapjoy/internal/iy$2;->c:Lcom/tapjoy/internal/iq;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 290
    :cond_1
    iget-object p1, p0, Lcom/tapjoy/internal/iy$2;->e:Lcom/tapjoy/internal/iy;

    invoke-static {p1}, Lcom/tapjoy/internal/iy;->a(Lcom/tapjoy/internal/iy;)Lcom/tapjoy/internal/iy$a;

    move-result-object p1

    iget-object v0, p0, Lcom/tapjoy/internal/iy$2;->d:Lcom/tapjoy/internal/ij;

    invoke-interface {p1, v0}, Lcom/tapjoy/internal/iy$a;->a(Lcom/tapjoy/internal/ij;)V

    return-void
.end method
