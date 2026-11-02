.class Lcom/ironsource/adapters/ironsource/IronSourceAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Tc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->initSDK(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$1;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/ironsource/u8;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnNetworkSDKInitListener fail - code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/ironsource/u8;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/ironsource/u8;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$1;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$1;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    invoke-static {v3}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->-$$Nest$fgetinitDuration(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->-$$Nest$fputinitDuration(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;J)V

    .line 14
    new-instance v0, Lcom/ironsource/C5;

    sget-object v1, Lcom/ironsource/D5;->W:Lcom/ironsource/D5;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "reason"

    .line 18
    invoke-virtual {p1}, Lcom/ironsource/u8;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "duration"

    iget-object v3, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$1;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    invoke-static {v3}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->-$$Nest$fgetinitDuration(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;)J

    move-result-wide v3

    .line 19
    invoke-virtual {p1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 20
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 22
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 6

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "OnNetworkSDKInitListener success"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$1;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$1;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    invoke-static {v3}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->-$$Nest$fgetinitDuration(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->-$$Nest$fputinitDuration(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;J)V

    .line 4
    new-instance v0, Lcom/ironsource/C5;

    sget-object v1, Lcom/ironsource/D5;->V:Lcom/ironsource/D5;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "duration"

    iget-object v4, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$1;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    invoke-static {v4}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->-$$Nest$fgetinitDuration(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;)J

    move-result-wide v4

    .line 7
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 8
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
