.class public final Lcom/ironsource/Ta$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/L0;


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

    iput-object p1, p0, Lcom/ironsource/Ta$b;->a:Lcom/ironsource/Ta;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/u0;)V
    .locals 1

    const-string v0, "adUnitCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ta$b;->a:Lcom/ironsource/Ta;

    invoke-virtual {v0}, Lcom/ironsource/Ta;->l()Lcom/ironsource/Ya;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ironsource/Ya;->a(Lcom/ironsource/u0;)V

    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ta$b;->a:Lcom/ironsource/Ta;

    invoke-virtual {v0}, Lcom/ironsource/Ta;->l()Lcom/ironsource/Ya;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ironsource/Ya;->b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method
