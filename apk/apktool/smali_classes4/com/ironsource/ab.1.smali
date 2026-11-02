.class public final Lcom/ironsource/ab;
.super Lcom/ironsource/qe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/ab$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLevelPlayConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LevelPlayConfig.kt\ncom/unity3d/mediation/internal/LevelPlayConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,216:1\n1563#2:217\n1634#2,3:218\n1617#2,9:221\n1869#2:230\n1870#2:232\n1626#2:233\n1563#2:234\n1634#2,3:235\n1#3:231\n1#3:238\n*S KotlinDebug\n*F\n+ 1 LevelPlayConfig.kt\ncom/unity3d/mediation/internal/LevelPlayConfig\n*L\n28#1:217\n28#1:218,3\n40#1:221,9\n40#1:230\n40#1:232\n40#1:233\n87#1:234\n87#1:235,3\n40#1:231\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Lcom/ironsource/qe;)V
    .locals 1

    const-string v0, "sdkConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/qe;-><init>(Lcom/ironsource/qe;)V

    return-void
.end method

.method private final a(Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/lang/String;)Lcom/ironsource/z6$c;
    .locals 3

    .line 24
    sget-object v0, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/ironsource/qe;->g()Lcom/ironsource/Ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/Ae;->a()Lcom/ironsource/T3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/T3;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/t;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p1}, Lcom/ironsource/t;->a()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/t$b;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/ironsource/t$b;->g()Lcom/ironsource/Hd;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/ironsource/Hd;->a()Lcom/ironsource/z6$c;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p1, :cond_2

    .line 30
    invoke-virtual {p1}, Lcom/ironsource/t;->b()Lcom/ironsource/t$b;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ironsource/t$b;->g()Lcom/ironsource/Hd;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ironsource/Hd;->a()Lcom/ironsource/z6$c;

    move-result-object v1

    :cond_2
    if-nez p2, :cond_3

    move-object p2, v1

    :cond_3
    if-eqz p2, :cond_4

    return-object p2

    :cond_4
    if-eqz v0, :cond_5

    .line 37
    sget-object p1, Lcom/ironsource/z6$c;->c:Lcom/ironsource/z6$c;

    return-object p1

    .line 38
    :cond_5
    sget-object p1, Lcom/ironsource/z6$c;->b:Lcom/ironsource/z6$c;

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/ironsource/Za$a;
    .locals 9

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/ironsource/qe;->g()Lcom/ironsource/Ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ae;->a()Lcom/ironsource/T3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/T3;->c()Lcom/ironsource/a3;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/ironsource/a3;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/a3$a;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/ironsource/a3$a;->c()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/ironsource/a3;->b()Lcom/ironsource/a3$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/a3$a;->c()I

    move-result v1

    :goto_0
    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/ironsource/a3$a;->e()Z

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/ironsource/a3;->b()Lcom/ironsource/a3$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/a3$a;->e()Z

    move-result v2

    :goto_1
    move v4, v2

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/ironsource/a3$a;->d()J

    move-result-wide v2

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {v0}, Lcom/ironsource/a3;->b()Lcom/ironsource/a3$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/a3$a;->d()J

    move-result-wide v2

    :goto_2
    move-wide v7, v2

    .line 18
    new-instance v3, Lcom/ironsource/Za$a;

    int-to-long v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/ironsource/Za$a;-><init>(ZJJ)V

    return-object v3
.end method

.method public final a(Lcom/ironsource/yb;)Lcom/ironsource/v0;
    .locals 2

    const-string v0, "tools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/ironsource/v0;

    .line 22
    invoke-virtual {p0}, Lcom/ironsource/qe;->g()Lcom/ironsource/Ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/Ae;->a()Lcom/ironsource/T3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/T3;->a()Ljava/util/Map;

    move-result-object v1

    .line 23
    invoke-direct {v0, p1, v1}, Lcom/ironsource/v0;-><init>(Lcom/ironsource/yb;Ljava/util/Map;)V

    return-object v0
.end method

