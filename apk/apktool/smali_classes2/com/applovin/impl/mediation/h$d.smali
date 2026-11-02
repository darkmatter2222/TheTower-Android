.class Lcom/applovin/impl/mediation/h$d;
.super Lcom/applovin/impl/n5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final g:Ljava/lang/ref/WeakReference;

.field final synthetic h:Lcom/applovin/impl/mediation/h;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/mediation/h;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/mediation/h$d;->h:Lcom/applovin/impl/mediation/h;

    .line 3
    invoke-static {p1}, Lcom/applovin/impl/mediation/h;->g(Lcom/applovin/impl/mediation/h;)Lcom/applovin/impl/sdk/l;

    move-result-object v0

    const-string v1, "TaskTimeoutMediatedAd"

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/n5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/applovin/impl/mediation/h;->f(Lcom/applovin/impl/mediation/h;)Lcom/applovin/impl/mediation/h$b;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/h$d;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/mediation/h;Lcom/applovin/impl/mediation/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/h$d;-><init>(Lcom/applovin/impl/mediation/h;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/c3;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->b0()Lcom/applovin/impl/z3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/z3;->a(Lcom/applovin/impl/c3;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/mediation/h$d;->h:Lcom/applovin/impl/mediation/h;

    invoke-static {v0}, Lcom/applovin/impl/mediation/h;->h(Lcom/applovin/impl/mediation/h;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/applovin/impl/mediation/h$d;->h:Lcom/applovin/impl/mediation/h;

    invoke-static {v3}, Lcom/applovin/impl/mediation/h;->i(Lcom/applovin/impl/mediation/h;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is timing out "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/h$d;->h:Lcom/applovin/impl/mediation/h;

    invoke-static {v3}, Lcom/applovin/impl/mediation/h;->j(Lcom/applovin/impl/mediation/h;)Lcom/applovin/impl/c3;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/h$d;->h:Lcom/applovin/impl/mediation/h;

    invoke-static {v0}, Lcom/applovin/impl/mediation/h;->j(Lcom/applovin/impl/mediation/h;)Lcom/applovin/impl/c3;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/h$d;->b(Lcom/applovin/impl/c3;)V

    .line 7
    new-instance v0, Lcom/applovin/impl/mediation/MaxErrorImpl;

    const/16 v1, -0x13ed

    const-string v2, "Adapter timed out"

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/applovin/impl/mediation/h$d;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/mediation/h$b;

    if-eqz v1, :cond_1

    .line 11
    iget-object v2, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/mediation/h$b;->a(Lcom/applovin/impl/mediation/h$b;Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V

    :cond_1
    return-void
.end method
