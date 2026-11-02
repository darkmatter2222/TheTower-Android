.class public final Lcom/ironsource/Hg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/F;
.implements Lcom/ironsource/Rg;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWaterfall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Waterfall.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/waterfall/Waterfall\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,216:1\n1#2:217\n1869#3,2:218\n774#3:220\n865#3,2:221\n*S KotlinDebug\n*F\n+ 1 Waterfall.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/waterfall/Waterfall\n*L\n195#1:218,2\n212#1:220\n212#1:221,2\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/T0;

.field private final b:Lcom/ironsource/x0;

.field private final c:Lcom/ironsource/Pg;

.field private final d:Lcom/ironsource/Dd;

.field private final e:Lcom/ironsource/E;

.field private final f:Lcom/ironsource/Yg;

.field private final g:Lcom/ironsource/Kg;

.field private h:Lcom/ironsource/G;

.field private i:Lcom/ironsource/Sg;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/A;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/ironsource/A;

.field private l:Z

.field private m:Z

.field private n:I


# direct methods
.method public constructor <init>(Lcom/ironsource/T0;Lcom/ironsource/x0;ZLcom/ironsource/Pg;Lcom/ironsource/Dd;Lcom/ironsource/E;)V
    .locals 1

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Hg;->a:Lcom/ironsource/T0;

    .line 3
    iput-object p2, p0, Lcom/ironsource/Hg;->b:Lcom/ironsource/x0;

    .line 5
    iput-object p4, p0, Lcom/ironsource/Hg;->c:Lcom/ironsource/Pg;

    .line 6
    iput-object p5, p0, Lcom/ironsource/Hg;->d:Lcom/ironsource/Dd;

    .line 7
    iput-object p6, p0, Lcom/ironsource/Hg;->e:Lcom/ironsource/E;

    .line 11
    sget-object p4, Lcom/ironsource/Yg$a;->a:Lcom/ironsource/Yg$a$a;

    invoke-virtual {p4, p3, p0}, Lcom/ironsource/Yg$a$a;->a(ZLcom/ironsource/Rg;)Lcom/ironsource/Yg;

    move-result-object p3

    iput-object p3, p0, Lcom/ironsource/Hg;->f:Lcom/ironsource/Yg;

    .line 13
    sget-object p3, Lcom/ironsource/Kg;->d:Lcom/ironsource/Kg$a;

    invoke-virtual {p3, p1, p2}, Lcom/ironsource/Kg$a;->a(Lcom/ironsource/T0;Lcom/ironsource/x0;)Lcom/ironsource/Kg;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/Hg;->g:Lcom/ironsource/Kg;

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Hg;->j:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/T0;Lcom/ironsource/x0;ZLcom/ironsource/Pg;Lcom/ironsource/Dd;Lcom/ironsource/E;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x10

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p5, v0

    :cond_0
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_1

    move-object p7, v0

    goto :goto_0

    :cond_1
    move-object p7, p6

    :goto_0
    move-object p6, p5

    move-object p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 19
    invoke-direct/range {p1 .. p7}, Lcom/ironsource/Hg;-><init>(Lcom/ironsource/T0;Lcom/ironsource/x0;ZLcom/ironsource/Pg;Lcom/ironsource/Dd;Lcom/ironsource/E;)V

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/Hg;)Lcom/ironsource/Pg;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ironsource/Hg;->c:Lcom/ironsource/Pg;

    return-object p0
.end method

