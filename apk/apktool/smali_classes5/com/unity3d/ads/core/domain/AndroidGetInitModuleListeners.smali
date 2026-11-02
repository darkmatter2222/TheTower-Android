.class public final Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;
.super Ljava/lang/Object;
.source "AndroidGetInitModuleListeners.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetInitModuleListeners;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0096\u0002J\u000e\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R!\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;",
        "Lcom/unity3d/ads/core/domain/GetInitModuleListeners;",
        "sendDiagnosticEvent",
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "logger",
        "Lcom/unity3d/ads/core/log/Logger;",
        "classLoader",
        "Ljava/lang/ClassLoader;",
        "<init>",
        "(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/log/Logger;Ljava/lang/ClassLoader;)V",
        "moduleListeners",
        "",
        "Lcom/unity3d/ads/UnityAdsInitModuleListener;",
        "getModuleListeners",
        "()Ljava/util/List;",
        "moduleListeners$delegate",
        "Lkotlin/Lazy;",
        "invoke",
        "discover",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private final moduleListeners$delegate:Lkotlin/Lazy;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;


# direct methods
.method public static synthetic $r8$lambda$hojgLS4zkmtg6ytEUzmpYZqbvKU(Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;->moduleListeners_delegate$lambda$0(Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/log/Logger;Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 20
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;->logger:Lcom/unity3d/ads/core/log/Logger;

    .line 21
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;->classLoader:Ljava/lang/ClassLoader;

    .line 24
    new-instance p1, Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;->moduleListeners$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/log/Logger;Ljava/lang/ClassLoader;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 21
    const-class p3, Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;-><init>(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/log/Logger;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private final discover()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unity3d/ads/UnityAdsInitModuleListener;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 29
    sget-object v0, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v0}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v2

    .line 30
    iget-object v4, v1, Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    sget-object v5, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_DISCOVERY_STARTED:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    const/16 v13, 0xfe

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v4 .. v14}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 33
    :try_start_0
    const-class v0, Lcom/unity3d/ads/UnityAdsInitModuleListener;

    iget-object v5, v1, Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v5}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-string v0, "iterator(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 36
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v6, "next(...)"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 38
    :try_start_2
    iget-object v6, v1, Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v7, "Failed to load an init module listener"

    invoke-interface {v6, v7, v0}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 42
    iget-object v5, v1, Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v6, "Init module listener discovery failed"

    invoke-interface {v5, v6, v0}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    :cond_0
    iget-object v7, v1, Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 45
    sget-object v8, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_DISCOVERY_COMPLETED_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    .line 46
    invoke-static {v2, v3}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 47
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "module_count"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v11

    const/16 v16, 0xf4

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 44
    invoke-static/range {v7 .. v17}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V

    return-object v4
.end method

.method private final getModuleListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unity3d/ads/UnityAdsInitModuleListener;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;->moduleListeners$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static final moduleListeners_delegate$lambda$0(Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;)Ljava/util/List;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;->discover()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public invoke()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unity3d/ads/UnityAdsInitModuleListener;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;->getModuleListeners()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
