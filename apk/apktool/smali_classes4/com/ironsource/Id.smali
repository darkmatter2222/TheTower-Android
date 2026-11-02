.class public final Lcom/ironsource/Id;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Id$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/T0;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/Ec;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/ironsource/x0;

.field private final d:Lcom/ironsource/mediationsdk/IronSource$a;


# direct methods
.method public constructor <init>(Lcom/ironsource/T0;Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/util/List;Lcom/ironsource/x0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/T0;",
            "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
            "Ljava/util/List<",
            "Lcom/ironsource/Ec;",
            ">;",
            "Lcom/ironsource/x0;",
            ")V"
        }
    .end annotation

    const-string v0, "adUnitTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "providers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Id;->a:Lcom/ironsource/T0;

    .line 4
    iput-object p3, p0, Lcom/ironsource/Id;->b:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/ironsource/Id;->c:Lcom/ironsource/x0;

    .line 8
    invoke-direct {p0, p2}, Lcom/ironsource/Id;->a(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/Id;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/Id;)Lcom/ironsource/T0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ironsource/Id;->a:Lcom/ironsource/T0;

    return-object p0
.end method

.method private final a(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Lcom/ironsource/mediationsdk/IronSource$a;
    .locals 1

    .line 36
    sget-object v0, Lcom/ironsource/Id$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 40
    sget-object p1, Lcom/ironsource/mediationsdk/IronSource$a;->e:Lcom/ironsource/mediationsdk/IronSource$a;

    return-object p1

    .line 36
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 41
    :cond_1
    sget-object p1, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    return-object p1

    .line 42
    :cond_2
    sget-object p1, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    return-object p1

    .line 43
    :cond_3
    sget-object p1, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    return-object p1
.end method

.method public static final synthetic a(Lcom/ironsource/Id;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/Id;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)V

    return-void
.end method

.method private final a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)V
    .locals 2

    .line 19
    const-string v0, "Start initializing provider %s on thread %s"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/Id;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    .line 20
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, p3, v0, v1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->init(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V

    .line 21
    const-string p2, "Done initializing provider %s on thread %s"

    invoke-direct {p0, p2, p1}, Lcom/ironsource/Id;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .locals 3

    .line 22
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 23
    iget-object v1, p0, Lcom/ironsource/Id;->a:Lcom/ironsource/T0;

    .line 24
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 25
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x2

    .line 26
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 27
    invoke-static {v1, p1, p2, v2, p2}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/ironsource/Id;->a:Lcom/ironsource/T0;

    .line 30
    iget-object v2, p0, Lcom/ironsource/Id;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getProviderInstanceName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, p2, v2, v3}, Lcom/ironsource/yb;->a(Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    .line 35
    :cond_1
    iget-object p2, p0, Lcom/ironsource/Id;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isBidder(Lcom/ironsource/mediationsdk/IronSource$a;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->shouldEarlyInit(Z)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 3
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/Id;->a:Lcom/ironsource/T0;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v1, v2, v2, v3, v2}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/ironsource/Id;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/Ec;

    .line 7
    invoke-virtual {v2}, Lcom/ironsource/Ec;->f()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v3

    .line 10
    iget-object v4, p0, Lcom/ironsource/Id;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v3, v2, v4, v0}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v3

    .line 11
    invoke-direct {p0, v2, v3}, Lcom/ironsource/Id;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object v4, p0, Lcom/ironsource/Id;->c:Lcom/ironsource/x0;

    invoke-virtual {v4, v2}, Lcom/ironsource/x0;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    move-result-object v4

    .line 16
    sget-object v5, Lcom/ironsource/Jf;->a:Lcom/ironsource/Jf;

    .line 17
    new-instance v6, Lcom/ironsource/Id$b;

    invoke-direct {v6, p0, v2, v3, v4}, Lcom/ironsource/Id$b;-><init>(Lcom/ironsource/Id;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)V

    .line 18
    invoke-virtual {v5, v6}, Lcom/ironsource/Jf;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
