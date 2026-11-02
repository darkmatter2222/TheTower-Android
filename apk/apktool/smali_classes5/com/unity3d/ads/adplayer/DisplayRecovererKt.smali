.class public final Lcom/unity3d/ads/adplayer/DisplayRecovererKt;
.super Ljava/lang/Object;
.source "DisplayRecoverer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisplayRecoverer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayRecoverer.kt\ncom/unity3d/ads/adplayer/DisplayRecovererKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,250:1\n1#2:251\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "displayRecovererFactory",
        "Lcom/unity3d/ads/adplayer/DisplayRecovererFactory;",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "focusRepository",
        "Lcom/unity3d/ads/core/data/repository/FocusRepository;",
        "sendDiagnosticEvent",
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "context",
        "Landroid/content/Context;",
        "orientationRepository",
        "Lcom/unity3d/ads/core/data/repository/OrientationRepository;",
        "unity-ads_defaultRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$pylv0vPMP7jFJln2FCfzKPdVeko(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/FocusRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/OrientationRepository;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/adplayer/AndroidShowOptions;Lkotlinx/coroutines/CoroutineScope;)Lcom/unity3d/ads/adplayer/DisplayRecoverer;
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/unity3d/ads/adplayer/DisplayRecovererKt;->displayRecovererFactory$lambda$1(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/FocusRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/OrientationRepository;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/adplayer/AndroidShowOptions;Lkotlinx/coroutines/CoroutineScope;)Lcom/unity3d/ads/adplayer/DisplayRecoverer;

    move-result-object p0

    return-object p0
.end method

.method public static final displayRecovererFactory(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/FocusRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/OrientationRepository;)Lcom/unity3d/ads/adplayer/DisplayRecovererFactory;
    .locals 7

    const-string v0, "sessionRepository"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientationRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/unity3d/ads/adplayer/DisplayRecovererKt$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/unity3d/ads/adplayer/DisplayRecovererKt$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/FocusRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/OrientationRepository;)V

    return-object v1
.end method

.method private static final displayRecovererFactory$lambda$1(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/FocusRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/OrientationRepository;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/adplayer/AndroidShowOptions;Lkotlinx/coroutines/CoroutineScope;)Lcom/unity3d/ads/adplayer/DisplayRecoverer;
    .locals 11

    move-object/from16 v0, p8

    const-string v1, "opportunityId"

    move-object/from16 v3, p5

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "showOptions"

    move-object/from16 v10, p7

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scope"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-interface {p0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v1

    invoke-virtual {v1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->getRecoverFullscreenDisplayEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_0
    new-instance v2, Lcom/unity3d/ads/adplayer/DisplayRecoverer;

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    move-object/from16 v4, p6

    invoke-direct/range {v2 .. v10}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/FocusRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/OrientationRepository;Lcom/unity3d/ads/adplayer/AndroidShowOptions;)V

    .line 59
    invoke-virtual {v2, v0}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->start(Lkotlinx/coroutines/CoroutineScope;)V

    return-object v2
.end method
