.class Lcom/ironsource/sdk/controller/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/n;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/X4;Lcom/ironsource/y4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/y4;

.field final synthetic b:Lcom/ironsource/X4;

.field final synthetic c:Lcom/ironsource/sdk/controller/n;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/n;Lcom/ironsource/y4;Lcom/ironsource/X4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/sdk/controller/n$b;->c:Lcom/ironsource/sdk/controller/n;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/n$b;->a:Lcom/ironsource/y4;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/n$b;->b:Lcom/ironsource/X4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/n$b;->a:Lcom/ironsource/y4;

    sget-object v1, Lcom/ironsource/t8$e;->c:Lcom/ironsource/t8$e;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/n$b;->b:Lcom/ironsource/X4;

    .line 3
    invoke-virtual {v2}, Lcom/ironsource/X4;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/sdk/controller/n$b;->c:Lcom/ironsource/sdk/controller/n;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/n;->-$$Nest$fgetb(Lcom/ironsource/sdk/controller/n;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-interface {v0, v1, v2, v3}, Lcom/ironsource/v4;->a(Lcom/ironsource/t8$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
