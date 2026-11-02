.class Lcom/applovin/impl/m$b;
.super Lcom/applovin/impl/e4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private final p:Lcom/applovin/impl/o8;

.field final synthetic q:Lcom/applovin/impl/m;


# direct methods
.method constructor <init>(Lcom/applovin/impl/m;Lcom/applovin/impl/o8;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/m$b;->q:Lcom/applovin/impl/m;

    .line 2
    invoke-virtual {p2}, Lcom/applovin/impl/o8;->b()Lcom/applovin/impl/y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/y2;->d()Lcom/applovin/impl/i3;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/impl/m;->a(Lcom/applovin/impl/m;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/e4;-><init>(Lcom/applovin/impl/i3;Landroid/content/Context;)V

    .line 4
    iput-object p2, p0, Lcom/applovin/impl/m$b;->p:Lcom/applovin/impl/o8;

    .line 5
    invoke-virtual {p2}, Lcom/applovin/impl/o8;->b()Lcom/applovin/impl/y2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/y2;->a()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x12

    const/4 v0, 0x1

    const/high16 v1, -0x1000000

    invoke-static {p1, v1, p2, v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->createSpannedString(Ljava/lang/String;III)Landroid/text/SpannedString;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/v2;->c:Landroid/text/SpannedString;

    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/text/SpannedString;

    invoke-direct {p1, p3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/applovin/impl/v2;->d:Landroid/text/SpannedString;

    .line 7
    iput-boolean p4, p0, Lcom/applovin/impl/v2;->b:Z

    return-void
.end method


# virtual methods
.method public g()I
    .locals 1

    const v0, -0xbbbbbc

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/v2;->b:Z

    return v0
.end method

.method public v()Lcom/applovin/impl/o8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/m$b;->p:Lcom/applovin/impl/o8;

    return-object v0
.end method
