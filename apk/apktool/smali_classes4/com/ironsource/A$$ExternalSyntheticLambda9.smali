.class public final synthetic Lcom/ironsource/A$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/A;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/A;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/A$$ExternalSyntheticLambda9;->f$0:Lcom/ironsource/A;

    iput p2, p0, Lcom/ironsource/A$$ExternalSyntheticLambda9;->f$1:I

    iput-object p3, p0, Lcom/ironsource/A$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/A$$ExternalSyntheticLambda9;->f$0:Lcom/ironsource/A;

    iget v1, p0, Lcom/ironsource/A$$ExternalSyntheticLambda9;->f$1:I

    iget-object v2, p0, Lcom/ironsource/A$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ironsource/A;->$r8$lambda$DBKDiZaQ-yxutoyOSdKp6LPww6s(Lcom/ironsource/A;ILjava/lang/String;)V

    return-void
.end method
