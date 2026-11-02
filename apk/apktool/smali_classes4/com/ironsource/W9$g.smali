.class Lcom/ironsource/W9$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/W9;->a(Landroid/app/Activity;Lcom/ironsource/R9;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/X4;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/ironsource/W9;


# direct methods
.method constructor <init>(Lcom/ironsource/W9;Lcom/ironsource/X4;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/W9$g;->c:Lcom/ironsource/W9;

    iput-object p2, p0, Lcom/ironsource/W9$g;->a:Lcom/ironsource/X4;

    iput-object p3, p0, Lcom/ironsource/W9$g;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/W9$g;->c:Lcom/ironsource/W9;

    invoke-static {v0}, Lcom/ironsource/W9;->-$$Nest$fgeta(Lcom/ironsource/W9;)Lcom/ironsource/sdk/controller/e;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/W9$g;->a:Lcom/ironsource/X4;

    iget-object v3, p0, Lcom/ironsource/W9$g;->b:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/X4;Ljava/util/Map;Lcom/ironsource/x4;)V

    return-void
.end method
