.class Lcom/applovin/impl/c7$a;
.super Lcom/applovin/impl/w2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/c7;->initialize(Ljava/util/List;Lcom/applovin/impl/sdk/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/util/ArrayList;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Z

.field final synthetic h:Lcom/applovin/impl/c7;


# direct methods
.method constructor <init>(Lcom/applovin/impl/c7;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/c7$a;->h:Lcom/applovin/impl/c7;

    iput-object p3, p0, Lcom/applovin/impl/c7$a;->e:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/applovin/impl/c7$a;->f:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/applovin/impl/c7$a;->g:Z

    invoke-direct {p0, p2}, Lcom/applovin/impl/w2;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/applovin/impl/c7$b;->values()[Lcom/applovin/impl/c7$b;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method protected c(I)Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/c7$b;->a:Lcom/applovin/impl/c7$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/applovin/impl/c7$a;->e:Ljava/util/ArrayList;

    return-object p1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/c7$a;->f:Ljava/util/ArrayList;

    return-object p1
.end method

.method protected d(I)I
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/c7$b;->a:Lcom/applovin/impl/c7$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/applovin/impl/c7$a;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/c7$a;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method protected e(I)Lcom/applovin/impl/v2;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/c7$b;->a:Lcom/applovin/impl/c7$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    new-instance p1, Lcom/applovin/impl/a5;

    const-string v0, "TCF VENDORS (TC STRING)"

    invoke-direct {p1, v0}, Lcom/applovin/impl/a5;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Lcom/applovin/impl/a5;

    iget-boolean v0, p0, Lcom/applovin/impl/c7$a;->g:Z

    if-eqz v0, :cond_1

    const-string v0, "ATP NETWORKS (AC STRING)"

    goto :goto_0

    :cond_1
    const-string v0, "APPLOVIN PRIVACY SETTING"

    :goto_0
    invoke-direct {p1, v0}, Lcom/applovin/impl/a5;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
