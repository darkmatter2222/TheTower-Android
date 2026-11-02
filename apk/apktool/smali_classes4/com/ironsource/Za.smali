.class public final Lcom/ironsource/Za;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Za$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLevelPlayBannerStrategyFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LevelPlayBannerStrategyFactory.kt\ncom/unity3d/mediation/internal/ads/banner/strategy/LevelPlayBannerStrategyFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,54:1\n1#2:55\n*E\n"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/Za;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ironsource/Za;

    invoke-direct {v0}, Lcom/ironsource/Za;-><init>()V

    sput-object v0, Lcom/ironsource/Za;->a:Lcom/ironsource/Za;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/Za;Lcom/ironsource/p0;Lcom/ironsource/d3;Lcom/ironsource/Za$a;Lcom/ironsource/Ga;Lcom/ironsource/U2;Lcom/ironsource/t4;ILjava/lang/Object;)Lcom/ironsource/Fa;
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 1
    new-instance p6, Lcom/ironsource/t4$a;

    invoke-direct {p6}, Lcom/ironsource/t4$a;-><init>()V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/ironsource/Za;->a(Lcom/ironsource/p0;Lcom/ironsource/d3;Lcom/ironsource/Za$a;Lcom/ironsource/Ga;Lcom/ironsource/U2;Lcom/ironsource/t4;)Lcom/ironsource/Fa;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/ironsource/p0;Lcom/ironsource/d3;Lcom/ironsource/Za$a;Lcom/ironsource/Ga;Lcom/ironsource/U2;Lcom/ironsource/t4;)Lcom/ironsource/Fa;
    .locals 14

    move-object/from16 v2, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerContainer"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strategyListener"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerAdUnitFactory"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeProvider"

    move-object/from16 v10, p6

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 4
    invoke-virtual {v1}, Lcom/ironsource/Za$a;->f()Z

    move-result v3

    invoke-virtual {v1}, Lcom/ironsource/Za$a;->d()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Creating banner strategy, isAutoRefreshEnabled: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", refreshInterval: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lcom/ironsource/Za$a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lcom/ironsource/Ja;

    .line 13
    invoke-virtual {v1}, Lcom/ironsource/Za$a;->d()J

    move-result-wide v3

    .line 14
    invoke-virtual {v1}, Lcom/ironsource/Za$a;->e()J

    move-result-wide v5

    .line 19
    sget-object v1, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v1}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/u5;->B()Z

    move-result v11

    const/16 v12, 0x40

    const/4 v13, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    .line 20
    invoke-direct/range {v0 .. v13}, Lcom/ironsource/Ja;-><init>(Lcom/ironsource/p0;Lcom/ironsource/d3;JJLcom/ironsource/Ga;Lcom/ironsource/U2;Lcom/ironsource/Ff;Lcom/ironsource/t4;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lcom/ironsource/Ta;

    invoke-direct {v0, p1, v2, v8}, Lcom/ironsource/Ta;-><init>(Lcom/ironsource/p0;Lcom/ironsource/d3;Lcom/ironsource/U2;)V

    .line 35
    invoke-virtual {v0, v7}, Lcom/ironsource/Ta;->a(Lcom/ironsource/Ga;)V

    return-object v0
.end method
