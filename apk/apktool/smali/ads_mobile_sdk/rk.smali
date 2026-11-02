.class public final Lads_mobile_sdk/rk;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/sk;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/sk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/rk;->a:Lads_mobile_sdk/sk;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 24
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdEventCallback;

    .line 25
    iget-object v0, p0, Lads_mobile_sdk/rk;->a:Lads_mobile_sdk/sk;

    .line 26
    iget-object v0, v0, Lads_mobile_sdk/sk;->b:Lads_mobile_sdk/sj1;

    .line 27
    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object v0

    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    iput-object p1, v0, Lads_mobile_sdk/fm0;->p:Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdEventCallback;

    .line 30
    invoke-virtual {v0, p1}, Lads_mobile_sdk/fm0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdEventCallback;)V

    .line 31
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
