.class Lcom/ironsource/sdk/controller/v$s$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/v$s;->adClicked(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/v4;

.field final synthetic b:Lcom/ironsource/t8$e;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ironsource/sdk/controller/v$s;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/v$s;Lcom/ironsource/v4;Lcom/ironsource/t8$e;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v$s$d;->d:Lcom/ironsource/sdk/controller/v$s;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/v$s$d;->a:Lcom/ironsource/v4;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/v$s$d;->b:Lcom/ironsource/t8$e;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/v$s$d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v$s$d;->a:Lcom/ironsource/v4;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/v$s$d;->b:Lcom/ironsource/t8$e;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/v$s$d;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/v4;->a(Lcom/ironsource/t8$e;Ljava/lang/String;)V

    return-void
.end method
