.class Lcom/applovin/impl/d$a;
.super Lcom/applovin/impl/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/d;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/c;Lcom/applovin/impl/d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Lcom/applovin/impl/d$b;

.field final synthetic d:Lcom/applovin/impl/c;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/applovin/impl/d$b;Lcom/applovin/impl/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/d$a;->b:Ljava/lang/Class;

    iput-object p2, p0, Lcom/applovin/impl/d$a;->c:Lcom/applovin/impl/d$b;

    iput-object p3, p0, Lcom/applovin/impl/d$a;->d:Lcom/applovin/impl/c;

    invoke-direct {p0}, Lcom/applovin/impl/b;-><init>()V

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/applovin/impl/d$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/applovin/impl/d$a;->b:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/applovin/impl/d$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/applovin/impl/d$a;->a:Ljava/lang/ref/WeakReference;

    .line 4
    iget-object p2, p0, Lcom/applovin/impl/d$a;->c:Lcom/applovin/impl/d$b;

    invoke-interface {p2, p1}, Lcom/applovin/impl/d$b;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/d$a;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/d$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/applovin/impl/d$a;->d:Lcom/applovin/impl/c;

    invoke-virtual {p1, p0}, Lcom/applovin/impl/c;->b(Lcom/applovin/impl/b;)V

    :cond_0
    return-void
.end method
