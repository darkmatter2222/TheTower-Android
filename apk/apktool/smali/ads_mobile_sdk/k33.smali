.class public final Lads_mobile_sdk/k33;
.super Lads_mobile_sdk/wo;
.source "SourceFile"


# instance fields
.field public final e:Lads_mobile_sdk/wy2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ck1;Lads_mobile_sdk/o53;Lads_mobile_sdk/wy2;)V
    .locals 1

    .line 1
    const-string v0, "internalBannerAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0, p1, p2}, Lads_mobile_sdk/wo;-><init>(Lads_mobile_sdk/ck1;Lads_mobile_sdk/o53;)V

    .line 165
    iput-object p3, p0, Lads_mobile_sdk/k33;->e:Lads_mobile_sdk/wy2;

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/zh1;
    .locals 2

    .line 167
    iget-object v0, p0, Lads_mobile_sdk/k33;->e:Lads_mobile_sdk/wy2;

    .line 168
    iget-object v0, v0, Lads_mobile_sdk/wy2;->u:Lads_mobile_sdk/js1;

    .line 169
    const-string v1, "The backing field has not yet been initialized."

    invoke-virtual {v0, v1}, Lads_mobile_sdk/js1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    check-cast v0, Lads_mobile_sdk/zh1;

    return-object v0
.end method

.method public final b()Lads_mobile_sdk/ck1;
    .locals 2

    .line 170
    iget-object v0, p0, Lads_mobile_sdk/k33;->e:Lads_mobile_sdk/wy2;

    .line 171
    iget-object v0, v0, Lads_mobile_sdk/wy2;->u:Lads_mobile_sdk/js1;

    .line 172
    const-string v1, "The backing field has not yet been initialized."

    invoke-virtual {v0, v1}, Lads_mobile_sdk/js1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    check-cast v0, Lads_mobile_sdk/ck1;

    return-object v0
.end method

.method public final destroy()V
    .locals 1

    .line 185
    iget-object v0, p0, Lads_mobile_sdk/k33;->e:Lads_mobile_sdk/wy2;

    invoke-virtual {v0}, Lads_mobile_sdk/wy2;->b()V

    return-void
.end method

.method public final getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;
    .locals 2

    .line 173
    invoke-virtual {p0}, Lads_mobile_sdk/k33;->b()Lads_mobile_sdk/ck1;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object v0

    .line 174
    monitor-enter v0

    .line 175
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

.method public final getBannerAdRefreshCallback()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRefreshCallback;
    .locals 4

    .line 179
    iget-object v0, p0, Lads_mobile_sdk/k33;->e:Lads_mobile_sdk/wy2;

    .line 180
    iget-object v1, v0, Lads_mobile_sdk/wy2;->v:Lads_mobile_sdk/tn3;

    .line 181
    sget-object v2, Lads_mobile_sdk/wy2;->C:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRefreshCallback;

    return-object v0
.end method

.method public final setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;)V
    .locals 1

    .line 175
    invoke-virtual {p0}, Lads_mobile_sdk/k33;->b()Lads_mobile_sdk/ck1;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fm0;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;)V

    return-void
.end method

.method public final setBannerAdRefreshCallback(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRefreshCallback;)V
    .locals 4

    .line 181
    iget-object v0, p0, Lads_mobile_sdk/k33;->e:Lads_mobile_sdk/wy2;

    .line 182
    iget-object v1, v0, Lads_mobile_sdk/wy2;->v:Lads_mobile_sdk/tn3;

    .line 183
    sget-object v2, Lads_mobile_sdk/wy2;->C:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2, p1}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
