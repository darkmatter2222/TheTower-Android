.class public Lcom/tapjoy/internal/ib;
.super Lcom/tapjoy/internal/ia;
.source "SourceFile"


# static fields
.field public static final d:Lcom/tapjoy/internal/bc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bc<",
            "Lcom/tapjoy/internal/ib;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tapjoy/internal/ik;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public c:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/tapjoy/internal/ib$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/ib$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ib;->d:Lcom/tapjoy/internal/bc;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/bh;)V
    .locals 5

    .line 18
    invoke-direct {p0}, Lcom/tapjoy/internal/ia;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ib;->a:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->h()V

    const/4 v0, 0x0

    move-object v1, v0

    .line 23
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 24
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->l()Ljava/lang/String;

    move-result-object v2

    .line 25
    const-string v3, "layouts"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    iget-object v2, p0, Lcom/tapjoy/internal/ib;->a:Ljava/util/ArrayList;

    sget-object v3, Lcom/tapjoy/internal/ik;->d:Lcom/tapjoy/internal/bc;

    invoke-virtual {p1, v2, v3}, Lcom/tapjoy/internal/bh;->a(Ljava/util/List;Lcom/tapjoy/internal/bc;)V

    goto :goto_0

    .line 28
    :cond_0
    const-string v3, "meta"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 29
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->d()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ib;->b:Ljava/util/Map;

    goto :goto_0

    .line 31
    :cond_1
    const-string v3, "max_show_time"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 32
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->p()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/tapjoy/internal/ib;->c:F

    goto :goto_0

    .line 34
    :cond_2
    const-string v3, "ad_content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 35
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_3
    const-string v3, "redirect_url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 37
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 40
    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->s()V

    goto :goto_0

    .line 43
    :cond_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->i()V

    .line 45
    iget-object p1, p0, Lcom/tapjoy/internal/ib;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_9

    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/ik;

    .line 47
    iget-object v3, v2, Lcom/tapjoy/internal/ik;->c:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    .line 48
    iget-object v2, v2, Lcom/tapjoy/internal/ik;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/internal/ij;

    .line 49
    iget-object v4, v3, Lcom/tapjoy/internal/ij;->i:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 50
    iput-object v0, v3, Lcom/tapjoy/internal/ij;->i:Ljava/lang/String;

    .line 52
    :cond_8
    iget-object v4, v3, Lcom/tapjoy/internal/ij;->h:Ljava/lang/String;

    if-nez v4, :cond_7

    .line 53
    iput-object v1, v3, Lcom/tapjoy/internal/ij;->h:Ljava/lang/String;

    goto :goto_1

    :cond_9
    return-void
.end method
