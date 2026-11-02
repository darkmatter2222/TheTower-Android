.class public final Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;
.super Ljava/lang/Object;
.source "FacebookNativeAdListener.kt"

# interfaces
.implements Lcom/facebook/ads/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u001a\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;",
        "Lcom/facebook/ads/NativeAdListener;",
        "context",
        "Landroid/content/Context;",
        "adOptionsPosition",
        "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;",
        "listener",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;",
        "<init>",
        "(Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;)V",
        "onMediaDownloaded",
        "",
        "ad",
        "Lcom/facebook/ads/Ad;",
        "onAdLoaded",
        "onError",
        "adError",
        "Lcom/facebook/ads/AdError;",
        "onLoggingImpression",
        "onAdClicked",
        "downloadIconAndSendLoadSuccess",
        "nativeAd",
        "Lcom/facebook/ads/NativeAd;",
        "sendLoadSuccess",
        "iconDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "Companion",
        "facebookadapter_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final Companion:Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$Companion;

.field private static final ICON_DOWNLOAD_TIMEOUT_SECONDS:J = 0x3L


# instance fields
.field private final adOptionsPosition:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;

.field private final context:Landroid/content/Context;

.field private final listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;


# direct methods
.method public static synthetic $r8$lambda$PF1UKrvpG5ITYZaC65Q8pFGfsek(Lcom/facebook/ads/NativeAd;Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;->downloadIconAndSendLoadSuccess$lambda$1(Lcom/facebook/ads/NativeAd;Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;->Companion:Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adOptionsPosition"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;->adOptionsPosition:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;

    .line 28
    iput-object p3, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;

    return-void
.end method

.method public static final synthetic access$sendLoadSuccess(Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;Lcom/facebook/ads/NativeAd;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;->sendLoadSuccess(Lcom/facebook/ads/NativeAd;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final downloadIconAndSendLoadSuccess(Lcom/facebook/ads/NativeAd;)V
    .locals 4

    .line 89
    new-instance v0, Lcom/ironsource/environment/workerthread/WorkerManager;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/environment/workerthread/WorkerManager;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 90
    new-instance v1, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/ads/NativeAd;Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/workerthread/WorkerManager;->addCallable(Ljava/util/concurrent/Callable;)V

    .line 101
    new-instance v1, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$downloadIconAndSendLoadSuccess$2;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$downloadIconAndSendLoadSuccess$2;-><init>(Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;Lcom/facebook/ads/NativeAd;)V

    check-cast v1, Lcom/ironsource/environment/workerthread/WorkerManager$WorkEndedListener;

    const-wide/16 v2, 0x3

    .line 112
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 101
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/ironsource/environment/workerthread/WorkerManager;->startWork(Lcom/ironsource/environment/workerthread/WorkerManager$WorkEndedListener;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static final downloadIconAndSendLoadSuccess$lambda$1(Lcom/facebook/ads/NativeAd;Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 91
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdBase$Image;->getUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 92
    :goto_0
    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, p0

    check-cast v1, Ljava/io/InputStream;

    .line 94
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 95
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p1, p1, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    check-cast v2, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private final sendLoadSuccess(Lcom/facebook/ads/NativeAd;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 116
    new-instance v0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdData;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdData;-><init>(Lcom/facebook/ads/NativeAd;Landroid/graphics/drawable/Drawable;)V

    .line 117
    new-instance p2, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;->adOptionsPosition:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;

    invoke-direct {p2, p1, v1}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;-><init>(Lcom/facebook/ads/NativeAd;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;)V

    .line 118
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;

    check-cast v0, Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;

    check-cast p2, Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;

    invoke-interface {p1, v0, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;->onAdLoadSuccess(Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;)V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 85
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;->onAdClicked()V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 3

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 48
    instance-of v0, p1, Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 49
    check-cast p1, Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 50
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;->downloadIconAndSendLoadSuccess(Lcom/facebook/ads/NativeAd;)V

    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Expected an instance of NativeAd, received %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;

    .line 55
    sget-object v1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 v2, 0x3e8

    .line 54
    invoke-interface {v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Failed to load, errorCode = %s, errorMessage = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;

    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->Companion:Lcom/ironsource/adapters/facebook/FacebookAdapter$Companion;

    invoke-virtual {v0, p2}, Lcom/ironsource/adapters/facebook/FacebookAdapter$Companion;->getLoadErrorType(Lcom/facebook/ads/AdError;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 77
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;->onAdOpened()V

    return-void
.end method

.method public onMediaDownloaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    return-void
.end method
