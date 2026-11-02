.class Lcom/ironsource/q8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/q8;->a(Lcom/ironsource/l8;Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/p8;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ironsource/q8;


# direct methods
.method constructor <init>(Lcom/ironsource/q8;Lcom/ironsource/p8;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/q8$a;->d:Lcom/ironsource/q8;

    iput-object p2, p0, Lcom/ironsource/q8$a;->a:Lcom/ironsource/p8;

    iput-object p3, p0, Lcom/ironsource/q8$a;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/ironsource/q8$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ironsource/k8;

    iget-object v1, p0, Lcom/ironsource/q8$a;->a:Lcom/ironsource/p8;

    iget-object v2, p0, Lcom/ironsource/q8$a;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ironsource/k8;-><init>(Lcom/ironsource/p8;Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/ironsource/q8$a;->d:Lcom/ironsource/q8;

    invoke-static {v1}, Lcom/ironsource/q8;->-$$Nest$fgeta(Lcom/ironsource/q8;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/q8$a;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
