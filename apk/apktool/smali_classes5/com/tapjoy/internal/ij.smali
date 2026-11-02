.class public final Lcom/tapjoy/internal/ij;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:Lcom/tapjoy/internal/bc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bc<",
            "Lcom/tapjoy/internal/ij;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/tapjoy/internal/il;

.field public b:Lcom/tapjoy/internal/il;

.field public c:Lcom/tapjoy/internal/il;

.field public d:Lcom/tapjoy/internal/il;

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Lcom/tapjoy/internal/ih;

.field public m:Lcom/tapjoy/internal/ih;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/tapjoy/internal/ij$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/ij$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ij;->n:Lcom/tapjoy/internal/bc;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/bh;)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 18
    iput v0, p0, Lcom/tapjoy/internal/ij;->e:I

    const/16 v1, 0xa

    .line 19
    iput v1, p0, Lcom/tapjoy/internal/ij;->f:I

    const/4 v2, 0x0

    .line 24
    iput-boolean v2, p0, Lcom/tapjoy/internal/ij;->j:Z

    .line 31
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->h()V

    .line 32
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->j()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 33
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->l()Ljava/lang/String;

    move-result-object v2

    .line 34
    const-string v3, "x"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/il;->a(Ljava/lang/String;)Lcom/tapjoy/internal/il;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ij;->a:Lcom/tapjoy/internal/il;

    goto :goto_0

    .line 37
    :cond_0
    const-string v3, "y"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/il;->a(Ljava/lang/String;)Lcom/tapjoy/internal/il;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ij;->b:Lcom/tapjoy/internal/il;

    goto :goto_0

    .line 40
    :cond_1
    const-string v3, "width"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/il;->a(Ljava/lang/String;)Lcom/tapjoy/internal/il;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/il;

    goto :goto_0

    .line 43
    :cond_2
    const-string v3, "height"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 44
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/il;->a(Ljava/lang/String;)Lcom/tapjoy/internal/il;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ij;->d:Lcom/tapjoy/internal/il;

    goto :goto_0

    .line 46
    :cond_3
    const-string v3, "url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 47
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ij;->g:Ljava/lang/String;

    goto :goto_0

    .line 49
    :cond_4
    const-string v3, "redirect_url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 50
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ij;->h:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_5
    const-string v3, "ad_content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 53
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ij;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 55
    :cond_6
    const-string v3, "dismiss"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 56
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->n()Z

    move-result v2

    iput-boolean v2, p0, Lcom/tapjoy/internal/ij;->j:Z

    goto/16 :goto_0

    .line 58
    :cond_7
    const-string v3, "value"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 59
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ij;->k:Ljava/lang/String;

    goto/16 :goto_0

    .line 61
    :cond_8
    const-string v3, "image"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 62
    sget-object v2, Lcom/tapjoy/internal/ih;->e:Lcom/tapjoy/internal/bc;

    .line 1212
    invoke-interface {v2, p1}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bh;)Ljava/lang/Object;

    move-result-object v2

    .line 62
    check-cast v2, Lcom/tapjoy/internal/ih;

    iput-object v2, p0, Lcom/tapjoy/internal/ij;->l:Lcom/tapjoy/internal/ih;

    goto/16 :goto_0

    .line 64
    :cond_9
    const-string v3, "image_clicked"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 65
    sget-object v2, Lcom/tapjoy/internal/ih;->e:Lcom/tapjoy/internal/bc;

    .line 2212
    invoke-interface {v2, p1}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bh;)Ljava/lang/Object;

    move-result-object v2

    .line 65
    check-cast v2, Lcom/tapjoy/internal/ih;

    iput-object v2, p0, Lcom/tapjoy/internal/ij;->m:Lcom/tapjoy/internal/ih;

    goto/16 :goto_0

    .line 67
    :cond_a
    const-string v3, "align"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 68
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v2

    .line 69
    const-string v3, "left"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 70
    iput v0, p0, Lcom/tapjoy/internal/ij;->e:I

    goto/16 :goto_0

    .line 72
    :cond_b
    const-string v3, "right"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v2, 0xb

    .line 73
    iput v2, p0, Lcom/tapjoy/internal/ij;->e:I

    goto/16 :goto_0

    .line 75
    :cond_c
    const-string v3, "center"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0xe

    .line 76
    iput v2, p0, Lcom/tapjoy/internal/ij;->e:I

    goto/16 :goto_0

    .line 79
    :cond_d
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->s()V

    goto/16 :goto_0

    .line 82
    :cond_e
    const-string v3, "valign"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 83
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v2

    .line 84
    const-string v3, "top"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 85
    iput v1, p0, Lcom/tapjoy/internal/ij;->f:I

    goto/16 :goto_0

    .line 87
    :cond_f
    const-string v3, "middle"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v2, 0xf

    .line 88
    iput v2, p0, Lcom/tapjoy/internal/ij;->f:I

    goto/16 :goto_0

    .line 90
    :cond_10
    const-string v3, "bottom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v2, 0xc

    .line 91
    iput v2, p0, Lcom/tapjoy/internal/ij;->f:I

    goto/16 :goto_0

    .line 94
    :cond_11
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->s()V

    goto/16 :goto_0

    .line 98
    :cond_12
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->s()V

    goto/16 :goto_0

    .line 101
    :cond_13
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->i()V

    return-void
.end method
