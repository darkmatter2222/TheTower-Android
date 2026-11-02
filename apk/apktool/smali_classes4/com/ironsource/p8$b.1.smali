.class Lcom/ironsource/p8$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/p8;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/p8;


# direct methods
.method constructor <init>(Lcom/ironsource/p8;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/p8$b;->c:Lcom/ironsource/p8;

    iput-object p2, p0, Lcom/ironsource/p8$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/p8$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/p8$b;->c:Lcom/ironsource/p8;

    invoke-static {v0}, Lcom/ironsource/p8;->-$$Nest$fgetc(Lcom/ironsource/p8;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 5
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "adViewId"

    iget-object v2, p0, Lcom/ironsource/p8$b;->c:Lcom/ironsource/p8;

    invoke-static {v2}, Lcom/ironsource/p8;->-$$Nest$fgeta(Lcom/ironsource/p8;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object v1, p0, Lcom/ironsource/p8$b;->c:Lcom/ironsource/p8;

    invoke-static {v1}, Lcom/ironsource/p8;->-$$Nest$fgetd(Lcom/ironsource/p8;)Lcom/ironsource/n8;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v2, p0, Lcom/ironsource/p8$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/n8;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 9
    iget-object v0, p0, Lcom/ironsource/p8$b;->c:Lcom/ironsource/p8;

    invoke-static {v0}, Lcom/ironsource/p8;->-$$Nest$fgetd(Lcom/ironsource/p8;)Lcom/ironsource/n8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/n8;->b()V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/ironsource/p8$b;->c:Lcom/ironsource/p8;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/p8;->-$$Nest$fputd(Lcom/ironsource/p8;Lcom/ironsource/n8;)V

    .line 12
    invoke-static {v0, v1}, Lcom/ironsource/p8;->-$$Nest$fputf(Lcom/ironsource/p8;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 15
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 16
    invoke-static {}, Lcom/ironsource/p8;->-$$Nest$sfgeth()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "performCleanup | could not destroy ISNAdView webView ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ironsource/p8$b;->c:Lcom/ironsource/p8;

    invoke-static {v3}, Lcom/ironsource/p8;->-$$Nest$fgeta(Lcom/ironsource/p8;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sget-object v1, Lcom/ironsource/le;->r:Lcom/ironsource/le$a;

    new-instance v2, Lcom/ironsource/v8;

    invoke-direct {v2}, Lcom/ironsource/v8;-><init>()V

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "callfailreason"

    invoke-virtual {v2, v4, v3}, Lcom/ironsource/v8;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/v8;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/ironsource/v8;->a()Ljava/util/HashMap;

    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Lcom/ironsource/A8;->a(Lcom/ironsource/le$a;Ljava/util/Map;)V

    .line 32
    iget-object v1, p0, Lcom/ironsource/p8$b;->c:Lcom/ironsource/p8;

    iget-object v2, p0, Lcom/ironsource/p8$b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/p8;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
