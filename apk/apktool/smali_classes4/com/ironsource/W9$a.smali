.class Lcom/ironsource/W9$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/W9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/Wc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/X4;

.field final synthetic d:Lcom/ironsource/W9;


# direct methods
.method constructor <init>(Lcom/ironsource/W9;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/X4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/W9$a;->d:Lcom/ironsource/W9;

    iput-object p2, p0, Lcom/ironsource/W9$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/W9$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/W9$a;->c:Lcom/ironsource/X4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/W9$a;->d:Lcom/ironsource/W9;

    invoke-static {v0}, Lcom/ironsource/W9;->-$$Nest$fgeta(Lcom/ironsource/W9;)Lcom/ironsource/sdk/controller/e;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/W9$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/W9$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/W9$a;->c:Lcom/ironsource/X4;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/X4;Lcom/ironsource/y4;)V

    return-void
.end method
