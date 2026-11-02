.class public final Lcom/google/firebase/firestore/pipeline/GenericArg$Companion;
.super Ljava/lang/Object;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/pipeline/GenericArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nstage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 stage.kt\ncom/google/firebase/firestore/pipeline/GenericArg$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1739:1\n1187#2,2:1740\n1261#2,4:1742\n1557#2:1746\n1628#2,3:1747\n*S KotlinDebug\n*F\n+ 1 stage.kt\ncom/google/firebase/firestore/pipeline/GenericArg$Companion\n*L\n166#1:1740,2\n166#1:1742,4\n167#1:1746\n167#1:1747,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/GenericArg$Companion;",
        "",
        "<init>",
        "()V",
        "from",
        "Lcom/google/firebase/firestore/pipeline/GenericArg;",
        "arg",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/pipeline/GenericArg$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/GenericArg;
    .locals 4

    .line 163
    instance-of v0, p1, Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/firebase/firestore/pipeline/GenericArg$AggregateArg;

    check-cast p1, Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/pipeline/GenericArg$AggregateArg;-><init>(Lcom/google/firebase/firestore/pipeline/AggregateFunction;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/GenericArg;

    return-object v0

    .line 164
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/firestore/pipeline/Ordering;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/firebase/firestore/pipeline/GenericArg$OrderingArg;

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Ordering;

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/pipeline/GenericArg$OrderingArg;-><init>(Lcom/google/firebase/firestore/pipeline/Ordering;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/GenericArg;

    return-object v0

    .line 165
    :cond_1
    instance-of v0, p1, Ljava/util/Map;

    const/16 v1, 0xa

    if-eqz v0, :cond_3

    .line 166
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1740
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 1741
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 1742
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1743
    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 166
    const-string v3, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/google/firebase/firestore/pipeline/GenericArg;->Companion:Lcom/google/firebase/firestore/pipeline/GenericArg$Companion;

    invoke-virtual {v3, v0}, Lcom/google/firebase/firestore/pipeline/GenericArg$Companion;->from(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/GenericArg;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 1743
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    :cond_2
    new-instance p1, Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;

    invoke-direct {p1, v1}, Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/google/firebase/firestore/pipeline/GenericArg;

    return-object p1

    .line 167
    :cond_3
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Iterable;

    .line 1746
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 1747
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 167
    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/pipeline/GenericArg$Companion;->from(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/GenericArg;

    move-result-object v1

    .line 1748
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1749
    :cond_4
    check-cast v0, Ljava/util/List;

    .line 167
    new-instance p1, Lcom/google/firebase/firestore/pipeline/GenericArg$ListArg;

    invoke-direct {p1, v0}, Lcom/google/firebase/firestore/pipeline/GenericArg$ListArg;-><init>(Ljava/util/List;)V

    check-cast p1, Lcom/google/firebase/firestore/pipeline/GenericArg;

    return-object p1

    .line 168
    :cond_5
    new-instance v0, Lcom/google/firebase/firestore/pipeline/GenericArg$ExprArg;

    sget-object v1, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->toExprOrConstant$com_google_firebase_firebase_firestore(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/pipeline/GenericArg$ExprArg;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/GenericArg;

    return-object v0
.end method
