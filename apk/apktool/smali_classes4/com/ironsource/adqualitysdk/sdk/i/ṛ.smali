.class public final Lcom/ironsource/adqualitysdk/sdk/i/ṛ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ṛ;


# instance fields
.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;

.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;

    .line 3
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;

    return-void
.end method

.method public static declared-synchronized ﾇ()V
    .locals 2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ṛ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ṛ;
    .locals 2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ṛ;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;-><init>()V

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ṛ;

    .line 4
    :cond_0
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ṛ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