.method public static final synthetic a(Lcom/ironsource/Hg;Lcom/ironsource/Mg;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ironsource/Hg;->a(Lcom/ironsource/Mg;)V

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/Hg;Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ironsource/Hg;->m:Z

    return-void
.end method

.method private final a(Lcom/ironsource/Mg;)V
    .locals 8

    .line 21
    sget-object v0, Lcom/ironsource/G;->c:Lcom/ironsource/G$a;

    iget-object v1, p0, Lcom/ironsource/Hg;->b:Lcom/ironsource/x0;

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/G$a;->a(Lcom/ironsource/x0;Lcom/ironsource/Mg;)Lcom/ironsource/G;

    move-result-object v7

    .line 22
    iput-object v7, p0, Lcom/ironsource/Hg;->h:Lcom/ironsource/G;

    .line 24
    sget-object v2, Lcom/ironsource/Sg;->c:Lcom/ironsource/Sg$a;

    .line 25
    iget-object v3, p0, Lcom/ironsource/Hg;->a:Lcom/ironsource/T0;

    iget-object v4, p0, Lcom/ironsource/Hg;->b:Lcom/ironsource/x0;

    iget-object v0, p0, Lcom/ironsource/Hg;->g:Lcom/ironsource/Kg;

    invoke-virtual {v0}, Lcom/ironsource/Kg;->a()Lcom/ironsource/cd;

    move-result-object v5

    move-object v6, p1

    .line 26
    invoke-virtual/range {v2 .. v7}, Lcom/ironsource/Sg$a;->a(Lcom/ironsource/T0;Lcom/ironsource/x0;Lcom/ironsource/cd;Lcom/ironsource/Mg;Lcom/ironsource/G;)Lcom/ironsource/Sg;

    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/ironsource/Hg;->i:Lcom/ironsource/Sg;

    .line 31
    invoke-direct {p0}, Lcom/ironsource/Hg;->i()V

    return-void
.end method

.method public static final synthetic b(Lcom/ironsource/Hg;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ironsource/Hg;->l:Z

    return p0
.end method

.method private final c(Lcom/ironsource/A;)V
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/ironsource/Hg;->l:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/ironsource/Hg;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ironsource/Hg;->e:Lcom/ironsource/E;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/ironsource/A;->a(Lcom/ironsource/E;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/ironsource/Hg;->i:Lcom/ironsource/Sg;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/ironsource/Sg;->a(Lcom/ironsource/A;)V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/ironsource/Hg;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/ironsource/Hg;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 16
    iget-object v0, p0, Lcom/ironsource/Hg;->i:Lcom/ironsource/Sg;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/ironsource/Sg;->b(Lcom/ironsource/A;)V

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/ironsource/Hg;->c:Lcom/ironsource/Pg;

    invoke-interface {v0, p1}, Lcom/ironsource/Pg;->b(Lcom/ironsource/A;)V

    return-void

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/ironsource/Hg;->h:Lcom/ironsource/G;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/ironsource/G;->a(Lcom/ironsource/A;)Z

    move-result v0

    if-ne v0, v1, :cond_6

    .line 19
    iget-object v0, p0, Lcom/ironsource/Hg;->c:Lcom/ironsource/Pg;

    invoke-interface {v0, p1}, Lcom/ironsource/Pg;->a(Lcom/ironsource/A;)V

    return-void

    .line 20
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/ironsource/A;->A()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21
    iget-object p1, p0, Lcom/ironsource/Hg;->d:Lcom/ironsource/Dd;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/ironsource/Hg;->b:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ironsource/Dd;->a(Ljava/lang/String;Z)V

    :cond_6
    return-void

    .line 23
    :cond_7
    invoke-virtual {p1}, Lcom/ironsource/A;->c()V

    return-void
.end method

.method private final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/A;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Hg;->h:Lcom/ironsource/G;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ironsource/G;->c()Lcom/ironsource/G$c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ironsource/G$c;->d()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Hg;->k:Lcom/ironsource/A;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Hg;->h:Lcom/ironsource/G;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/G;->d()Lcom/ironsource/G$b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/G$b;->e()Z

    move-result v1

    if-nez v1, :cond_4

    .line 7
    invoke-virtual {v0}, Lcom/ironsource/G$b;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/ironsource/Hg;->i:Lcom/ironsource/Sg;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ironsource/Sg;->a()V

    return-void

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/ironsource/G$b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/A;

    .line 13
    iget v2, p0, Lcom/ironsource/Hg;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ironsource/Hg;->n:I

    .line 14
    invoke-virtual {v1}, Lcom/ironsource/A;->A()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 15
    iput-boolean v2, p0, Lcom/ironsource/Hg;->m:Z

    .line 16
    invoke-virtual {p0, v1}, Lcom/ironsource/Hg;->b(Lcom/ironsource/A;)V

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v1, p0}, Lcom/ironsource/A;->a(Lcom/ironsource/F;)V

    goto :goto_1

    :cond_3
    return-void

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/ironsource/Hg;->c:Lcom/ironsource/Pg;

    const/16 v1, 0x1fd

    const-string v2, "Mediation No fill"

    invoke-interface {v0, v1, v2}, Lcom/ironsource/Pg;->a(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/ironsource/A;
    .locals 4

    .line 76
    invoke-direct {p0}, Lcom/ironsource/Hg;->e()Ljava/util/List;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/ironsource/A;

    .line 86
    invoke-virtual {v3}, Lcom/ironsource/A;->x()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/A;

    return-object p1
.end method

.method public a(Lcom/ironsource/A;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/ironsource/Hg;->k:Lcom/ironsource/A;

    .line 33
    iget-object v0, p0, Lcom/ironsource/Hg;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/ironsource/D;)V
    .locals 2

    const-string v0, "adInstanceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/Hg;->g:Lcom/ironsource/Kg;

    .line 6
    new-instance v1, Lcom/ironsource/Hg$a;

    invoke-direct {v1, p0}, Lcom/ironsource/Hg$a;-><init>(Lcom/ironsource/Hg;)V

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/ironsource/Kg;->a(Lcom/ironsource/D;Lcom/ironsource/Lg;)V

    return-void
.end method

.method public final a(Lcom/ironsource/J;Z)V
    .locals 2

    const-string v0, "adInstancePresenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/ironsource/Hg;->f:Lcom/ironsource/Yg;

    invoke-interface {v0}, Lcom/ironsource/Yg;->c()Lcom/ironsource/A;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, p2}, Lcom/ironsource/A;->b(Z)V

    .line 11
    iget-object v1, p0, Lcom/ironsource/Hg;->f:Lcom/ironsource/Yg;

    invoke-interface {v1, v0}, Lcom/ironsource/Yg;->a(Lcom/ironsource/A;)V

    if-nez p2, :cond_0

    .line 13
    iget-object p2, p0, Lcom/ironsource/Hg;->i:Lcom/ironsource/Sg;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/ironsource/Hg;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/ironsource/Sg;->a(Lcom/ironsource/A;Ljava/util/List;)V

    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ironsource/A;->a(Lcom/ironsource/J;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/ironsource/Z4;)V
    .locals 5

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 35
    iget-object v1, p0, Lcom/ironsource/Hg;->a:Lcom/ironsource/T0;

    invoke-virtual {p1}, Lcom/ironsource/Z4;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "destroyReadyToShowInstances reason="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/ironsource/Hg;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/ironsource/Hg;->b:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/ironsource/Hg;->j:Ljava/util/List;

    .line 65
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/A;

    .line 66
    invoke-virtual {v2}, Lcom/ironsource/A;->A()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    iget-object v2, p0, Lcom/ironsource/Hg;->d:Lcom/ironsource/Dd;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/ironsource/Dd;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v2}, Lcom/ironsource/A;->c()V

    goto :goto_0

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/ironsource/Hg;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    instance-of v0, p1, Lcom/ironsource/Z4$a;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/ironsource/Z4$a;

    goto :goto_1

    :cond_4
    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/ironsource/Z4$a;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 74
    :cond_5
    iget-object v0, p0, Lcom/ironsource/Hg;->a:Lcom/ironsource/T0;

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->h()Lcom/ironsource/pg;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/Z4;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v4}, Lcom/ironsource/pg;->a(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/A;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instance"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget p1, p0, Lcom/ironsource/Hg;->n:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/ironsource/Hg;->n:I

    .line 17
    iget-boolean p1, p0, Lcom/ironsource/Hg;->l:Z

    if-eqz p1, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/Hg;->i()V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/ironsource/Hg;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ironsource/Hg;->f:Lcom/ironsource/Yg;

    invoke-interface {v0}, Lcom/ironsource/Yg;->a()V

    return-void
.end method

.method public b(Lcom/ironsource/A;)V
    .locals 2

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/ironsource/Hg;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ironsource/Hg;->n:I

    .line 3
    invoke-direct {p0, p1}, Lcom/ironsource/Hg;->c(Lcom/ironsource/A;)V

    .line 5
    iget p1, p0, Lcom/ironsource/Hg;->n:I

    if-gtz p1, :cond_0

    iget-boolean p1, p0, Lcom/ironsource/Hg;->m:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/ironsource/Hg;->d:Lcom/ironsource/Dd;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ironsource/Hg;->b:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ironsource/Dd;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ironsource/Hg;->l:Z

    .line 2
    iget-object v0, p0, Lcom/ironsource/Hg;->k:Lcom/ironsource/A;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/A;->b()V

    :cond_0
    return-void
.end method

.method public final d()Lcom/ironsource/A;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Hg;->h:Lcom/ironsource/G;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/G;->c()Lcom/ironsource/G$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/G$c;->c()Lcom/ironsource/A;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Lcom/ironsource/A;)V
    .locals 3

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/Hg;->i:Lcom/ironsource/Sg;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ironsource/Hg;->b:Lcom/ironsource/x0;

    invoke-virtual {v1}, Lcom/ironsource/x0;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/Hg;->b:Lcom/ironsource/x0;

    invoke-virtual {v2}, Lcom/ironsource/x0;->p()Lcom/ironsource/ta;

    move-result-object v2

    .line 4
    invoke-virtual {v0, p1, v1, v2}, Lcom/ironsource/Sg;->a(Lcom/ironsource/A;Ljava/lang/String;Lcom/ironsource/ta;)V

    :cond_0
    return-void
.end method

.method public final f()Lcom/ironsource/Pd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Hg;->f:Lcom/ironsource/Yg;

    invoke-interface {v0}, Lcom/ironsource/Yg;->b()Lcom/ironsource/Pd;

    move-result-object v0

    return-object v0
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Hg;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/A;

    .line 2
    invoke-virtual {v1}, Lcom/ironsource/A;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
