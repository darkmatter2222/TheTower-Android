.class public Lcom/ironsource/ch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/ch$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/ironsource/e4;

.field private d:Lcom/ironsource/Y4;

.field private e:I

.field private f:Lcom/ironsource/j5;

.field private g:I

.field private h:I

.field private final i:Ljava/lang/String;

.field private j:Lcom/ironsource/ch$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/e4;Lcom/ironsource/Y4;ILcom/ironsource/j5;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "ch"

    iput-object v0, p0, Lcom/ironsource/ch;->i:Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Lcom/ironsource/ch;->h()Lcom/ironsource/ch$a;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/ch;->j:Lcom/ironsource/ch$a;

    .line 21
    sget-object v1, Lcom/ironsource/ch$a;->d:Lcom/ironsource/ch$a;

    if-eq v0, v1, :cond_0

    .line 22
    iput-object p1, p0, Lcom/ironsource/ch;->b:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/ironsource/ch;->c:Lcom/ironsource/e4;

    .line 24
    iput-object p3, p0, Lcom/ironsource/ch;->d:Lcom/ironsource/Y4;

    .line 25
    iput p4, p0, Lcom/ironsource/ch;->e:I

    .line 26
    iput-object p5, p0, Lcom/ironsource/ch;->f:Lcom/ironsource/j5;

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/ironsource/ch;->g:I

    .line 29
    :cond_0
    iput-object p6, p0, Lcom/ironsource/ch;->a:Ljava/lang/String;

    return-void
.end method

.method private h()Lcom/ironsource/ch$a;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ironsource/sdk/controller/FeaturesManager;->getInstance()Lcom/ironsource/sdk/controller/FeaturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/FeaturesManager;->getInitRecoverTrials()I

    move-result v0

    iput v0, p0, Lcom/ironsource/ch;->h:I

    .line 2
    iget-object v0, p0, Lcom/ironsource/ch;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getInitialState mMaxAllowedTrials: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ironsource/ch;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget v0, p0, Lcom/ironsource/ch;->h:I

    if-gtz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ironsource/ch;->i:Ljava/lang/String;

    const-string v1, "recovery is not allowed by config"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/ironsource/ch$a;->d:Lcom/ironsource/ch$a;

    return-object v0

    .line 9
    :cond_0
    sget-object v0, Lcom/ironsource/ch$a;->a:Lcom/ironsource/ch$a;

    return-object v0
.end method

.method private j()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ironsource/ch;->g:I

    iget v1, p0, Lcom/ironsource/ch;->h:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ironsource/ch;->i:Ljava/lang/String;

    const-string v1, "handleRecoveringEndedFailed | Reached max trials"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/ironsource/ch$a;->d:Lcom/ironsource/ch$a;

    iput-object v0, p0, Lcom/ironsource/ch;->j:Lcom/ironsource/ch$a;

    .line 4
    invoke-virtual {p0}, Lcom/ironsource/ch;->a()V

    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/ironsource/ch$a;->a:Lcom/ironsource/ch$a;

    iput-object v0, p0, Lcom/ironsource/ch;->j:Lcom/ironsource/ch$a;

    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/ch;->a()V

    .line 2
    sget-object v0, Lcom/ironsource/ch$a;->b:Lcom/ironsource/ch$a;

    iput-object v0, p0, Lcom/ironsource/ch;->j:Lcom/ironsource/ch$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/ironsource/ch;->b:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Lcom/ironsource/ch;->c:Lcom/ironsource/e4;

    .line 40
    iput-object v0, p0, Lcom/ironsource/ch;->d:Lcom/ironsource/Y4;

    .line 41
    iput-object v0, p0, Lcom/ironsource/ch;->f:Lcom/ironsource/j5;

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/ironsource/ch;->j:Lcom/ironsource/ch$a;

    sget-object v1, Lcom/ironsource/ch$a;->c:Lcom/ironsource/ch$a;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 47
    invoke-direct {p0}, Lcom/ironsource/ch;->k()V

    return-void

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/ironsource/ch;->j()V

    return-void
.end method

