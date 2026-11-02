.class public Lcom/ironsource/w3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/ironsource/A3;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

.field private final d:Lcom/ironsource/y3;

.field private final e:Lcom/ironsource/x3;

.field private final f:Lcom/ironsource/mediationsdk/model/NetworkSettings;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/y3;Lcom/ironsource/x3;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ironsource/w3;->a:I

    .line 3
    iput-object p2, p0, Lcom/ironsource/w3;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/ironsource/w3;->c:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    .line 5
    iput-object p4, p0, Lcom/ironsource/w3;->d:Lcom/ironsource/y3;

    .line 6
    iput-object p5, p0, Lcom/ironsource/w3;->e:Lcom/ironsource/x3;

    .line 7
    iput-object p6, p0, Lcom/ironsource/w3;->f:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/A3;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ironsource/l5;

    invoke-direct {v0}, Lcom/ironsource/l5;-><init>()V

    .line 2
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/w3;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fetching bidding data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 5
    new-instance v2, Lcom/ironsource/w3$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/ironsource/w3$a;-><init>(Lcom/ironsource/w3;Lcom/ironsource/l5;Ljava/util/concurrent/BlockingQueue;)V

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/w3;->b()Lcom/ironsource/y3;

    move-result-object v0

    iget-object v3, p0, Lcom/ironsource/w3;->c:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    .line 34
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/environment/ContextProvider;->getActiveContext()Landroid/content/Context;

    move-result-object v4

    .line 35
    invoke-interface {v0, v3, v4, v2}, Lcom/ironsource/y3;->collectBiddingData(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 46
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while calling collectBiddingData - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/ironsource/w3;->e:Lcom/ironsource/x3;

    if-eqz v2, :cond_0

    .line 51
    invoke-interface {v2, v0}, Lcom/ironsource/x3;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 52
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while calling collectBiddingData - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/ironsource/w3;->e:Lcom/ironsource/x3;

    if-eqz v2, :cond_0

    .line 57
    invoke-interface {v2, v0}, Lcom/ironsource/x3;->a(Ljava/lang/String;)V

    .line 69
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ironsource/w3;->e:Lcom/ironsource/x3;

    if-eqz v0, :cond_1

    .line 70
    iget-object v2, p0, Lcom/ironsource/w3;->f:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-interface {v0, v2}, Lcom/ironsource/x3;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    .line 73
    :cond_1
    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/A3;

    return-object v0
.end method

.method public b()Lcom/ironsource/y3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/w3;->d:Lcom/ironsource/y3;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/w3;->b:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/w3;->a()Lcom/ironsource/A3;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/w3;->a:I

    return v0
.end method
