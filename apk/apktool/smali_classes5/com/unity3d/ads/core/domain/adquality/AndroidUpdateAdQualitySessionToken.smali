.class public final Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken;
.super Ljava/lang/Object;
.source "AndroidUpdateAdQualitySessionToken.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/adquality/UpdateAdQualitySessionToken;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0011\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken;",
        "Lcom/unity3d/ads/core/domain/adquality/UpdateAdQualitySessionToken;",
        "logger",
        "Lcom/unity3d/ads/core/log/Logger;",
        "adQualityVersionDataSource",
        "Lcom/unity3d/ads/core/data/datasource/AdQualityVersionDataSource;",
        "<init>",
        "(Lcom/unity3d/ads/core/log/Logger;Lcom/unity3d/ads/core/data/datasource/AdQualityVersionDataSource;)V",
        "invoke",
        "",
        "sessionToken",
        "Lcom/google/protobuf/ByteString;",
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
.field private final adQualityVersionDataSource:Lcom/unity3d/ads/core/data/datasource/AdQualityVersionDataSource;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;


# direct methods
.method public static synthetic $r8$lambda$INqn409Quq-51qy68vwUzruPnVM(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken;->invoke$lambda$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/log/Logger;Lcom/unity3d/ads/core/data/datasource/AdQualityVersionDataSource;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adQualityVersionDataSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken;->logger:Lcom/unity3d/ads/core/log/Logger;

    .line 14
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken;->adQualityVersionDataSource:Lcom/unity3d/ads/core/data/datasource/AdQualityVersionDataSource;

    return-void
.end method

.method private static final invoke$lambda$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad Quality SDK version "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " is below minimum 9.5.1, skipping session token update"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public invoke(Lcom/google/protobuf/ByteString;)V
    .locals 5

    const-string v0, "sessionToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken;->adQualityVersionDataSource:Lcom/unity3d/ads/core/data/datasource/AdQualityVersionDataSource;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/datasource/AdQualityVersionDataSource;->invoke()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    const-string v1, "9.5.1"

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/extensions/StringExtensionsKt;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 20
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v1, Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/unity3d/ads/core/log/Logger;->debug(Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 24
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getInstance()Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;

    move-result-object v0

    const-string v1, "uads_session_token"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v3}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64$default(Lcom/google/protobuf/ByteString;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 26
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "Ad Quality SDK setMetaData failed"

    invoke-interface {v0, v1, p1}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