.method public final a(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/ironsource/qe;->g()Lcom/ironsource/Ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ae;->d()Lcom/ironsource/Kd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Kd;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/Kd$a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ironsource/Kd$a;->a()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 20
    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)Z
    .locals 1

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/qe;->g()Lcom/ironsource/Ae;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/Ae;->d()Lcom/ironsource/Kd;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/Kd;->a()Ljava/util/Map;

    move-result-object v0

    .line 4
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/Kd$a;

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/ironsource/Kd$a;->a()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 8
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/unity3d/mediation/LevelPlay$AdFormat;)J
    .locals 4

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/ironsource/qe;->g()Lcom/ironsource/Ae;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/ironsource/Ae;->a()Lcom/ironsource/T3;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/ironsource/T3;->a()Ljava/util/Map;

    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/t;

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/ironsource/t;->b()Lcom/ironsource/t$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/ironsource/t$b;->d()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3c

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 20
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method public final b(Lcom/ironsource/yb;)Lcom/ironsource/pd;
    .locals 2

    const-string v0, "tools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/ironsource/pd;

    .line 4
    invoke-virtual {p0}, Lcom/ironsource/qe;->g()Lcom/ironsource/Ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/Ae;->a()Lcom/ironsource/T3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/T3;->a()Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-direct {v0, p1, v1}, Lcom/ironsource/pd;-><init>(Lcom/ironsource/yb;Ljava/util/Map;)V

    return-object v0
.end method

.method public final b(Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/lang/String;)Lcom/ironsource/z6$a;
    .locals 1

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/ab;->a(Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/lang/String;)Lcom/ironsource/z6$c;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/ironsource/z6$a;

    invoke-direct {p2, p1}, Lcom/ironsource/z6$a;-><init>(Lcom/ironsource/z6$c;)V

    return-object p2
.end method

.method public final c(Lcom/ironsource/yb;)Lcom/ironsource/Wd;
    .locals 4

    const-string v0, "tools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/ironsource/qe;->g()Lcom/ironsource/Ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ae;->a()Lcom/ironsource/T3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/T3;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/t;

    .line 64
    new-instance v1, Lcom/ironsource/Wd;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/ironsource/t;->a()Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ironsource/t;->c()Ljava/util/Map;

    move-result-object v2

    .line 66
    :cond_1
    invoke-direct {v1, p1, v3, v2}, Lcom/ironsource/Wd;-><init>(Lcom/ironsource/yb;Ljava/util/Map;Ljava/util/Map;)V

    return-object v1
.end method

.method public final c(Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/lang/String;)Lcom/ironsource/md;
    .locals 10

    .line 1
    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/ironsource/ab$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    const-string v2, " configurations"

    const-string v3, "Error getting "

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/ironsource/qe;->d()Lcom/ironsource/Ue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/S3;->e()Lcom/ironsource/Wb;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 37
    invoke-virtual {v0, p2}, Lcom/ironsource/Wb;->a(Ljava/lang/String;)Lcom/ironsource/hc;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/Wb;->e()Lcom/ironsource/hc;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_1

    .line 38
    new-instance p1, Lcom/ironsource/md;

    invoke-direct {p1, p2}, Lcom/ironsource/md;-><init>(Lcom/ironsource/t3;)V

    return-object p1

    .line 42
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 43
    :cond_3
    invoke-virtual {p0}, Lcom/ironsource/qe;->d()Lcom/ironsource/Ue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/S3;->c()Lcom/ironsource/b3;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 44
    invoke-virtual {v0, p2}, Lcom/ironsource/b3;->a(Ljava/lang/String;)Lcom/ironsource/l3;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/ironsource/b3;->i()Lcom/ironsource/l3;

    move-result-object p1

    const-string p2, "getDefaultBannerPlacement(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    :cond_4
    new-instance p2, Lcom/ironsource/md;

    invoke-direct {p2, p1}, Lcom/ironsource/md;-><init>(Lcom/ironsource/t3;)V

    return-object p2

    .line 49
    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 50
    :cond_6
    invoke-virtual {p0}, Lcom/ironsource/qe;->d()Lcom/ironsource/Ue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/S3;->d()Lcom/ironsource/L9;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 51
    invoke-virtual {p1, p2}, Lcom/ironsource/L9;->a(Ljava/lang/String;)Lcom/ironsource/P9;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 52
    new-instance p2, Lcom/ironsource/md;

    invoke-direct {p2, p1}, Lcom/ironsource/md;-><init>(Lcom/ironsource/t3;)V

    return-object p2

    :cond_7
    return-object v2

    .line 53
    :cond_8
    invoke-virtual {p0}, Lcom/ironsource/qe;->d()Lcom/ironsource/Ue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/S3;->f()Lcom/ironsource/ie;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 54
    invoke-virtual {p1, p2}, Lcom/ironsource/ie;->a(Ljava/lang/String;)Lcom/ironsource/md;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 55
    new-instance v3, Lcom/ironsource/md;

    .line 56
    invoke-virtual {p1}, Lcom/ironsource/t3;->b()I

    move-result v4

    .line 57
    invoke-virtual {p1}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {p1}, Lcom/ironsource/t3;->d()Z

    move-result v6

    .line 59
    invoke-virtual {p1}, Lcom/ironsource/md;->f()Ljava/lang/String;

    move-result-object v7

    .line 60
    invoke-virtual {p1}, Lcom/ironsource/md;->e()I

    move-result v8

    .line 61
    invoke-virtual {p1}, Lcom/ironsource/t3;->a()Lcom/ironsource/nd;

    move-result-object v9

    .line 62
    invoke-direct/range {v3 .. v9}, Lcom/ironsource/md;-><init>(ILjava/lang/String;ZLjava/lang/String;ILcom/ironsource/nd;)V

    return-object v3

    :cond_9
    return-object v2
