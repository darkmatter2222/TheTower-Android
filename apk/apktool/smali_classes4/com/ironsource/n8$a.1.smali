.class Lcom/ironsource/n8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/n8;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lorg/json/JSONObject;

.field final synthetic e:Lcom/ironsource/n8;


# direct methods
.method constructor <init>(Lcom/ironsource/n8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/n8$a;->e:Lcom/ironsource/n8;

    iput-object p2, p0, Lcom/ironsource/n8$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/n8$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/n8$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/ironsource/n8$a;->d:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "ISNAdViewLogic | handleMessageFromController | cannot handle command: "

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/n8$a;->e:Lcom/ironsource/n8;

    iget-object v2, p0, Lcom/ironsource/n8$a;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ironsource/n8;->-$$Nest$mb(Lcom/ironsource/n8;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/n8$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ironsource/n8$a;->e:Lcom/ironsource/n8;

    invoke-static {v1}, Lcom/ironsource/n8;->-$$Nest$fgete(Lcom/ironsource/n8;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lcom/ironsource/n8$a;->e:Lcom/ironsource/n8;

    iget-object v2, p0, Lcom/ironsource/n8$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/n8;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ironsource/n8$a;->a:Ljava/lang/String;

    const-string v1, "handleGetViewVisibility"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/ironsource/n8$a;->e:Lcom/ironsource/n8;

    iget-object v1, p0, Lcom/ironsource/n8$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/n8;->e(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/ironsource/n8$a;->a:Ljava/lang/String;

    const-string v1, "sendMessage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ironsource/n8$a;->a:Ljava/lang/String;

    const-string v1, "updateAd"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/ironsource/n8$a;->e:Lcom/ironsource/n8;

    iget-object v1, p0, Lcom/ironsource/n8$a;->d:Lorg/json/JSONObject;

    const-string v2, "params"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/n8$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/n8$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/n8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 16
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 17
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ISNAdViewLogic | handleMessageFromController | Error while trying handle message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/n8$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/ironsource/n8$a;->e:Lcom/ironsource/n8;

    invoke-static {v1}, Lcom/ironsource/n8;->-$$Nest$fgete(Lcom/ironsource/n8;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v1, p0, Lcom/ironsource/n8$a;->e:Lcom/ironsource/n8;

    iget-object v2, p0, Lcom/ironsource/n8$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/n8;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
