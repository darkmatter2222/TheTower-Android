.class public final Lcom/unity3d/ads/core/domain/AndroidShow;
.super Ljava/lang/Object;
.source "AndroidShow.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/Show;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u0018H\u0096@\u00a2\u0006\u0002\u0010\u001dR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/AndroidShow;",
        "Lcom/unity3d/ads/core/domain/Show;",
        "context",
        "Landroid/content/Context;",
        "adRepository",
        "Lcom/unity3d/ads/core/data/repository/AdRepository;",
        "gameServerIdReader",
        "Lcom/unity3d/ads/core/configuration/GameServerIdReader;",
        "sendDiagnosticEvent",
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "validateExtrasSize",
        "Lcom/unity3d/ads/core/domain/ValidateExtrasSize;",
        "handleGatewayAdResponse",
        "Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;",
        "preShowStrategy",
        "Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;",
        "accelerometerRepository",
        "Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;",
        "<init>",
        "(Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/configuration/GameServerIdReader;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/ValidateExtrasSize;Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;)V",
        "invoke",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/unity3d/ads/core/data/model/ShowEvent;",
        "adObject",
        "Lcom/unity3d/ads/core/data/model/AdObject;",
        "showOptions",
        "Lcom/unity3d/ads/UnityAdsShowOptions;",
        "terminate",
        "",
        "(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final accelerometerRepository:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;

.field private final adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

.field private final context:Landroid/content/Context;

.field private final gameServerIdReader:Lcom/unity3d/ads/core/configuration/GameServerIdReader;

.field private final handleGatewayAdResponse:Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;

.field private final preShowStrategy:Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

.field private final validateExtrasSize:Lcom/unity3d/ads/core/domain/ValidateExtrasSize;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/configuration/GameServerIdReader;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/ValidateExtrasSize;Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gameServerIdReader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validateExtrasSize"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleGatewayAdResponse"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preShowStrategy"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accelerometerRepository"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidShow;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidShow;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    .line 30
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidShow;->gameServerIdReader:Lcom/unity3d/ads/core/configuration/GameServerIdReader;

    .line 31
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidShow;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 32
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/AndroidShow;->validateExtrasSize:Lcom/unity3d/ads/core/domain/ValidateExtrasSize;

    .line 33
    iput-object p6, p0, Lcom/unity3d/ads/core/domain/AndroidShow;->handleGatewayAdResponse:Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;

    .line 34
    iput-object p7, p0, Lcom/unity3d/ads/core/domain/AndroidShow;->preShowStrategy:Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;

    .line 35
    iput-object p8, p0, Lcom/unity3d/ads/core/domain/AndroidShow;->accelerometerRepository:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;

    return-void
.end method

.method public static final synthetic access$getAccelerometerRepository$p(Lcom/unity3d/ads/core/domain/AndroidShow;)Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidShow;->accelerometerRepository:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;

    return-object p0
.end method

.method public static final synthetic access$getAdRepository$p(Lcom/unity3d/ads/core/domain/AndroidShow;)Lcom/unity3d/ads/core/data/repository/AdRepository;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidShow;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/unity3d/ads/core/domain/AndroidShow;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidShow;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getGameServerIdReader$p(Lcom/unity3d/ads/core/domain/AndroidShow;)Lcom/unity3d/ads/core/configuration/GameServerIdReader;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidShow;->gameServerIdReader:Lcom/unity3d/ads/core/configuration/GameServerIdReader;

    return-object p0
.end method

.method public static final synthetic access$getHandleGatewayAdResponse$p(Lcom/unity3d/ads/core/domain/AndroidShow;)Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidShow;->handleGatewayAdResponse:Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;

    return-object p0
.end method

.method public static final synthetic access$getPreShowStrategy$p(Lcom/unity3d/ads/core/domain/AndroidShow;)Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidShow;->preShowStrategy:Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;

    return-object p0
.end method

.method public static final synthetic access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/AndroidShow;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidShow;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    return-object p0
.end method

.method public static final synthetic access$getValidateExtrasSize$p(Lcom/unity3d/ads/core/domain/AndroidShow;)Lcom/unity3d/ads/core/domain/ValidateExtrasSize;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidShow;->validateExtrasSize:Lcom/unity3d/ads/core/domain/ValidateExtrasSize;

    return-object p0
.end method


# virtual methods
.method public invoke(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/UnityAdsShowOptions;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lcom/unity3d/ads/UnityAdsShowOptions;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/unity3d/ads/core/data/model/ShowEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "adObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/AndroidShow;Lcom/unity3d/ads/UnityAdsShowOptions;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public terminate(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdObject;->getAdPlayer()Lcom/unity3d/ads/adplayer/AdPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/unity3d/ads/adplayer/AdPlayer;->destroy(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 114
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
