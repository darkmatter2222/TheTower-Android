.class public final Lcom/ironsource/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile a:Ljava/lang/String;

.field private volatile b:Z

.field private volatile c:I

.field private volatile d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/ironsource/bh;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/ironsource/bh;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/ironsource/bh;->b:Z

    .line 10
    iput v0, p0, Lcom/ironsource/bh;->c:I

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/ironsource/bh;->d:I

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 3

    const-string v0, "controllerUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput p1, p0, Lcom/ironsource/bh;->c:I

    .line 2
    iput p1, p0, Lcom/ironsource/bh;->d:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ironsource/bh;->b:Z

    .line 4
    iput-object p2, p0, Lcom/ironsource/bh;->a:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reset load state for attempt "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", pending URL: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/ironsource/bh;->d:I

    iget v1, p0, Lcom/ironsource/bh;->c:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 3
    iget v1, p0, Lcom/ironsource/bh;->d:I

    .line 4
    iget v3, p0, Lcom/ironsource/bh;->c:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring stale onPageFinished callback from attempt "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", current attempt is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/ironsource/bh;->b:Z

    .line 13
    iget-object v0, p0, Lcom/ironsource/bh;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 14
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 15
    iget v1, p0, Lcom/ironsource/bh;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BLANK_PAGE load completed for attempt "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", now loading controller"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/ironsource/bh;->a:Ljava/lang/String;

    .line 19
    iput-object v2, p0, Lcom/ironsource/bh;->a:Ljava/lang/String;

    return-object v0

    :cond_1
    return-object v2
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/bh;->b:Z

    return v0
.end method