.end method

.method public final c(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
            ")",
            "Ljava/util/List<",
            "Lcom/ironsource/Kd$c;",
            ">;"
        }
    .end annotation

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/ironsource/qe;->g()Lcom/ironsource/Ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ae;->d()Lcom/ironsource/Kd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/Kd;->a(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
            ")",
            "Ljava/util/List<",
            "Lcom/ironsource/Ec;",
            ">;"
        }
    .end annotation

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/qe;->g()Lcom/ironsource/Ae;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/Ae;->d()Lcom/ironsource/Kd;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/Kd;->a()Ljava/util/Map;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/Kd$a;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/ironsource/Kd$a;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 200
    check-cast v2, Ljava/lang/String;

    .line 201
    invoke-virtual {p0, p1, v2}, Lcom/ironsource/ab;->d(Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 392
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 393
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 394
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ironsource/Ec;",
            ">;"
        }
    .end annotation

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/ironsource/qe;->g()Lcom/ironsource/Ae;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Lcom/ironsource/Ae;->d()Lcom/ironsource/Kd;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lcom/ironsource/Kd;->a()Ljava/util/Map;

    move-result-object v0

    .line 398
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/Kd$a;

    if-eqz p1, :cond_2

    .line 401
    invoke-virtual {p1}, Lcom/ironsource/Kd$a;->a()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 402
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/Kd$b;

    if-eqz p1, :cond_2

    .line 403
    invoke-virtual {p1}, Lcom/ironsource/Kd$b;->a()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 585
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 594
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 595
    check-cast v0, Ljava/lang/String;

    .line 596
    invoke-virtual {p0}, Lcom/ironsource/qe;->g()Lcom/ironsource/Ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/Ae;->e()Lcom/ironsource/Md;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/Md;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/Ec;

    if-eqz v0, :cond_0

    .line 784
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2

    .line 785
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/qe;->g()Lcom/ironsource/Ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ae;->a()Lcom/ironsource/T3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/T3;->b()Lcom/ironsource/J1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/J1;->c()Lcom/ironsource/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Q1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/qe;->g()Lcom/ironsource/Ae;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/Ae;->a()Lcom/ironsource/T3;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/T3;->b()Lcom/ironsource/J1;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/ironsource/J1;->d()Lcom/ironsource/U1;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ironsource/U1;->e()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {v0}, Lcom/ironsource/pa;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    const-string v1, "jsonArrayToStringList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unity3d/mediation/LevelPlayAdSize;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/qe;->g()Lcom/ironsource/Ae;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/Ae;->a()Lcom/ironsource/T3;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/T3;->c()Lcom/ironsource/a3;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/ironsource/a3;->b()Lcom/ironsource/a3$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ironsource/a3$a;->a()Ljava/util/List;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 155
    check-cast v2, Ljava/lang/String;

    .line 156
    sget-object v3, Lcom/unity3d/mediation/LevelPlayAdSize;->Companion:Lcom/unity3d/mediation/LevelPlayAdSize$Companion;

    invoke-virtual {v3, v2}, Lcom/unity3d/mediation/LevelPlayAdSize$Companion;->createAdSize$mediationsdk_release(Ljava/lang/String;)Lcom/unity3d/mediation/LevelPlayAdSize;

    move-result-object v2

    .line 305
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final k()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/qe;->g()Lcom/ironsource/Ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ae;->a()Lcom/ironsource/T3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/T3;->c()Lcom/ironsource/a3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/a3;->b()Lcom/ironsource/a3$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/a3$a;->b()F

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/qe;->d()Lcom/ironsource/Ue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/S3;->a()Lcom/ironsource/mediationsdk/adquality/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adquality/a;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/qe;->g()Lcom/ironsource/Ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ae;->a()Lcom/ironsource/T3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/T3;->b()Lcom/ironsource/J1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/J1;->e()Z

    move-result v0

    return v0
.end method
