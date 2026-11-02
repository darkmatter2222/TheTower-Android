.class public Lcom/ironsource/G2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/ironsource/G2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ironsource/G2;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/G2;->a:Lcom/ironsource/G2;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ironsource/G2;

    invoke-direct {v0}, Lcom/ironsource/G2;-><init>()V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Z
    .locals 3

    .line 3
    invoke-static {}, Lcom/ironsource/ka;->e()Lcom/ironsource/ka;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/ka;->b()Lcom/ironsource/t8$a;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/ironsource/G2$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 14
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/ironsource/W9;->b(Landroid/content/Context;)Lcom/ironsource/W9;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/ironsource/W9;->a()Lcom/ironsource/sdk/controller/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/e;->k()Lcom/ironsource/sdk/controller/l;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/controller/v;

    if-eqz p1, :cond_1

    .line 19
    const-string v0, "back"

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/v;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 23
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 24
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return v2
.end method
