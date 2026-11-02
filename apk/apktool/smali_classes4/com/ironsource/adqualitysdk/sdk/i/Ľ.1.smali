.class public final Lcom/ironsource/adqualitysdk/sdk/i/Ľ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;


# instance fields
.field public ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/Т;

.field public ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ȑ;

.field public final ｋ:Landroid/os/Handler;

.field public final ﾇ:Ljava/util/HashMap;

.field public ﾒ:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﾇ:Ljava/util/HashMap;

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ｋ:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/Ľ;
    .locals 2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;-><init>()V

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    .line 4
    :cond_0
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;
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

.method public static ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ľ;)V
    .locals 2

    .line 5
    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﾒ:Z

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﾇ:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 7
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﾒ:Z

    .line 11
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/Ƭ;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/Ƭ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/Ľ;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    :cond_1
    :goto_0
    return-void
.end method
