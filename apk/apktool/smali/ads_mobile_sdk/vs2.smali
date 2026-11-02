.class public final Lads_mobile_sdk/vs2;
.super Lads_mobile_sdk/h6;
.source "SourceFile"


# instance fields
.field public final synthetic L:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

.field public final synthetic M:Lads_mobile_sdk/pt2;

.field public final synthetic N:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lads_mobile_sdk/pt2;ZZLcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/tx;Lads_mobile_sdk/ex0;Lads_mobile_sdk/f13;ZLads_mobile_sdk/k6;)V
    .locals 15

    .line 1
    sget-object v3, Lads_mobile_sdk/j53;->i:Lads_mobile_sdk/j53;

    move-object/from16 v2, p2

    iput-object v2, p0, Lads_mobile_sdk/vs2;->L:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    move-object/from16 v6, p4

    iput-object v6, p0, Lads_mobile_sdk/vs2;->M:Lads_mobile_sdk/pt2;

    move-object/from16 v0, p7

    iput-object v0, p0, Lads_mobile_sdk/vs2;->N:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    move-object v0, p0

    move-object/from16 v10, p1

    move-object/from16 v1, p3

    move/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v11, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v4, p11

    move-object/from16 v9, p12

    move/from16 v14, p13

    move-object/from16 v5, p14

    .line 2
    invoke-direct/range {v0 .. v14}, Lads_mobile_sdk/h6;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lads_mobile_sdk/j53;Lads_mobile_sdk/ex0;Lads_mobile_sdk/k6;Lads_mobile_sdk/pt2;Lads_mobile_sdk/g83;Lads_mobile_sdk/tx;Lads_mobile_sdk/f13;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;ZZZ)V

    return-void
.end method


# virtual methods
.method public final t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/us2;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/us2;

    iget v1, v0, Lads_mobile_sdk/us2;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/us2;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/us2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/us2;-><init>(Lads_mobile_sdk/vs2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/us2;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 613
    iget v2, v0, Lads_mobile_sdk/us2;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 616
    iget-object p1, p0, Lads_mobile_sdk/vs2;->M:Lads_mobile_sdk/pt2;

    .line 617
    iget-object p1, p1, Lads_mobile_sdk/pt2;->l:Lads_mobile_sdk/cw2;

    .line 618
    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/vz2;

    const/4 v2, 0x0

    .line 619
    invoke-interface {p1, v2}, Lads_mobile_sdk/f03;->b(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/vz2;

    .line 620
    invoke-interface {p1, v3}, Lads_mobile_sdk/f03;->a(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/vz2;

    .line 621
    iget-object v2, p0, Lads_mobile_sdk/vs2;->L:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;->getRequest()Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    move-result-object v2

    invoke-interface {p1, v2}, Lads_mobile_sdk/f03;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/vz2;

    .line 622
    iget-object v2, p0, Lads_mobile_sdk/vs2;->L:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;->getRequest()Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    move-result-object v2

    invoke-interface {p1, v2}, Lads_mobile_sdk/f03;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/vz2;

    .line 623
    sget-object v2, Lads_mobile_sdk/j53;->i:Lads_mobile_sdk/j53;

    invoke-interface {p1, v2}, Lads_mobile_sdk/f03;->a(Lads_mobile_sdk/j53;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/vz2;

    .line 624
    iget-object v2, p0, Lads_mobile_sdk/vs2;->N:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    invoke-interface {p1, v2}, Lads_mobile_sdk/vz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;)Lads_mobile_sdk/vz2;

    move-result-object p1

    .line 625
    iget-object v2, p0, Lads_mobile_sdk/vs2;->N:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    invoke-interface {p1, v2}, Lads_mobile_sdk/vz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;)Lads_mobile_sdk/vz2;

    move-result-object p1

    .line 626
    invoke-interface {p1, v3}, Lads_mobile_sdk/vz2;->a(I)Lads_mobile_sdk/vz2;

    move-result-object p1

    .line 627
    invoke-interface {p1}, Lads_mobile_sdk/vz2;->a()Lads_mobile_sdk/wz2;

    move-result-object p1

    .line 628
    invoke-interface {p1}, Lads_mobile_sdk/g03;->a()Lads_mobile_sdk/px2;

    move-result-object p1

    .line 629
    iput v3, v0, Lads_mobile_sdk/us2;->c:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    invoke-static {p1, v0}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/px2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 631
    :cond_3
    :goto_1
    check-cast p1, Lads_mobile_sdk/sx2;

    .line 648
    instance-of v0, p1, Lads_mobile_sdk/qx2;

    if-eqz v0, :cond_4

    return-object p1

    .line 649
    :cond_4
    instance-of v0, p1, Lads_mobile_sdk/rx2;

    if-eqz v0, :cond_5

    .line 650
    new-instance v0, Lads_mobile_sdk/rx2;

    new-instance v1, Lads_mobile_sdk/xt2;

    check-cast p1, Lads_mobile_sdk/rx2;

    .line 651
    iget-object p1, p1, Lads_mobile_sdk/rx2;->a:Ljava/lang/Object;

    .line 652
    check-cast p1, Lads_mobile_sdk/zh1;

    invoke-direct {v1, p1}, Lads_mobile_sdk/xt2;-><init>(Lads_mobile_sdk/zh1;)V

    invoke-direct {v0, v1}, Lads_mobile_sdk/rx2;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 653
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
