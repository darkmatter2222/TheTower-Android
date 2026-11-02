.class Lcom/ironsource/mediationsdk/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/q;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/q$b;->a:Lcom/ironsource/mediationsdk/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$b;->a:Lcom/ironsource/mediationsdk/q;

    new-instance v1, Lcom/ironsource/mediationsdk/q$b$a;

    const-wide/32 v3, 0xea60

    const-wide/16 v5, 0x3a98

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/mediationsdk/q$b$a;-><init>(Lcom/ironsource/mediationsdk/q$b;JJ)V

    .line 29
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputq(Lcom/ironsource/mediationsdk/q;Landroid/os/CountDownTimer;)V

    return-void
.end method
