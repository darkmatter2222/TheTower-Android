.class public final Lcom/ironsource/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/a2$d;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Auction.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/waterfall/auction/Auction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,235:1\n1193#2,2:236\n1267#2,4:238\n*S KotlinDebug\n*F\n+ 1 Auction.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/waterfall/auction/Auction\n*L\n100#1:236,2\n100#1:238,4\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/T0;

.field private final b:Lcom/ironsource/x0;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/H;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/ironsource/q2;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/w3;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/T0;Lcom/ironsource/x0;Lcom/ironsource/m6;)V
    .locals 9

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    .line 3
    iput-object p2, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    .line 13
    invoke-direct {p0}, Lcom/ironsource/a2;->a()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/a2;->c:Ljava/util/Map;

    .line 14
    new-instance p1, Lcom/ironsource/q2;

    invoke-direct {p1, p2}, Lcom/ironsource/q2;-><init>(Lcom/ironsource/x0;)V

    iput-object p1, p0, Lcom/ironsource/a2;->d:Lcom/ironsource/q2;

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/a2;->e:Ljava/util/List;

    .line 16
    invoke-virtual {p2}, Lcom/ironsource/x0;->e()Lcom/ironsource/A2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/A2;->q()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ironsource/a2;->f:Z

    .line 19
    invoke-direct {p0}, Lcom/ironsource/a2;->b()Lcom/ironsource/a2$b;

    move-result-object v5

    .line 21
    invoke-virtual {p2}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/g0;->g()Lcom/ironsource/Tf;

    move-result-object p1

    .line 23
    invoke-virtual {p2}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 24
    invoke-virtual {p2}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 25
    :goto_1
    sget-object v1, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v1}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/u5;->z()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move v7, v2

    .line 27
    :goto_2
    invoke-virtual {p2}, Lcom/ironsource/x0;->n()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    if-eqz p1, :cond_4

    .line 30
    iget-object v0, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    .line 31
    invoke-virtual {p1, v6, v0}, Lcom/ironsource/Tf;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    :cond_4
    iget-object v0, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v0, v6}, Lcom/ironsource/x0;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    move-result-object v3

    .line 34
    iget-object v0, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isBidder(Lcom/ironsource/mediationsdk/IronSource$a;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 36
    iget-boolean v0, p0, Lcom/ironsource/a2;->f:Z

    if-eqz v0, :cond_5

    .line 37
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/a2;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object v0

    goto :goto_4

    .line 39
    :cond_5
    invoke-direct {p0, v6}, Lcom/ironsource/a2;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v0

    .line 41
    :goto_4
    instance-of v1, v0, Lcom/ironsource/y3;

    if-eqz v1, :cond_6

    .line 42
    iget-object v8, p0, Lcom/ironsource/a2;->e:Ljava/util/List;

    move-object v1, v0

    .line 43
    new-instance v0, Lcom/ironsource/w3;

    .line 44
    iget-object v2, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v2}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInstanceType(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v2

    move-object v4, v1

    move v1, v2

    .line 45
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v2

    .line 47
    check-cast v4, Lcom/ironsource/y3;

    .line 48
    invoke-direct/range {v0 .. v6}, Lcom/ironsource/w3;-><init>(ILjava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/y3;Lcom/ironsource/x3;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    .line 49
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move-object v4, v0

    if-nez v4, :cond_7

    .line 61
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prepareAuctionCandidates - could not load network adapter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 64
    :cond_7
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network adapter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not implementing BiddingDataInterface"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_5
    iget-object v1, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    invoke-virtual {v1}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/E5;->h()Lcom/ironsource/pg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/pg;->g(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    if-nez v7, :cond_3

    .line 70
    iget-object v0, p0, Lcom/ironsource/a2;->d:Lcom/ironsource/q2;

    invoke-virtual {v0, v6}, Lcom/ironsource/q2;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    goto/16 :goto_3

    .line 75
    :cond_9
    iget-object p1, p0, Lcom/ironsource/a2;->d:Lcom/ironsource/q2;

    invoke-virtual {p1, p3}, Lcom/ironsource/q2;->a(Lcom/ironsource/A;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/T0;Lcom/ironsource/x0;Lcom/ironsource/m6;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 76
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/a2;-><init>(Lcom/ironsource/T0;Lcom/ironsource/x0;Lcom/ironsource/m6;)V

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/a2;)Lcom/ironsource/T0;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    return-object p0
.end method

.method public static final synthetic a(Lcom/ironsource/a2;Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ironsource/a2;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;
    .locals 3

    .line 333
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v1}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v2}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/g0;->b()Ljava/util/UUID;

    move-result-object v2

    .line 336
    invoke-virtual {v0, p1, v1, v2}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic a(Lcom/ironsource/a2;Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/a2;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object p0

    return-object p0
.end method

.method private final a()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/H;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->n()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    .line 142
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 143
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 144
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 145
    check-cast v1, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 146
    new-instance v3, Lcom/ironsource/H;

    iget-object v4, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    iget-object v5, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-direct {v3, v4, v5, v1}, Lcom/ironsource/H;-><init>(Lcom/ironsource/T0;Lcom/ironsource/x0;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    .line 147
    invoke-virtual {v3}, Lcom/ironsource/H;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static final synthetic a(Lcom/ironsource/a2;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/ironsource/a2;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 319
    :try_start_0
    const-string v2, "provider"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderDefaultInstance()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v2, "providerAdapterVersion"

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->getAdapterVersion()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v2, "providerSDKVersion"

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    move-object p2, v1

    :goto_2
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string p2, "spId"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string p2, "programmatic"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string p2, "instanceType"

    if-eqz p1, :cond_4

    .line 325
    iget-object v2, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v2}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInstanceType(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    .line 327
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 328
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    .line 330
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    if-eqz p1, :cond_5

    .line 331
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderDefaultInstance()Ljava/lang/String;

    move-result-object v1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "getProviderEventData "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 332
    invoke-virtual {v2, v3, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final a(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v0, p1}, Lcom/ironsource/x0;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v0

    .line 311
    iget-boolean v1, p0, Lcom/ironsource/a2;->f:Z

    if-eqz v1, :cond_1

    .line 312
    invoke-direct {p0, p1}, Lcom/ironsource/a2;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 314
    :cond_1
    invoke-direct {p0, v0}, Lcom/ironsource/a2;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object p1

    .line 316
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/ironsource/a2;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final a(JLjava/util/List;Ljava/util/List;Lcom/ironsource/a2$d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/A3;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/a2$d;",
            ")V"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->g()Lcom/ironsource/lg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/lg;->b(J)V

    .line 292
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/A3;

    .line 293
    invoke-virtual {v0}, Lcom/ironsource/A3;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getInstanceName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/ironsource/a2;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 294
    invoke-virtual {v0}, Lcom/ironsource/A3;->a()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/ironsource/a2;->d:Lcom/ironsource/q2;

    invoke-virtual {v2, v0}, Lcom/ironsource/q2;->a(Lcom/ironsource/A3;)V

    .line 296
    iget-object v2, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    invoke-virtual {v2}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/E5;->g()Lcom/ironsource/lg;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ironsource/A3;->e()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/ironsource/lg;->a(Ljava/util/Map;J)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    invoke-virtual {v2}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/E5;->g()Lcom/ironsource/lg;

    move-result-object v2

    .line 299
    invoke-virtual {v0}, Lcom/ironsource/A3;->e()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/ironsource/A3;->b()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/ironsource/lg;->a(Ljava/util/Map;JLjava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 305
    invoke-direct {p0, p4}, Lcom/ironsource/a2;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p4

    .line 306
    iget-object v0, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->g()Lcom/ironsource/lg;

    move-result-object v0

    invoke-virtual {v0, p4, p1, p2}, Lcom/ironsource/lg;->b(Ljava/util/Map;J)V

    goto :goto_1

    .line 308
    :cond_2
    invoke-interface {p5, p0}, Lcom/ironsource/a2$d;->a(Lcom/ironsource/a2;)V

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/a2;JLjava/util/List;Ljava/util/List;Lcom/ironsource/a2$d;)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p5}, Lcom/ironsource/a2;->a(JLjava/util/List;Ljava/util/List;Lcom/ironsource/a2$d;)V

    return-void
.end method

.method private final b()Lcom/ironsource/a2$b;
    .locals 1

    .line 2
    new-instance v0, Lcom/ironsource/a2$b;

    invoke-direct {v0, p0}, Lcom/ironsource/a2$b;-><init>(Lcom/ironsource/a2;)V

    return-object v0
.end method

.method private final b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "**>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/ironsource/a2;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/H;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ironsource/H;->b()Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static final synthetic b(Lcom/ironsource/a2;)Lcom/ironsource/x0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    return-object p0
.end method

.method private final b(Lcom/ironsource/a2$d;)Lcom/ironsource/z3$b;
    .locals 1

    .line 3
    new-instance v0, Lcom/ironsource/a2$c;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/a2$c;-><init>(Lcom/ironsource/a2;Lcom/ironsource/a2$d;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/ironsource/a2$d;)V
    .locals 4

    const-string v0, "biddingDataListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    new-instance v0, Lcom/ironsource/z3;

    invoke-direct {v0}, Lcom/ironsource/z3;-><init>()V

    .line 286
    invoke-direct {p0, p1}, Lcom/ironsource/a2;->b(Lcom/ironsource/a2$d;)Lcom/ironsource/z3$b;

    move-result-object p1

    .line 287
    iget-object v1, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    invoke-virtual {v1}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/E5;->g()Lcom/ironsource/lg;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v2}, Lcom/ironsource/x0;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/lg;->a(J)V

    .line 288
    iget-object v1, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    .line 289
    new-instance v2, Lcom/ironsource/a2$a;

    invoke-direct {v2, v0, p0, p1}, Lcom/ironsource/a2$a;-><init>(Lcom/ironsource/z3;Lcom/ironsource/a2;Lcom/ironsource/z3$b;)V

    .line 290
    invoke-virtual {v1, v2}, Lcom/ironsource/T0;->a(Lcom/ironsource/environment/thread/a;)V

    return-void
.end method

.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/H;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/a2;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final d()Lcom/ironsource/q2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/a2;->d:Lcom/ironsource/q2;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/w3;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/a2;->e:Ljava/util/List;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/a2;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/a2;->d:Lcom/ironsource/q2;

    invoke-virtual {v0}, Lcom/ironsource/q2;->e()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/a2;->f:Z

    return v0
.end method
