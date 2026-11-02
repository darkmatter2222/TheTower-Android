.class public final Lads_mobile_sdk/q51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/a51;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Lads_mobile_sdk/h51;

.field public final d:Lads_mobile_sdk/cw2;

.field public final e:Lads_mobile_sdk/f0;

.field public final f:Landroid/content/Context;

.field public g:Lads_mobile_sdk/pk1;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLads_mobile_sdk/h51;Lads_mobile_sdk/pf0;Lads_mobile_sdk/f0;Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afmaMessenger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lads_mobile_sdk/q51;->a:Ljava/lang/String;

    .line 6
    iput-wide p2, p0, Lads_mobile_sdk/q51;->b:J

    .line 7
    iput-object p4, p0, Lads_mobile_sdk/q51;->c:Lads_mobile_sdk/h51;

    .line 8
    iput-object p5, p0, Lads_mobile_sdk/q51;->d:Lads_mobile_sdk/cw2;

    .line 9
    iput-object p6, p0, Lads_mobile_sdk/q51;->e:Lads_mobile_sdk/f0;

    .line 10
    iput-object p7, p0, Lads_mobile_sdk/q51;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 107
    iget-object v0, p0, Lads_mobile_sdk/q51;->g:Lads_mobile_sdk/pk1;

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object v1

    .line 111
    new-instance v2, Lads_mobile_sdk/p51;

    invoke-direct {v2, p0}, Lads_mobile_sdk/p51;-><init>(Lads_mobile_sdk/q51;)V

    .line 112
    monitor-enter v1

    .line 113
    :try_start_0
    iput-object v2, v1, Lads_mobile_sdk/fm0;->h:Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialAdEventCallback;

    .line 114
    invoke-virtual {v1, v2}, Lads_mobile_sdk/fm0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdEventCallback;)V

    .line 116
    invoke-virtual {v1, v2}, Lads_mobile_sdk/fm0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/OnAppEventListener;)V

    .line 117
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit v1

    .line 119
    iget-object v1, p0, Lads_mobile_sdk/q51;->e:Lads_mobile_sdk/f0;

    invoke-virtual {v1}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lads_mobile_sdk/q51;->f:Landroid/content/Context;

    .line 120
    :goto_0
    invoke-virtual {v0, v1}, Lads_mobile_sdk/as;->a(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v0

    .line 121
    monitor-exit v1

    throw v0
.end method

.method public final a(Lads_mobile_sdk/s51;)V
    .locals 2

    .line 1
    const-string v0, "h5LoadParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lads_mobile_sdk/q51;->d:Lads_mobile_sdk/cw2;

    .line 34
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/oz2;

    .line 35
    sget-object v1, Lads_mobile_sdk/j53;->h:Lads_mobile_sdk/j53;

    check-cast v0, Lads_mobile_sdk/di0;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    iput-object v1, v0, Lads_mobile_sdk/di0;->d:Lads_mobile_sdk/j53;

    .line 38
    iget-object v1, p1, Lads_mobile_sdk/s51;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/di0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/oz2;

    .line 39
    iget-object p1, p1, Lads_mobile_sdk/s51;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    check-cast v0, Lads_mobile_sdk/di0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/di0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/oz2;

    .line 40
    check-cast p1, Lads_mobile_sdk/di0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lads_mobile_sdk/di0;->b(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/oz2;

    .line 41
    check-cast p1, Lads_mobile_sdk/di0;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/di0;->a(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/oz2;

    .line 42
    check-cast p1, Lads_mobile_sdk/di0;

    invoke-virtual {p1}, Lads_mobile_sdk/di0;->b()Lads_mobile_sdk/ei0;

    move-result-object p1

    .line 43
    iget-object p1, p1, Lads_mobile_sdk/ei0;->i:Lads_mobile_sdk/dw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/kz2;

    .line 44
    new-instance v0, Lads_mobile_sdk/o51;

    invoke-direct {v0, p0}, Lads_mobile_sdk/o51;-><init>(Lads_mobile_sdk/q51;)V

    .line 45
    invoke-virtual {p1, v0}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/ei1;)V

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 95
    iget-object v0, p0, Lads_mobile_sdk/q51;->g:Lads_mobile_sdk/pk1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lads_mobile_sdk/q51;->g:Lads_mobile_sdk/pk1;

    return-void
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lads_mobile_sdk/q51;->a:Ljava/lang/String;

    return-object v0
.end method
