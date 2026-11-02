.class public final Lcom/ironsource/J9$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/J9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInterstitialAdUnitData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InterstitialAdUnitData.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/data/InterstitialAdUnitData$Companion\n+ 2 AdUnitData.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/data/AdUnitData$Companion\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n46#2,10:65\n56#2,5:79\n1563#3:75\n1634#3,3:76\n*S KotlinDebug\n*F\n+ 1 InterstitialAdUnitData.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/data/InterstitialAdUnitData$Companion\n*L\n52#1:65,10\n52#1:79,5\n52#1:75\n52#1:76,3\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/J9$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/g0;Lcom/ironsource/ab;Z)Lcom/ironsource/J9;
    .locals 4

    const-string v0, "adProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/x0;->s:Lcom/ironsource/x0$a;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p2}, Lcom/ironsource/qe;->d()Lcom/ironsource/Ue;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v1}, Lcom/ironsource/S3;->d()Lcom/ironsource/L9;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_5

    if-eqz p2, :cond_2

    .line 29
    invoke-virtual {p1}, Lcom/ironsource/g0;->e()Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {p2, v1, v2}, Lcom/ironsource/ab;->d(Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_3

    .line 31
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 35
    :cond_3
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->f()Ljava/lang/String;

    move-result-object v1

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 39
    check-cast v3, Lcom/ironsource/Ec;

    .line 40
    invoke-virtual {v3}, Lcom/ironsource/Ec;->f()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v3

    .line 43
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 45
    :cond_4
    invoke-static {}, Lcom/ironsource/ta;->b()Lcom/ironsource/ta;

    move-result-object p2

    const-string v3, "getInstance(...)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v3, Lcom/ironsource/w0;

    invoke-direct {v3, v1, v2, p2}, Lcom/ironsource/w0;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/ta;)V

    .line 47
    new-instance p2, Lcom/ironsource/J9;

    invoke-direct {p2, p1, p3, v3, v0}, Lcom/ironsource/J9;-><init>(Lcom/ironsource/g0;ZLcom/ironsource/w0;Lcom/ironsource/L9;)V

    return-object p2

    .line 73
    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Error getting "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " configurations"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
