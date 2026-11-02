.class Lcom/ironsource/sdk/controller/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ironsource/sdk/controller/s;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/s;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ironsource/sdk/controller/r;->b:Z

    .line 5
    iput-object p1, p0, Lcom/ironsource/sdk/controller/r;->a:Lcom/ironsource/sdk/controller/s;

    return-void
.end method


# virtual methods
.method public getTokenForMessaging()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/r;->b:Z

    if-eqz v0, :cond_0

    .line 2
    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/ironsource/sdk/controller/r;->b:Z

    .line 5
    iget-object v0, p0, Lcom/ironsource/sdk/controller/r;->a:Lcom/ironsource/sdk/controller/s;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/s;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
