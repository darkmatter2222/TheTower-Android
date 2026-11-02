.class public Lads_mobile_sdk/wo;
.super Lads_mobile_sdk/eq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;


# instance fields
.field public final b:Lads_mobile_sdk/ck1;

.field public final c:Lads_mobile_sdk/o53;

.field public d:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRefreshCallback;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ck1;Lads_mobile_sdk/o53;)V
    .locals 1

    .line 1
    const-string v0, "internalBannerAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFrame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Lads_mobile_sdk/eq;-><init>(Lads_mobile_sdk/zh1;)V

    .line 32
    iput-object p1, p0, Lads_mobile_sdk/wo;->b:Lads_mobile_sdk/ck1;

    .line 33
    iput-object p2, p0, Lads_mobile_sdk/wo;->c:Lads_mobile_sdk/o53;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)V
    .locals 4

    .line 1
    const-string v0, "newSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lads_mobile_sdk/wo;->c:Lads_mobile_sdk/o53;

    invoke-virtual {v1, p1}, Lads_mobile_sdk/o53;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)V

    .line 58
    invoke-virtual {p0}, Lads_mobile_sdk/wo;->b()Lads_mobile_sdk/ck1;

    move-result-object v1

    iget-object v2, p0, Lads_mobile_sdk/wo;->c:Lads_mobile_sdk/o53;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1}, Lads_mobile_sdk/ci1;->k()Ljava/util/Optional;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/r31;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v2, p1}, Lads_mobile_sdk/t14;->a(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)Lads_mobile_sdk/v14;

    move-result-object p1

    invoke-virtual {v0, p1}, Lads_mobile_sdk/r31;->a(Lads_mobile_sdk/v14;)V

    return-void
.end method

.method public b()Lads_mobile_sdk/ck1;
    .locals 1

    .line 29
    iget-object v0, p0, Lads_mobile_sdk/wo;->b:Lads_mobile_sdk/ck1;

    return-object v0
.end method

.method public getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;
    .locals 2

    .line 34
    invoke-virtual {p0}, Lads_mobile_sdk/wo;->b()Lads_mobile_sdk/ck1;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object v0

    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, v0, Lads_mobile_sdk/fm0;->g:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lads_mobile_sdk/wo;->b()Lads_mobile_sdk/ck1;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/ck1;->m()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public getBannerAdRefreshCallback()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRefreshCallback;
    .locals 1

    .line 39
    iget-object v0, p0, Lads_mobile_sdk/wo;->d:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRefreshCallback;

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lads_mobile_sdk/wo;->b()Lads_mobile_sdk/ck1;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->k()Ljava/util/Optional;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/r31;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lads_mobile_sdk/r31;->d()Lads_mobile_sdk/q41;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/wo;->c:Lads_mobile_sdk/o53;

    return-object v0
.end method

.method public final getView(Landroid/app/Activity;)Landroid/view/View;
    .locals 2

    .line 3
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    .line 48
    check-cast v0, Lads_mobile_sdk/vf0;

    .line 49
    iget-object v0, v0, Lads_mobile_sdk/vf0;->E:Lads_mobile_sdk/dw2;

    .line 50
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/f0;

    .line 51
    sget-object v1, Lads_mobile_sdk/r;->e:Lads_mobile_sdk/r;

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/f0;->a(Landroid/app/Activity;Lads_mobile_sdk/r;)V

    .line 52
    iget-object p1, p0, Lads_mobile_sdk/wo;->c:Lads_mobile_sdk/o53;

    return-object p1
.end method

.method public final isCollapsible()Z
    .locals 1

    .line 65
    invoke-virtual {p0}, Lads_mobile_sdk/wo;->b()Lads_mobile_sdk/ck1;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->b()Lads_mobile_sdk/i2;

    move-result-object v0

    .line 67
    iget-boolean v0, v0, Lads_mobile_sdk/i2;->N:Z

    return v0
.end method

.method public final recordManualImpression()V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lads_mobile_sdk/wo;->b()Lads_mobile_sdk/ck1;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/ck1;->p()V

    return-void
.end method

.method public setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;)V
    .locals 1

    .line 36
    invoke-virtual {p0}, Lads_mobile_sdk/wo;->b()Lads_mobile_sdk/ck1;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fm0;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;)V

    return-void
.end method

.method public setBannerAdRefreshCallback(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRefreshCallback;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lads_mobile_sdk/wo;->d:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRefreshCallback;

    return-void
.end method
