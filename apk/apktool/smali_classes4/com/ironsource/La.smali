.class public final Lcom/ironsource/La;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Sa;


# instance fields
.field private final a:Lcom/ironsource/Ja;


# direct methods
.method public constructor <init>(Lcom/ironsource/Ja;)V
    .locals 1

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/La;->a:Lcom/ironsource/Ja;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/u0;)V
    .locals 1

    const-string v0, "adUnitCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/La;->a:Lcom/ironsource/Ja;

    const-string v0, "Received load success on a destroyed ad"

    invoke-virtual {p1, v0}, Lcom/ironsource/Ja;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/La;->a:Lcom/ironsource/Ja;

    const-string v1, "Loading a destroyed ad"

    invoke-virtual {v0, v1}, Lcom/ironsource/Ja;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/ironsource/La;->a:Lcom/ironsource/Ja;

    const-string v0, "Received load failed on a destroyed ad"

    invoke-virtual {p1, v0}, Lcom/ironsource/Ja;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/La;->a:Lcom/ironsource/Ja;

    const-string v1, "Destroying a destroyed ad"

    invoke-virtual {v0, v1}, Lcom/ironsource/Ja;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/La;->a:Lcom/ironsource/Ja;

    const-string v1, "Pausing auto refresh on a destroyed ad"

    invoke-virtual {v0, v1}, Lcom/ironsource/Ja;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/La;->a:Lcom/ironsource/Ja;

    const-string v1, "Resuming auto refresh on a destroyed ad"

    invoke-virtual {v0, v1}, Lcom/ironsource/Ja;->a(Ljava/lang/String;)V

    return-void
.end method
