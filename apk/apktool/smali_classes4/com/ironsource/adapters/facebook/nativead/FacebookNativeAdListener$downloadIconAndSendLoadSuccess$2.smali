.class public final Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$downloadIconAndSendLoadSuccess$2;
.super Ljava/lang/Object;
.source "FacebookNativeAdListener.kt"

# interfaces
.implements Lcom/ironsource/environment/workerthread/WorkerManager$WorkEndedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;->downloadIconAndSendLoadSuccess(Lcom/facebook/ads/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/environment/workerthread/WorkerManager$WorkEndedListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$downloadIconAndSendLoadSuccess$2",
        "Lcom/ironsource/environment/workerthread/WorkerManager$WorkEndedListener;",
        "Landroid/graphics/drawable/Drawable;",
        "onWorkCompleted",
        "",
        "responsesList",
        "",
        "Lcom/ironsource/environment/workerthread/WorkerResult;",
        "totalWorkDurationMillis",
        "",
        "onWorkFailed",
        "error",
        "",
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


# instance fields
.field final synthetic $nativeAd:Lcom/facebook/ads/NativeAd;

.field final synthetic this$0:Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;Lcom/facebook/ads/NativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$downloadIconAndSendLoadSuccess$2;->this$0:Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;

    iput-object p2, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$downloadIconAndSendLoadSuccess$2;->$nativeAd:Lcom/facebook/ads/NativeAd;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkCompleted(Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/environment/workerthread/WorkerResult<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;J)V"
        }
    .end annotation

    const-string p2, "responsesList"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 103
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/environment/workerthread/WorkerResult;

    .line 104
    instance-of p2, p1, Lcom/ironsource/environment/workerthread/WorkerResult$Completed;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Lcom/ironsource/environment/workerthread/WorkerResult$Completed;

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/ironsource/environment/workerthread/WorkerResult$Completed;->data:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Landroid/graphics/drawable/Drawable;

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$downloadIconAndSendLoadSuccess$2;->this$0:Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;

    iget-object p2, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$downloadIconAndSendLoadSuccess$2;->$nativeAd:Lcom/facebook/ads/NativeAd;

    invoke-static {p1, p2, p3}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;->access$sendLoadSuccess(Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;Lcom/facebook/ads/NativeAd;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onWorkFailed(Ljava/lang/String;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v1, 0x1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "error while trying to download the native ad icon resource - %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "format(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$downloadIconAndSendLoadSuccess$2;->this$0:Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;

    iget-object v0, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$downloadIconAndSendLoadSuccess$2;->$nativeAd:Lcom/facebook/ads/NativeAd;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;->access$sendLoadSuccess(Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;Lcom/facebook/ads/NativeAd;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
