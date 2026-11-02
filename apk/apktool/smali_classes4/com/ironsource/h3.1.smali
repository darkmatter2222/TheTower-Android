.class public final Lcom/ironsource/h3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Gb;
.implements Lcom/ironsource/L2;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBannerLoadTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BannerLoadTask.kt\ncom/unity3d/ironsourceads/internal/load/banners/BannerLoadTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,212:1\n1#2:213\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/unity3d/ironsourceads/banner/BannerAdRequest;

.field private final b:Lcom/unity3d/ironsourceads/AdSize;

.field private final c:Lcom/ironsource/x2;

.field private final d:Lcom/ironsource/Hb;

.field private final e:Lcom/ironsource/Ac;

.field private final f:Lcom/ironsource/r1;

.field private final g:Lcom/ironsource/U;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/U<",
            "Lcom/unity3d/ironsourceads/banner/BannerAdView;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/ironsource/O2;

.field private final i:Lcom/ironsource/ig$c;

.field private final j:Ljava/util/concurrent/Executor;

.field private k:Lcom/ironsource/l5;

.field private l:Lcom/ironsource/ig;

.field private m:Lcom/ironsource/g2;

.field private n:Z


# direct methods
.method public static synthetic $r8$lambda$4B9yqNPkv-KqzUWMDG6fTT9SNi0(Lcom/ironsource/h3;Lcom/ironsource/R9;Lcom/ironsource/k8;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ironsource/h3;->a(Lcom/ironsource/h3;Lcom/ironsource/R9;Lcom/ironsource/k8;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZgMEM0WnpSI6mvSL3ZHpOG5BuZU(Lcom/ironsource/h3;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/h3;->a(Lcom/ironsource/h3;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/ironsourceads/banner/BannerAdRequest;Lcom/unity3d/ironsourceads/AdSize;Lcom/ironsource/x2;Lcom/ironsource/Hb;Lcom/ironsource/Ac;Lcom/ironsource/r1;Lcom/ironsource/U;Lcom/ironsource/O2;Lcom/ironsource/ig$c;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ironsourceads/banner/BannerAdRequest;",
            "Lcom/unity3d/ironsourceads/AdSize;",
            "Lcom/ironsource/x2;",
            "Lcom/ironsource/Hb;",
            "Lcom/ironsource/Ac;",
            "Lcom/ironsource/r1;",
            "Lcom/ironsource/U<",
            "Lcom/unity3d/ironsourceads/banner/BannerAdView;",
            ">;",
            "Lcom/ironsource/O2;",
            "Lcom/ironsource/ig$c;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    const-string v0, "adRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionResponseFetcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadTaskConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkLoadApi"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadTaskListener"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLayoutFactory"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timerFactory"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskFinishedExecutor"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/h3;->a:Lcom/unity3d/ironsourceads/banner/BannerAdRequest;

    .line 3
    iput-object p2, p0, Lcom/ironsource/h3;->b:Lcom/unity3d/ironsourceads/AdSize;

    .line 4
    iput-object p3, p0, Lcom/ironsource/h3;->c:Lcom/ironsource/x2;

    .line 5
    iput-object p4, p0, Lcom/ironsource/h3;->d:Lcom/ironsource/Hb;

    .line 6
    iput-object p5, p0, Lcom/ironsource/h3;->e:Lcom/ironsource/Ac;

    .line 7
    iput-object p6, p0, Lcom/ironsource/h3;->f:Lcom/ironsource/r1;

    .line 8
    iput-object p7, p0, Lcom/ironsource/h3;->g:Lcom/ironsource/U;

    .line 9
    iput-object p8, p0, Lcom/ironsource/h3;->h:Lcom/ironsource/O2;

    .line 10
    iput-object p9, p0, Lcom/ironsource/h3;->i:Lcom/ironsource/ig$c;

    .line 11
    iput-object p10, p0, Lcom/ironsource/h3;->j:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/unity3d/ironsourceads/banner/BannerAdRequest;Lcom/unity3d/ironsourceads/AdSize;Lcom/ironsource/x2;Lcom/ironsource/Hb;Lcom/ironsource/Ac;Lcom/ironsource/r1;Lcom/ironsource/U;Lcom/ironsource/O2;Lcom/ironsource/ig$c;Ljava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p11

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_0

    .line 12
    new-instance v1, Lcom/ironsource/ig$d;

    invoke-direct {v1}, Lcom/ironsource/ig$d;-><init>()V

    move-object v11, v1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p9

    :goto_0
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    .line 13
    sget-object v0, Lcom/ironsource/V7;->a:Lcom/ironsource/V7;

    invoke-virtual {v0}, Lcom/ironsource/V7;->e()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    move-object v12, v0

    goto :goto_1

    :cond_1
    move-object/from16 v12, p10

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 14
    invoke-direct/range {v2 .. v12}, Lcom/ironsource/h3;-><init>(Lcom/unity3d/ironsourceads/banner/BannerAdRequest;Lcom/unity3d/ironsourceads/AdSize;Lcom/ironsource/x2;Lcom/ironsource/Hb;Lcom/ironsource/Ac;Lcom/ironsource/r1;Lcom/ironsource/U;Lcom/ironsource/O2;Lcom/ironsource/ig$c;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private final a(Landroid/os/Bundle;)V
    .locals 6

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    sget-object v0, Lcom/ironsource/V5;->a:Lcom/ironsource/V5;

    invoke-virtual {v0, p1}, Lcom/ironsource/V5;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/ironsource/k1$c;->a:Lcom/ironsource/k1$c$a;

    new-instance v4, Lcom/ironsource/n1$l;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/ironsource/n1$l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/ironsource/k1$c$a;->a(Lcom/ironsource/n1$l;)Lcom/ironsource/k1;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/ironsource/h3;->f:Lcom/ironsource/r1;

    invoke-interface {v1, v2}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static final a(Lcom/ironsource/h3;Lcom/ironsource/R9;Lcom/ironsource/k8;)V
    .locals 3

    .line 6
    iget-boolean v0, p0, Lcom/ironsource/h3;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/ironsource/h3;->n:Z

    .line 11
    iget-object v0, p0, Lcom/ironsource/h3;->l:Lcom/ironsource/ig;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ironsource/ig;->cancel()V

    .line 14
    :cond_1
    new-instance v0, Lcom/ironsource/n1$f;

    iget-object v1, p0, Lcom/ironsource/h3;->k:Lcom/ironsource/l5;

    if-nez v1, :cond_2

    const-string v1, "taskStartedTime"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_2
    invoke-static {v1}, Lcom/ironsource/l5;->a(Lcom/ironsource/l5;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/n1$f;-><init>(J)V

    .line 15
    sget-object v1, Lcom/ironsource/k1$c;->a:Lcom/ironsource/k1$c$a;

    invoke-virtual {v1, v0}, Lcom/ironsource/k1$c$a;->a(Lcom/ironsource/o1;)Lcom/ironsource/k1;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/h3;->f:Lcom/ironsource/r1;

    invoke-interface {v0, v1}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    .line 17
    iget-object v0, p0, Lcom/ironsource/h3;->m:Lcom/ironsource/g2;

    if-eqz v0, :cond_3

    const-string v1, "onBannerLoadSuccess"

    invoke-virtual {v0, v1}, Lcom/ironsource/g2;->c(Ljava/lang/String;)V

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/ironsource/h3;->h:Lcom/ironsource/O2;

    iget-object v1, p0, Lcom/ironsource/h3;->m:Lcom/ironsource/g2;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/ironsource/O2;->a(Lcom/ironsource/R9;Lcom/ironsource/k8;Lcom/ironsource/g2;)Lcom/unity3d/ironsourceads/banner/BannerAdView;

    move-result-object p1

    .line 20
    iget-object p0, p0, Lcom/ironsource/h3;->g:Lcom/ironsource/U;

    invoke-interface {p0, p1}, Lcom/ironsource/U;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/h3;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 6

    .line 42
    iget-boolean v0, p0, Lcom/ironsource/h3;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/ironsource/h3;->n:Z

    .line 47
    iget-object v0, p0, Lcom/ironsource/h3;->l:Lcom/ironsource/ig;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ironsource/ig;->cancel()V

    .line 49
    :cond_1
    sget-object v0, Lcom/ironsource/k1$c;->a:Lcom/ironsource/k1$c$a;

    .line 50
    new-instance v1, Lcom/ironsource/n1$j;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/ironsource/n1$j;-><init>(I)V

    .line 51
    new-instance v2, Lcom/ironsource/n1$k;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ironsource/n1$k;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance v3, Lcom/ironsource/n1$f;

    .line 53
    iget-object v4, p0, Lcom/ironsource/h3;->k:Lcom/ironsource/l5;

    if-nez v4, :cond_2

    const-string v4, "taskStartedTime"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_2
    invoke-static {v4}, Lcom/ironsource/l5;->a(Lcom/ironsource/l5;)J

    move-result-wide v4

    .line 54
    invoke-direct {v3, v4, v5}, Lcom/ironsource/n1$f;-><init>(J)V

    .line 55
    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/k1$c$a;->a(Lcom/ironsource/n1$j;Lcom/ironsource/n1$k;Lcom/ironsource/n1$f;)Lcom/ironsource/k1;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/ironsource/h3;->f:Lcom/ironsource/r1;

    invoke-interface {v0, v1}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    .line 62
    iget-object v0, p0, Lcom/ironsource/h3;->m:Lcom/ironsource/g2;

    if-eqz v0, :cond_3

    const-string v1, "onBannerLoadFail"

    invoke-virtual {v0, v1}, Lcom/ironsource/g2;->a(Ljava/lang/String;)V

    .line 64
    :cond_3
    iget-object p0, p0, Lcom/ironsource/h3;->g:Lcom/ironsource/U;

    invoke-interface {p0, p1}, Lcom/ironsource/U;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method private final a(Ljava/lang/Exception;)V
    .locals 3

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 66
    sget-object v0, Lcom/ironsource/k1$d;->a:Lcom/ironsource/k1$d$a;

    .line 67
    new-instance v1, Lcom/ironsource/n1$k;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ironsource/n1$k;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/ironsource/k1$d$a;->a(Lcom/ironsource/n1$k;)Lcom/ironsource/k1;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/ironsource/h3;->f:Lcom/ironsource/r1;

    invoke-interface {v0, v1}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    .line 71
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/h3;->j:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/ironsource/h3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/h3$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/h3;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 41
    invoke-direct {p0, p1}, Lcom/ironsource/h3;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public onBannerLoadFail(Ljava/lang/String;)V
    .locals 1

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    invoke-virtual {v0, p1}, Lcom/ironsource/z5;->c(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/h3;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public onBannerLoadSuccess(Lcom/ironsource/R9;Lcom/ironsource/k8;)V
    .locals 2

    const-string v0, "adInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/h3;->j:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/ironsource/h3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/h3$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/h3;Lcom/ironsource/R9;Lcom/ironsource/k8;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 19
    invoke-direct {p0, p1}, Lcom/ironsource/h3;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public start()V
    .locals 8

    .line 1
    new-instance v0, Lcom/ironsource/l5;

    invoke-direct {v0}, Lcom/ironsource/l5;-><init>()V

    iput-object v0, p0, Lcom/ironsource/h3;->k:Lcom/ironsource/l5;

    .line 3
    iget-object v0, p0, Lcom/ironsource/h3;->f:Lcom/ironsource/r1;

    .line 4
    new-instance v1, Lcom/ironsource/n1$s;

    iget-object v2, p0, Lcom/ironsource/h3;->d:Lcom/ironsource/Hb;

    invoke-virtual {v2}, Lcom/ironsource/Hb;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ironsource/n1$s;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v2, Lcom/ironsource/n1$n;

    iget-object v3, p0, Lcom/ironsource/h3;->d:Lcom/ironsource/Hb;

    invoke-virtual {v3}, Lcom/ironsource/Hb;->g()Lcom/ironsource/x9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/x9;->c()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/ironsource/n1$n;-><init>(I)V

    .line 6
    new-instance v3, Lcom/ironsource/n1$c;

    iget-object v4, p0, Lcom/ironsource/h3;->b:Lcom/unity3d/ironsourceads/AdSize;

    invoke-direct {v3, v4}, Lcom/ironsource/n1$c;-><init>(Lcom/unity3d/ironsourceads/AdSize;)V

    .line 7
    new-instance v4, Lcom/ironsource/n1$b;

    iget-object v5, p0, Lcom/ironsource/h3;->a:Lcom/unity3d/ironsourceads/banner/BannerAdRequest;

    invoke-virtual {v5}, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->getAdId$mediationsdk_release()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/ironsource/n1$b;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/ironsource/o1;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v2, 0x2

    aput-object v3, v5, v2

    const/4 v2, 0x3

    aput-object v4, v5, v2

    .line 8
    invoke-interface {v0, v5}, Lcom/ironsource/r1;->a([Lcom/ironsource/o1;)V

    .line 13
    sget-object v0, Lcom/ironsource/k1$c;->a:Lcom/ironsource/k1$c$a;

    invoke-virtual {v0}, Lcom/ironsource/k1$c$a;->a()Lcom/ironsource/k1;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/h3;->f:Lcom/ironsource/r1;

    invoke-interface {v0, v2}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    .line 15
    iget-object v0, p0, Lcom/ironsource/h3;->a:Lcom/unity3d/ironsourceads/banner/BannerAdRequest;

    invoke-virtual {v0}, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->getExtraParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/h3;->a(Landroid/os/Bundle;)V

    .line 17
    iget-object v0, p0, Lcom/ironsource/h3;->d:Lcom/ironsource/Hb;

    invoke-virtual {v0}, Lcom/ironsource/Hb;->h()J

    move-result-wide v2

    .line 19
    iget-object v0, p0, Lcom/ironsource/h3;->i:Lcom/ironsource/ig$c;

    .line 20
    new-instance v4, Lcom/ironsource/ig$b;

    invoke-direct {v4}, Lcom/ironsource/ig$b;-><init>()V

    invoke-virtual {v4, v2, v3}, Lcom/ironsource/ig$b;->b(J)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 21
    invoke-interface {v0, v4}, Lcom/ironsource/ig$c;->a(Lcom/ironsource/ig$b;)Lcom/ironsource/ig;

    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/ironsource/h3;->l:Lcom/ironsource/ig;

    if-eqz v0, :cond_0

    .line 28
    new-instance v2, Lcom/ironsource/h3$a;

    invoke-direct {v2, p0}, Lcom/ironsource/h3$a;-><init>(Lcom/ironsource/h3;)V

    .line 29
    invoke-interface {v0, v2}, Lcom/ironsource/ig;->a(Lcom/ironsource/ig$a;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/ironsource/h3;->c:Lcom/ironsource/x2;

    invoke-interface {v0}, Lcom/ironsource/x2;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 38
    :cond_1
    const-string v0, "null cannot be cast to non-null type com.unity3d.ironsourceads.internal.error.ISException"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/ironsource/f8;

    invoke-virtual {v2}, Lcom/ironsource/f8;->a()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/h3;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/4 v0, 0x0

    .line 39
    :goto_0
    check-cast v0, Lcom/ironsource/u2;

    if-nez v0, :cond_2

    return-void

    .line 44
    :cond_2
    iget-object v2, p0, Lcom/ironsource/h3;->f:Lcom/ironsource/r1;

    .line 45
    invoke-virtual {v0}, Lcom/ironsource/u2;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Lcom/ironsource/n1$d;

    invoke-direct {v4, v3}, Lcom/ironsource/n1$d;-><init>(Ljava/lang/String;)V

    new-array v3, v1, [Lcom/ironsource/o1;

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/ironsource/r1;->a([Lcom/ironsource/o1;)V

    .line 46
    :cond_3
    invoke-virtual {v0}, Lcom/ironsource/u2;->f()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v4, Lcom/ironsource/n1$m;

    invoke-direct {v4, v3}, Lcom/ironsource/n1$m;-><init>(Lorg/json/JSONObject;)V

    new-array v3, v1, [Lcom/ironsource/o1;

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/ironsource/r1;->a([Lcom/ironsource/o1;)V

    .line 47
    :cond_4
    invoke-virtual {v0}, Lcom/ironsource/u2;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 48
    new-instance v4, Lcom/ironsource/n1$g;

    invoke-direct {v4, v3}, Lcom/ironsource/n1$g;-><init>(Ljava/lang/String;)V

    new-array v1, v1, [Lcom/ironsource/o1;

    aput-object v4, v1, v6

    invoke-interface {v2, v1}, Lcom/ironsource/r1;->a([Lcom/ironsource/o1;)V

    .line 52
    :cond_5
    iget-object v1, p0, Lcom/ironsource/h3;->d:Lcom/ironsource/Hb;

    invoke-virtual {v1}, Lcom/ironsource/Hb;->g()Lcom/ironsource/x9;

    move-result-object v1

    .line 53
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 55
    new-instance v3, Lcom/ironsource/i8;

    .line 56
    iget-object v4, p0, Lcom/ironsource/h3;->b:Lcom/unity3d/ironsourceads/AdSize;

    invoke-virtual {v4}, Lcom/unity3d/ironsourceads/AdSize;->getWidth()I

    move-result v4

    invoke-static {v2, v4}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result v4

    .line 57
    iget-object v5, p0, Lcom/ironsource/h3;->b:Lcom/unity3d/ironsourceads/AdSize;

    invoke-virtual {v5}, Lcom/unity3d/ironsourceads/AdSize;->getHeight()I

    move-result v5

    invoke-static {v2, v5}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result v2

    .line 58
    iget-object v5, p0, Lcom/ironsource/h3;->b:Lcom/unity3d/ironsourceads/AdSize;

    invoke-virtual {v5}, Lcom/unity3d/ironsourceads/AdSize;->getSizeDescription()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-direct {v3, v4, v2, v5}, Lcom/ironsource/i8;-><init>(IILjava/lang/String;)V

    .line 64
    new-instance v2, Lcom/ironsource/Qc;

    invoke-direct {v2}, Lcom/ironsource/Qc;-><init>()V

    .line 65
    invoke-virtual {v2, p0}, Lcom/ironsource/Qc;->a(Lcom/ironsource/L2;)V

    .line 67
    new-instance v4, Lcom/ironsource/tc;

    invoke-direct {v4}, Lcom/ironsource/tc;-><init>()V

    invoke-virtual {v4}, Lcom/ironsource/tc;->a()Ljava/util/Map;

    move-result-object v4

    .line 68
    sget-object v5, Lcom/ironsource/V5;->a:Lcom/ironsource/V5;

    iget-object v6, p0, Lcom/ironsource/h3;->a:Lcom/unity3d/ironsourceads/banner/BannerAdRequest;

    invoke-virtual {v6}, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->getExtraParams()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ironsource/V5;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v5

    .line 70
    new-instance v6, Lcom/ironsource/S9;

    iget-object v7, p0, Lcom/ironsource/h3;->a:Lcom/unity3d/ironsourceads/banner/BannerAdRequest;

    invoke-virtual {v7}, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->getProviderName$mediationsdk_release()Lcom/ironsource/Jd;

    move-result-object v7

    invoke-interface {v7}, Lcom/ironsource/Jd;->value()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/ironsource/S9;-><init>(Ljava/lang/String;Lcom/ironsource/Oc;)V

    .line 71
    sget-object v2, Lcom/ironsource/x9;->d:Lcom/ironsource/x9;

    invoke-virtual {v1, v2}, Lcom/ironsource/x9;->b(Lcom/ironsource/x9;)Z

    move-result v2

    invoke-virtual {v6, v2}, Lcom/ironsource/S9;->a(Z)Lcom/ironsource/S9;

    move-result-object v2

    .line 72
    invoke-virtual {v2, v3}, Lcom/ironsource/S9;->a(Lcom/ironsource/i8;)Lcom/ironsource/S9;

    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/ironsource/h3;->d:Lcom/ironsource/Hb;

    invoke-virtual {v3}, Lcom/ironsource/Hb;->i()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ironsource/S9;->b(Z)Lcom/ironsource/S9;

    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/ironsource/h3;->a:Lcom/unity3d/ironsourceads/banner/BannerAdRequest;

    invoke-virtual {v3}, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->getAdId$mediationsdk_release()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/S9;->a(Ljava/lang/String;)Lcom/ironsource/S9;

    move-result-object v2

    .line 75
    invoke-static {v4, v5}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/S9;->a(Ljava/util/Map;)Lcom/ironsource/S9;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/ironsource/S9;->a()Lcom/ironsource/R9;

    move-result-object v2

    .line 78
    new-instance v3, Lcom/ironsource/Cc;

    iget-object v4, p0, Lcom/ironsource/h3;->d:Lcom/ironsource/Hb;

    invoke-virtual {v4}, Lcom/ironsource/Hb;->j()Z

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/ironsource/Cc;-><init>(Lcom/ironsource/u2;Z)V

    .line 81
    new-instance v4, Lcom/ironsource/w9;

    .line 82
    iget-object v5, p0, Lcom/ironsource/h3;->a:Lcom/unity3d/ironsourceads/banner/BannerAdRequest;

    invoke-virtual {v5}, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/ironsource/x9;->c()I

    move-result v1

    invoke-virtual {v0}, Lcom/ironsource/u2;->a()Ljava/lang/String;

    move-result-object v6

    .line 83
    invoke-direct {v4, v5, v1, v6}, Lcom/ironsource/w9;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    new-instance v1, Lcom/ironsource/g2;

    .line 88
    new-instance v5, Lcom/ironsource/mediationsdk/d;

    invoke-direct {v5}, Lcom/ironsource/mediationsdk/d;-><init>()V

    invoke-virtual {v0}, Lcom/ironsource/u2;->c()Lcom/ironsource/o2;

    move-result-object v0

    .line 89
    invoke-direct {v1, v4, v5, v0}, Lcom/ironsource/g2;-><init>(Lcom/ironsource/w9;Lcom/ironsource/mediationsdk/d;Lcom/ironsource/o2;)V

    .line 90
    iput-object v1, p0, Lcom/ironsource/h3;->m:Lcom/ironsource/g2;

    .line 94
    sget-object v0, Lcom/ironsource/k1$d;->a:Lcom/ironsource/k1$d$a;

    invoke-virtual {v0}, Lcom/ironsource/k1$d$a;->c()Lcom/ironsource/k1$b;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/h3;->f:Lcom/ironsource/r1;

    invoke-virtual {v0, v1}, Lcom/ironsource/k1$b;->a(Lcom/ironsource/r1;)V

    .line 96
    iget-object v0, p0, Lcom/ironsource/h3;->e:Lcom/ironsource/Ac;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v3}, Lcom/ironsource/Ac;->a(Lcom/ironsource/R9;Lcom/ironsource/Cc;)V

    return-void
.end method
