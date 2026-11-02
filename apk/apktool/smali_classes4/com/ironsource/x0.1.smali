.class public abstract Lcom/ironsource/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/x0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdUnitData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdUnitData.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/data/AdUnitData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n295#2,2:103\n1#3:105\n*S KotlinDebug\n*F\n+ 1 AdUnitData.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/data/AdUnitData\n*L\n69#1:103,2\n*E\n"
.end annotation


# static fields
.field public static final s:Lcom/ironsource/x0$a;

.field public static final t:I = -0x1


# instance fields
.field private final a:Lcom/ironsource/g0;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/ironsource/ta;

.field private final f:Lcom/ironsource/A2;

.field private g:I

.field private final h:I

.field private i:Z

.field private final j:I

.field private final k:I

.field private final l:Lcom/ironsource/M0;

.field private final m:J

.field private final n:Z

.field private final o:Z

.field private final p:Z

.field private q:Z

.field private r:Lcom/ironsource/Eb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/x0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/x0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/x0;->s:Lcom/ironsource/x0$a;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/g0;ZLjava/lang/String;Ljava/util/List;Lcom/ironsource/ta;Lcom/ironsource/A2;IIZIILcom/ironsource/M0;JZZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/g0;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/ta;",
            "Lcom/ironsource/A2;",
            "IIZII",
            "Lcom/ironsource/M0;",
            "JZZZZ)V"
        }
    .end annotation

    const-string v0, "adProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "providerList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherDataHolder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionSettings"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadingData"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/x0;->a:Lcom/ironsource/g0;

    .line 3
    iput-boolean p2, p0, Lcom/ironsource/x0;->b:Z

    .line 4
    iput-object p3, p0, Lcom/ironsource/x0;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/ironsource/x0;->d:Ljava/util/List;

    .line 6
    iput-object p5, p0, Lcom/ironsource/x0;->e:Lcom/ironsource/ta;

    .line 7
    iput-object p6, p0, Lcom/ironsource/x0;->f:Lcom/ironsource/A2;

    .line 8
    iput p7, p0, Lcom/ironsource/x0;->g:I

    .line 9
    iput p8, p0, Lcom/ironsource/x0;->h:I

    .line 10
    iput-boolean p9, p0, Lcom/ironsource/x0;->i:Z

    .line 11
    iput p10, p0, Lcom/ironsource/x0;->j:I

    .line 12
    iput p11, p0, Lcom/ironsource/x0;->k:I

    .line 13
    iput-object p12, p0, Lcom/ironsource/x0;->l:Lcom/ironsource/M0;

    move-wide p1, p13

    .line 14
    iput-wide p1, p0, Lcom/ironsource/x0;->m:J

    move/from16 p1, p15

    .line 15
    iput-boolean p1, p0, Lcom/ironsource/x0;->n:Z

    move/from16 p1, p16

    .line 16
    iput-boolean p1, p0, Lcom/ironsource/x0;->o:Z

    move/from16 p1, p17

    .line 17
    iput-boolean p1, p0, Lcom/ironsource/x0;->p:Z

    move/from16 p1, p18

    .line 18
    iput-boolean p1, p0, Lcom/ironsource/x0;->q:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/g0;ZLjava/lang/String;Ljava/util/List;Lcom/ironsource/ta;Lcom/ironsource/A2;IIZIILcom/ironsource/M0;JZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    const/high16 v0, 0x10000

    and-int v0, p19, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move/from16 v19, v0

    goto :goto_0

    :cond_0
    move/from16 v19, p18

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-wide/from16 v14, p13

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    .line 19
    invoke-direct/range {v1 .. v19}, Lcom/ironsource/x0;-><init>(Lcom/ironsource/g0;ZLjava/lang/String;Ljava/util/List;Lcom/ironsource/ta;Lcom/ironsource/A2;IIZIILcom/ironsource/M0;JZZZZ)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/ironsource/x0;->k:I

    return v0
.end method

.method public a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;
    .locals 2

    const-string v0, "providerSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/ironsource/x0;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/x0;->c:Ljava/lang/String;

    .line 77
    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->createAdDataForNetworkAdapter(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    move-result-object p1

    const-string v0, "createAdDataForNetworkAdapter(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;
    .locals 3

    const-string v0, "instanceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/ironsource/x0;->d:Ljava/util/List;

    .line 39
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 40
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 75
    :goto_0
    check-cast v1, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    return-object v1
.end method

.method public final a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ironsource/x0;->g:I

    return-void
.end method

.method public final a(Lcom/ironsource/Eb;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ironsource/x0;->r:Lcom/ironsource/Eb;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/x0;->i:Z

    return-void
.end method

.method public b()Lcom/ironsource/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/x0;->a:Lcom/ironsource/g0;

    return-object v0
.end method

.method public abstract b(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lorg/json/JSONObject;
.end method

.method public final b(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/x0;->q:Z

    return-void
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/x0;->i:Z

    return v0
.end method

.method public final e()Lcom/ironsource/A2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/x0;->f:Lcom/ironsource/A2;

    return-object v0
.end method

.method public final f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/x0;->m:J

    return-wide v0
.end method

.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/x0;->j:I

    return v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/x0;->h:I

    return v0
.end method

.method public final i()Lcom/ironsource/Eb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/x0;->r:Lcom/ironsource/Eb;

    return-object v0
.end method

.method public final j()Lcom/ironsource/M0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/x0;->l:Lcom/ironsource/M0;

    return-object v0
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public final l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/x0;->g:I

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->f()Lcom/ironsource/md;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/x0;->d:Ljava/util/List;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/x0;->n:Z

    return v0
.end method

.method public final p()Lcom/ironsource/ta;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/x0;->e:Lcom/ironsource/ta;

    return-object v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/x0;->p:Z

    return v0
.end method

.method public final r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/x0;->q:Z

    return v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/x0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/x0;->o:Z

    return v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/x0;->f:Lcom/ironsource/A2;

    invoke-virtual {v0}, Lcom/ironsource/A2;->g()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/x0;->b:Z

    return v0
.end method

.method public final w()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/ironsource/x0;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6
    iget-boolean v1, p0, Lcom/ironsource/x0;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 8
    iget-boolean v1, p0, Lcom/ironsource/x0;->q:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v4, "bidderExclusive"

    const-string v6, "showPriorityEnabled"

    const-string v2, "parallelLoad"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 9
    const-string v2, "%s: %d, %s: %b, %s: %b"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/ironsource/x0;->r:Lcom/ironsource/Eb;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ironsource/Eb;->b()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", loadGrace: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    :cond_0
    const-string v1, "element"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
