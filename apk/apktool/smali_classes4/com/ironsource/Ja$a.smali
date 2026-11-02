.class public final Lcom/ironsource/Ja$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/V2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/Ja;-><init>(Lcom/ironsource/p0;Lcom/ironsource/d3;JJLcom/ironsource/Ga;Lcom/ironsource/U2;Lcom/ironsource/Ff;Lcom/ironsource/t4;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/Ja;


# direct methods
.method constructor <init>(Lcom/ironsource/Ja;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/Ja$a;->a:Lcom/ironsource/Ja;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ja$a;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->m()Lcom/ironsource/Ga;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/Ga;->onAdLeftApplication()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ja$a;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->m()Lcom/ironsource/Ga;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/Ga;->k()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ja$a;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->m()Lcom/ironsource/Ga;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/Ga;->i()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ja$a;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->m()Lcom/ironsource/Ga;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/Ga;->onAdClicked()V

    return-void
.end method

.method public bridge synthetic g()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Ja$a;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public bridge synthetic h()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Ja$a;->c()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public bridge synthetic j()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Ja$a;->b()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
