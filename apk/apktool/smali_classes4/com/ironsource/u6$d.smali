.class public final Lcom/ironsource/u6$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Pg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/u6;->a()Lcom/ironsource/Pg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFullscreenAdUnit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullscreenAdUnit.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/FullscreenAdUnit$createWaterfallListener$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,322:1\n1#2:323\n*E\n"
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/u6;


# direct methods
.method constructor <init>(Lcom/ironsource/u6;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/u6$d;->a:Lcom/ironsource/u6;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 8

    const-string v0, "errorReason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/u6$d;->a:Lcom/ironsource/u6;

    invoke-static {v0}, Lcom/ironsource/u6;->f(Lcom/ironsource/u6;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ironsource/u6$d;->a:Lcom/ironsource/u6;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v1}, Lcom/ironsource/u6;->d(Lcom/ironsource/u6;)Lcom/ironsource/t4;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/t4;->a()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/ironsource/u6$d;->a:Lcom/ironsource/u6;

    invoke-static {v1}, Lcom/ironsource/u6;->b(Lcom/ironsource/u6;)Lcom/ironsource/T0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/E5;->e()Lcom/ironsource/Cb;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    move-wide v3, v0

    iget-object v0, p0, Lcom/ironsource/u6$d;->a:Lcom/ironsource/u6;

    invoke-static {v0}, Lcom/ironsource/u6;->a(Lcom/ironsource/u6;)Lcom/ironsource/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/x0;->v()Z

    move-result v7

    move v5, p1

    move-object v6, p2

    .line 4
    invoke-virtual/range {v2 .. v7}, Lcom/ironsource/Cb;->a(JILjava/lang/String;Z)V

    .line 6
    iget-object p1, p0, Lcom/ironsource/u6$d;->a:Lcom/ironsource/u6;

    invoke-static {p1}, Lcom/ironsource/u6;->e(Lcom/ironsource/u6;)Lcom/ironsource/u6$b;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/ironsource/u6$d;->a:Lcom/ironsource/u6;

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v0, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2, v0}, Lcom/ironsource/u6$b;->b(Lcom/ironsource/u6;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/ironsource/A;)V
    .locals 2

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/ironsource/u6$d;->a:Lcom/ironsource/u6;

    invoke-static {v0}, Lcom/ironsource/u6;->b(Lcom/ironsource/u6;)Lcom/ironsource/T0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->a()Lcom/ironsource/N;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/u6$d;->a:Lcom/ironsource/u6;

    invoke-static {v1}, Lcom/ironsource/u6;->c(Lcom/ironsource/u6;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/N;->e(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/ironsource/u6$d;->a:Lcom/ironsource/u6;

    invoke-static {v0}, Lcom/ironsource/u6;->g(Lcom/ironsource/u6;)V

    .line 9
    iget-object v0, p0, Lcom/ironsource/u6$d;->a:Lcom/ironsource/u6;

    invoke-static {v0}, Lcom/ironsource/u6;->e(Lcom/ironsource/u6;)Lcom/ironsource/u6$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ironsource/u6$d;->a:Lcom/ironsource/u6;

    invoke-virtual {p1}, Lcom/ironsource/A;->e()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ironsource/u6$b;->c(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/ironsource/A;)V
    .locals 4

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/u6$d;->a:Lcom/ironsource/u6;

    invoke-static {v0}, Lcom/ironsource/u6;->f(Lcom/ironsource/u6;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ironsource/u6$d;->a:Lcom/ironsource/u6;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v1}, Lcom/ironsource/u6;->d(Lcom/ironsource/u6;)Lcom/ironsource/t4;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/t4;->a()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/ironsource/u6$d;->a:Lcom/ironsource/u6;

    invoke-static {v1}, Lcom/ironsource/u6;->b(Lcom/ironsource/u6;)Lcom/ironsource/T0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/E5;->e()Lcom/ironsource/Cb;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    iget-object v0, p0, Lcom/ironsource/u6$d;->a:Lcom/ironsource/u6;

    invoke-static {v0}, Lcom/ironsource/u6;->a(Lcom/ironsource/u6;)Lcom/ironsource/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/x0;->v()Z

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/Cb;->a(JZ)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/u6$d;->a:Lcom/ironsource/u6;

    invoke-static {v0}, Lcom/ironsource/u6;->g(Lcom/ironsource/u6;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/u6$d;->a:Lcom/ironsource/u6;

    invoke-static {v0}, Lcom/ironsource/u6;->e(Lcom/ironsource/u6;)Lcom/ironsource/u6$b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/ironsource/u6$d;->a:Lcom/ironsource/u6;

    invoke-virtual {p1}, Lcom/ironsource/A;->e()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ironsource/u6$b;->b(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    :cond_2
    return-void
.end method
