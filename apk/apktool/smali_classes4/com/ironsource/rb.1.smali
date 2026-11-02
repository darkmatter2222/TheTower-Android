.class public final Lcom/ironsource/rb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/cb;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/cb$b;Lcom/ironsource/p0;Lcom/ironsource/j6;Lcom/ironsource/M7;Lcom/ironsource/t4;Lcom/ironsource/z7;Lcom/ironsource/X0;)V
    .locals 11

    move-object/from16 v8, p5

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTools"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adControllerFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentTimeProvider"

    move-object/from16 v9, p6

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idFactory"

    move-object/from16 v10, p7

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitValidator"

    move-object/from16 v6, p8

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/ironsource/cb;

    .line 17
    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    .line 23
    invoke-direct {p0, v8}, Lcom/ironsource/rb;->a(Lcom/ironsource/M7;)Lcom/ironsource/rb$a;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 24
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/cb;-><init>(Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/lang/String;Lcom/ironsource/cb$b;Lcom/ironsource/p0;Lcom/ironsource/j6;Lcom/ironsource/X0;Lcom/ironsource/y0;Lcom/ironsource/M7;Lcom/ironsource/t4;Lcom/ironsource/z7;)V

    iput-object v0, p0, Lcom/ironsource/rb;->a:Lcom/ironsource/cb;

    return-void
.end method

.method private final a(Lcom/ironsource/M7;)Lcom/ironsource/rb$a;
    .locals 1

    .line 10
    new-instance v0, Lcom/ironsource/rb$a;

    invoke-direct {v0, p1}, Lcom/ironsource/rb$a;-><init>(Lcom/ironsource/M7;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/unity3d/mediation/rewarded/LevelPlayReward;
    .locals 2

    .line 8
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "LevelPlayRewardedAd.getReward()"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/ironsource/rb;->a:Lcom/ironsource/cb;

    invoke-virtual {v0, p1}, Lcom/ironsource/cb;->a(Ljava/lang/String;)Lcom/unity3d/mediation/rewarded/LevelPlayReward;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/rb;->a:Lcom/ironsource/cb;

    invoke-virtual {v0}, Lcom/ironsource/cb;->e()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LevelPlayRewardedAd.showAd() placementName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/rb;->a:Lcom/ironsource/cb;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/cb;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V
    .locals 2

    .line 6
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "LevelPlayRewardedAd.setImpressionDataListener()"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/ironsource/rb;->a:Lcom/ironsource/cb;

    invoke-virtual {v0, p1}, Lcom/ironsource/cb;->a(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V

    return-void
.end method

.method public final a(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAdListener;)V
    .locals 2

    .line 4
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "LevelPlayRewardedAd.setListener()"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/ironsource/rb;->a:Lcom/ironsource/cb;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/ironsource/sb;->a(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAdListener;)Lcom/ironsource/db;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/ironsource/cb;->a(Lcom/ironsource/db;)V

    return-void
.end method

.method public final b()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "LevelPlayRewardedAd.isAdReady()"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/rb;->a:Lcom/ironsource/cb;

    invoke-virtual {v0}, Lcom/ironsource/cb;->m()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "LevelPlayRewardedAd.loadAd()"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/rb;->a:Lcom/ironsource/cb;

    invoke-virtual {v0}, Lcom/ironsource/cb;->n()V

    return-void
.end method
