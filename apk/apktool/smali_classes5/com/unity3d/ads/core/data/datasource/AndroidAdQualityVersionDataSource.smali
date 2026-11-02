.class public final Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;
.super Ljava/lang/Object;
.source "AndroidAdQualityVersionDataSource.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/datasource/AdQualityVersionDataSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidAdQualityVersionDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidAdQualityVersionDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,31:1\n1#2:32\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0007H\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;",
        "Lcom/unity3d/ads/core/data/datasource/AdQualityVersionDataSource;",
        "logger",
        "Lcom/unity3d/ads/core/log/Logger;",
        "<init>",
        "(Lcom/unity3d/ads/core/log/Logger;)V",
        "cachedVersion",
        "",
        "getCachedVersion",
        "()Ljava/lang/String;",
        "cachedVersion$delegate",
        "Lkotlin/Lazy;",
        "invoke",
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
.field private final cachedVersion$delegate:Lkotlin/Lazy;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;


# direct methods
.method public static synthetic $r8$lambda$02iUUhi2T8ysqjlXgJJGtnNATnU(Ljava/lang/NoClassDefFoundError;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->cachedVersion_delegate$lambda$4$lambda$1(Ljava/lang/NoClassDefFoundError;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gH6kzcinAENbj3_NTMJA2s2RTz8(Ljava/lang/ClassNotFoundException;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->cachedVersion_delegate$lambda$4$lambda$2(Ljava/lang/ClassNotFoundException;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vN61vRs1MDkHNkmp8-AsMaphOnw(Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->cachedVersion_delegate$lambda$4(Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w18M6l4ARX9bO4fMkoVsPfEPTzE(Ljava/lang/NoSuchMethodError;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->cachedVersion_delegate$lambda$4$lambda$3(Ljava/lang/NoSuchMethodError;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/log/Logger;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->logger:Lcom/unity3d/ads/core/log/Logger;

    .line 10
    new-instance p1, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda3;-><init>(Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->cachedVersion$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final cachedVersion_delegate$lambda$4(Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 12
    :try_start_0
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 24
    iget-object p0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "Failed to get Ad Quality version"

    invoke-interface {p0, v2, v1}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 21
    iget-object p0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v2, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda2;-><init>(Ljava/lang/NoSuchMethodError;)V

    invoke-interface {p0, v2}, Lcom/unity3d/ads/core/log/Logger;->debug(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 18
    iget-object p0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v2, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda1;-><init>(Ljava/lang/ClassNotFoundException;)V

    invoke-interface {p0, v2}, Lcom/unity3d/ads/core/log/Logger;->debug(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 15
    iget-object p0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v2, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda0;-><init>(Ljava/lang/NoClassDefFoundError;)V

    invoke-interface {p0, v2}, Lcom/unity3d/ads/core/log/Logger;->debug(Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-object v0
.end method

.method private static final cachedVersion_delegate$lambda$4$lambda$1(Ljava/lang/NoClassDefFoundError;)Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad Quality SDK not available: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final cachedVersion_delegate$lambda$4$lambda$2(Ljava/lang/ClassNotFoundException;)Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad Quality SDK not available: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final cachedVersion_delegate$lambda$4$lambda$3(Ljava/lang/NoSuchMethodError;)Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad Quality SDK not available: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getCachedVersion()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->cachedVersion$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public invoke()Ljava/lang/String;
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->getCachedVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
