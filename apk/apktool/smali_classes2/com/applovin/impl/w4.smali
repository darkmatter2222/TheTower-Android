.class public Lcom/applovin/impl/w4;
.super Lcom/applovin/impl/v2;
.source "SourceFile"


# instance fields
.field private final n:Lcom/applovin/impl/q0$a;

.field private final o:Landroid/content/Context;

.field private final p:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/q0$a;ZLandroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/v2$c;->f:Lcom/applovin/impl/v2$c;

    invoke-direct {p0, v0}, Lcom/applovin/impl/v2;-><init>(Lcom/applovin/impl/v2$c;)V

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/w4;->n:Lcom/applovin/impl/q0$a;

    .line 4
    iput-object p3, p0, Lcom/applovin/impl/w4;->o:Landroid/content/Context;

    .line 6
    new-instance p3, Landroid/text/SpannedString;

    invoke-virtual {p1}, Lcom/applovin/impl/q0$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p3, p0, Lcom/applovin/impl/v2;->c:Landroid/text/SpannedString;

    .line 7
    iput-boolean p2, p0, Lcom/applovin/impl/w4;->p:Z

    return-void
.end method


# virtual methods
.method public f()Landroid/text/SpannedString;
    .locals 3

    .line 1
    new-instance v0, Landroid/text/SpannedString;

    iget-object v1, p0, Lcom/applovin/impl/w4;->n:Lcom/applovin/impl/q0$a;

    iget-object v2, p0, Lcom/applovin/impl/w4;->o:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/q0$a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/w4;->n:Lcom/applovin/impl/q0$a;

    iget-object v1, p0, Lcom/applovin/impl/w4;->o:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/q0$a;->b(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v1, p0, Lcom/applovin/impl/w4;->p:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
