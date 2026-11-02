.class public Lcom/ironsource/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/ironsource/V6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ironsource/V6;

    invoke-direct {v0}, Lcom/ironsource/V6;-><init>()V

    iput-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "cnst"

    invoke-virtual {v0, v1}, Lcom/ironsource/V6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 34
    const-string v1, "asel"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    invoke-virtual {v0, p1}, Lcom/ironsource/V6;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lcom/ironsource/U7;)V
    .locals 3

    .line 16
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    const-string v1, "omv"

    invoke-virtual {p1}, Lcom/ironsource/U7;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v1, "ompv"

    .line 21
    invoke-virtual {p1}, Lcom/ironsource/U7;->b()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "sdkv"

    invoke-virtual {p1}, Lcom/ironsource/U7;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    invoke-virtual {p1, v0}, Lcom/ironsource/V6;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 29
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/ironsource/ye;)V
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ironsource/ba$a;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/ba$a;-><init>(Lcom/ironsource/ba;Lcom/ironsource/ye;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "fs"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "abt"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p1, "gdprcnsts"

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "md"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "cnst"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "gdprcnsts"

    invoke-virtual {v0, v1}, Lcom/ironsource/V6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "cmpid"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    .line 6
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->a()Lcom/ironsource/B7;

    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/ironsource/B7;->o(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object p1

    .line 8
    iget-object v1, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    .line 9
    invoke-interface {v0, p1}, Lcom/ironsource/B7;->c(Landroid/app/ActivityManager$MemoryInfo;)Ljava/lang/Long;

    move-result-object v2

    .line 10
    const-string v3, "availMem"

    invoke-virtual {v1, v3, v2}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->b(Landroid/app/ActivityManager$MemoryInfo;)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "lowM"

    invoke-virtual {v1, v0, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "adq_init_blob"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "tkgp"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "itp"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "apky"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "audt"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "google_water_mark"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "mt"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "medv"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "sid"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "usid"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
