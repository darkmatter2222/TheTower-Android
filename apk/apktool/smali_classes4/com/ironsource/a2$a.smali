.class public final Lcom/ironsource/a2$a;
.super Lcom/ironsource/environment/thread/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/a2;->a(Lcom/ironsource/a2$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ironsource/z3;

.field final synthetic c:Lcom/ironsource/a2;

.field final synthetic d:Lcom/ironsource/z3$b;


# direct methods
.method constructor <init>(Lcom/ironsource/z3;Lcom/ironsource/a2;Lcom/ironsource/z3$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/a2$a;->b:Lcom/ironsource/z3;

    iput-object p2, p0, Lcom/ironsource/a2$a;->c:Lcom/ironsource/a2;

    iput-object p3, p0, Lcom/ironsource/a2$a;->d:Lcom/ironsource/z3$b;

    .line 1
    invoke-direct {p0}, Lcom/ironsource/environment/thread/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/a2$a;->b:Lcom/ironsource/z3;

    .line 2
    iget-object v1, p0, Lcom/ironsource/a2$a;->c:Lcom/ironsource/a2;

    invoke-virtual {v1}, Lcom/ironsource/a2;->e()Ljava/util/List;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/ironsource/a2$a;->d:Lcom/ironsource/z3$b;

    .line 4
    iget-object v3, p0, Lcom/ironsource/a2$a;->c:Lcom/ironsource/a2;

    invoke-static {v3}, Lcom/ironsource/a2;->b(Lcom/ironsource/a2;)Lcom/ironsource/x0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/x0;->f()J

    move-result-wide v3

    .line 5
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/z3;->a(Ljava/util/List;Lcom/ironsource/z3$b;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method
