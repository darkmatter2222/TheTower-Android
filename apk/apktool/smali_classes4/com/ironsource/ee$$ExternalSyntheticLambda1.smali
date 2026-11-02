.class public final synthetic Lcom/ironsource/ee$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/ee;

.field public final synthetic f$1:Lcom/ironsource/mediationsdk/logger/IronSourceError;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/ee;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ee$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/ee;

    iput-object p2, p0, Lcom/ironsource/ee$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/ee$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/ee;

    iget-object v1, p0, Lcom/ironsource/ee$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-static {v0, v1}, Lcom/ironsource/ee;->$r8$lambda$l5BebCMGp3i3IOR5XFmJpU7tZH4(Lcom/ironsource/ee;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method
