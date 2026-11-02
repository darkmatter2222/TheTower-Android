.class Lcom/ironsource/sdk/controller/v$s$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/v$s;->onReceivedMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ironsource/sdk/controller/v$s;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/v$s;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v$s$l;->b:Lcom/ironsource/sdk/controller/v$s;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/v$s$l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/v$s$l;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v$s$l;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/ironsource/sdk/controller/f$a;->a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/f$a;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/ironsource/sdk/controller/v$s$l;->b:Lcom/ironsource/sdk/controller/v$s;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/v$s;->a:Lcom/ironsource/sdk/controller/v;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/v;->-$$Nest$fgetU(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/sdk/controller/l$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ironsource/sdk/controller/l$a;->a(Lcom/ironsource/sdk/controller/f$a;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v$s$l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ironsource/Sb;->a(Ljava/lang/String;)Lcom/ironsource/Sb;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/ironsource/sdk/controller/v$s$l;->b:Lcom/ironsource/sdk/controller/v$s;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/v$s;->a:Lcom/ironsource/sdk/controller/v;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/v;->-$$Nest$fgetV(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/sdk/controller/l$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ironsource/sdk/controller/l$b;->a(Lcom/ironsource/Sb;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 10
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 11
    iget-object v1, p0, Lcom/ironsource/sdk/controller/v$s$l;->b:Lcom/ironsource/sdk/controller/v$s;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/v$s;->a:Lcom/ironsource/sdk/controller/v;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/v;->-$$Nest$fgetc(Lcom/ironsource/sdk/controller/v;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to parse received message"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method
