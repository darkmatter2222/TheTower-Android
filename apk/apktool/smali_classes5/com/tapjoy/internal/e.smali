.class public final Lcom/tapjoy/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Lcom/tapjoy/internal/bh;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bh;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->h()V

    .line 92
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 93
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->l()Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v1, "orderId"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/e;->a:Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_0
    const-string v1, "packageName"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/e;->b:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_1
    const-string v1, "productId"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/e;->c:Ljava/lang/String;

    goto :goto_0

    .line 100
    :cond_2
    const-string v1, "purchaseTime"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->q()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/e;->d:J

    goto :goto_0

    .line 102
    :cond_3
    const-string v1, "purchaseState"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->r()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/e;->e:I

    goto :goto_0

    .line 104
    :cond_4
    const-string v1, "developerPayload"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 105
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/e;->f:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_5
    const-string v1, "purchaseToken"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 107
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/e;->g:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_6
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->s()V

    goto :goto_0

    .line 112
    :cond_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->i()V

    return-void
.end method
