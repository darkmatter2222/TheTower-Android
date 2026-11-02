.class public final Lcom/ironsource/j4$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/ig$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/j4$a;->a(Lcom/ironsource/j4$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/j4$d;

.field final synthetic b:Lcom/ironsource/j4$a;


# direct methods
.method constructor <init>(Lcom/ironsource/j4$d;Lcom/ironsource/j4$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/j4$a$a;->a:Lcom/ironsource/j4$d;

    iput-object p2, p0, Lcom/ironsource/j4$a$a;->b:Lcom/ironsource/j4$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/j4$a$a;->a:Lcom/ironsource/j4$d;

    .line 2
    new-instance v1, Lcom/ironsource/d7$a;

    .line 3
    new-instance v2, Lcom/ironsource/a7$a;

    iget-object v3, p0, Lcom/ironsource/j4$a$a;->b:Lcom/ironsource/j4$a;

    invoke-static {v3}, Lcom/ironsource/j4$a;->a(Lcom/ironsource/j4$a;)Lcom/ironsource/Z6;

    move-result-object v3

    invoke-interface {v3}, Lcom/ironsource/Z6;->b()Lcom/ironsource/c7;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ironsource/a7$a;-><init>(Lcom/ironsource/c7;)V

    .line 4
    invoke-direct {v1, v2}, Lcom/ironsource/d7$a;-><init>(Lcom/ironsource/a7;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/ironsource/j4$d;->a(Lcom/ironsource/d7;)V

    .line 8
    iget-object v0, p0, Lcom/ironsource/j4$a$a;->b:Lcom/ironsource/j4$a;

    invoke-static {v0}, Lcom/ironsource/j4$a;->b(Lcom/ironsource/j4$a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
