.class public Lcom/applovin/impl/l6;
.super Lcom/applovin/impl/n5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/l6$b;
    }
.end annotation


# static fields
.field private static final o:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final g:Lcom/applovin/impl/e3;

.field private final h:Lorg/json/JSONObject;

.field private final i:Ljava/util/List;

.field private final j:Lcom/applovin/impl/mediation/ads/a$a;

.field private final k:Ljava/lang/ref/WeakReference;

.field private final l:Ljava/lang/String;

.field private m:J

.field private final n:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$DGpi0EkcN8UgDGAh_Pqiz7Lgjwg(Lcom/applovin/impl/l6;Ljava/lang/String;Lcom/applovin/impl/c3;Landroid/app/Activity;Lcom/applovin/mediation/MaxAdFormat;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/l6;->a(Ljava/lang/String;Lcom/applovin/impl/c3;Landroid/app/Activity;Lcom/applovin/mediation/MaxAdFormat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X_MkBsGNutTOwiHLwNqaplyZC68(Lcom/applovin/impl/l6;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/l6;->b(Lcom/applovin/mediation/MaxError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wwGQ2K-KJZbWteO8FK_wGzpX11M(Lcom/applovin/impl/l6;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/l6;->e()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/applovin/impl/l6;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/e3;Lorg/json/JSONObject;Landroid/content/Context;Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/applovin/impl/e3;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskProcessMediationWaterfallV2"

    invoke-direct {p0, v1, p4, v0}, Lcom/applovin/impl/n5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/l;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/l6;->g:Lcom/applovin/impl/e3;

    .line 4
    iput-object p2, p0, Lcom/applovin/impl/l6;->h:Lorg/json/JSONObject;

    .line 5
    iput-object p5, p0, Lcom/applovin/impl/l6;->j:Lcom/applovin/impl/mediation/ads/a$a;

    .line 6
    new-instance p5, Ljava/lang/ref/WeakReference;

    invoke-direct {p5, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p5, p0, Lcom/applovin/impl/l6;->k:Ljava/lang/ref/WeakReference;

    .line 8
    const-string p3, "mcode"

    const-string p5, ""

    invoke-static {p2, p3, p5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/applovin/impl/l6;->l:Ljava/lang/String;

    .line 10
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    const-string p5, "ads"

    invoke-static {p2, p5, p3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p3

    .line 11
    new-instance p5, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {p5, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p5, p0, Lcom/applovin/impl/l6;->i:Ljava/util/List;

    const/4 p5, 0x0

    .line 12
    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p5, v0, :cond_0

    const/4 v0, 0x0

    .line 14
    invoke-static {p3, p5, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/applovin/impl/l6;->i:Ljava/util/List;

    invoke-static {p1, v0, p2, p4}, Lcom/applovin/impl/c3;->a(Lcom/applovin/impl/e3;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/c3;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/applovin/impl/l6;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/applovin/impl/l6;->n:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/l6;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    return-object p0
.end method

.method private a(I)V
    .locals 5

    .line 19
    iget-object v0, p0, Lcom/applovin/impl/l6;->g:Lcom/applovin/impl/e3;

    invoke-virtual {v0}, Lcom/applovin/impl/e3;->b()Ljava/lang/String;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/applovin/impl/l6;->g:Lcom/applovin/impl/e3;

    invoke-virtual {v1}, Lcom/applovin/impl/e3;->a()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/applovin/impl/l6;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v2, :cond_2

    .line 26
    iget-object v3, p0, Lcom/applovin/impl/l6;->i:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/c3;

    .line 27
    invoke-static {v3}, Lcom/applovin/impl/a4;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 29
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v4, "Loading ad for failover cache"

    invoke-virtual {p1, v2, v4}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->R()Lcom/applovin/impl/d3;

    move-result-object p1

    sget-object v2, Lcom/applovin/impl/h2;->J0:Lcom/applovin/impl/h2;

    invoke-virtual {p1, v2, v3}, Lcom/applovin/impl/d3;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/c3;)V

    .line 33
    invoke-direct {p0, v3, v0, v1}, Lcom/applovin/impl/l6;->a(Lcom/applovin/impl/c3;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;)V

    return-void

    .line 40
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v3, "No available ad in waterfall for failover cache"

    invoke-virtual {p1, v2, v3}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_3
    const-string p1, "ad_unit_id"

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 43
    invoke-virtual {v1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_format"

    invoke-static {v1, v0, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 44
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->R()Lcom/applovin/impl/d3;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/h2;->I0:Lcom/applovin/impl/h2;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/i2;->d(Lcom/applovin/impl/h2;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/c3;I)V
    .locals 10

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->c0()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/q;->c(Lcom/applovin/impl/c3;)V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/l6;->m:J

    sub-long v6, v0, v2

    .line 7
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Waterfall loaded in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/impl/o3;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/l6;->g:Lcom/applovin/impl/e3;

    invoke-virtual {v3}, Lcom/applovin/impl/e3;->a()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ad unit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/l6;->g:Lcom/applovin/impl/e3;

    invoke-virtual {v3}, Lcom/applovin/impl/e3;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    new-instance v4, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;

    iget-object v8, p0, Lcom/applovin/impl/l6;->n:Ljava/util/List;

    iget-object v9, p0, Lcom/applovin/impl/l6;->l:Ljava/lang/String;

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;-><init>(Lcom/applovin/impl/c3;JLjava/util/List;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/applovin/impl/c3;->a(Lcom/applovin/mediation/MaxAdWaterfallInfo;)V

    .line 11
    iget-object p1, p0, Lcom/applovin/impl/l6;->j:Lcom/applovin/impl/mediation/ads/a$a;

    invoke-static {p1, v5}, Lcom/applovin/impl/x2;->f(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    .line 14
    iget-object p1, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    sget-object v0, Lcom/applovin/impl/v3;->T8:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {v5}, Lcom/applovin/impl/c3;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/mediation/MaxAdFormat;->isFullscreenAd()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    invoke-static {v5}, Lcom/applovin/impl/a4;->b(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 18
    invoke-direct {p0, p2}, Lcom/applovin/impl/l6;->a(I)V

    :cond_1
    return-void
.end method

.method private a(Lcom/applovin/impl/c3;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;)V
    .locals 8

    .line 45
    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/g3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/g3;->a(Z)V

    .line 47
    iget-object v0, p0, Lcom/applovin/impl/l6;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 48
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->w0()Landroid/app/Activity;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 52
    new-instance v0, Lcom/applovin/impl/x6;

    iget-object v7, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    new-instance v1, Lcom/applovin/impl/l6$$ExternalSyntheticLambda2;

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/l6$$ExternalSyntheticLambda2;-><init>(Lcom/applovin/impl/l6;Ljava/lang/String;Lcom/applovin/impl/c3;Landroid/app/Activity;Lcom/applovin/mediation/MaxAdFormat;)V

    const-string p1, "loadFailoverAd"

    invoke-direct {v0, v7, p1, v1}, Lcom/applovin/impl/x6;-><init>(Lcom/applovin/impl/sdk/l;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 78
    iget-object p1, v2, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->s0()Lcom/applovin/impl/i6;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/i6$b;->e:Lcom/applovin/impl/i6$b;

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/l6;Lcom/applovin/impl/c3;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/l6;->a(Lcom/applovin/impl/c3;I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/l6;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/applovin/impl/l6;->a(Lcom/applovin/mediation/MaxError;)V

    return-void
.end method

.method private a(Lcom/applovin/mediation/MaxError;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/applovin/impl/l6;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    iget-object v3, v0, Lcom/applovin/impl/l6;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/mediation/MaxNetworkResponseInfo;

    .line 83
    invoke-interface {v4}, Lcom/applovin/mediation/MaxNetworkResponseInfo;->getAdLoadState()Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;

    move-result-object v5

    sget-object v6, Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;->FAILED_TO_LOAD:Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;

    if-ne v5, v6, :cond_0

    .line 85
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "======FAILED AD LOADS======\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 94
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 96
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/applovin/mediation/MaxNetworkResponseInfo;

    add-int/lit8 v4, v4, 0x1

    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Lcom/applovin/mediation/MaxNetworkResponseInfo;->getMediatedNetwork()Lcom/applovin/mediation/MaxMediatedNetworkInfo;

    move-result-object v7

    invoke-interface {v7}, Lcom/applovin/mediation/MaxMediatedNetworkInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 98
    const-string v7, "\n..code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 99
    invoke-interface {v5}, Lcom/applovin/mediation/MaxNetworkResponseInfo;->getError()Lcom/applovin/mediation/MaxError;

    move-result-object v7

    invoke-interface {v7}, Lcom/applovin/mediation/MaxError;->getCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 100
    const-string v7, "\n..message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 101
    invoke-interface {v5}, Lcom/applovin/mediation/MaxNetworkResponseInfo;->getError()Lcom/applovin/mediation/MaxError;

    move-result-object v5

    invoke-interface {v5}, Lcom/applovin/mediation/MaxError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 102
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 105
    :cond_2
    move-object v2, v1

    check-cast v2, Lcom/applovin/impl/mediation/MaxErrorImpl;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/applovin/impl/mediation/MaxErrorImpl;->setAdLoadFailureInfo(Ljava/lang/String;)V

    .line 108
    :cond_3
    iget-object v2, v0, Lcom/applovin/impl/l6;->g:Lcom/applovin/impl/e3;

    invoke-virtual {v2}, Lcom/applovin/impl/e3;->b()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/applovin/impl/l6;->m:J

    sub-long v11, v3, v5

    .line 110
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v4, v0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Waterfall failed in "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/applovin/impl/l6;->g:Lcom/applovin/impl/e3;

    invoke-virtual {v6}, Lcom/applovin/impl/e3;->a()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ad unit "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/applovin/impl/sdk/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_4
    iget-object v3, v0, Lcom/applovin/impl/l6;->h:Lorg/json/JSONObject;

    const-string v4, "mwf_info_urls"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v3

    .line 113
    move-object v4, v1

    check-cast v4, Lcom/applovin/impl/mediation/MaxErrorImpl;

    new-instance v7, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;

    iget-object v5, v0, Lcom/applovin/impl/l6;->h:Lorg/json/JSONObject;

    .line 114
    const-string v6, "waterfall_name"

    const-string v8, ""

    invoke-static {v5, v6, v8}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v5, v0, Lcom/applovin/impl/l6;->h:Lorg/json/JSONObject;

    .line 115
    const-string v6, "waterfall_test_name"

    invoke-static {v5, v6, v8}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v13, v0, Lcom/applovin/impl/l6;->n:Ljava/util/List;

    iget-object v14, v0, Lcom/applovin/impl/l6;->g:Lcom/applovin/impl/e3;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 119
    invoke-static {v3, v5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->optList(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    iget-object v3, v0, Lcom/applovin/impl/l6;->l:Ljava/lang/String;

    iget-object v5, v0, Lcom/applovin/impl/l6;->h:Lorg/json/JSONObject;

    .line 121
    const-string v6, "event_id"

    invoke-static {v5, v6, v8}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/4 v8, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v7 .. v17}, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;-><init>(Lcom/applovin/impl/c3;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/applovin/impl/e3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v4, v7}, Lcom/applovin/impl/mediation/MaxErrorImpl;->setWaterfall(Lcom/applovin/mediation/MaxAdWaterfallInfo;)V

    .line 132
    iget-object v3, v0, Lcom/applovin/impl/l6;->j:Lcom/applovin/impl/mediation/ads/a$a;

    invoke-static {v3, v2, v1}, Lcom/applovin/impl/x2;->a(Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Lcom/applovin/impl/c3;Landroid/app/Activity;Lcom/applovin/mediation/MaxAdFormat;)V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Z()Lcom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/l6$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p4}, Lcom/applovin/impl/l6$a;-><init>(Lcom/applovin/impl/l6;Lcom/applovin/impl/mediation/ads/a$a;Lcom/applovin/mediation/MaxAdFormat;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->loadThirdPartyMediatedAd(Ljava/lang/String;Lcom/applovin/impl/c3;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/l6;)Lcom/applovin/impl/sdk/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    return-object p0
.end method

.method private synthetic b(Lcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/applovin/impl/l6;->a(Lcom/applovin/mediation/MaxError;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/l6;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/l6;->n:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/l6;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/l6;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic e()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    .line 4
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->w0()Landroid/app/Activity;

    move-result-object v0

    .line 5
    const-string v1, "MAX SDK Not Initialized In Test Mode"

    const-string v2, "Test ads may not load. Please force close and restart the app if you experience issues."

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/u7;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic f(Lcom/applovin/impl/l6;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/impl/l6;)Lcom/applovin/impl/sdk/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/impl/l6;)Lcom/applovin/impl/sdk/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    return-object p0
.end method

.method static synthetic i(Lcom/applovin/impl/l6;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic j(Lcom/applovin/impl/l6;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/applovin/impl/l6;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic l(Lcom/applovin/impl/l6;)Lcom/applovin/impl/e3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/l6;->g:Lcom/applovin/impl/e3;

    return-object p0
.end method

.method static synthetic m(Lcom/applovin/impl/l6;)Lcom/applovin/impl/sdk/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    return-object p0
.end method

.method static synthetic n(Lcom/applovin/impl/l6;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/l6;->k:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic o(Lcom/applovin/impl/l6;)Lcom/applovin/impl/mediation/ads/a$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/l6;->j:Lcom/applovin/impl/mediation/ads/a$a;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/l6;->m:J

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/l6;->h:Lorg/json/JSONObject;

    const-string v1, "is_testing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->u0()Lcom/applovin/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/l7;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/applovin/impl/l6;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/applovin/impl/l6$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/applovin/impl/l6$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/l6;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/l6;->g:Lcom/applovin/impl/e3;

    invoke-virtual {v0}, Lcom/applovin/impl/e3;->b()Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/applovin/impl/l6;->g:Lcom/applovin/impl/e3;

    invoke-virtual {v1}, Lcom/applovin/impl/e3;->a()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    .line 14
    iget-object v3, p0, Lcom/applovin/impl/l6;->i:Ljava/util/List;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    const-string v4, " ad unit "

    if-nez v3, :cond_2

    .line 16
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v5, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Starting waterfall for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/l6;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ad(s)..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    new-instance v0, Lcom/applovin/impl/l6$b;

    iget-object v1, p0, Lcom/applovin/impl/l6;->i:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/applovin/impl/l6$b;-><init>(Lcom/applovin/impl/l6;ILjava/util/List;Lcom/applovin/impl/l6$a;)V

    .line 20
    iget-object v1, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->s0()Lcom/applovin/impl/i6;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;)V

    return-void

    .line 24
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v3, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No ads were returned from the server for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/p;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_3
    iget-object v2, p0, Lcom/applovin/impl/l6;->h:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/u7;->a(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)V

    .line 30
    iget-object v1, p0, Lcom/applovin/impl/l6;->h:Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "settings"

    invoke-static {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 31
    const-string v2, "alfdcs"

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v5

    .line 35
    iget-object v2, p0, Lcom/applovin/impl/l6;->h:Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v2, v0, v7}, Lcom/applovin/impl/a4;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Ad Unit ID "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is invalid or disabled.\nMake sure to use an Ad Unit ID from the MAX dashboard that is enabled and configured for the current application.\nFor more information, see https://support.axon.ai/en/max/getting-started#step-2-create-an-ad-unit\nNote: New ad units cannot load ads until 30-60 minutes after they are created"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v2, Lcom/applovin/impl/mediation/MaxErrorImpl;

    const/16 v7, -0x15e3

    invoke-direct {v2, v7, v0}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v0}, Lcom/applovin/impl/u7;->c(Lcom/applovin/impl/sdk/l;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    sget-object v7, Lcom/applovin/impl/c5;->L6:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v7}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    move-wide v5, v3

    goto :goto_0

    .line 51
    :cond_4
    new-instance v2, Lcom/applovin/impl/mediation/MaxErrorImpl;

    const/16 v0, 0xcc

    const-string v7, "MAX returned no eligible ads from any mediated networks for this app/device"

    invoke-direct {v2, v0, v7}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    :cond_5
    :goto_0
    cmp-long v0, v5, v3

    if-lez v0, :cond_7

    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 58
    new-instance v0, Lcom/applovin/impl/l6$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v2}, Lcom/applovin/impl/l6$$ExternalSyntheticLambda1;-><init>(Lcom/applovin/impl/l6;Lcom/applovin/mediation/MaxError;)V

    .line 61
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "alfdcs_iba"

    invoke-static {v1, v5, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 63
    iget-object v1, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v3, v4, v1, v0}, Lcom/applovin/impl/i0;->a(JLcom/applovin/impl/sdk/l;Ljava/lang/Runnable;)Lcom/applovin/impl/i0;

    return-void

    .line 67
    :cond_6
    invoke-static {v0, v3, v4}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 72
    :cond_7
    invoke-direct {p0, v2}, Lcom/applovin/impl/l6;->a(Lcom/applovin/mediation/MaxError;)V

    return-void
.end method
