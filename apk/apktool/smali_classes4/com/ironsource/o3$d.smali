.class Lcom/ironsource/o3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/o3;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/o3;


# direct methods
.method constructor <init>(Lcom/ironsource/o3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/o3$d;->a:Lcom/ironsource/o3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/o3$d;->a:Lcom/ironsource/o3;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/ironsource/o3;->h:Lorg/json/JSONObject;

    .line 4
    iget-object v0, p0, Lcom/ironsource/o3$d;->a:Lcom/ironsource/o3;

    iget-object v0, v0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v0, v0, Lcom/ironsource/E0;->h:Lcom/ironsource/b2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/b2;->a(Ljava/lang/Double;)V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v4, p0, Lcom/ironsource/o3$d;->a:Lcom/ironsource/o3;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/ironsource/o3;->-$$Nest$mb(Lcom/ironsource/o3;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 15
    iget-object v4, p0, Lcom/ironsource/o3$d;->a:Lcom/ironsource/o3;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/ironsource/o3;->-$$Nest$ma(Lcom/ironsource/o3;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method
