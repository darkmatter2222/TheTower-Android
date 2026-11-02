.class public final Lcom/ironsource/Ta$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/V2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/Ta;-><init>(Lcom/ironsource/p0;Lcom/ironsource/d3;Lcom/ironsource/U2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/Ta;


# direct methods
.method constructor <init>(Lcom/ironsource/Ta;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/Ta$a;->a:Lcom/ironsource/Ta;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ta$a;->a:Lcom/ironsource/Ta;

    invoke-virtual {v0}, Lcom/ironsource/Ta;->m()Lcom/ironsource/Ga;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ironsource/Ga;->onAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ta$a;->a:Lcom/ironsource/Ta;

    invoke-virtual {v0}, Lcom/ironsource/Ta;->m()Lcom/ironsource/Ga;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ironsource/Ga;->k()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ta$a;->a:Lcom/ironsource/Ta;

    invoke-virtual {v0}, Lcom/ironsource/Ta;->m()Lcom/ironsource/Ga;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ironsource/Ga;->i()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ta$a;->a:Lcom/ironsource/Ta;

    invoke-virtual {v0}, Lcom/ironsource/Ta;->m()Lcom/ironsource/Ga;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ironsource/Ga;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public bridge synthetic g()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Ta$a;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public bridge synthetic h()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Ta$a;->c()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public bridge synthetic j()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Ta$a;->b()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
