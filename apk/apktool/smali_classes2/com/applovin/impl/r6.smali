.class public abstract Lcom/applovin/impl/r6;
.super Lcom/applovin/impl/n5;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/r0$e;


# instance fields
.field private final g:Lcom/applovin/impl/sdk/network/a;

.field private final h:Lcom/applovin/impl/r0$e;

.field private i:Lcom/applovin/impl/i6$b;

.field private j:Lcom/applovin/impl/c5;

.field private k:Lcom/applovin/impl/c5;

.field private l:Ljava/lang/String;

.field protected m:Lcom/applovin/impl/r0$b;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/l;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/r6;-><init>(Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/l;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/l;Z)V
    .locals 1

    .line 2
    const-string v0, "TaskRepeatRequest"

    invoke-direct {p0, v0, p2, p3}, Lcom/applovin/impl/n5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/l;Z)V

    .line 3
    sget-object p3, Lcom/applovin/impl/i6$b;->e:Lcom/applovin/impl/i6$b;

    iput-object p3, p0, Lcom/applovin/impl/r6;->i:Lcom/applovin/impl/i6$b;

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/a;->f()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/applovin/impl/n5;->a(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/applovin/impl/r6;->g:Lcom/applovin/impl/sdk/network/a;

    .line 24
    new-instance p1, Lcom/applovin/impl/r0$b;

    invoke-direct {p1}, Lcom/applovin/impl/r0$b;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/r6;->m:Lcom/applovin/impl/r0$b;

    .line 25
    new-instance p1, Lcom/applovin/impl/r6$a;

    invoke-direct {p1, p0, p2}, Lcom/applovin/impl/r6$a;-><init>(Lcom/applovin/impl/r6;Lcom/applovin/impl/sdk/l;)V

    iput-object p1, p0, Lcom/applovin/impl/r6;->h:Lcom/applovin/impl/r0$e;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No request specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/r6;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/r6;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/r6;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/r6;->l:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/applovin/impl/c5;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/applovin/impl/n5;->b()Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->q0()Lcom/applovin/impl/d5;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/applovin/impl/c5;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/d5;->a(Lcom/applovin/impl/c5;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/r6;Lcom/applovin/impl/c5;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/applovin/impl/r6;->a(Lcom/applovin/impl/c5;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/r6;)Lcom/applovin/impl/sdk/network/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/r6;->g:Lcom/applovin/impl/sdk/network/a;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/r6;)Lcom/applovin/impl/c5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/r6;->j:Lcom/applovin/impl/c5;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/r6;)Lcom/applovin/impl/i6$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/r6;->i:Lcom/applovin/impl/i6$b;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/r6;)Lcom/applovin/impl/c5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/r6;->k:Lcom/applovin/impl/c5;

    return-object p0
.end method

.method private e()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->D3:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/n5;->b()Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->x()Lcom/applovin/impl/r0;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/applovin/impl/r6;->g:Lcom/applovin/impl/sdk/network/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->getHostAndPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/applovin/impl/r0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Swapping primary endpoint with backup endpoint "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/r6;->g:Lcom/applovin/impl/sdk/network/a;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/network/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/r6;->g:Lcom/applovin/impl/sdk/network/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/applovin/impl/r6;->g:Lcom/applovin/impl/sdk/network/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/a;->b(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/applovin/impl/r6;->g:Lcom/applovin/impl/sdk/network/a;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/i6$b;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/applovin/impl/r6;->i:Lcom/applovin/impl/i6$b;

    return-void
.end method

.method public abstract a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/Object;I)V
.end method

.method public b(Lcom/applovin/impl/c5;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/r6;->k:Lcom/applovin/impl/c5;

    return-void
.end method

.method public c(Lcom/applovin/impl/c5;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/r6;->j:Lcom/applovin/impl/c5;

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/n5;->b()Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->x()Lcom/applovin/impl/r0;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/applovin/impl/n5;->b()Lcom/applovin/impl/sdk/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->H0()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/applovin/impl/n5;->b()Lcom/applovin/impl/sdk/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->E0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    const-string v0, "AppLovinSdk"

    const-string v1, "AppLovin SDK is disabled"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/applovin/impl/r6;->g:Lcom/applovin/impl/sdk/network/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/a;->f()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x16

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/applovin/impl/r6;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 29
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/applovin/impl/r6;->e()V

    .line 32
    iget-object v1, p0, Lcom/applovin/impl/r6;->g:Lcom/applovin/impl/sdk/network/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/applovin/impl/r6;->g:Lcom/applovin/impl/sdk/network/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_4

    .line 34
    iget-object v1, p0, Lcom/applovin/impl/r6;->g:Lcom/applovin/impl/sdk/network/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    iget-object v1, p0, Lcom/applovin/impl/r6;->g:Lcom/applovin/impl/sdk/network/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/a;->b()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "POST"

    goto :goto_1

    :cond_2
    const-string v1, "GET"

    .line 37
    :goto_1
    iget-object v2, p0, Lcom/applovin/impl/r6;->g:Lcom/applovin/impl/sdk/network/a;

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/network/a;->c(Ljava/lang/String;)V

    .line 40
    :cond_3
    iget-object v1, p0, Lcom/applovin/impl/r6;->g:Lcom/applovin/impl/sdk/network/a;

    iget-object v2, p0, Lcom/applovin/impl/r6;->m:Lcom/applovin/impl/r0$b;

    iget-object v3, p0, Lcom/applovin/impl/r6;->h:Lcom/applovin/impl/r0$e;

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/r0;->a(Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/r0$b;Lcom/applovin/impl/r0$e;)V

    return-void

    .line 44
    :cond_4
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v3, "Task has an invalid or null request endpoint."

    invoke-virtual {v0, v1, v3}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/r6;->g:Lcom/applovin/impl/sdk/network/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/a;->f()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x384

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/applovin/impl/r6;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
