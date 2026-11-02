.class public Lcom/applovin/impl/x3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/x3$a;
    }
.end annotation


# instance fields
.field private a:Lcom/applovin/impl/x3$a;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/applovin/impl/x3$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/x3;->a:Lcom/applovin/impl/x3$a;

    iput-object p2, p0, Lcom/applovin/impl/x3;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/applovin/impl/c3;)Lcom/applovin/impl/x3;
    .locals 3

    .line 9
    invoke-virtual {p0}, Lcom/applovin/impl/c3;->T()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/applovin/impl/c3;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lcom/applovin/impl/u3;

    new-instance v2, Lcom/applovin/impl/n3;

    invoke-direct {v2, v0, p0}, Lcom/applovin/impl/n3;-><init>(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;)V

    invoke-direct {v1, v2}, Lcom/applovin/impl/u3;-><init>(Lcom/applovin/impl/n3;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/applovin/mediation/MaxAdFormat;)Lcom/applovin/impl/x3;
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lcom/applovin/impl/x3;

    sget-object v1, Lcom/applovin/impl/x3$a;->b:Lcom/applovin/impl/x3$a;

    invoke-direct {v0, v1, p0}, Lcom/applovin/impl/x3;-><init>(Lcom/applovin/impl/x3$a;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/applovin/impl/x3;
    .locals 2

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/applovin/impl/x3;

    sget-object v1, Lcom/applovin/impl/x3$a;->a:Lcom/applovin/impl/x3$a;

    invoke-direct {v0, v1, p0}, Lcom/applovin/impl/x3;-><init>(Lcom/applovin/impl/x3$a;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/applovin/impl/x3$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/x3;->a:Lcom/applovin/impl/x3$a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/x3;->b:Ljava/lang/String;

    return-object v0
.end method
