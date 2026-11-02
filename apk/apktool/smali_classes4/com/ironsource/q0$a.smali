.class public Lcom/ironsource/q0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/E;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/q0;


# direct methods
.method public constructor <init>(Lcom/ironsource/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/q0$a;->a:Lcom/ironsource/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/A;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/ironsource/q0$a;->a:Lcom/ironsource/q0;

    invoke-static {p1}, Lcom/ironsource/q0;->a(Lcom/ironsource/q0;)Lcom/ironsource/E5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/E5;->a()Lcom/ironsource/N;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/q0$a;->a:Lcom/ironsource/q0;

    invoke-virtual {v0}, Lcom/ironsource/q0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/N;->a(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/ironsource/q0$a;->a:Lcom/ironsource/q0;

    invoke-static {p1}, Lcom/ironsource/q0;->b(Lcom/ironsource/q0;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/J0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ironsource/J0;->e()V

    :cond_0
    return-void
.end method

.method public a(Lcom/ironsource/A;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/q0$a;->a:Lcom/ironsource/q0;

    invoke-virtual {p1}, Lcom/ironsource/A;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/q0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/ironsource/q0$a;->a:Lcom/ironsource/q0;

    invoke-static {p1}, Lcom/ironsource/q0;->a(Lcom/ironsource/q0;)Lcom/ironsource/E5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/E5;->a()Lcom/ironsource/N;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/ironsource/q0$a;->a:Lcom/ironsource/q0;

    invoke-virtual {v0}, Lcom/ironsource/q0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ironsource/N;->a(Ljava/lang/String;ILjava/lang/String;Lcom/ironsource/Pd;)V

    .line 6
    iget-object p1, p0, Lcom/ironsource/q0$a;->a:Lcom/ironsource/q0;

    invoke-virtual {p1}, Lcom/ironsource/q0;->i()Lcom/ironsource/z0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/ironsource/z0;->c(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/ironsource/A;)V
    .locals 3

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/q0$a;->a:Lcom/ironsource/q0;

    invoke-virtual {p1}, Lcom/ironsource/A;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/q0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/q0$a;->a:Lcom/ironsource/q0;

    invoke-virtual {v0}, Lcom/ironsource/q0;->k()Lcom/ironsource/Hg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/Hg;->d(Lcom/ironsource/A;)V

    .line 3
    iget-object p1, p0, Lcom/ironsource/q0$a;->a:Lcom/ironsource/q0;

    invoke-static {p1}, Lcom/ironsource/q0;->a(Lcom/ironsource/q0;)Lcom/ironsource/E5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/E5;->a()Lcom/ironsource/N;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/q0$a;->a:Lcom/ironsource/q0;

    invoke-virtual {v0}, Lcom/ironsource/q0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/N;->g(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/ironsource/q0$a;->a:Lcom/ironsource/q0;

    invoke-virtual {p1}, Lcom/ironsource/q0;->f()Lcom/ironsource/T0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/T0;->l()Lcom/ironsource/Q8$a;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/ironsource/q0$a;->a:Lcom/ironsource/q0;

    invoke-virtual {v0}, Lcom/ironsource/q0;->e()Lcom/ironsource/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ironsource/Q8$a;->b(Lcom/ironsource/mediationsdk/IronSource$a;)V

    return-void
.end method
