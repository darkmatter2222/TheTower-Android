.class public Lcom/applovin/impl/o6;
.super Lcom/applovin/impl/n5;
.source "SourceFile"


# instance fields
.field private final g:Ljava/lang/ref/WeakReference;

.field private final h:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/applovin/impl/x4;Ljava/lang/Object;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/applovin/impl/n5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V

    .line 3
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/applovin/impl/o6;->g:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p2, p0, Lcom/applovin/impl/o6;->h:Ljava/lang/Object;

    return-void
.end method

.method public static a(JLcom/applovin/impl/x4;Ljava/lang/Object;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p5}, Lcom/applovin/impl/sdk/l;->s0()Lcom/applovin/impl/i6;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/o6;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/applovin/impl/o6;-><init>(Lcom/applovin/impl/x4;Ljava/lang/Object;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V

    sget-object p2, Lcom/applovin/impl/i6$b;->d:Lcom/applovin/impl/i6$b;

    invoke-virtual {v0, v1, p2, p0, p1}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/o6;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/x4;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/applovin/impl/x4;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Attempting to timeout pending task "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/applovin/impl/x4;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/o6;->h:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/o6;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/x4;->c(Ljava/lang/Object;)Lcom/applovin/impl/x4;

    :cond_2
    :goto_0
    return-void
.end method
