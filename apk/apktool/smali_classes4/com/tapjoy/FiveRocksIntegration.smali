.class public Lcom/tapjoy/FiveRocksIntegration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/tapjoy/internal/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/at<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TJPlacement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/tapjoy/internal/at;

    invoke-direct {v0}, Lcom/tapjoy/internal/at;-><init>()V

    sput-object v0, Lcom/tapjoy/FiveRocksIntegration;->a:Lcom/tapjoy/internal/at;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    .line 1060
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    .line 1157
    iget-boolean v1, v0, Lcom/tapjoy/internal/hj;->c:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1158
    iput-boolean v2, v0, Lcom/tapjoy/internal/hj;->c:Z

    .line 2028
    :cond_0
    new-instance v0, Lcom/tapjoy/FiveRocksIntegration$1;

    invoke-direct {v0}, Lcom/tapjoy/FiveRocksIntegration$1;-><init>()V

    .line 2515
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v1

    .line 2931
    invoke-static {v0}, Lcom/tapjoy/internal/hk;->a(Lcom/tapjoy/internal/gy;)Lcom/tapjoy/internal/hk;

    move-result-object v0

    iput-object v0, v1, Lcom/tapjoy/internal/hj;->o:Lcom/tapjoy/internal/hk;

    return-void
.end method

.method public static addPlacementCallback(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V
    .locals 2

    .line 22
    sget-object v0, Lcom/tapjoy/FiveRocksIntegration;->a:Lcom/tapjoy/internal/at;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/tapjoy/FiveRocksIntegration;->a:Lcom/tapjoy/internal/at;

    invoke-virtual {v1, p0, p1}, Lcom/tapjoy/internal/at;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic b()Lcom/tapjoy/internal/at;
    .locals 1

    .line 10
    sget-object v0, Lcom/tapjoy/FiveRocksIntegration;->a:Lcom/tapjoy/internal/at;

    return-object v0
.end method
