.class public Lcom/ironsource/If;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/If$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ironsource/mediationsdk/IronSource$a;",
            "Lcom/ironsource/r0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ironsource/If;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/ironsource/x0;I)Lcom/ironsource/Q0;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ironsource/If;->a(Lcom/ironsource/x0;)Lcom/ironsource/r0;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/x0;->n()Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-virtual {v0, v1, p0, p1}, Lcom/ironsource/r0;->a(Ljava/lang/String;Ljava/util/List;I)Lcom/ironsource/Q0;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/ironsource/ia;
    .locals 1

    .line 10
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->g()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->m()Lcom/ironsource/ia;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/ironsource/x0;)Lcom/ironsource/r0;
    .locals 2

    .line 5
    sget-object v0, Lcom/ironsource/If;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/r0;

    return-object p0

    .line 8
    :cond_0
    new-instance v1, Lcom/ironsource/r0;

    invoke-direct {v1}, Lcom/ironsource/r0;-><init>()V

    .line 9
    invoke-virtual {p0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static a(Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/unity3d/mediation/LevelPlay$AdFormat;
    .locals 1

    .line 56
    sget-object v0, Lcom/ironsource/If$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_0
    sget-object p0, Lcom/unity3d/mediation/LevelPlay$AdFormat;->BANNER:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    return-object p0

    .line 64
    :cond_1
    sget-object p0, Lcom/unity3d/mediation/LevelPlay$AdFormat;->NATIVE_AD:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    return-object p0

    .line 65
    :cond_2
    sget-object p0, Lcom/unity3d/mediation/LevelPlay$AdFormat;->INTERSTITIAL:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    return-object p0

    .line 66
    :cond_3
    sget-object p0, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    return-object p0
.end method

.method public static a(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/ironsource/If$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 51
    const-string p0, ""

    return-object p0

    .line 52
    :cond_0
    const-string p0, "nativeAd"

    return-object p0

    .line 53
    :cond_1
    const-string p0, "banner"

    return-object p0

    .line 54
    :cond_2
    const-string p0, "interstitial"

    return-object p0

    .line 55
    :cond_3
    const-string p0, "rewarded"

    return-object p0
.end method

.method public static a(Lcom/ironsource/D5;Lorg/json/JSONObject;)V
    .locals 3

    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Z)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x2

    .line 32
    new-array v2, v2, [Lorg/json/JSONObject;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/ironsource/pa;->a([Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 33
    new-instance v0, Lcom/ironsource/C5;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 34
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object p0

    invoke-interface {p0}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    return-void
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 3

    .line 21
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 22
    const-string v2, "Exception"

    invoke-virtual {v0, v1, v2, p0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 25
    :try_start_0
    const-string v1, "reason"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 27
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 28
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 30
    :goto_0
    sget-object p0, Lcom/ironsource/D5;->R3:Lcom/ironsource/D5;

    invoke-static {p0, v0}, Lcom/ironsource/If;->a(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 3

    .line 11
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 12
    const-string v2, "SafeRunnable"

    invoke-virtual {v0, v1, v2, p0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 15
    :try_start_0
    const-string v1, "reason"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 17
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 18
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 20
    :goto_0
    sget-object p0, Lcom/ironsource/D5;->Q3:Lcom/ironsource/D5;

    invoke-static {p0, v0}, Lcom/ironsource/If;->a(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/lang/String;)Z
    .locals 2

    .line 35
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 36
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterSettingsInterface;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterSettingsInterface;

    .line 39
    invoke-static {p1}, Lcom/ironsource/If;->a(Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterSettingsInterface;->isUsingActivityBeforeImpression(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " - is using activity before impression and activity is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/If$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/ironsource/If$b;

    invoke-direct {v0, p0}, Lcom/ironsource/If$b;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;)V

    return-object v0
.end method

.method public static b(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Lcom/ironsource/mediationsdk/IronSource$a;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v1, Lcom/ironsource/If$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    return-object v0

    .line 10
    :cond_1
    sget-object p0, Lcom/ironsource/mediationsdk/IronSource$a;->e:Lcom/ironsource/mediationsdk/IronSource$a;

    return-object p0

    .line 11
    :cond_2
    sget-object p0, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    return-object p0

    .line 12
    :cond_3
    sget-object p0, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    return-object p0

    .line 13
    :cond_4
    sget-object p0, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    return-object p0
.end method

.method public static c(Lcom/ironsource/mediationsdk/IronSource$a;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/If$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 11
    sget-object p0, Lcom/ironsource/r3$e;->b:Lcom/ironsource/r3$e;

    invoke-virtual {p0}, Lcom/ironsource/r3$e;->b()I

    move-result p0

    return p0

    .line 12
    :cond_0
    sget-object p0, Lcom/ironsource/r3$e;->f:Lcom/ironsource/r3$e;

    invoke-virtual {p0}, Lcom/ironsource/r3$e;->b()I

    move-result p0

    return p0

    .line 13
    :cond_1
    sget-object p0, Lcom/ironsource/r3$e;->e:Lcom/ironsource/r3$e;

    invoke-virtual {p0}, Lcom/ironsource/r3$e;->b()I

    move-result p0

    return p0

    .line 14
    :cond_2
    sget-object p0, Lcom/ironsource/r3$e;->c:Lcom/ironsource/r3$e;

    invoke-virtual {p0}, Lcom/ironsource/r3$e;->b()I

    move-result p0

    return p0

    .line 15
    :cond_3
    sget-object p0, Lcom/ironsource/r3$e;->d:Lcom/ironsource/r3$e;

    invoke-virtual {p0}, Lcom/ironsource/r3$e;->b()I

    move-result p0

    return p0
.end method
