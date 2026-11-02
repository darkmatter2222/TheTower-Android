.class public final Lcom/ironsource/u2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuctionResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuctionResponse.kt\ncom/unity3d/ironsourceads/internal/auction/AuctionResponse$Data\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,165:1\n1617#2,9:166\n1869#2:175\n1870#2:178\n1626#2:179\n1#3:176\n1#3:177\n*S KotlinDebug\n*F\n+ 1 AuctionResponse.kt\ncom/unity3d/ironsourceads/internal/auction/AuctionResponse$Data\n*L\n122#1:166,9\n122#1:175\n122#1:178\n122#1:179\n122#1:177\n*E\n"
.end annotation


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/ironsource/mediationsdk/demandOnly/a;

.field private final e:Lcom/ironsource/y2;

.field private final f:Lorg/json/JSONObject;

.field private final g:Lorg/json/JSONObject;

.field private final h:Lcom/ironsource/o2;

.field private final i:Lcom/ironsource/z2;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    const-string v0, "auctionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/u2$a;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/ironsource/u2$a;->b:Ljava/lang/String;

    .line 11
    invoke-direct {p0, p1}, Lcom/ironsource/u2$a;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 12
    const-string v1, "auctionId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/u2$a;->c:Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/ironsource/u2$a;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/demandOnly/a;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/u2$a;->d:Lcom/ironsource/mediationsdk/demandOnly/a;

    .line 14
    invoke-direct {p0, v0}, Lcom/ironsource/u2$a;->c(Lorg/json/JSONObject;)Lcom/ironsource/y2;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/u2$a;->e:Lcom/ironsource/y2;

    .line 15
    invoke-direct {p0, v0}, Lcom/ironsource/u2$a;->d(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/u2$a;->f:Lorg/json/JSONObject;

    .line 16
    invoke-direct {p0, v0}, Lcom/ironsource/u2$a;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/u2$a;->g:Lorg/json/JSONObject;

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/ironsource/u2$a;->a(Lcom/ironsource/mediationsdk/demandOnly/a;Ljava/lang/String;)Lcom/ironsource/o2;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/u2$a;->h:Lcom/ironsource/o2;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/ironsource/u2$a;->b(Lcom/ironsource/mediationsdk/demandOnly/a;Ljava/lang/String;)Lcom/ironsource/z2;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/u2$a;->i:Lcom/ironsource/z2;

    return-void
.end method

.method private final a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/demandOnly/a;
    .locals 6

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    const-string v1, "armData"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 18
    const-string v1, "waterfall"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 21
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    .line 75
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 76
    new-instance v5, Lcom/ironsource/y2;

    invoke-direct {v5, v4, v3, p2}, Lcom/ironsource/y2;-><init>(Lorg/json/JSONObject;ILorg/json/JSONObject;)V

    invoke-virtual {v5}, Lcom/ironsource/y2;->n()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_0

    .line 126
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    :cond_3
    new-instance p1, Lcom/ironsource/mediationsdk/demandOnly/a$a;

    invoke-direct {p1, v0}, Lcom/ironsource/mediationsdk/demandOnly/a$a;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method private final a(Lcom/ironsource/mediationsdk/demandOnly/a;Ljava/lang/String;)Lcom/ironsource/o2;
    .locals 1

    .line 136
    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/demandOnly/a;->a(Ljava/lang/String;)Lcom/ironsource/y2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 137
    new-instance p2, Lcom/ironsource/o2;

    invoke-direct {p2}, Lcom/ironsource/o2;-><init>()V

    .line 138
    invoke-virtual {p1}, Lcom/ironsource/y2;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/o2;->a(Ljava/util/List;)V

    .line 139
    invoke-virtual {p1}, Lcom/ironsource/y2;->h()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/o2;->c(Ljava/util/List;)V

    .line 140
    invoke-virtual {p1}, Lcom/ironsource/y2;->g()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/o2;->b(Ljava/util/List;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 10
    const-string v0, "settings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    .line 11
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    return-object p1
.end method

.method private final b(Lcom/ironsource/mediationsdk/demandOnly/a;Ljava/lang/String;)Lcom/ironsource/z2;
    .locals 1

    .line 3
    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/demandOnly/a;->a(Ljava/lang/String;)Lcom/ironsource/y2;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lcom/ironsource/z2;

    invoke-virtual {p1}, Lcom/ironsource/y2;->k()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getServerData(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/ironsource/z2;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 2
    const-string v0, "configurations"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private final c(Lorg/json/JSONObject;)Lcom/ironsource/y2;
    .locals 1

    .line 2
    new-instance v0, Lcom/ironsource/y2;

    invoke-direct {v0, p1}, Lcom/ironsource/y2;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private final d(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    const-string v0, "genericParams"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a()Lcom/ironsource/u2;
    .locals 8

    .line 1
    new-instance v0, Lcom/ironsource/u2;

    .line 2
    iget-object v1, p0, Lcom/ironsource/u2$a;->c:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/ironsource/u2$a;->d:Lcom/ironsource/mediationsdk/demandOnly/a;

    .line 4
    iget-object v3, p0, Lcom/ironsource/u2$a;->e:Lcom/ironsource/y2;

    .line 5
    iget-object v4, p0, Lcom/ironsource/u2$a;->f:Lorg/json/JSONObject;

    .line 6
    iget-object v5, p0, Lcom/ironsource/u2$a;->g:Lorg/json/JSONObject;

    .line 7
    iget-object v6, p0, Lcom/ironsource/u2$a;->h:Lcom/ironsource/o2;

    .line 8
    iget-object v7, p0, Lcom/ironsource/u2$a;->i:Lcom/ironsource/z2;

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/ironsource/u2;-><init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/demandOnly/a;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/o2;Lcom/ironsource/z2;)V

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/u2$a;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/u2$a;->b:Ljava/lang/String;

    return-object v0
.end method
