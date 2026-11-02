.class public final synthetic Lcom/ironsource/cc$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Throwable;

.field public final synthetic f$1:Lcom/ironsource/cc;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;Lcom/ironsource/cc;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/cc$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/ironsource/cc$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/cc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/cc$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/ironsource/cc$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/cc;

    invoke-static {v0, v1}, Lcom/ironsource/cc;->$r8$lambda$XRebUfEnH52N5cZ4jQVdk0h0-SM(Ljava/lang/Throwable;Lcom/ironsource/cc;)V

    return-void
.end method
