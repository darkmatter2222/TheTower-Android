.class public final Lcom/ironsource/x0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdUnitData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdUnitData.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/data/AdUnitData$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,102:1\n1563#2:103\n1634#2,3:104\n*S KotlinDebug\n*F\n+ 1 AdUnitData.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/data/AdUnitData$Companion\n*L\n55#1:103\n55#1:104,3\n*E\n"
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
    invoke-direct {p0}, Lcom/ironsource/x0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/g0;Lcom/ironsource/ab;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AdFormatConfig:",
            "Ljava/lang/Object;",
            "AdUnitData:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ironsource/g0;",
            "Lcom/ironsource/ab;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/ironsource/S3;",
            "+TAdFormatConfig;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/ironsource/w0;",
            "-TAdFormatConfig;+TAdUnitData;>;)TAdUnitData;"
        }
    .end annotation

    const-string v0, "adProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getAdFormatConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createAdUnitData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lcom/ironsource/qe;->d()Lcom/ironsource/Ue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/ironsource/g0;->e()Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p2, v0, p1}, Lcom/ironsource/ab;->d(Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    .line 7
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 11
    :cond_2
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->f()Ljava/lang/String;

    move-result-object p2

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 62
    check-cast v1, Lcom/ironsource/Ec;

    .line 63
    invoke-virtual {v1}, Lcom/ironsource/Ec;->f()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v1

    .line 113
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    :cond_3
    invoke-static {}, Lcom/ironsource/ta;->b()Lcom/ironsource/ta;

    move-result-object p1

    const-string v1, "getInstance(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v1, Lcom/ironsource/w0;

    invoke-direct {v1, p2, v0, p1}, Lcom/ironsource/w0;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/ta;)V

    .line 120
    invoke-interface {p4, v1, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 122
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Error getting "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
