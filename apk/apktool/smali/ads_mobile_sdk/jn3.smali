.class public final Lads_mobile_sdk/jn3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/k8;


# instance fields
.field public final a:Lads_mobile_sdk/cw2;

.field public final b:Lads_mobile_sdk/ks3;

.field public final c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final d:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

.field public final e:Z

.field public final f:J

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Lads_mobile_sdk/md1;

.field public final j:Lads_mobile_sdk/pb;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/ks3;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;ZJILjava/lang/String;Lads_mobile_sdk/md1;Lads_mobile_sdk/pb;)V
    .locals 1

    .line 1
    const-string v0, "swipeableInterstitialRenderComponentProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swipeableInterstitialRequest"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorAdLifecycleMonitor"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSourceResponseInfoCollector"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lads_mobile_sdk/jn3;->a:Lads_mobile_sdk/cw2;

    .line 8
    iput-object p2, p0, Lads_mobile_sdk/jn3;->b:Lads_mobile_sdk/ks3;

    .line 9
    iput-object p3, p0, Lads_mobile_sdk/jn3;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 10
    iput-object p4, p0, Lads_mobile_sdk/jn3;->d:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

    .line 11
    iput-boolean p5, p0, Lads_mobile_sdk/jn3;->e:Z

    .line 12
    iput-wide p6, p0, Lads_mobile_sdk/jn3;->f:J

    .line 13
    iput p8, p0, Lads_mobile_sdk/jn3;->g:I

    .line 14
    iput-object p9, p0, Lads_mobile_sdk/jn3;->h:Ljava/lang/String;

    .line 15
    iput-object p10, p0, Lads_mobile_sdk/jn3;->i:Lads_mobile_sdk/md1;

    .line 16
    iput-object p11, p0, Lads_mobile_sdk/jn3;->j:Lads_mobile_sdk/pb;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;)Lads_mobile_sdk/h8;
    .locals 13

    .line 1
    const-string v0, "serverTransaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lads_mobile_sdk/jn3;->a:Lads_mobile_sdk/cw2;

    .line 44
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/gn3;

    .line 45
    iget-object v1, p0, Lads_mobile_sdk/jn3;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    check-cast v0, Lads_mobile_sdk/yi0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    iput-object v1, v0, Lads_mobile_sdk/yi0;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 48
    iget-object v1, p0, Lads_mobile_sdk/jn3;->d:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    iput-object v1, v0, Lads_mobile_sdk/yi0;->o:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    iput-object p2, v0, Lads_mobile_sdk/yi0;->c:Lads_mobile_sdk/i2;

    .line 53
    sget-object p2, Lads_mobile_sdk/j53;->l:Lads_mobile_sdk/j53;

    .line 54
    iput-object p2, v0, Lads_mobile_sdk/yi0;->h:Lads_mobile_sdk/j53;

    .line 55
    iget-object p2, p1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object p2, p2, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    iput-object p2, v0, Lads_mobile_sdk/yi0;->b:Lads_mobile_sdk/zy;

    .line 58
    iput-object p1, v0, Lads_mobile_sdk/yi0;->d:Lads_mobile_sdk/ec3;

    .line 59
    iget-object p1, p0, Lads_mobile_sdk/jn3;->b:Lads_mobile_sdk/ks3;

    iget-object p1, p1, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    iput-object p1, v0, Lads_mobile_sdk/yi0;->j:Lads_mobile_sdk/n03;

    .line 62
    iget-object p1, p0, Lads_mobile_sdk/jn3;->b:Lads_mobile_sdk/ks3;

    iget-object p1, p1, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    iput-object p1, v0, Lads_mobile_sdk/yi0;->k:Lads_mobile_sdk/tn1;

    .line 65
    iget-object p1, p0, Lads_mobile_sdk/jn3;->h:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    iput-object p1, v0, Lads_mobile_sdk/yi0;->i:Ljava/lang/String;

    .line 68
    iget-wide p1, p0, Lads_mobile_sdk/jn3;->f:J

    .line 69
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lads_mobile_sdk/yi0;->e:Ljava/lang/Long;

    .line 70
    iget p1, p0, Lads_mobile_sdk/jn3;->g:I

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lads_mobile_sdk/yi0;->f:Ljava/lang/Integer;

    .line 72
    iget-boolean p1, p0, Lads_mobile_sdk/jn3;->e:Z

    .line 73
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lads_mobile_sdk/yi0;->l:Ljava/lang/Boolean;

    .line 74
    iget-object p1, p0, Lads_mobile_sdk/jn3;->i:Lads_mobile_sdk/md1;

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    iput-object p1, v0, Lads_mobile_sdk/yi0;->m:Lads_mobile_sdk/md1;

    .line 77
    iget-object p1, p0, Lads_mobile_sdk/jn3;->j:Lads_mobile_sdk/pb;

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    iput-object p1, v0, Lads_mobile_sdk/yi0;->n:Lads_mobile_sdk/pb;

    .line 80
    iget-object p1, v0, Lads_mobile_sdk/yi0;->b:Lads_mobile_sdk/zy;

    const-class p2, Lads_mobile_sdk/zy;

    invoke-static {p1, p2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 81
    iget-object p1, v0, Lads_mobile_sdk/yi0;->c:Lads_mobile_sdk/i2;

    const-class p2, Lads_mobile_sdk/i2;

    invoke-static {p1, p2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 82
    iget-object p1, v0, Lads_mobile_sdk/yi0;->d:Lads_mobile_sdk/ec3;

    const-class p2, Lads_mobile_sdk/ec3;

    invoke-static {p1, p2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 83
    iget-object p1, v0, Lads_mobile_sdk/yi0;->e:Ljava/lang/Long;

    const-class p2, Ljava/lang/Long;

    invoke-static {p1, p2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 84
    iget-object p1, v0, Lads_mobile_sdk/yi0;->f:Ljava/lang/Integer;

    const-class p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 85
    iget-object p1, v0, Lads_mobile_sdk/yi0;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    const-class p2, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-static {p1, p2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 86
    iget-object p1, v0, Lads_mobile_sdk/yi0;->h:Lads_mobile_sdk/j53;

    const-class p2, Lads_mobile_sdk/j53;

    invoke-static {p1, p2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 87
    iget-object p1, v0, Lads_mobile_sdk/yi0;->i:Ljava/lang/String;

    const-class p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 88
    iget-object p1, v0, Lads_mobile_sdk/yi0;->j:Lads_mobile_sdk/n03;

    const-class p2, Lads_mobile_sdk/n03;

    invoke-static {p1, p2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 89
    iget-object p1, v0, Lads_mobile_sdk/yi0;->k:Lads_mobile_sdk/tn1;

    const-class p2, Lads_mobile_sdk/tn1;

    invoke-static {p1, p2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 90
    iget-object p1, v0, Lads_mobile_sdk/yi0;->l:Ljava/lang/Boolean;

    const-class p2, Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 91
    iget-object p1, v0, Lads_mobile_sdk/yi0;->m:Lads_mobile_sdk/md1;

    const-class p2, Lads_mobile_sdk/md1;

    invoke-static {p1, p2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 92
    iget-object p1, v0, Lads_mobile_sdk/yi0;->n:Lads_mobile_sdk/pb;

    const-class p2, Lads_mobile_sdk/pb;

    invoke-static {p1, p2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 93
    iget-object p1, v0, Lads_mobile_sdk/yi0;->o:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

    const-class p2, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

    invoke-static {p1, p2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 94
    new-instance v1, Lads_mobile_sdk/zi0;

    iget-object v2, v0, Lads_mobile_sdk/yi0;->a:Lads_mobile_sdk/vf0;

    iget-object v3, v0, Lads_mobile_sdk/yi0;->b:Lads_mobile_sdk/zy;

    iget-object v4, v0, Lads_mobile_sdk/yi0;->c:Lads_mobile_sdk/i2;

    iget-object v5, v0, Lads_mobile_sdk/yi0;->d:Lads_mobile_sdk/ec3;

    iget-object v6, v0, Lads_mobile_sdk/yi0;->e:Ljava/lang/Long;

    iget-object v7, v0, Lads_mobile_sdk/yi0;->f:Ljava/lang/Integer;

    iget-object v8, v0, Lads_mobile_sdk/yi0;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v9, v0, Lads_mobile_sdk/yi0;->h:Lads_mobile_sdk/j53;

    iget-object v10, v0, Lads_mobile_sdk/yi0;->j:Lads_mobile_sdk/n03;

    iget-object v11, v0, Lads_mobile_sdk/yi0;->k:Lads_mobile_sdk/tn1;

    iget-object v12, v0, Lads_mobile_sdk/yi0;->o:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

    invoke-direct/range {v1 .. v12}, Lads_mobile_sdk/zi0;-><init>(Lads_mobile_sdk/vf0;Lads_mobile_sdk/zy;Lads_mobile_sdk/i2;Lads_mobile_sdk/ec3;Ljava/lang/Long;Ljava/lang/Integer;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;)V

    .line 95
    iget-object p1, v1, Lads_mobile_sdk/zi0;->o:Lads_mobile_sdk/dw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/h8;

    return-object p1
.end method
