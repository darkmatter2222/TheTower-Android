.class public final Lcom/unity3d/mediation/LevelPlayAdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLevelPlayAdInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LevelPlayAdInfo.kt\ncom/unity3d/mediation/LevelPlayAdInfo\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,145:1\n90#1,2:146\n90#1,2:148\n90#1,2:150\n90#1,2:152\n90#1,2:154\n90#1,2:156\n90#1,2:158\n90#1,2:160\n90#1,2:162\n90#1,2:164\n90#1,2:166\n90#1,2:168\n90#1,2:170\n37#2:172\n36#2,3:173\n*S KotlinDebug\n*F\n+ 1 LevelPlayAdInfo.kt\ncom/unity3d/mediation/LevelPlayAdInfo\n*L\n40#1:146,2\n44#1:148,2\n50#1:150,2\n56#1:152,2\n59#1:154,2\n62#1:156,2\n65#1:158,2\n68#1:160,2\n71#1:162,2\n74#1:164,2\n81#1:166,2\n84#1:168,2\n95#1:170,2\n118#1:172\n118#1:173,3\n*E\n"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/ironsource/y2;

.field private final e:Lcom/unity3d/mediation/LevelPlayAdSize;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/mediation/LevelPlayAdInfo;Ljava/lang/String;)V
    .locals 9

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v2, p1, Lcom/unity3d/mediation/LevelPlayAdInfo;->a:Ljava/lang/String;

    .line 12
    iget-object v3, p1, Lcom/unity3d/mediation/LevelPlayAdInfo;->b:Ljava/lang/String;

    .line 13
    iget-object v4, p1, Lcom/unity3d/mediation/LevelPlayAdInfo;->c:Ljava/lang/String;

    .line 14
    iget-object v5, p1, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    .line 15
    iget-object v6, p1, Lcom/unity3d/mediation/LevelPlayAdInfo;->e:Lcom/unity3d/mediation/LevelPlayAdSize;

    .line 17
    iget-object v8, p1, Lcom/unity3d/mediation/LevelPlayAdInfo;->g:Ljava/util/Map;

    move-object v1, p0

    move-object v7, p2

    .line 18
    invoke-direct/range {v1 .. v8}, Lcom/unity3d/mediation/LevelPlayAdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/y2;Lcom/unity3d/mediation/LevelPlayAdSize;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/y2;Lcom/unity3d/mediation/LevelPlayAdSize;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ironsource/y2;",
            "Lcom/unity3d/mediation/LevelPlayAdSize;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormat"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterData"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    .line 6
    iput-object p5, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->e:Lcom/unity3d/mediation/LevelPlayAdSize;

    .line 7
    iput-object p6, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->f:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->g:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/y2;Lcom/unity3d/mediation/LevelPlayAdSize;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x8

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p4, v0

    :cond_0
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_1

    move-object p5, v0

    :cond_1
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_2

    move-object p6, v0

    :cond_2
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_3

    .line 9
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p7

    :cond_3
    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 10
    invoke-direct/range {p1 .. p8}, Lcom/unity3d/mediation/LevelPlayAdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/y2;Lcom/unity3d/mediation/LevelPlayAdSize;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/y2;->m()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x2

    .line 3
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    return-object p1
.end method

.method private final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method private final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method private final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/unity3d/mediation/LevelPlayAdInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/y2;Lcom/unity3d/mediation/LevelPlayAdSize;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/unity3d/mediation/LevelPlayAdInfo;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 1
    iget-object p1, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->a:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->b:Ljava/lang/String;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-object p3, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->c:Ljava/lang/String;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget-object p4, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget-object p5, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->e:Lcom/unity3d/mediation/LevelPlayAdSize;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    iget-object p6, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->f:Ljava/lang/String;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    iget-object p7, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->g:Ljava/util/Map;

    :cond_6
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/unity3d/mediation/LevelPlayAdInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/y2;Lcom/unity3d/mediation/LevelPlayAdSize;Ljava/lang/String;Ljava/util/Map;)Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object p0

    return-object p0
.end method

.method private final d()Lcom/ironsource/y2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    return-object v0
.end method

.method private final e()Lcom/unity3d/mediation/LevelPlayAdSize;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->e:Lcom/unity3d/mediation/LevelPlayAdSize;

    return-object v0
.end method

