.class final Lcom/tapjoy/internal/ig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/bc<",
        "Lcom/tapjoy/internal/ig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bh;)Ljava/lang/Object;
    .locals 5

    .line 1036
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->h()V

    const-string v0, ""

    move-object v1, v0

    move-object v2, v1

    .line 1038
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1039
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->l()Ljava/lang/String;

    move-result-object v3

    .line 1040
    const-string v4, "campaign_id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1041
    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/bh;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1042
    :cond_0
    const-string v4, "product_id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1043
    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/bh;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1045
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->s()V

    goto :goto_0

    .line 1048
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->i()V

    .line 1050
    new-instance p1, Lcom/tapjoy/internal/ig;

    invoke-direct {p1, v1, v2}, Lcom/tapjoy/internal/ig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
