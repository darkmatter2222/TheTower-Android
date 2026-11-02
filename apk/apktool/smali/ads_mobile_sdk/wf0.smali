.class public final Lads_mobile_sdk/wf0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/vf0;

.field public b:Lcom/google/android/libraries/ads/mobile/sdk/h5/OnH5AdsEventListener;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vf0;)V
    .locals 0

    .line 3332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3333
    iput-object p1, p0, Lads_mobile_sdk/wf0;->a:Lads_mobile_sdk/vf0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/h5/OnH5AdsEventListener;)Lads_mobile_sdk/wf0;
    .locals 0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iput-object p1, p0, Lads_mobile_sdk/wf0;->b:Lcom/google/android/libraries/ads/mobile/sdk/h5/OnH5AdsEventListener;

    return-object p0
.end method

.method public final a()Lads_mobile_sdk/yf0;
    .locals 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/wf0;->b:Lcom/google/android/libraries/ads/mobile/sdk/h5/OnH5AdsEventListener;

    const-class v1, Lcom/google/android/libraries/ads/mobile/sdk/h5/OnH5AdsEventListener;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    new-instance v0, Lads_mobile_sdk/yf0;

    iget-object v1, p0, Lads_mobile_sdk/wf0;->a:Lads_mobile_sdk/vf0;

    iget-object v2, p0, Lads_mobile_sdk/wf0;->b:Lcom/google/android/libraries/ads/mobile/sdk/h5/OnH5AdsEventListener;

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/yf0;-><init>(Lads_mobile_sdk/vf0;Lcom/google/android/libraries/ads/mobile/sdk/h5/OnH5AdsEventListener;)V

    return-object v0
.end method
