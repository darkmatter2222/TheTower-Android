.class Lcom/ironsource/sdk/controller/v$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/v;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Landroid/webkit/WebView;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/ironsource/sdk/controller/v;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/v;Lorg/json/JSONObject;Landroid/webkit/WebView;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v$i;->e:Lcom/ironsource/sdk/controller/v;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/v$i;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/v$i;->b:Landroid/webkit/WebView;

    iput p4, p0, Lcom/ironsource/sdk/controller/v$i;->c:I

    iput-object p5, p0, Lcom/ironsource/sdk/controller/v$i;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v$i;->e:Lcom/ironsource/sdk/controller/v;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/v$i;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/v$i;->b:Landroid/webkit/WebView;

    invoke-static {v0, v1, v2}, Lcom/ironsource/sdk/controller/v;->-$$Nest$ma(Lcom/ironsource/sdk/controller/v;Lorg/json/JSONObject;Landroid/webkit/WebView;)V

    .line 4
    invoke-static {}, Lcom/ironsource/sdk/controller/v;->-$$Nest$smB()Z

    move-result v0

    const-string v1, "about:blank"

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v$i;->e:Lcom/ironsource/sdk/controller/v;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/v;->-$$Nest$fgetn(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/bh;

    move-result-object v0

    iget v2, p0, Lcom/ironsource/sdk/controller/v$i;->c:I

    iget-object v3, p0, Lcom/ironsource/sdk/controller/v$i;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/ironsource/bh;->a(ILjava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v$i;->e:Lcom/ironsource/sdk/controller/v;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/v;->-$$Nest$mm(Lcom/ironsource/sdk/controller/v;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v$i;->e:Lcom/ironsource/sdk/controller/v;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/v;->-$$Nest$mm(Lcom/ironsource/sdk/controller/v;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v$i;->e:Lcom/ironsource/sdk/controller/v;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/v$i;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/v;->-$$Nest$mm(Lcom/ironsource/sdk/controller/v;Ljava/lang/String;)V

    return-void
.end method
