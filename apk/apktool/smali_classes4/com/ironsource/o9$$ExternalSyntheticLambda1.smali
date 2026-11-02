.class public final synthetic Lcom/ironsource/o9$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/o9;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/o9;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/o9$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/o9;

    iput-boolean p2, p0, Lcom/ironsource/o9$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/o9$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/o9;

    iget-boolean v1, p0, Lcom/ironsource/o9$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, v1}, Lcom/ironsource/o9;->$r8$lambda$t-UoxDk3MTnS3PSiMT1inRZCWx8(Lcom/ironsource/o9;Z)V

    return-void
.end method
