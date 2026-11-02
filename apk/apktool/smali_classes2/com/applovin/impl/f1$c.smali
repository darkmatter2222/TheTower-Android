.class Lcom/applovin/impl/f1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/f1;->e(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/applovin/impl/f1;


# direct methods
.method constructor <init>(Lcom/applovin/impl/f1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/f1$c;->b:Lcom/applovin/impl/f1;

    iput-object p2, p0, Lcom/applovin/impl/f1$c;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/app/Activity;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/applovin/creative/MaxCreativeDebuggerDisplayedAdActivity;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/f1$c;->a(Lcom/applovin/creative/MaxCreativeDebuggerDisplayedAdActivity;)V

    return-void
.end method

.method public a(Lcom/applovin/creative/MaxCreativeDebuggerDisplayedAdActivity;)V
    .locals 4

    .line 2
    new-instance v0, Lcom/applovin/impl/r1;

    iget-object v1, p0, Lcom/applovin/impl/f1$c;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/applovin/impl/f1$c;->b:Lcom/applovin/impl/f1;

    invoke-static {v2}, Lcom/applovin/impl/f1;->c(Lcom/applovin/impl/f1;)Lcom/applovin/impl/sdk/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/l;->J()Lcom/applovin/impl/sdk/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/o;->b()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/r1;-><init>(Ljava/lang/Object;J)V

    .line 4
    iget-object v1, p0, Lcom/applovin/impl/f1$c;->b:Lcom/applovin/impl/f1;

    invoke-static {v1}, Lcom/applovin/impl/f1;->c(Lcom/applovin/impl/f1;)Lcom/applovin/impl/sdk/l;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/p1;->a(Lcom/applovin/impl/r1;Lcom/applovin/impl/sdk/l;)V

    .line 5
    invoke-static {}, Lcom/applovin/impl/f1;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
