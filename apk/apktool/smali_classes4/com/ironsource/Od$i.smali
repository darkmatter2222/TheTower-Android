.class Lcom/ironsource/Od$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/Od;->d(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

.field final synthetic b:Lcom/ironsource/Od;


# direct methods
.method constructor <init>(Lcom/ironsource/Od;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/Od$i;->b:Lcom/ironsource/Od;

    iput-object p2, p0, Lcom/ironsource/Od$i;->a:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/Od$i;->b:Lcom/ironsource/Od;

    invoke-static {v0}, Lcom/ironsource/Od;->-$$Nest$fgetb(Lcom/ironsource/Od;)Lcom/ironsource/tb;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    check-cast v1, Lcom/ironsource/vb;

    iget-object v2, p0, Lcom/ironsource/Od$i;->a:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    .line 3
    invoke-static {v0, v2}, Lcom/ironsource/Od;->m(Lcom/ironsource/Od;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/ironsource/vb;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 4
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdReady() adInfo = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironsource/Od$i;->b:Lcom/ironsource/Od;

    iget-object v3, p0, Lcom/ironsource/Od$i;->a:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-static {v2, v3}, Lcom/ironsource/Od;->v(Lcom/ironsource/Od;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
