.class public Lcom/ironsource/W1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/o7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/W1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/I7;

.field private b:Lcom/ironsource/X1;


# direct methods
.method public constructor <init>(Lcom/ironsource/I7;)V
    .locals 1

    const-string v0, "featureAvailabilityService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/W1;->a:Lcom/ironsource/I7;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/U1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/W1;->b:Lcom/ironsource/X1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ironsource/W1$a;

    invoke-direct {v0}, Lcom/ironsource/W1$a;-><init>()V

    iget-object v1, p0, Lcom/ironsource/W1;->a:Lcom/ironsource/I7;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/W1$a;->a(Lcom/ironsource/U1;Lcom/ironsource/I7;)Lcom/ironsource/X1;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/W1;->b:Lcom/ironsource/X1;

    :cond_0
    return-void
.end method

.method public a(Lcom/ironsource/qa;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/W1;->b:Lcom/ironsource/X1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ironsource/X1;->a(Lcom/ironsource/qa;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/ironsource/qa;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/W1;->b:Lcom/ironsource/X1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ironsource/X1;->b(Lcom/ironsource/qa;)V

    :cond_0
    return-void
.end method
