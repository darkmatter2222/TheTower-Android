.class public abstract Lcom/applovin/impl/o2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method public static synthetic $r8$lambda$KxM8Vml8AyVtEmvtK3WJEVwFnzs(Lcom/applovin/impl/sdk/l;)V
    .locals 0

    invoke-static {p0}, Lcom/applovin/impl/o2;->a(Lcom/applovin/impl/sdk/l;)V

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcom/applovin/impl/o2;->a:Z

    return-void
.end method

.method private static synthetic a(Lcom/applovin/impl/sdk/l;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/applovin/impl/o2;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object p0

    sget-object v0, Lcom/applovin/impl/h2;->h1:Lcom/applovin/impl/h2;

    const-string v1, "no_ads_loaded"

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/i2;->a(Lcom/applovin/impl/h2;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lcom/applovin/impl/sdk/l;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/applovin/impl/v3;->E8:Lcom/applovin/impl/c5;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/l;->s0()Lcom/applovin/impl/i6;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/x6;

    new-instance v3, Lcom/applovin/impl/o2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/applovin/impl/o2$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/sdk/l;)V

    const/4 v4, 0x1

    const-string v5, "submitIntegrationErrorReport"

    invoke-direct {v2, p0, v4, v5, v3}, Lcom/applovin/impl/x6;-><init>(Lcom/applovin/impl/sdk/l;ZLjava/lang/String;Ljava/lang/Runnable;)V

    sget-object p0, Lcom/applovin/impl/i6$b;->e:Lcom/applovin/impl/i6$b;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 9
    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;J)V

    return-void
.end method
