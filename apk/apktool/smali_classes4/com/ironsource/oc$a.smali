.class Lcom/ironsource/oc$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/oc;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ironsource/oc;


# direct methods
.method constructor <init>(Lcom/ironsource/oc;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/oc$a;->b:Lcom/ironsource/oc;

    iput-object p2, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ironsource/oc$a;->b:Lcom/ironsource/oc;

    invoke-static {v0}, Lcom/ironsource/oc;->-$$Nest$fgetc(Lcom/ironsource/oc;)Lcom/ironsource/w7;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    .line 2
    invoke-static {p1, v1}, Lcom/ironsource/Y3;->a(Landroid/net/Network;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/ironsource/Y3;->a(Landroid/content/Context;Landroid/net/Network;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    invoke-interface {v0, v1, p1}, Lcom/ironsource/w7;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ironsource/oc$a;->b:Lcom/ironsource/oc;

    invoke-static {p1}, Lcom/ironsource/oc;->-$$Nest$fgetc(Lcom/ironsource/oc;)Lcom/ironsource/w7;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/ironsource/Y3;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    .line 8
    invoke-static {v1}, Lcom/ironsource/Y3;->a(Landroid/content/Context;)Landroid/net/Network;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/Y3;->a(Landroid/content/Context;Landroid/net/Network;)Lorg/json/JSONObject;

    move-result-object v1

    .line 9
    invoke-interface {p1, v0, v1}, Lcom/ironsource/w7;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/ironsource/oc$a;->b:Lcom/ironsource/oc;

    invoke-static {p2}, Lcom/ironsource/oc;->-$$Nest$fgetc(Lcom/ironsource/oc;)Lcom/ironsource/w7;

    move-result-object p2

    iget-object v0, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    .line 2
    invoke-static {p1, v0}, Lcom/ironsource/Y3;->a(Landroid/net/Network;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/ironsource/Y3;->a(Landroid/content/Context;Landroid/net/Network;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    invoke-interface {p2, v0, p1}, Lcom/ironsource/w7;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/ironsource/oc$a;->b:Lcom/ironsource/oc;

    invoke-static {p2}, Lcom/ironsource/oc;->-$$Nest$fgetc(Lcom/ironsource/oc;)Lcom/ironsource/w7;

    move-result-object p2

    iget-object v0, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    .line 2
    invoke-static {p1, v0}, Lcom/ironsource/Y3;->a(Landroid/net/Network;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/ironsource/Y3;->a(Landroid/content/Context;Landroid/net/Network;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    invoke-interface {p2, v0, p1}, Lcom/ironsource/w7;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/ironsource/Y3;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ironsource/oc$a;->b:Lcom/ironsource/oc;

    invoke-static {p1}, Lcom/ironsource/oc;->-$$Nest$fgetc(Lcom/ironsource/oc;)Lcom/ironsource/w7;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/w7;->a()V

    :cond_0
    return-void
.end method