.method public a(Lcom/ironsource/t8$c;Lcom/ironsource/t8$b;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/ch;->i:Ljava/lang/String;

    const-string v1, "shouldRecoverWebController: "

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/ch;->j:Lcom/ironsource/ch$a;

    sget-object v1, Lcom/ironsource/ch$a;->d:Lcom/ironsource/ch$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/ironsource/ch;->i:Ljava/lang/String;

    const-string p2, "shouldRecoverWebController: false | recover is not allowed"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 8
    :cond_0
    sget-object v1, Lcom/ironsource/t8$c;->b:Lcom/ironsource/t8$c;

    if-eq p1, v1, :cond_1

    .line 9
    iget-object p2, p0, Lcom/ironsource/ch;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shouldRecoverWebController: false | current controller type is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 14
    :cond_1
    sget-object p1, Lcom/ironsource/t8$b;->b:Lcom/ironsource/t8$b;

    if-eq p2, p1, :cond_7

    sget-object p1, Lcom/ironsource/t8$b;->a:Lcom/ironsource/t8$b;

    if-ne p2, p1, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    sget-object p1, Lcom/ironsource/ch$a;->b:Lcom/ironsource/ch$a;

    if-ne v0, p1, :cond_3

    .line 21
    iget-object p1, p0, Lcom/ironsource/ch;->i:Ljava/lang/String;

    const-string p2, "shouldRecoverWebController: false | already recovered"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 25
    :cond_3
    sget-object p1, Lcom/ironsource/ch$a;->c:Lcom/ironsource/ch$a;

    if-ne v0, p1, :cond_4

    .line 26
    iget-object p1, p0, Lcom/ironsource/ch;->i:Ljava/lang/String;

    const-string p2, "shouldRecoverWebController: false | currently in recovering"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 30
    :cond_4
    iget-object p1, p0, Lcom/ironsource/ch;->b:Landroid/content/Context;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ironsource/ch;->c:Lcom/ironsource/e4;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ironsource/ch;->d:Lcom/ironsource/Y4;

    if-nez p1, :cond_5

    goto :goto_0

    .line 35
    :cond_5
    iget-object p1, p0, Lcom/ironsource/ch;->i:Ljava/lang/String;

    const-string p2, "shouldRecoverWebController: true | allow recovering "

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 36
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/ironsource/ch;->i:Ljava/lang/String;

    const-string p2, "shouldRecoverWebController: false | missing mandatory param"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 37
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/ironsource/ch;->i:Ljava/lang/String;

    const-string p2, "shouldRecoverWebController: false | a Controller is currently loading"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/ch;->b:Landroid/content/Context;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/ch;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/ironsource/e4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/ch;->c:Lcom/ironsource/e4;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/ch;->e:I

    return v0
.end method

.method public f()Lcom/ironsource/Y4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/ch;->d:Lcom/ironsource/Y4;

    return-object v0
.end method

.method public g()Lcom/ironsource/j5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/ch;->f:Lcom/ironsource/j5;

    return-object v0
.end method

.method public i()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "isRecovered"

    invoke-virtual {p0}, Lcom/ironsource/ch;->m()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 4
    const-string v1, "trialNumber"

    iget v2, p0, Lcom/ironsource/ch;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    const-string v1, "maxAllowedTrials"

    iget v2, p0, Lcom/ironsource/ch;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 7
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 8
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-object v0
.end method

.method public l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/ch;->j:Lcom/ironsource/ch$a;

    sget-object v1, Lcom/ironsource/ch$a;->c:Lcom/ironsource/ch$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/ch;->j:Lcom/ironsource/ch$a;

    sget-object v1, Lcom/ironsource/ch$a;->b:Lcom/ironsource/ch$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/ch;->j:Lcom/ironsource/ch$a;

    sget-object v1, Lcom/ironsource/ch$a;->c:Lcom/ironsource/ch$a;

    if-eq v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/ironsource/ch;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/ch;->g:I

    .line 3
    iget-object v0, p0, Lcom/ironsource/ch;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "recoveringStarted - trial number "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ironsource/ch;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-object v1, p0, Lcom/ironsource/ch;->j:Lcom/ironsource/ch$a;

    :cond_0
    return-void
.end method
