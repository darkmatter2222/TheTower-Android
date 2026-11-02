.class Lcom/applovin/impl/p8$a;
.super Lcom/applovin/impl/w2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/p8;->initialize(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/util/List;

.field final synthetic f:Lcom/applovin/impl/p8;


# direct methods
.method constructor <init>(Lcom/applovin/impl/p8;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/p8$a;->f:Lcom/applovin/impl/p8;

    iput-object p3, p0, Lcom/applovin/impl/p8$a;->e:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/applovin/impl/w2;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/applovin/impl/v2;
    .locals 2

    .line 1
    new-instance v0, Lcom/applovin/impl/v2$b;

    sget-object v1, Lcom/applovin/impl/v2$c;->c:Lcom/applovin/impl/v2$c;

    invoke-direct {v0, v1}, Lcom/applovin/impl/v2$b;-><init>(Lcom/applovin/impl/v2$c;)V

    .line 2
    const-string v1, "A plus in front of each segment indicates inclusion and a minus indicates exclusion. The comma in comma-separated values functions as an \u2228 (or) operator, and a new row functions as an \u2227 (and) operator."

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->d(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/v2$b;->a()Lcom/applovin/impl/v2;

    move-result-object v0

    return-object v0
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c(I)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/applovin/impl/p8$a;->e:Ljava/util/List;

    return-object p1
.end method

.method protected d(I)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/applovin/impl/p8$a;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method protected e(I)Lcom/applovin/impl/v2;
    .locals 1

    .line 1
    new-instance p1, Lcom/applovin/impl/a5;

    const-string v0, "SEGMENT TARGETING"

    invoke-direct {p1, v0}, Lcom/applovin/impl/a5;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
