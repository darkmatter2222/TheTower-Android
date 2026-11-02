.class public final Lcom/unity3d/ads/core/domain/AndroidViewCapturer;
.super Ljava/lang/Object;
.source "AndroidViewCapturer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0087B\u00a2\u0006\u0002\u0010\u000eJ\u000e\u0010\u000f\u001a\u0004\u0018\u00010\u0010*\u00020\rH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/AndroidViewCapturer;",
        "",
        "mainDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "currentActivityDataSource",
        "Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;",
        "sdkInt",
        "",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;I)V",
        "invoke",
        "Landroid/graphics/Bitmap;",
        "view",
        "Landroid/view/View;",
        "(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "activity",
        "Landroid/app/Activity;",
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
.field private final currentActivityDataSource:Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;

.field private final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final sdkInt:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;I)V
    .locals 1

    const-string v0, "mainDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 34
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->currentActivityDataSource:Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;

    .line 35
    iput p3, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->sdkInt:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 35
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;I)V

    return-void
.end method

.method public static final synthetic access$activity(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Landroid/view/View;)Landroid/app/Activity;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->activity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCurrentActivityDataSource$p(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;)Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->currentActivityDataSource:Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;

    return-object p0
.end method

.method public static final synthetic access$getSdkInt$p(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->sdkInt:I

    return p0
.end method

.method private final activity(Landroid/view/View;)Landroid/app/Activity;
    .locals 1

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 81
    :goto_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 82
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    return-object p1

    .line 83
    :cond_0
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final invoke(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
