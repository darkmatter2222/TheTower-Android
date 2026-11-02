.class public final Lcom/unity3d/ads/gatewayclient/AndroidRequestUrlFactory;
.super Ljava/lang/Object;
.source "AndroidRequestUrlFactory.kt"

# interfaces
.implements Lcom/unity3d/ads/gatewayclient/RequestUrlFactory;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidRequestUrlFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidRequestUrlFactory.kt\ncom/unity3d/ads/gatewayclient/AndroidRequestUrlFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n295#2,2:48\n*S KotlinDebug\n*F\n+ 1 AndroidRequestUrlFactory.kt\ncom/unity3d/ads/gatewayclient/AndroidRequestUrlFactory\n*L\n25#1:48,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/unity3d/ads/gatewayclient/AndroidRequestUrlFactory;",
        "Lcom/unity3d/ads/gatewayclient/RequestUrlFactory;",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "<init>",
        "(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V",
        "getRequestUrl",
        "",
        "operationType",
        "Lcom/unity3d/ads/core/data/model/OperationType;",
        "defaultUrl",
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
.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V
    .locals 1

    const-string v0, "sessionRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/unity3d/ads/gatewayclient/AndroidRequestUrlFactory;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    return-void
.end method


# virtual methods
.method public getRequestUrl(Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "operationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Lcom/unity3d/ads/gatewayclient/AndroidRequestUrlFactoryKt;->access$getRequestUrlOverrideType(Lcom/unity3d/ads/core/data/model/OperationType;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 25
    iget-object v0, p0, Lcom/unity3d/ads/gatewayclient/AndroidRequestUrlFactory;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getRequestUrlOverrides()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 48
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    .line 26
    invoke-virtual {v3}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->getRequestType()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 25
    :goto_0
    check-cast v1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    if-eqz v1, :cond_2

    .line 27
    invoke-virtual {v1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    return-object v2

    :cond_4
    :goto_1
    if-nez p2, :cond_5

    .line 28
    const-string p1, ""

    return-object p1

    :cond_5
    return-object p2
.end method
