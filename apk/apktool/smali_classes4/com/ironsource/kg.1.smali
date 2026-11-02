.class public Lcom/ironsource/kg;
.super Lcom/ironsource/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/kg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ironsource/f<",
        "Lcom/ironsource/kg$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/f;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/kg$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ironsource/f;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/f;->d:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/kg$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ironsource/kg$a;->a()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/f;->c()V

    return-void
.end method
