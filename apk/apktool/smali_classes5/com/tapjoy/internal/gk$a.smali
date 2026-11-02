.class final Lcom/tapjoy/internal/gk$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gk;

.field private b:I

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gk;IJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/tapjoy/internal/gk$a;->a:Lcom/tapjoy/internal/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p2, p0, Lcom/tapjoy/internal/gk$a;->b:I

    .line 49
    iput-wide p3, p0, Lcom/tapjoy/internal/gk$a;->c:J

    .line 50
    iput-object p5, p0, Lcom/tapjoy/internal/gk$a;->d:Ljava/lang/String;

    .line 51
    iput-object p6, p0, Lcom/tapjoy/internal/gk$a;->e:Ljava/lang/String;

    .line 52
    iput-object p7, p0, Lcom/tapjoy/internal/gk$a;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 58
    :try_start_0
    iget v0, p0, Lcom/tapjoy/internal/gk$a;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/tapjoy/internal/gk$a;->a:Lcom/tapjoy/internal/gk;

    iget-wide v3, p0, Lcom/tapjoy/internal/gk$a;->c:J

    iget-object v5, p0, Lcom/tapjoy/internal/gk$a;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/tapjoy/internal/gk$a;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/tapjoy/internal/gk$a;->f:Ljava/util/Map;

    invoke-static/range {v2 .. v7}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gk;JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/gk$a;->a:Lcom/tapjoy/internal/gk;

    invoke-static {v0}, Lcom/tapjoy/internal/gk;->b(Lcom/tapjoy/internal/gk;)V

    return-void

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/gk$a;->a:Lcom/tapjoy/internal/gk;

    iget-wide v1, p0, Lcom/tapjoy/internal/gk$a;->c:J

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gk;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 70
    :catchall_0
    iget-object v0, p0, Lcom/tapjoy/internal/gk$a;->a:Lcom/tapjoy/internal/gk;

    invoke-static {v0}, Lcom/tapjoy/internal/gk;->c(Lcom/tapjoy/internal/gk;)V

    return-void
.end method
