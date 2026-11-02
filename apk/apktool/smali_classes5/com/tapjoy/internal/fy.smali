.class public final Lcom/tapjoy/internal/fy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/tapjoy/internal/fs;

.field public volatile b:Lcom/tapjoy/internal/gi$a;

.field public c:I

.field public volatile d:Lcom/tapjoy/internal/gi$a;

.field public volatile e:Lcom/tapjoy/internal/gi$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->a:Lcom/tapjoy/internal/fs;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/tapjoy/internal/fs;->c()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/gi$a;

    if-eqz v0, :cond_0

    .line 101
    iget v1, p0, Lcom/tapjoy/internal/fy;->c:I

    if-ge v1, p1, :cond_0

    or-int/2addr p1, v1

    .line 102
    iput p1, p0, Lcom/tapjoy/internal/fy;->c:I

    .line 103
    const-string v1, "state"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tapjoy/internal/gi$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gi$a;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/tapjoy/internal/gi$a;->b()Lcom/tapjoy/internal/gi$a;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcom/tapjoy/internal/gi$a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 2

    const/16 v0, 0x10

    .line 89
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fy;->a(I)V

    .line 91
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->d:Lcom/tapjoy/internal/gi$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/tapjoy/internal/fy;->d:Lcom/tapjoy/internal/gi$a;

    .line 94
    invoke-virtual {v0}, Lcom/tapjoy/internal/gi$a;->b()Lcom/tapjoy/internal/gi$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gi$a;->c()V

    :cond_0
    return-void
.end method
