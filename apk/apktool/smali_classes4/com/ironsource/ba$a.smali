.class Lcom/ironsource/ba$a;
.super Lcom/ironsource/environment/thread/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/ba;->a(Lcom/ironsource/ye;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ironsource/ye;

.field final synthetic c:Lcom/ironsource/ba;


# direct methods
.method constructor <init>(Lcom/ironsource/ba;Lcom/ironsource/ye;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/ba$a;->c:Lcom/ironsource/ba;

    iput-object p2, p0, Lcom/ironsource/ba$a;->b:Lcom/ironsource/ye;

    invoke-direct {p0}, Lcom/ironsource/environment/thread/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/ba$a;->c:Lcom/ironsource/ba;

    iget-object v0, v0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/ironsource/ba$a;->b:Lcom/ironsource/ye;

    .line 2
    invoke-virtual {v2}, Lcom/ironsource/ye;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 3
    const-string v2, "inm"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method
