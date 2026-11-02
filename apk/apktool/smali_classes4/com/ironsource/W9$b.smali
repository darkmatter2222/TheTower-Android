.class Lcom/ironsource/W9$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/W9;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/ironsource/W9;


# direct methods
.method constructor <init>(Lcom/ironsource/W9;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/W9$b;->b:Lcom/ironsource/W9;

    iput-object p2, p0, Lcom/ironsource/W9$b;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/W9$b;->b:Lcom/ironsource/W9;

    invoke-static {v0}, Lcom/ironsource/W9;->-$$Nest$fgeta(Lcom/ironsource/W9;)Lcom/ironsource/sdk/controller/e;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/W9$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/sdk/controller/e;->a(Lorg/json/JSONObject;Lcom/ironsource/y4;)V

    return-void
.end method
