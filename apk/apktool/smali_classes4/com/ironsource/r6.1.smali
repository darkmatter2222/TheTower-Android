.class public final Lcom/ironsource/r6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/t6;


# instance fields
.field private final a:Lcom/ironsource/cb;

.field private final b:Lcom/unity3d/mediation/LevelPlayAdInfo;


# direct methods
.method public static synthetic $r8$lambda$f7GSH9zophD9cyZr3reCVSLhIAM(Lcom/ironsource/r6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/r6;->a(Lcom/ironsource/r6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/cb;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1

    const-string v0, "adInternal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    .line 3
    iput-object p2, p0, Lcom/ironsource/r6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    return-void
.end method

.method private final a(Lcom/unity3d/mediation/LevelPlayAdError;Lcom/unity3d/mediation/LevelPlayAdInfo;)Lcom/ironsource/t6;
    .locals 2

    .line 13
    sget-object v0, Lcom/ironsource/f5;->a:Lcom/ironsource/f5;

    sget-object v1, Lcom/ironsource/bg;->a:Lcom/ironsource/bg;

    invoke-virtual {v1, p1}, Lcom/ironsource/bg;->a(Lcom/unity3d/mediation/LevelPlayAdError;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/f5;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    new-instance p1, Lcom/ironsource/p6;

    iget-object v0, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    invoke-virtual {v0}, Lcom/ironsource/cb;->j()Lcom/ironsource/t4;

    move-result-object v1

    invoke-direct {p1, v0, p2, v1}, Lcom/ironsource/p6;-><init>(Lcom/ironsource/cb;Lcom/unity3d/mediation/LevelPlayAdInfo;Lcom/ironsource/t4;)V

    return-object p1

    .line 16
    :cond_0
    new-instance p1, Lcom/ironsource/l6;

    iget-object p2, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    sget-object v0, Lcom/ironsource/l6$a;->d:Lcom/ironsource/l6$a;

    invoke-direct {p1, p2, v0}, Lcom/ironsource/l6;-><init>(Lcom/ironsource/cb;Lcom/ironsource/l6$a;)V

    return-object p1
.end method

.method private static final a(Lcom/ironsource/r6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    invoke-virtual {p0}, Lcom/ironsource/cb;->k()Lcom/ironsource/db;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/ironsource/db;->onAdDisplayed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    const-string v1, "onAdExpired on showing state"

    invoke-virtual {v0, v1}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/unity3d/mediation/LevelPlayAdError;

    .line 2
    iget-object p2, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    invoke-virtual {p2}, Lcom/ironsource/cb;->e()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "toString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    invoke-virtual {v0}, Lcom/ironsource/cb;->h()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x276

    .line 4
    const-string v2, "Ad is already showing"

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/unity3d/mediation/LevelPlayAdError;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    iget-object v0, p0, Lcom/ironsource/r6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/cb;->a(Lcom/unity3d/mediation/LevelPlayAdError;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public a(Lcom/unity3d/mediation/LevelPlayAdError;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/ironsource/r6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-direct {p0, p1, v0}, Lcom/ironsource/r6;->a(Lcom/unity3d/mediation/LevelPlayAdError;Lcom/unity3d/mediation/LevelPlayAdInfo;)Lcom/ironsource/t6;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    invoke-virtual {v1, v0}, Lcom/ironsource/cb;->a(Lcom/ironsource/t6;)V

    .line 12
    iget-object v0, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    iget-object v1, p0, Lcom/ironsource/r6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/cb;->a(Lcom/unity3d/mediation/LevelPlayAdError;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public b()Lcom/unity3d/mediation/LevelPlayAdInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/r6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    return-object v0
.end method

.method public c()Lcom/ironsource/k0;
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/k0$a;

    const-string v1, "ad is showing"

    invoke-direct {v0, v1}, Lcom/ironsource/k0$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public loadAd()V
    .locals 6

    .line 1
    new-instance v1, Lcom/unity3d/mediation/LevelPlayAdError;

    .line 2
    iget-object v0, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    invoke-virtual {v0}, Lcom/ironsource/cb;->e()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "toString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    invoke-virtual {v2}, Lcom/ironsource/cb;->h()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x275

    .line 4
    const-string v4, "Load is called while ad is showing"

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/unity3d/mediation/LevelPlayAdError;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ironsource/cb;->a(Lcom/ironsource/cb;Lcom/unity3d/mediation/LevelPlayAdError;JILjava/lang/Object;)V

    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    const-string v1, "onAdClicked on showing state"

    invoke-virtual {v0, v1}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    const-string v1, "onAdClosed on showing state"

    invoke-virtual {v0, v1}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onAdDisplayed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 5

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    invoke-virtual {v0}, Lcom/ironsource/cb;->f()Lcom/ironsource/p0;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/unity3d/mediation/LevelPlayAdInfo;

    iget-object v2, p0, Lcom/ironsource/r6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v2}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/unity3d/mediation/LevelPlayAdInfo;-><init>(Lcom/unity3d/mediation/LevelPlayAdInfo;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAdDisplayed adInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v3}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/E5;->h()Lcom/ironsource/pg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/pg;->c()V

    .line 5
    iget-object p1, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    new-instance v2, Lcom/ironsource/s6;

    invoke-direct {v2, p1, v1}, Lcom/ironsource/s6;-><init>(Lcom/ironsource/cb;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    invoke-virtual {p1, v2}, Lcom/ironsource/cb;->a(Lcom/ironsource/t6;)V

    .line 6
    new-instance p1, Lcom/ironsource/r6$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1}, Lcom/ironsource/r6$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/r6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    invoke-virtual {v0, p1}, Lcom/ironsource/yb;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdInfoChanged(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    const-string v0, "onAdInfoChanged on showing state"

    invoke-virtual {p1, v0}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoadFailed(Lcom/unity3d/mediation/LevelPlayAdError;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    .line 2
    invoke-virtual {p1}, Lcom/unity3d/mediation/LevelPlayAdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdLoadFailed on showing state with error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/cb;

    const-string v0, "onAdLoaded on showing state"

    invoke-virtual {p1, v0}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method
