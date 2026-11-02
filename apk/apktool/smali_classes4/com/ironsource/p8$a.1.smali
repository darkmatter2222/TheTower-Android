.class Lcom/ironsource/p8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/p8;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ironsource/p8;


# direct methods
.method constructor <init>(Lcom/ironsource/p8;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/p8$a;->d:Lcom/ironsource/p8;

    iput-object p2, p0, Lcom/ironsource/p8$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/p8$a;->b:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/ironsource/p8$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/p8$a;->d:Lcom/ironsource/p8;

    invoke-static {v0}, Lcom/ironsource/p8;->-$$Nest$fgetc(Lcom/ironsource/p8;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "callfailreason"

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/ironsource/le;->q:Lcom/ironsource/le$a;

    new-instance v2, Lcom/ironsource/v8;

    invoke-direct {v2}, Lcom/ironsource/v8;-><init>()V

    .line 5
    const-string v3, "loadWithUrl | webView is not null"

    invoke-virtual {v2, v1, v3}, Lcom/ironsource/v8;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/v8;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/ironsource/v8;->a()Ljava/util/HashMap;

    move-result-object v2

    .line 7
    invoke-static {v0, v2}, Lcom/ironsource/A8;->a(Lcom/ironsource/le$a;Ljava/util/Map;)V

    .line 15
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/p8$a;->d:Lcom/ironsource/p8;

    iget-object v2, p0, Lcom/ironsource/p8$a;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/ironsource/p8;->-$$Nest$mb(Lcom/ironsource/p8;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/ironsource/p8$a;->d:Lcom/ironsource/p8;

    iget-object v2, p0, Lcom/ironsource/p8$a;->b:Lorg/json/JSONObject;

    const-string v3, "urlForWebView"

    .line 17
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ironsource/p8;->-$$Nest$ma(Lcom/ironsource/p8;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    iget-object v2, p0, Lcom/ironsource/p8$a;->d:Lcom/ironsource/p8;

    invoke-static {v2}, Lcom/ironsource/p8;->-$$Nest$fgetc(Lcom/ironsource/p8;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 21
    const-string v2, "adViewId"

    iget-object v3, p0, Lcom/ironsource/p8$a;->d:Lcom/ironsource/p8;

    invoke-static {v3}, Lcom/ironsource/p8;->-$$Nest$fgeta(Lcom/ironsource/p8;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    iget-object v2, p0, Lcom/ironsource/p8$a;->d:Lcom/ironsource/p8;

    invoke-static {v2}, Lcom/ironsource/p8;->-$$Nest$fgetd(Lcom/ironsource/p8;)Lcom/ironsource/n8;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/p8$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/n8;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 25
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 26
    iget-object v2, p0, Lcom/ironsource/p8$a;->d:Lcom/ironsource/p8;

    iget-object v3, p0, Lcom/ironsource/p8$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ironsource/p8;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v2, Lcom/ironsource/le;->q:Lcom/ironsource/le$a;

    new-instance v3, Lcom/ironsource/v8;

    invoke-direct {v3}, Lcom/ironsource/v8;-><init>()V

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/ironsource/v8;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/v8;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/ironsource/v8;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 32
    invoke-static {v2, v0}, Lcom/ironsource/A8;->a(Lcom/ironsource/le$a;Ljava/util/Map;)V

    return-void
.end method
