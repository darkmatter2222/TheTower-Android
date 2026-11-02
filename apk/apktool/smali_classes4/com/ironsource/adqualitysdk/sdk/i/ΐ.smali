.class public final Lcom/ironsource/adqualitysdk/sdk/i/ΐ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ﾇ:Landroid/os/Handler;


# instance fields
.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ٲ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ٲ;

    invoke-direct {v0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ٲ;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ٲ;

    return-void
.end method

.method public static ﾒ()Landroid/os/Handler;
    .locals 4

    .line 1
    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾇ:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "29brBMDxulLDx/0gwPqq\n"

    const-string v3, "kLOSUqGdzzc=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 5
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾇ:Landroid/os/Handler;

    .line 7
    :cond_0
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾇ:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final ﾇ(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ٲ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    :try_start_0
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ٲ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ү;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ү;->ﾒ:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/Ү;->ﾇ:Ljava/lang/String;

    const-string v3, "uK6XB4Y=\n"

    const-string v4, "08vuOrkwJ7Y=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method public final ﾒ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ٲ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :try_start_0
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ٲ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ү;

    invoke-virtual {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Ү;->ﾒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 13
    :try_start_1
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ٲ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ں;

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ں;->ﾇ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lcom/ironsource/adqualitysdk/sdk/i/ܥ; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 15
    :catch_0
    :try_start_2
    const-string p1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    return-object p1

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final ﾒ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ٲ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    :try_start_0
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ٲ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ں;

    invoke-virtual {v1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ں;->ﾒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 18
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ٲ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ү;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ү;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
