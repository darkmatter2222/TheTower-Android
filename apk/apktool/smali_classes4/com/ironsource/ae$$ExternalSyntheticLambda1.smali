.class public final synthetic Lcom/ironsource/ae$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/ae;

.field public final synthetic f$1:Lcom/ironsource/mediationsdk/logger/IronSourceError;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/ae;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ae$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/ae;

    iput-object p2, p0, Lcom/ironsource/ae$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/ae$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/ae;

    iget-object v1, p0, Lcom/ironsource/ae$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-static {v0, v1}, Lcom/ironsource/ae;->$r8$lambda$HGbmjks3-Oo0MvI3dzogZ9VWDEs(Lcom/ironsource/ae;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method
