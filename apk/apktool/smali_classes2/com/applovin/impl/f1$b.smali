.class Lcom/applovin/impl/f1$b;
.super Lcom/applovin/impl/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/f1;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/f1;


# direct methods
.method constructor <init>(Lcom/applovin/impl/f1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/f1$b;->a:Lcom/applovin/impl/f1;

    invoke-direct {p0}, Lcom/applovin/impl/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    instance-of p2, p1, Lcom/applovin/creative/MaxCreativeDebuggerActivity;

    if-eqz p2, :cond_2

    .line 3
    const-string p2, "AppLovinSdk"

    const-string v0, "Started Creative Debugger"

    invoke-static {p2, v0}, Lcom/applovin/impl/sdk/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/applovin/impl/f1$b;->a:Lcom/applovin/impl/f1;

    invoke-static {p2}, Lcom/applovin/impl/f1;->a(Lcom/applovin/impl/f1;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/applovin/impl/f1;->c()Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eq p2, p1, :cond_1

    .line 7
    :cond_0
    check-cast p1, Lcom/applovin/creative/MaxCreativeDebuggerActivity;

    .line 8
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/applovin/impl/f1;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 10
    iget-object p2, p0, Lcom/applovin/impl/f1$b;->a:Lcom/applovin/impl/f1;

    invoke-static {p2}, Lcom/applovin/impl/f1;->b(Lcom/applovin/impl/f1;)Lcom/applovin/impl/e1;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/f1$b;->a:Lcom/applovin/impl/f1;

    invoke-static {v0}, Lcom/applovin/impl/f1;->c(Lcom/applovin/impl/f1;)Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->e()Lcom/applovin/impl/c;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/d1;->a(Lcom/applovin/impl/e1;Lcom/applovin/impl/c;)V

    .line 13
    :cond_1
    invoke-static {}, Lcom/applovin/impl/f1;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    instance-of p1, p1, Lcom/applovin/creative/MaxCreativeDebuggerActivity;

    if-eqz p1, :cond_0

    .line 3
    const-string p1, "AppLovinSdk"

    const-string v0, "Creative Debugger destroyed"

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lcom/applovin/impl/f1;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method
