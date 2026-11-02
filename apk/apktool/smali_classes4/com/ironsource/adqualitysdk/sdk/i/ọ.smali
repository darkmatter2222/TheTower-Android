.class public final Lcom/ironsource/adqualitysdk/sdk/i/ọ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ọ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11

    .line 1
    const-string v0, "mvTZwiAkOyOo\n"

    const-string v1, "25q4rllQUkA=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "0Wphq1QBdNGkYXqpRBZozOtq\n"

    const-string v1, "hAQCyiFmHKU=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "6lRPbQrb+WDV\n"

    const-string v1, "viYuDm+5mAM=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    move-object v5, p2

    .line 2
    :try_start_0
    invoke-static/range {v2 .. v10}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Lorg/json/JSONObject;ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :catchall_0
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ọ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻛ()V

    .line 4
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ọ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 5
    iget-object p2, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﭴ:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p2, :cond_0

    .line 6
    invoke-interface {p2, p1, v5}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/16 p1, 0xa

    .line 11
    invoke-static {p1}, Ljava/lang/System;->exit(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
