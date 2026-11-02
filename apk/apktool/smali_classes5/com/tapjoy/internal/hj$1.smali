.class final Lcom/tapjoy/internal/hj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/hj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/bz<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/internal/hj;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hj;Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/tapjoy/internal/hj$1;->b:Lcom/tapjoy/internal/hj;

    iput-object p2, p0, Lcom/tapjoy/internal/hj$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/bu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/internal/bu<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final synthetic a(Lcom/tapjoy/internal/bu;Ljava/lang/Object;)V
    .locals 2

    .line 1240
    iget-object p1, p0, Lcom/tapjoy/internal/hj$1;->b:Lcom/tapjoy/internal/hj;

    invoke-static {p1}, Lcom/tapjoy/internal/hj;->a(Lcom/tapjoy/internal/hj;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/internal/hl;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hl;

    move-result-object p1

    iget-object p2, p0, Lcom/tapjoy/internal/hj$1;->a:Ljava/lang/String;

    .line 2084
    iget-object v0, p1, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p1, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2085
    filled-new-array {p2}, [Ljava/lang/Object;

    return-void

    .line 2088
    :cond_0
    iget-object p2, p1, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v0, p1, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {p2, v0}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;)V

    .line 2094
    iget-object p2, p1, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object p1, p1, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    const-wide/16 v0, 0x0

    invoke-interface {p2, p1, v0, v1}, Lcom/tapjoy/internal/q;->a(Landroid/content/Context;J)V

    return-void
.end method
