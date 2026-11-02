.class Lcom/ironsource/sdk/controller/v$j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/v$j;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/sdk/controller/v$j;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/v$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v$j$b;->a:Lcom/ironsource/sdk/controller/v$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Stopping WebView load before retry attempt $nextAttempt"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v$j$b;->a:Lcom/ironsource/sdk/controller/v$j;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/v$j;->c:Lcom/ironsource/sdk/controller/v;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/v;->-$$Nest$fgetb0(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/na;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Failed to stop WebView loading: $error"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v$j$b;->a:Lcom/ironsource/sdk/controller/v$j;

    iget-object v1, v0, Lcom/ironsource/sdk/controller/v$j;->c:Lcom/ironsource/sdk/controller/v;

    iget v0, v0, Lcom/ironsource/sdk/controller/v$j;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/controller/v;->a(I)V

    return-void
.end method
