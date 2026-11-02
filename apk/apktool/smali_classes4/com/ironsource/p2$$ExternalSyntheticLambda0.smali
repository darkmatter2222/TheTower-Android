.class public final synthetic Lcom/ironsource/p2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/p2;

.field public final synthetic f$1:Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;

.field public final synthetic f$2:Lcom/ironsource/c9;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/p2;Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;Lcom/ironsource/c9;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/p2$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/p2;

    iput-object p2, p0, Lcom/ironsource/p2$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;

    iput-object p3, p0, Lcom/ironsource/p2$$ExternalSyntheticLambda0;->f$2:Lcom/ironsource/c9;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/p2$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/p2;

    iget-object v1, p0, Lcom/ironsource/p2$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;

    iget-object v2, p0, Lcom/ironsource/p2$$ExternalSyntheticLambda0;->f$2:Lcom/ironsource/c9;

    invoke-static {v0, v1, v2}, Lcom/ironsource/p2;->$r8$lambda$omxctzYn-LH1mXQ4nEAvRFqhiyM(Lcom/ironsource/p2;Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;Lcom/ironsource/c9;)V

    return-void
.end method
