.class public final synthetic Lcom/ironsource/cb$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/k0;

.field public final synthetic f$1:Lcom/ironsource/cb;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/k0;Lcom/ironsource/cb;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda13;->f$0:Lcom/ironsource/k0;

    iput-object p2, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda13;->f$1:Lcom/ironsource/cb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda13;->f$0:Lcom/ironsource/k0;

    iget-object v1, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda13;->f$1:Lcom/ironsource/cb;

    invoke-static {v0, v1}, Lcom/ironsource/cb;->$r8$lambda$Lp3kbvtYpqJmXY-a1qPT1-S9zfs(Lcom/ironsource/k0;Lcom/ironsource/cb;)V

    return-void
.end method
