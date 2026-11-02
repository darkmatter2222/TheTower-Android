.class Lcom/ironsource/sdk/controller/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/X4;Lcom/ironsource/w4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/X4;

.field final synthetic d:Lcom/ironsource/w4;

.field final synthetic e:Lcom/ironsource/sdk/controller/e;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/e;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/X4;Lcom/ironsource/w4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/sdk/controller/e$c;->e:Lcom/ironsource/sdk/controller/e;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/e$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/e$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/e$c;->c:Lcom/ironsource/X4;

    iput-object p5, p0, Lcom/ironsource/sdk/controller/e$c;->d:Lcom/ironsource/w4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/e$c;->e:Lcom/ironsource/sdk/controller/e;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/e;->-$$Nest$fgetb(Lcom/ironsource/sdk/controller/e;)Lcom/ironsource/sdk/controller/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ironsource/sdk/controller/e$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/e$c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/e$c;->c:Lcom/ironsource/X4;

    iget-object v4, p0, Lcom/ironsource/sdk/controller/e$c;->d:Lcom/ironsource/w4;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ironsource/sdk/controller/l;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/X4;Lcom/ironsource/w4;)V

    :cond_0
    return-void
.end method
