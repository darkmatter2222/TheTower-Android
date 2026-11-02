.class Lcom/ironsource/environment/NetworkStateReceiver$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/environment/NetworkStateReceiver;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/environment/NetworkStateReceiver;


# direct methods
.method constructor <init>(Lcom/ironsource/environment/NetworkStateReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/environment/NetworkStateReceiver$a;->a:Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/environment/NetworkStateReceiver$a;->a:Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-static {v0}, Lcom/ironsource/environment/NetworkStateReceiver;->-$$Nest$fgetb(Lcom/ironsource/environment/NetworkStateReceiver;)Lcom/ironsource/Jc;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/ironsource/environment/NetworkStateReceiver;->-$$Nest$fgetc(Lcom/ironsource/environment/NetworkStateReceiver;)Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/ironsource/Jc;->a(Z)V

    :cond_0
    return-void
.end method
