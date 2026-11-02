.class public final Lcom/tapjoy/internal/ik;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/tapjoy/internal/bc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bc<",
            "Lcom/tapjoy/internal/ik;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/tapjoy/internal/z;

.field public b:Landroid/graphics/PointF;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tapjoy/internal/ij;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lcom/tapjoy/internal/ik$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/ik$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ik;->d:Lcom/tapjoy/internal/bc;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/bh;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/tapjoy/internal/z;->a:Lcom/tapjoy/internal/z;

    iput-object v0, p0, Lcom/tapjoy/internal/ik;->a:Lcom/tapjoy/internal/z;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ik;->c:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->h()V

    .line 20
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 21
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->l()Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string v1, "buttons"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1088
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->k()Lcom/tapjoy/internal/bm;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/bm;->a:Lcom/tapjoy/internal/bm;

    if-ne v0, v1, :cond_1

    .line 24
    iget-object v0, p0, Lcom/tapjoy/internal/ik;->c:Ljava/util/ArrayList;

    sget-object v1, Lcom/tapjoy/internal/ij;->n:Lcom/tapjoy/internal/bc;

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/bh;->a(Ljava/util/List;Lcom/tapjoy/internal/bc;)V

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->s()V

    goto :goto_0

    .line 30
    :cond_2
    const-string v1, "window_aspect_ratio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 31
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->h()V

    .line 34
    :goto_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 35
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->l()Ljava/lang/String;

    move-result-object v1

    .line 36
    const-string v2, "width"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 37
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->p()D

    move-result-wide v1

    double-to-float v1, v1

    .line 38
    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_1

    .line 40
    :cond_3
    const-string v2, "height"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->p()D

    move-result-wide v1

    double-to-float v1, v1

    .line 42
    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 45
    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->s()V

    goto :goto_1

    .line 48
    :cond_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->i()V

    .line 50
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 51
    iput-object v0, p0, Lcom/tapjoy/internal/ik;->b:Landroid/graphics/PointF;

    goto :goto_0

    .line 55
    :cond_6
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->s()V

    goto/16 :goto_0

    .line 58
    :cond_7
    const-string v1, "orientation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 59
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 61
    sget-object v0, Lcom/tapjoy/internal/z;->c:Lcom/tapjoy/internal/z;

    iput-object v0, p0, Lcom/tapjoy/internal/ik;->a:Lcom/tapjoy/internal/z;

    goto/16 :goto_0

    .line 63
    :cond_8
    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/tapjoy/internal/z;->b:Lcom/tapjoy/internal/z;

    iput-object v0, p0, Lcom/tapjoy/internal/ik;->a:Lcom/tapjoy/internal/z;

    goto/16 :goto_0

    .line 68
    :cond_9
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->s()V

    goto/16 :goto_0

    .line 72
    :cond_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->i()V

    return-void
.end method
