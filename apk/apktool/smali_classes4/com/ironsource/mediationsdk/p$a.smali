.class Lcom/ironsource/mediationsdk/p$a;
.super Lcom/ironsource/environment/thread/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/p;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/ironsource/mediationsdk/p;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/p;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/p$a;->c:Lcom/ironsource/mediationsdk/p;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/p$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ironsource/environment/thread/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/c;->b()Ljava/lang/Boolean;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v2, Lcom/ironsource/mediationsdk/p$a$a;

    invoke-direct {v2, p0, v0}, Lcom/ironsource/mediationsdk/p$a$a;-><init>(Lcom/ironsource/mediationsdk/p$a;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)Lcom/ironsource/Ff$a;

    return-void
.end method
