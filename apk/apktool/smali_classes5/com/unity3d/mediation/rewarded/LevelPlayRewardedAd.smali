.class public final Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Companion;,
        Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Companion;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/ironsource/rb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->Companion:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->Companion:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Companion;

    invoke-virtual {v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Companion;->empty()Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;-><init>(Ljava/lang/String;Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/cb$c;)V
    .locals 11

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Lcom/ironsource/cb$c;->d()Lcom/ironsource/cb$b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adUnitId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->a:Ljava/lang/String;

    .line 16
    new-instance v2, Lcom/ironsource/rb;

    .line 18
    invoke-virtual {p2}, Lcom/ironsource/cb$c;->d()Lcom/ironsource/cb$b;

    move-result-object v4

    .line 19
    invoke-virtual {p2}, Lcom/ironsource/cb$c;->b()Lcom/ironsource/p0;

    move-result-object v5

    .line 20
    invoke-virtual {p2}, Lcom/ironsource/cb$c;->a()Lcom/ironsource/j6;

    move-result-object v6

    .line 21
    invoke-virtual {p2}, Lcom/ironsource/cb$c;->g()Lcom/ironsource/M7;

    move-result-object v7

    .line 22
    invoke-virtual {p2}, Lcom/ironsource/cb$c;->e()Lcom/ironsource/t4;

    move-result-object v8

    .line 23
    invoke-virtual {p2}, Lcom/ironsource/cb$c;->f()Lcom/ironsource/z7;

    move-result-object v9

    .line 24
    invoke-virtual {p2}, Lcom/ironsource/cb$c;->c()Lcom/ironsource/X0;

    move-result-object v10

    move-object v3, p1

    .line 25
    invoke-direct/range {v2 .. v10}, Lcom/ironsource/rb;-><init>(Ljava/lang/String;Lcom/ironsource/cb$b;Lcom/ironsource/p0;Lcom/ironsource/j6;Lcom/ironsource/M7;Lcom/ironsource/t4;Lcom/ironsource/z7;Lcom/ironsource/X0;)V

    .line 26
    iput-object v2, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->b:Lcom/ironsource/rb;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;)V
    .locals 9

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/ironsource/cb$c;

    .line 3
    new-instance v2, Lcom/ironsource/p0;

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    sget-object v3, Lcom/ironsource/E0$b;->a:Lcom/ironsource/E0$b;

    invoke-direct {v2, v0, v3}, Lcom/ironsource/p0;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;Lcom/ironsource/E0$b;)V

    .line 4
    new-instance v3, Lcom/ironsource/j6;

    invoke-direct {v3}, Lcom/ironsource/j6;-><init>()V

    .line 5
    sget-object v0, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v0}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v4

    .line 6
    new-instance v5, Lcom/ironsource/t4$a;

    invoke-direct {v5}, Lcom/ironsource/t4$a;-><init>()V

    .line 7
    sget-object v6, Lcom/ironsource/z7;->a:Lcom/ironsource/z7;

    .line 9
    new-instance v8, Lcom/ironsource/X0;

    invoke-direct {v8}, Lcom/ironsource/X0;-><init>()V

    move-object v7, p2

    .line 10
    invoke-direct/range {v1 .. v8}, Lcom/ironsource/cb$c;-><init>(Lcom/ironsource/p0;Lcom/ironsource/j6;Lcom/ironsource/M7;Lcom/ironsource/t4;Lcom/ironsource/z7;Lcom/ironsource/cb$b;Lcom/ironsource/X0;)V

    .line 11
    invoke-direct {p0, p1, v1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;-><init>(Ljava/lang/String;Lcom/ironsource/cb$c;)V

    return-void
.end method

.method public static synthetic getReward$default(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;Ljava/lang/String;ILjava/lang/Object;)Lcom/unity3d/mediation/rewarded/LevelPlayReward;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->getReward(Ljava/lang/String;)Lcom/unity3d/mediation/rewarded/LevelPlayReward;

    move-result-object p0

    return-object p0
.end method

.method public static final isPlacementCapped(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->Companion:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Companion;

    invoke-virtual {v0, p0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Companion;->isPlacementCapped(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic showAd$default(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->showAd(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAdId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->b:Lcom/ironsource/rb;

    invoke-virtual {v0}, Lcom/ironsource/rb;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getReward()Lcom/unity3d/mediation/rewarded/LevelPlayReward;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1, v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->getReward$default(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;Ljava/lang/String;ILjava/lang/Object;)Lcom/unity3d/mediation/rewarded/LevelPlayReward;

    move-result-object v0

    return-object v0
.end method

.method public final getReward(Ljava/lang/String;)Lcom/unity3d/mediation/rewarded/LevelPlayReward;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->b:Lcom/ironsource/rb;

    invoke-virtual {v0, p1}, Lcom/ironsource/rb;->a(Ljava/lang/String;)Lcom/unity3d/mediation/rewarded/LevelPlayReward;

    move-result-object p1

    return-object p1
.end method

.method public final isAdReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->b:Lcom/ironsource/rb;

    invoke-virtual {v0}, Lcom/ironsource/rb;->b()Z

    move-result v0

    return v0
.end method

.method public final loadAd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->b:Lcom/ironsource/rb;

    invoke-virtual {v0}, Lcom/ironsource/rb;->c()V

    return-void
.end method

.method public final setImpressionDataListener(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->b:Lcom/ironsource/rb;

    invoke-virtual {v0, p1}, Lcom/ironsource/rb;->a(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V

    return-void
.end method

.method public final setListener(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAdListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->b:Lcom/ironsource/rb;

    invoke-virtual {v0, p1}, Lcom/ironsource/rb;->a(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAdListener;)V

    return-void
.end method

.method public final showAd(Landroid/app/Activity;)V
    .locals 2

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->showAd$default(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final showAd(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->b:Lcom/ironsource/rb;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/rb;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
