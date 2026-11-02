.class public final Lads_mobile_sdk/i91;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/j91;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/j91;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/i91;->a:Lads_mobile_sdk/j91;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 46
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdEventCallback;

    .line 47
    iget-object v0, p0, Lads_mobile_sdk/i91;->a:Lads_mobile_sdk/j91;

    .line 48
    iget-object v0, v0, Lads_mobile_sdk/j91;->b:Lads_mobile_sdk/l12;

    .line 49
    iget-object v0, v0, Lads_mobile_sdk/l12;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 50
    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object v0

    .line 51
    monitor-enter v0

    .line 52
    :try_start_0
    iput-object p1, v0, Lads_mobile_sdk/fm0;->q:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdEventCallback;

    .line 53
    invoke-virtual {v0, p1}, Lads_mobile_sdk/fm0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdEventCallback;)V

    .line 54
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
