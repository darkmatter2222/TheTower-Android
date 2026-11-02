.class public final Lcom/ironsource/Tg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Smash:",
        "Lcom/ironsource/p3<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWaterfallSelector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WaterfallSelector.kt\ncom/ironsource/mediationsdk/adunit/waterfall/WaterfallSelector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,60:1\n1056#2:61\n295#2,2:62\n1788#2,4:64\n295#2,2:68\n*S KotlinDebug\n*F\n+ 1 WaterfallSelector.kt\ncom/ironsource/mediationsdk/adunit/waterfall/WaterfallSelector\n*L\n10#1:61\n18#1:62,2\n23#1:64,4\n28#1:68,2\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/V;


# direct methods
.method public constructor <init>(Lcom/ironsource/V;)V
    .locals 1

    const-string v0, "managerData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Tg;->a:Lcom/ironsource/V;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/p3;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/p3<",
            "*>;",
            "Ljava/util/List<",
            "+TSmash;>;)Z"
        }
    .end annotation

    const-string v0, "smash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "waterfall"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Lcom/ironsource/Tg;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 41
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ironsource/p3;

    .line 42
    invoke-virtual {v1}, Lcom/ironsource/p3;->x()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TSmash;>;)Z"
        }
    .end annotation

    const-string v0, "waterfall"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    .line 45
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/p3;

    .line 46
    invoke-virtual {v2}, Lcom/ironsource/p3;->y()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-gez v0, :cond_1

    .line 89
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_0

    .line 90
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ironsource/Tg;->a:Lcom/ironsource/V;

    invoke-virtual {p1}, Lcom/ironsource/V;->i()I

    move-result p1

    if-lt v0, p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TSmash;>;)",
            "Ljava/util/List<",
            "TSmash;>;"
        }
    .end annotation

    const-string v0, "waterfall"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/Tg$a;

    invoke-direct {v0}, Lcom/ironsource/Tg$a;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/List;)Lcom/ironsource/p3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TSmash;>;)TSmash;"
        }
    .end annotation

    const-string v0, "waterfall"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/ironsource/Tg;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 45
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ironsource/p3;

    .line 46
    invoke-virtual {v1}, Lcom/ironsource/p3;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 91
    :goto_0
    check-cast v0, Lcom/ironsource/p3;

    return-object v0
.end method

.method public final d(Ljava/util/List;)Lcom/ironsource/Ug;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TSmash;>;)",
            "Lcom/ironsource/Ug<",
            "TSmash;>;"
        }
    .end annotation

    const-string v0, "waterfall"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/Tg;->a:Lcom/ironsource/V;

    invoke-virtual {v1}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " waterfall size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/Tg;->a:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/Qg;->b:Lcom/ironsource/Qg;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/ironsource/Qg;->a:Lcom/ironsource/Qg;

    .line 6
    :goto_0
    sget-object v1, Lcom/ironsource/Zg;->g:Lcom/ironsource/Zg$a;

    .line 8
    iget-object v2, p0, Lcom/ironsource/Tg;->a:Lcom/ironsource/V;

    invoke-virtual {v2}, Lcom/ironsource/V;->i()I

    move-result v2

    .line 9
    iget-object v3, p0, Lcom/ironsource/Tg;->a:Lcom/ironsource/V;

    invoke-virtual {v3}, Lcom/ironsource/V;->m()Z

    move-result v3

    .line 10
    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/ironsource/Zg$a;->a(Lcom/ironsource/Qg;IZLjava/util/List;)Lcom/ironsource/Zg;

    move-result-object v0

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/p3;

    .line 17
    invoke-virtual {v0, v1}, Lcom/ironsource/Zg;->d(Lcom/ironsource/p3;)V

    .line 18
    invoke-virtual {v0}, Lcom/ironsource/Zg;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    new-instance p1, Lcom/ironsource/Ug;

    invoke-direct {p1, v0}, Lcom/ironsource/Ug;-><init>(Lcom/ironsource/Zg;)V

    return-object p1

    .line 23
    :cond_2
    new-instance p1, Lcom/ironsource/Ug;

    invoke-direct {p1, v0}, Lcom/ironsource/Ug;-><init>(Lcom/ironsource/Zg;)V

    return-object p1
.end method
