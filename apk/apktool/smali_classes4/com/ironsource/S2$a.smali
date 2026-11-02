.class final Lcom/ironsource/S2$a;
.super Lcom/ironsource/q0$a;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/K2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/S2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/ironsource/S2;


# direct methods
.method public constructor <init>(Lcom/ironsource/S2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/S2$a;->b:Lcom/ironsource/S2;

    invoke-direct {p0, p1}, Lcom/ironsource/q0$a;-><init>(Lcom/ironsource/q0;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/I2;)V
    .locals 2

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/S2$a;->b:Lcom/ironsource/S2;

    invoke-virtual {p1}, Lcom/ironsource/A;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/q0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/ironsource/S2$a;->b:Lcom/ironsource/S2;

    invoke-static {p1}, Lcom/ironsource/S2;->b(Lcom/ironsource/S2;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/V2;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ironsource/V2;->g()Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public b(Lcom/ironsource/A;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/ironsource/q0$a;->b(Lcom/ironsource/A;)V

    .line 2
    invoke-virtual {p1}, Lcom/ironsource/A;->e()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/ironsource/S2$a;->b:Lcom/ironsource/S2;

    invoke-static {v0}, Lcom/ironsource/S2;->a(Lcom/ironsource/S2;)Lcom/ironsource/d9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/d9;->a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/S2$a;->b:Lcom/ironsource/S2;

    invoke-virtual {v0}, Lcom/ironsource/q0;->i()Lcom/ironsource/z0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ironsource/z0;->a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/ironsource/I2;)V
    .locals 2

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/S2$a;->b:Lcom/ironsource/S2;

    invoke-virtual {p1}, Lcom/ironsource/A;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/q0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/ironsource/S2$a;->b:Lcom/ironsource/S2;

    invoke-static {p1}, Lcom/ironsource/S2;->b(Lcom/ironsource/S2;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/V2;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ironsource/V2;->j()Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public c(Lcom/ironsource/I2;)V
    .locals 2

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/S2$a;->b:Lcom/ironsource/S2;

    invoke-virtual {p1}, Lcom/ironsource/A;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/q0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/ironsource/S2$a;->b:Lcom/ironsource/S2;

    invoke-static {p1}, Lcom/ironsource/S2;->b(Lcom/ironsource/S2;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/V2;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ironsource/V2;->h()Lkotlin/Unit;

    :cond_0
    return-void
.end method
