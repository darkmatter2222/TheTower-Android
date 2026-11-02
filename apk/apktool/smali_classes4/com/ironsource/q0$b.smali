.class public final Lcom/ironsource/q0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Pg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/q0;->c()Lcom/ironsource/q0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/q0;


# direct methods
.method constructor <init>(Lcom/ironsource/q0;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/q0$b;->a:Lcom/ironsource/q0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    const-string v0, "errorReason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/q0$b;->a:Lcom/ironsource/q0;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/q0;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/A;)V
    .locals 3

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/q0$b;->a:Lcom/ironsource/q0;

    invoke-virtual {v0}, Lcom/ironsource/q0;->f()Lcom/ironsource/T0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->a()Lcom/ironsource/N;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/q0$b;->a:Lcom/ironsource/q0;

    invoke-virtual {v1}, Lcom/ironsource/q0;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/N;->e(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/q0$b;->a:Lcom/ironsource/q0;

    invoke-virtual {v0}, Lcom/ironsource/q0;->j()Lcom/ironsource/L0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/ironsource/u0;

    iget-object v2, p0, Lcom/ironsource/q0$b;->a:Lcom/ironsource/q0;

    invoke-virtual {p1}, Lcom/ironsource/A;->e()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/ironsource/u0;-><init>(Lcom/ironsource/q0;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    invoke-interface {v0, v1}, Lcom/ironsource/L0;->b(Lcom/ironsource/u0;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/ironsource/A;)V
    .locals 4

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/q0$b;->a:Lcom/ironsource/q0;

    invoke-static {v0}, Lcom/ironsource/q0;->c(Lcom/ironsource/q0;)Lcom/ironsource/l5;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/l5;->a(Lcom/ironsource/l5;)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/ironsource/q0$b;->a:Lcom/ironsource/q0;

    invoke-static {v2}, Lcom/ironsource/q0;->a(Lcom/ironsource/q0;)Lcom/ironsource/E5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/E5;->e()Lcom/ironsource/Cb;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/q0$b;->a:Lcom/ironsource/q0;

    invoke-virtual {v3}, Lcom/ironsource/q0;->e()Lcom/ironsource/x0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/x0;->v()Z

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/ironsource/Cb;->a(JZ)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/q0$b;->a:Lcom/ironsource/q0;

    invoke-virtual {v0}, Lcom/ironsource/q0;->j()Lcom/ironsource/L0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/ironsource/u0;

    iget-object v2, p0, Lcom/ironsource/q0$b;->a:Lcom/ironsource/q0;

    invoke-virtual {p1}, Lcom/ironsource/A;->e()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/ironsource/u0;-><init>(Lcom/ironsource/q0;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    invoke-interface {v0, v1}, Lcom/ironsource/L0;->a(Lcom/ironsource/u0;)V

    :cond_0
    return-void
.end method
