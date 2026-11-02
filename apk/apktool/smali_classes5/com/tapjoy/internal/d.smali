.class public final Lcom/tapjoy/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/tapjoy/internal/bh;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bh;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->h()V

    .line 68
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 69
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->l()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, "productId"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/d;->a:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_0
    const-string v1, "type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/d;->b:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_1
    const-string v1, "price"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/d;->c:Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_2
    const-string v1, "title"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/d;->d:Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_3
    const-string v1, "description"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/d;->e:Ljava/lang/String;

    goto :goto_0

    .line 80
    :cond_4
    const-string v1, "price_currency_code"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 81
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/d;->f:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_5
    const-string v1, "price_amount_micros"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->q()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/d;->g:J

    goto :goto_0

    .line 85
    :cond_6
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->s()V

    goto :goto_0

    .line 88
    :cond_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->i()V

    return-void
.end method
