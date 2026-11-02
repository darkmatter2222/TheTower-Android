.class public final Lcom/ironsource/Fb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Fb$a;,
        Lcom/ironsource/Fb$b;,
        Lcom/ironsource/Fb$c;,
        Lcom/ironsource/Fb$d;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadGraceResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadGraceResult.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/waterfall/load/LoadGraceResult\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n1563#2:79\n1634#2,3:80\n*S KotlinDebug\n*F\n+ 1 LoadGraceResult.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/waterfall/load/LoadGraceResult\n*L\n46#1:79\n46#1:80,3\n*E\n"
.end annotation


# static fields
.field public static final e:Lcom/ironsource/Fb$a;

.field private static final f:Ljava/lang/String; = "graceDuration"

.field private static final g:Ljava/lang/String; = "graceOutcome"

.field private static final h:Ljava/lang/String; = "heldDuration"

.field private static final i:Ljava/lang/String; = "instances"

.field private static final j:Ljava/lang/String; = "id"

.field private static final k:Ljava/lang/String; = "adNetwork"

.field private static final l:Ljava/lang/String; = "showOrderIndex"

.field private static final m:Ljava/lang/String; = "loadOrderIndex"

.field private static final n:Ljava/lang/String; = "revenue"

.field private static final o:Ljava/lang/String; = "precision"

.field private static final p:Ljava/lang/String; = "status"

.field private static final q:Ljava/lang/String; = "delivered"


# instance fields
.field private final a:J

.field private final b:Lcom/ironsource/Fb$b;

.field private final c:J

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/Fb$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/Fb$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/Fb$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/Fb;->e:Lcom/ironsource/Fb$a;

    return-void
.end method

.method public constructor <init>(JLcom/ironsource/Fb$b;JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/ironsource/Fb$b;",
            "J",
            "Ljava/util/List<",
            "Lcom/ironsource/Fb$c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "graceOutcome"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instances"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/ironsource/Fb;->a:J

    .line 3
    iput-object p3, p0, Lcom/ironsource/Fb;->b:Lcom/ironsource/Fb$b;

    .line 4
    iput-wide p4, p0, Lcom/ironsource/Fb;->c:J

    .line 5
    iput-object p6, p0, Lcom/ironsource/Fb;->d:Ljava/util/List;

    return-void
.end method

.method private final a(Lcom/ironsource/Fb$c;)D
    .locals 4

    .line 4
    invoke-virtual {p1}, Lcom/ironsource/Fb$c;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/ironsource/Fb$c;->n()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%.3f"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public static synthetic a(Lcom/ironsource/Fb;JLcom/ironsource/Fb$b;JLjava/util/List;ILjava/lang/Object;)Lcom/ironsource/Fb;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 3
    iget-wide p1, p0, Lcom/ironsource/Fb;->a:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/ironsource/Fb;->b:Lcom/ironsource/Fb$b;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-wide p4, p0, Lcom/ironsource/Fb;->c:J

    :cond_2
    move-wide v4, p4

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget-object p6, p0, Lcom/ironsource/Fb;->d:Ljava/util/List;

    :cond_3
    move-object v0, p0

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ironsource/Fb;->a(JLcom/ironsource/Fb$b;JLjava/util/List;)Lcom/ironsource/Fb;

    move-result-object p0

    return-object p0
.end method

.method private final b(Lcom/ironsource/Fb$c;)Lorg/json/JSONObject;
    .locals 4

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/ironsource/Fb$c;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/ironsource/Fb$c;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adNetwork"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/ironsource/Fb$c;->o()I

    move-result v1

    const-string v2, "showOrderIndex"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/ironsource/Fb$c;->l()I

    move-result v1

    const-string v2, "loadOrderIndex"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/ironsource/Fb;->a(Lcom/ironsource/Fb$c;)D

    move-result-wide v1

    const-string v3, "revenue"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/ironsource/Fb$c;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "precision"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/ironsource/Fb$c;->p()Lcom/ironsource/Fb$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/Fb$d;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 10
    const-string v1, "delivered"

    invoke-virtual {p1}, Lcom/ironsource/Fb$c;->j()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "put(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Fb;->a:J

    return-wide v0
.end method

.method public final a(JLcom/ironsource/Fb$b;JLjava/util/List;)Lcom/ironsource/Fb;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/ironsource/Fb$b;",
            "J",
            "Ljava/util/List<",
            "Lcom/ironsource/Fb$c;",
            ">;)",
            "Lcom/ironsource/Fb;"
        }
    .end annotation

    .line 2
    const-string v0, "graceOutcome"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instances"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/Fb;

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/Fb;-><init>(JLcom/ironsource/Fb$b;JLjava/util/List;)V

    return-object v1
.end method

.method public final b()Lcom/ironsource/Fb$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb;->b:Lcom/ironsource/Fb$b;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Fb;->c:J

    return-wide v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/Fb$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb;->d:Ljava/util/List;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Fb;->a:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/ironsource/Fb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ironsource/Fb;

    iget-wide v3, p0, Lcom/ironsource/Fb;->a:J

    iget-wide v5, p1, Lcom/ironsource/Fb;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/ironsource/Fb;->b:Lcom/ironsource/Fb$b;

    iget-object v3, p1, Lcom/ironsource/Fb;->b:Lcom/ironsource/Fb$b;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/ironsource/Fb;->c:J

    iget-wide v5, p1, Lcom/ironsource/Fb;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/ironsource/Fb;->d:Ljava/util/List;

    iget-object p1, p1, Lcom/ironsource/Fb;->d:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final f()Lcom/ironsource/Fb$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb;->b:Lcom/ironsource/Fb$b;

    return-object v0
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Fb;->c:J

    return-wide v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/Fb$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb;->d:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Fb;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/Fb;->b:Lcom/ironsource/Fb$b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/ironsource/Fb;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/Fb;->d:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-wide v1, p0, Lcom/ironsource/Fb;->a:J

    const-string v3, "graceDuration"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ironsource/Fb;->b:Lcom/ironsource/Fb$b;

    invoke-virtual {v1}, Lcom/ironsource/Fb$b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "graceOutcome"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4
    iget-wide v1, p0, Lcom/ironsource/Fb;->c:J

    const-string v3, "heldDuration"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ironsource/Fb;->d:Ljava/util/List;

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 40
    check-cast v3, Lcom/ironsource/Fb$c;

    .line 41
    invoke-direct {p0, v3}, Lcom/ironsource/Fb;->b(Lcom/ironsource/Fb$c;)Lorg/json/JSONObject;

    move-result-object v3

    .line 76
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "instances"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Fb;->a:J

    iget-object v2, p0, Lcom/ironsource/Fb;->b:Lcom/ironsource/Fb$b;

    iget-wide v3, p0, Lcom/ironsource/Fb;->c:J

    iget-object v5, p0, Lcom/ironsource/Fb;->d:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LoadGraceResult(graceDurationMs="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graceOutcome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heldDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", instances="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