.method private final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method private final g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->g:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/y2;Lcom/unity3d/mediation/LevelPlayAdSize;Ljava/lang/String;Ljava/util/Map;)Lcom/unity3d/mediation/LevelPlayAdInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ironsource/y2;",
            "Lcom/unity3d/mediation/LevelPlayAdSize;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/unity3d/mediation/LevelPlayAdInfo;"
        }
    .end annotation

    .line 1
    const-string v0, "adId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormat"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterData"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/unity3d/mediation/LevelPlayAdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/y2;Lcom/unity3d/mediation/LevelPlayAdSize;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/unity3d/mediation/LevelPlayAdInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/unity3d/mediation/LevelPlayAdInfo;

    iget-object v1, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/mediation/LevelPlayAdInfo;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/mediation/LevelPlayAdInfo;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/mediation/LevelPlayAdInfo;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    iget-object v3, p1, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->e:Lcom/unity3d/mediation/LevelPlayAdSize;

    iget-object v3, p1, Lcom/unity3d/mediation/LevelPlayAdInfo;->e:Lcom/unity3d/mediation/LevelPlayAdSize;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/mediation/LevelPlayAdInfo;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->g:Ljava/util/Map;

    iget-object p1, p1, Lcom/unity3d/mediation/LevelPlayAdInfo;->g:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getAb()Ljava/lang/String;
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/y2;->m()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "ab"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 96
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 97
    const-string v0, ""

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final getAdFormat()Ljava/lang/String;
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/y2;->m()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "adFormat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 102
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 103
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->c:Ljava/lang/String;

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final getAdId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdNetwork()Ljava/lang/String;
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/y2;->m()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "adNetwork"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 94
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 95
    const-string v0, ""

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final getAdSize()Lcom/unity3d/mediation/LevelPlayAdSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->e:Lcom/unity3d/mediation/LevelPlayAdSize;

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/y2;->m()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "mediationAdUnitId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 108
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 109
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->b:Ljava/lang/String;

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final getAdUnitName()Ljava/lang/String;
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/y2;->m()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "mediationAdUnitName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 105
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 106
    const-string v0, ""

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final getAuctionId()Ljava/lang/String;
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/y2;->m()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "auctionId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 98
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 99
    const-string v0, ""

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/y2;->m()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "country"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 97
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 98
    const-string v0, ""

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final getCreativeId()Ljava/lang/String;
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    const/4 v1, 0x0

    const-string v2, "creativeId"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/y2;->m()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 86
    :goto_0
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->g:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_2
    if-nez v1, :cond_3

    .line 88
    const-string v0, ""

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    return-object v0
.end method

.method public final getEncryptedCPM()Ljava/lang/String;
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/y2;->m()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "encryptedCPM"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 87
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 88
    const-string v0, ""

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final getImpressionPrecision$mediationsdk_release()Ljava/lang/String;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/y2;->m()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "precision"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 77
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 78
    const-string v0, ""

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final getImpressionRevenue$mediationsdk_release()D
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/y2;->m()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    const-string v1, "revenue"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 4
    invoke-static {v0, v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Double;D)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_2
    :goto_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getInstanceId()Ljava/lang/String;
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/y2;->m()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "instanceId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 92
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 93
    const-string v0, ""

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final getInstanceName()Ljava/lang/String;
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/y2;->m()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "instanceName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 93
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 94
    const-string v0, ""

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final getPlacementName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final getPrecision()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ironsource/y2;->d()Lcom/ironsource/Db;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ironsource/Db;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getImpressionPrecision$mediationsdk_release()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRevenue()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/y2;->d()Lcom/ironsource/Db;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/Db;->d()D

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getImpressionRevenue$mediationsdk_release()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getSegmentName()Ljava/lang/String;
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/y2;->m()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "segmentName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 95
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 96
    const-string v0, ""

    return-object v0

    :cond_2
    return-object v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->e:Lcom/unity3d/mediation/LevelPlayAdSize;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/unity3d/mediation/LevelPlayAdSize;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->f:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->g:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final impressionData$mediationsdk_release()Lorg/json/JSONObject;
    .locals 10

    const-string v1, "placement"

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->d:Lcom/ironsource/y2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/y2;->m()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, "keys(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 59
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 60
    check-cast v2, [Ljava/lang/String;

    .line 61
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v3, "failed to copy impression JSON"

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 66
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 70
    :goto_0
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v6, p0, Lcom/unity3d/mediation/LevelPlayAdInfo;->f:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 72
    const-string v5, "${PLACEMENT_NAME}"

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getCreativeId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 77
    const-string v0, "creativeId"

    invoke-virtual {p0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getCreativeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 80
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "failed to put impression values"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 21

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getAdId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getAdUnitName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/unity3d/mediation/LevelPlayAdInfo;->e:Lcom/unity3d/mediation/LevelPlayAdSize;

    invoke-virtual {v3}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getAdFormat()Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-virtual {v3}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getAuctionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getCountry()Ljava/lang/String;

    move-result-object v8

    .line 3
    invoke-virtual {v3}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getAb()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getSegmentName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getAdNetwork()Ljava/lang/String;

    move-result-object v11

    .line 4
    invoke-virtual {v3}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getInstanceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getInstanceId()Ljava/lang/String;

    move-result-object v13

    .line 5
    invoke-virtual {v3}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getRevenue()D

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getPrecision()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    invoke-virtual/range {p0 .. p0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getEncryptedCPM()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    invoke-virtual/range {p0 .. p0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getCreativeId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    new-instance v3, Ljava/lang/StringBuilder;

    move-wide/from16 v19, v14

    const-string v14, "adId: "

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", adUnitId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adUnitName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", placementName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", auctionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", country: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", segmentName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adNetwork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", instanceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", instanceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", revenue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", precision: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encryptedCPM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creativeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
