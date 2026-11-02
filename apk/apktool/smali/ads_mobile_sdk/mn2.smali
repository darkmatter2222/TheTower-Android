.class public final Lads_mobile_sdk/mn2;
.super Lads_mobile_sdk/eq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd;


# instance fields
.field public final b:Lads_mobile_sdk/do2;

.field public final c:Lads_mobile_sdk/zz2;

.field public d:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

.field public e:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdEventCallback;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ck1;Lads_mobile_sdk/do2;Lads_mobile_sdk/zz2;)V
    .locals 1

    .line 1
    const-string v0, "internalAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pipAdView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Lads_mobile_sdk/eq;-><init>(Lads_mobile_sdk/zh1;)V

    .line 27
    iput-object p2, p0, Lads_mobile_sdk/mn2;->b:Lads_mobile_sdk/do2;

    .line 28
    iput-object p3, p0, Lads_mobile_sdk/mn2;->c:Lads_mobile_sdk/zz2;

    .line 32
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;->SCREEN:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    iput-object p1, p0, Lads_mobile_sdk/mn2;->d:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 52
    iget-object v0, p0, Lads_mobile_sdk/mn2;->c:Lads_mobile_sdk/zz2;

    invoke-virtual {v0}, Lads_mobile_sdk/zz2;->b()V

    return-void
.end method

.method public final getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdEventCallback;
    .locals 1

    .line 41
    iget-object v0, p0, Lads_mobile_sdk/mn2;->e:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdEventCallback;

    return-object v0
.end method

.method public final getPosition()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;
    .locals 1

    .line 33
    iget-object v0, p0, Lads_mobile_sdk/mn2;->b:Lads_mobile_sdk/do2;

    .line 34
    iget-object v0, v0, Lads_mobile_sdk/do2;->d:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    return-object v0
.end method

.method public final getPresentationScope()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;
    .locals 1

    .line 28
    iget-object v0, p0, Lads_mobile_sdk/mn2;->d:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    return-object v0
.end method

.method public final hide()V
    .locals 1

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/mn2;->c:Lads_mobile_sdk/zz2;

    invoke-virtual {v0}, Lads_mobile_sdk/zz2;->f()Lads_mobile_sdk/ao2;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lads_mobile_sdk/ao2;->a()V

    return-void
.end method

.method public final setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdEventCallback;)V
    .locals 2

    .line 43
    iput-object p1, p0, Lads_mobile_sdk/mn2;->e:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdEventCallback;

    .line 44
    iget-object v0, p0, Lads_mobile_sdk/mn2;->c:Lads_mobile_sdk/zz2;

    .line 45
    iget-object v0, v0, Lads_mobile_sdk/wy2;->u:Lads_mobile_sdk/js1;

    .line 46
    const-string v1, "The backing field has not yet been initialized."

    invoke-virtual {v0, v1}, Lads_mobile_sdk/js1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    check-cast v0, Lads_mobile_sdk/ck1;

    .line 48
    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fm0;->a(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdEventCallback;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;)V
    .locals 2

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;->getPresentationScope()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/mn2;->d:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    .line 57
    iget-object v0, p0, Lads_mobile_sdk/mn2;->c:Lads_mobile_sdk/zz2;

    invoke-virtual {v0}, Lads_mobile_sdk/zz2;->f()Lads_mobile_sdk/ao2;

    move-result-object v0

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, p1, p2, v1}, Lads_mobile_sdk/ao2;->a(Landroid/app/Activity;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;Z)V

    return-void
.end method
