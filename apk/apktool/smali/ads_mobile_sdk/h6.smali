.class public abstract Lads_mobile_sdk/h6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ox0;
.implements Lads_mobile_sdk/n92;


# static fields
.field public static final K:Ljava/util/Set;


# instance fields
.field public A:Lkotlinx/coroutines/Job;

.field public B:Lkotlinx/coroutines/Job;

.field public final C:Ljava/util/Queue;

.field public D:Lkotlinx/coroutines/CompletableJob;

.field public final E:Lkotlinx/coroutines/CompletableJob;

.field public F:Lkotlinx/coroutines/CompletableJob;

.field public G:Lkotlinx/coroutines/CompletableJob;

.field public H:Lkotlinx/coroutines/CompletableJob;

.field public I:Lkotlinx/coroutines/CompletableJob;

.field public J:Lkotlinx/coroutines/CompletableJob;

.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

.field public final d:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

.field public final e:Lads_mobile_sdk/g83;

.field public final f:Lads_mobile_sdk/tx;

.field public final g:Lads_mobile_sdk/ex0;

.field public final h:Lads_mobile_sdk/f13;

.field public final i:Lads_mobile_sdk/pt2;

.field public final j:Z

.field public final k:Lads_mobile_sdk/j53;

.field public final l:Lads_mobile_sdk/k6;

.field public final m:J

.field public final n:Z

.field public final o:J

.field public final p:I

.field public final q:I

.field public final r:D

.field public final s:J

.field public final t:D

.field public final u:Lkotlinx/coroutines/sync/Mutex;

.field public v:Lads_mobile_sdk/w4;

.field public w:I

.field public x:J

.field public y:Z

.field public z:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    .line 640
    new-array v0, v0, [Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->INVALID_REQUEST:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->INVALID_AD_RESPONSE:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->REQUEST_ID_MISMATCH:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->APP_ID_MISSING:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->AD_RESPONSE_ALREADY_USED:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 641
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/h6;->K:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lads_mobile_sdk/j53;Lads_mobile_sdk/ex0;Lads_mobile_sdk/k6;Lads_mobile_sdk/pt2;Lads_mobile_sdk/g83;Lads_mobile_sdk/tx;Lads_mobile_sdk/f13;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;ZZZ)V
    .locals 1

    .line 2
    const-string v0, "backgroundScope"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadId"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "randomGenerator"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPreloadingValidator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p11, p0, Lads_mobile_sdk/h6;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 45
    iput-object p10, p0, Lads_mobile_sdk/h6;->b:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lads_mobile_sdk/h6;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    .line 47
    iput-object p1, p0, Lads_mobile_sdk/h6;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    .line 48
    iput-object p7, p0, Lads_mobile_sdk/h6;->e:Lads_mobile_sdk/g83;

    .line 49
    iput-object p8, p0, Lads_mobile_sdk/h6;->f:Lads_mobile_sdk/tx;

    .line 50
    iput-object p4, p0, Lads_mobile_sdk/h6;->g:Lads_mobile_sdk/ex0;

    .line 51
    iput-object p9, p0, Lads_mobile_sdk/h6;->h:Lads_mobile_sdk/f13;

    .line 52
    iput-object p6, p0, Lads_mobile_sdk/h6;->i:Lads_mobile_sdk/pt2;

    .line 55
    iput-boolean p14, p0, Lads_mobile_sdk/h6;->j:Z

    .line 56
    iput-object p3, p0, Lads_mobile_sdk/h6;->k:Lads_mobile_sdk/j53;

    .line 57
    iput-object p5, p0, Lads_mobile_sdk/h6;->l:Lads_mobile_sdk/k6;

    .line 66
    invoke-virtual {p4}, Lads_mobile_sdk/ex0;->v0()J

    move-result-wide p5

    iput-wide p5, p0, Lads_mobile_sdk/h6;->m:J

    .line 67
    invoke-virtual {p4}, Lads_mobile_sdk/ex0;->z0()Z

    move-result p1

    iput-boolean p1, p0, Lads_mobile_sdk/h6;->n:Z

    .line 68
    invoke-virtual {p4}, Lads_mobile_sdk/ex0;->g()J

    move-result-wide p5

    iput-wide p5, p0, Lads_mobile_sdk/h6;->o:J

    .line 73
    invoke-virtual {p2}, Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;->getBufferSize()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lads_mobile_sdk/ex0;->f()I

    move-result p1

    .line 76
    :goto_0
    invoke-virtual {p4}, Lads_mobile_sdk/ex0;->i()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 77
    invoke-virtual {p4}, Lads_mobile_sdk/ex0;->l()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 78
    iput p1, p0, Lads_mobile_sdk/h6;->p:I

    .line 85
    invoke-virtual {p4}, Lads_mobile_sdk/ex0;->k()I

    move-result p1

    iput p1, p0, Lads_mobile_sdk/h6;->q:I

    .line 86
    invoke-virtual {p4}, Lads_mobile_sdk/ex0;->p0()J

    .line 87
    invoke-virtual {p4}, Lads_mobile_sdk/ex0;->h()D

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/h6;->r:D

    .line 88
    invoke-virtual {p4}, Lads_mobile_sdk/ex0;->j()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/h6;->s:J

    .line 89
    invoke-virtual {p4}, Lads_mobile_sdk/ex0;->m()D

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/h6;->t:D

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 91
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 92
    sget-object p1, Lads_mobile_sdk/w4;->a:Lads_mobile_sdk/w4;

    iput-object p1, p0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    .line 94
    iput-wide p5, p0, Lads_mobile_sdk/h6;->x:J

    .line 97
    invoke-static {p3, p2, p3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    iput-object p1, p0, Lads_mobile_sdk/h6;->z:Lkotlinx/coroutines/Job;

    .line 98
    invoke-static {p3, p2, p3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    iput-object p1, p0, Lads_mobile_sdk/h6;->A:Lkotlinx/coroutines/Job;

    .line 99
    invoke-static {p3, p2, p3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/h6;->B:Lkotlinx/coroutines/Job;

    .line 102
    invoke-virtual {p4}, Lads_mobile_sdk/ex0;->N()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    new-instance p1, Lads_mobile_sdk/au2;

    invoke-direct {p1}, Lads_mobile_sdk/au2;-><init>()V

    goto :goto_1

    .line 105
    :cond_1
    new-instance p1, Ljava/util/PriorityQueue;

    .line 106
    new-instance p4, Lads_mobile_sdk/a6;

    invoke-direct {p4}, Lads_mobile_sdk/a6;-><init>()V

    .line 107
    new-instance p5, Lads_mobile_sdk/b6;

    invoke-direct {p5, p4}, Lads_mobile_sdk/b6;-><init>(Lads_mobile_sdk/a6;)V

    .line 108
    invoke-direct {p1, p5}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    .line 109
    :goto_1
    iput-object p1, p0, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    .line 119
    invoke-static {p3, p2, p3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    iput-object p1, p0, Lads_mobile_sdk/h6;->D:Lkotlinx/coroutines/CompletableJob;

    .line 121
    invoke-static {p3, p2, p3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    iput-object p1, p0, Lads_mobile_sdk/h6;->E:Lkotlinx/coroutines/CompletableJob;

    .line 123
    invoke-static {p3, p2, p3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    iput-object p1, p0, Lads_mobile_sdk/h6;->F:Lkotlinx/coroutines/CompletableJob;

    .line 125
    invoke-static {p3, p2, p3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    iput-object p1, p0, Lads_mobile_sdk/h6;->G:Lkotlinx/coroutines/CompletableJob;

    .line 127
    invoke-static {p3, p2, p3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    iput-object p1, p0, Lads_mobile_sdk/h6;->H:Lkotlinx/coroutines/CompletableJob;

    .line 131
    invoke-static {p3, p2, p3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    if-eqz p12, :cond_2

    .line 133
    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 134
    :cond_2
    iput-object p1, p0, Lads_mobile_sdk/h6;->I:Lkotlinx/coroutines/CompletableJob;

    .line 141
    invoke-static {p3, p2, p3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    if-eqz p13, :cond_3

    .line 143
    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 144
    :cond_3
    iput-object p1, p0, Lads_mobile_sdk/h6;->J:Lkotlinx/coroutines/CompletableJob;

    return-void
.end method

.method public static a(Lads_mobile_sdk/h6;ZLjava/lang/String;I)Lads_mobile_sdk/ar2;
    .locals 3

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 2541
    const-string p2, ""

    .line 2542
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2543
    invoke-static {}, Lads_mobile_sdk/ar2;->v()Lads_mobile_sdk/zq2;

    move-result-object p3

    const-string v0, "newBuilder(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2544
    const-string v0, "builder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2545
    iget-object v0, p0, Lads_mobile_sdk/h6;->b:Ljava/lang/String;

    .line 2546
    const-string v2, "value"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2591
    invoke-virtual {p3, v0}, Lads_mobile_sdk/zq2;->b(Ljava/lang/String;)V

    .line 2592
    iget v0, p0, Lads_mobile_sdk/h6;->p:I

    .line 2593
    invoke-virtual {p3, v0}, Lads_mobile_sdk/zq2;->a(I)V

    .line 2594
    iget-object v0, p0, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 2595
    invoke-virtual {p3, v0}, Lads_mobile_sdk/zq2;->b(I)V

    .line 2596
    invoke-virtual {p3, p1}, Lads_mobile_sdk/zq2;->a(Z)V

    .line 2597
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2710
    invoke-virtual {p3, p2}, Lads_mobile_sdk/zq2;->a(Ljava/lang/String;)V

    .line 2711
    iget-object p0, p0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    sget-object p1, Lads_mobile_sdk/w4;->c:Lads_mobile_sdk/w4;

    if-ne p0, p1, :cond_2

    const/4 v1, 0x1

    .line 2712
    :cond_2
    invoke-virtual {p3, v1}, Lads_mobile_sdk/zq2;->b(Z)V

    .line 2713
    invoke-virtual {p3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lads_mobile_sdk/ar2;

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    instance-of v0, p1, Lads_mobile_sdk/z4;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/z4;

    iget v1, v0, Lads_mobile_sdk/z4;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/z4;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/z4;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/z4;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/z4;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 531
    iget v2, v0, Lads_mobile_sdk/z4;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/z4;->c:Ljava/util/Iterator;

    iget-object v2, v0, Lads_mobile_sdk/z4;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lads_mobile_sdk/z4;->a:Lads_mobile_sdk/h6;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lads_mobile_sdk/z4;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/z4;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v2

    move-object v2, p0

    move-object p0, v12

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 532
    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1532
    iput-object p0, v0, Lads_mobile_sdk/z4;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/z4;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/z4;->f:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, p1

    .line 1533
    :goto_1
    :try_start_1
    iget-object p1, p0, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p0

    move-object p0, p1

    .line 1534
    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1535
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/yt2;

    .line 1537
    sget-object v6, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v6, v4, Lads_mobile_sdk/h6;->f:Lads_mobile_sdk/tx;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1538
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1539
    sget-object v8, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v6, v7, v8}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v6

    .line 1540
    iget-wide v8, p1, Lads_mobile_sdk/yt2;->b:J

    .line 1541
    iget-wide v10, v4, Lads_mobile_sdk/h6;->m:J

    invoke-static {v8, v9, v10, v11}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v6

    if-ltz v6, :cond_5

    .line 1542
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v4, v0, Lads_mobile_sdk/z4;->a:Lads_mobile_sdk/h6;

    iput-object v2, v0, Lads_mobile_sdk/z4;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lads_mobile_sdk/z4;->c:Ljava/util/Iterator;

    iput v3, v0, Lads_mobile_sdk/z4;->f:I

    invoke-virtual {v4, p0, p1, v0}, Lads_mobile_sdk/h6;->a(Ljava/util/Iterator;Lads_mobile_sdk/yt2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_3
    return-object v1

    .line 1545
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2539
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static final b(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    instance-of v0, p1, Lads_mobile_sdk/x5;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/x5;

    iget v1, v0, Lads_mobile_sdk/x5;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/x5;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/x5;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/x5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/x5;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 337
    iget v2, v0, Lads_mobile_sdk/x5;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, v0, Lads_mobile_sdk/x5;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    goto/16 :goto_13

    :pswitch_1
    iget-object p0, v0, Lads_mobile_sdk/x5;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_11

    :pswitch_2
    iget-object p0, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_10

    :pswitch_3
    iget-object p0, v0, Lads_mobile_sdk/x5;->c:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/x5;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/sx2;

    iget-object v7, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object p1, p0

    move-object p0, v7

    goto/16 :goto_f

    :pswitch_4
    iget-object p0, v0, Lads_mobile_sdk/x5;->c:Ljava/lang/Object;

    check-cast p0, Ljava/io/Closeable;

    iget-object v2, v0, Lads_mobile_sdk/x5;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v7, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_d

    :catchall_0
    move-exception p1

    goto/16 :goto_14

    :pswitch_5
    iget-object p0, v0, Lads_mobile_sdk/x5;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/x5;->c:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v7, v0, Lads_mobile_sdk/x5;->b:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/rr3;

    iget-object v8, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p1, v7

    move-object v7, v8

    goto/16 :goto_c

    :catchall_1
    move-exception p0

    goto/16 :goto_16

    :pswitch_6
    iget-object p0, v0, Lads_mobile_sdk/x5;->c:Ljava/lang/Object;

    check-cast p0, Ljava/io/Closeable;

    iget-object v2, v0, Lads_mobile_sdk/x5;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v7, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_6

    :catchall_2
    move-exception p1

    goto/16 :goto_8

    :pswitch_7
    iget-object p0, v0, Lads_mobile_sdk/x5;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/x5;->c:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v7, v0, Lads_mobile_sdk/x5;->b:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/rr3;

    iget-object v8, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    :try_start_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object p1, v7

    move-object v7, v8

    goto/16 :goto_5

    :catchall_3
    move-exception p0

    goto/16 :goto_a

    :pswitch_8
    iget-object p0, v0, Lads_mobile_sdk/x5;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_9
    iget-object p0, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_a
    iget-object p0, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 339
    :cond_2
    :goto_1
    iput-object p0, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    iput-object v6, v0, Lads_mobile_sdk/x5;->b:Ljava/lang/Object;

    iput v5, v0, Lads_mobile_sdk/x5;->g:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/h6;->A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto/16 :goto_12

    .line 341
    :cond_3
    :goto_2
    iput-object p0, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    const/4 p1, 0x2

    iput p1, v0, Lads_mobile_sdk/x5;->g:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    invoke-static {p0, v0}, Lads_mobile_sdk/h6;->d(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto/16 :goto_12

    .line 343
    :cond_4
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 344
    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1375
    iput-object p0, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/x5;->b:Ljava/lang/Object;

    iput v3, v0, Lads_mobile_sdk/x5;->g:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto/16 :goto_12

    :cond_5
    move-object v2, p0

    move-object p0, p1

    .line 1376
    :goto_4
    :try_start_5
    sget-object p1, Lads_mobile_sdk/w4;->c:Lads_mobile_sdk/w4;

    iput-object p1, v2, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_12

    .line 2411
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2412
    iget-object p0, v2, Lads_mobile_sdk/h6;->e:Lads_mobile_sdk/g83;

    sget-object p1, Lads_mobile_sdk/s11;->k1:Lads_mobile_sdk/s11;

    .line 3447
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 3448
    new-instance v8, Lads_mobile_sdk/ks3;

    .line 3449
    new-instance v9, Lads_mobile_sdk/n03;

    invoke-direct {v9}, Lads_mobile_sdk/n03;-><init>()V

    .line 3450
    new-instance v10, Lads_mobile_sdk/tn1;

    invoke-direct {v10}, Lads_mobile_sdk/tn1;-><init>()V

    .line 3451
    new-instance v11, Lads_mobile_sdk/m33;

    invoke-direct {v11}, Lads_mobile_sdk/m33;-><init>()V

    .line 3452
    new-instance v12, Lads_mobile_sdk/zb;

    invoke-direct {v12}, Lads_mobile_sdk/zb;-><init>()V

    .line 3453
    invoke-direct {v8, v9, v10, v11, v12}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 3454
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v9

    .line 3455
    iget-object v9, v9, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v9, :cond_e

    .line 3456
    invoke-static {p0, p1, v7, v8}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p0

    .line 3457
    :try_start_6
    iget-object p1, v2, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 4502
    iput-object v2, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    iput-object p0, v0, Lads_mobile_sdk/x5;->b:Ljava/lang/Object;

    iput-object p0, v0, Lads_mobile_sdk/x5;->c:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/x5;->d:Lkotlinx/coroutines/sync/Mutex;

    const/4 v7, 0x4

    iput v7, v0, Lads_mobile_sdk/x5;->g:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    if-ne v7, v1, :cond_6

    goto/16 :goto_12

    :cond_6
    move-object v7, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v2

    .line 4503
    :goto_5
    :try_start_7
    invoke-static {v7, v4, v6, v3}, Lads_mobile_sdk/h6;->a(Lads_mobile_sdk/h6;ZLjava/lang/String;I)Lads_mobile_sdk/ar2;

    move-result-object v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 5552
    :try_start_8
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 5553
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p0

    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object p0

    iput-object v8, p0, Lads_mobile_sdk/uj2;->C:Lads_mobile_sdk/ar2;

    .line 6603
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 6604
    :try_start_9
    iget-object p0, p0, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 6605
    :try_start_a
    iget-object p0, p0, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    .line 6606
    iget-object v8, v7, Lads_mobile_sdk/h6;->b:Ljava/lang/String;

    iput-object v8, p0, Lads_mobile_sdk/n03;->e:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 6608
    :try_start_b
    iput-object v7, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    iput-object p1, v0, Lads_mobile_sdk/x5;->b:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/x5;->c:Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    iput-object v6, v0, Lads_mobile_sdk/x5;->d:Lkotlinx/coroutines/sync/Mutex;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    const/4 p0, 0x5

    :try_start_e
    iput p0, v0, Lads_mobile_sdk/x5;->g:I

    invoke-virtual {v7, v0}, Lads_mobile_sdk/h6;->t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    if-ne p0, v1, :cond_7

    goto/16 :goto_12

    :cond_7
    move-object v13, p1

    move-object p1, p0

    move-object p0, v2

    move-object v2, v13

    :goto_6
    :try_start_f
    check-cast p1, Lads_mobile_sdk/sx2;

    .line 7657
    instance-of v8, p1, Lads_mobile_sdk/i01;

    if-eqz v8, :cond_8

    .line 7658
    move-object v8, p1

    check-cast v8, Lads_mobile_sdk/i01;

    .line 7659
    invoke-static {v8, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 7660
    :cond_8
    invoke-static {p0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_7
    move-object v2, p1

    goto/16 :goto_e

    :goto_8
    move-object v13, v2

    move-object v2, p0

    :goto_9
    move-object p0, v13

    goto :goto_b

    :catchall_4
    move-exception p0

    move-object v13, p1

    move-object p1, p0

    goto :goto_9

    :catchall_5
    move-exception v0

    .line 7672
    :try_start_10
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catchall_6
    move-exception p0

    move-object v7, p1

    :goto_a
    move-object p1, p0

    move-object p0, v7

    goto :goto_b

    :catchall_7
    move-exception p1

    move-object v2, p0

    .line 7681
    :goto_b
    :try_start_11
    invoke-virtual {p0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 7685
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_d

    .line 7687
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_9

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_9

    .line 7693
    invoke-virtual {p0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 7699
    :cond_9
    instance-of p0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p0, :cond_c

    .line 7700
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_b

    .line 7701
    instance-of p0, p1, Lads_mobile_sdk/w01;

    if-eqz p0, :cond_a

    throw p1

    .line 7702
    :cond_a
    new-instance p0, Lads_mobile_sdk/b01;

    invoke-direct {p0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 7703
    :cond_b
    new-instance p0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p0

    .line 7704
    :cond_c
    new-instance p0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p0

    .line 7705
    :cond_d
    throw p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :catchall_8
    move-exception p0

    .line 7706
    :try_start_12
    throw p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    :catchall_9
    move-exception p1

    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 7753
    :cond_e
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p0

    .line 7754
    :try_start_13
    iget-object p1, v2, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 8799
    iput-object v2, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    iput-object p0, v0, Lads_mobile_sdk/x5;->b:Ljava/lang/Object;

    iput-object p0, v0, Lads_mobile_sdk/x5;->c:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/x5;->d:Lkotlinx/coroutines/sync/Mutex;

    const/4 v7, 0x6

    iput v7, v0, Lads_mobile_sdk/x5;->g:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    if-ne v7, v1, :cond_f

    goto/16 :goto_12

    :cond_f
    move-object v7, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v2

    .line 8800
    :goto_c
    :try_start_14
    invoke-static {v7, v4, v6, v3}, Lads_mobile_sdk/h6;->a(Lads_mobile_sdk/h6;ZLjava/lang/String;I)Lads_mobile_sdk/ar2;

    move-result-object v8
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    .line 9849
    :try_start_15
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 9850
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p0

    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object p0

    iput-object v8, p0, Lads_mobile_sdk/uj2;->C:Lads_mobile_sdk/ar2;

    .line 10939
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    .line 10940
    :try_start_16
    iget-object p0, p0, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    .line 10941
    :try_start_17
    iget-object p0, p0, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    .line 10942
    iget-object v8, v7, Lads_mobile_sdk/h6;->b:Ljava/lang/String;

    iput-object v8, p0, Lads_mobile_sdk/n03;->e:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    .line 10944
    :try_start_18
    iput-object v7, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    :try_start_19
    iput-object p1, v0, Lads_mobile_sdk/x5;->b:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/x5;->c:Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    :try_start_1a
    iput-object v6, v0, Lads_mobile_sdk/x5;->d:Lkotlinx/coroutines/sync/Mutex;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    const/4 p0, 0x7

    :try_start_1b
    iput p0, v0, Lads_mobile_sdk/x5;->g:I

    invoke-virtual {v7, v0}, Lads_mobile_sdk/h6;->t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    if-ne p0, v1, :cond_10

    goto/16 :goto_12

    :cond_10
    move-object v13, p1

    move-object p1, p0

    move-object p0, v2

    move-object v2, v13

    :goto_d
    :try_start_1c
    check-cast p1, Lads_mobile_sdk/sx2;

    .line 12032
    instance-of v8, p1, Lads_mobile_sdk/i01;

    if-eqz v8, :cond_11

    .line 12033
    move-object v8, p1

    check-cast v8, Lads_mobile_sdk/i01;

    .line 12034
    invoke-static {v8, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 12035
    :cond_11
    invoke-static {p0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 12036
    :goto_e
    iget-object p0, v7, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 13157
    iput-object v7, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    iput-object v2, v0, Lads_mobile_sdk/x5;->b:Ljava/lang/Object;

    iput-object p0, v0, Lads_mobile_sdk/x5;->c:Ljava/lang/Object;

    const/16 p1, 0x8

    iput p1, v0, Lads_mobile_sdk/x5;->g:I

    invoke-interface {p0, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    goto :goto_12

    .line 13158
    :goto_f
    :try_start_1d
    iget-boolean v7, p0, Lads_mobile_sdk/h6;->j:Z

    if-eqz v7, :cond_12

    .line 13159
    invoke-static {v6, v5, v6}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v7

    iput-object v7, p0, Lads_mobile_sdk/h6;->H:Lkotlinx/coroutines/CompletableJob;

    .line 13160
    invoke-static {v6, v5, v6}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v7

    iput-object v7, p0, Lads_mobile_sdk/h6;->G:Lkotlinx/coroutines/CompletableJob;

    .line 13162
    :cond_12
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    .line 14282
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 14283
    instance-of p1, v2, Lads_mobile_sdk/rx2;

    if-eqz p1, :cond_13

    check-cast v2, Lads_mobile_sdk/rx2;

    .line 14284
    iget-object p1, v2, Lads_mobile_sdk/rx2;->a:Ljava/lang/Object;

    .line 14285
    check-cast p1, Lads_mobile_sdk/xt2;

    iput-object p0, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    iput-object v6, v0, Lads_mobile_sdk/x5;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/x5;->c:Ljava/lang/Object;

    const/16 v2, 0x9

    iput v2, v0, Lads_mobile_sdk/x5;->g:I

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/h6;->a(Lads_mobile_sdk/xt2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_14

    goto :goto_12

    .line 14286
    :cond_13
    instance-of p1, v2, Lads_mobile_sdk/qx2;

    if-eqz p1, :cond_14

    check-cast v2, Lads_mobile_sdk/qx2;

    iput-object p0, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    iput-object v6, v0, Lads_mobile_sdk/x5;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/x5;->c:Ljava/lang/Object;

    const/16 p1, 0xa

    iput p1, v0, Lads_mobile_sdk/x5;->g:I

    invoke-virtual {p0, v2, v0}, Lads_mobile_sdk/h6;->a(Lads_mobile_sdk/qx2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_14

    goto :goto_12

    :cond_14
    :goto_10
    move-object v2, p0

    .line 14289
    iget-object p0, v2, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 15409
    iput-object v2, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    iput-object p0, v0, Lads_mobile_sdk/x5;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/x5;->c:Ljava/lang/Object;

    const/16 p1, 0xb

    iput p1, v0, Lads_mobile_sdk/x5;->g:I

    invoke-interface {p0, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_15

    goto :goto_12

    .line 15410
    :cond_15
    :goto_11
    :try_start_1e
    iput-object v2, v0, Lads_mobile_sdk/x5;->a:Lads_mobile_sdk/h6;

    iput-object p0, v0, Lads_mobile_sdk/x5;->b:Ljava/lang/Object;

    const/16 p1, 0xc

    iput p1, v0, Lads_mobile_sdk/x5;->g:I

    invoke-virtual {v2}, Lads_mobile_sdk/h6;->k()Lkotlin/Unit;

    move-result-object p1

    if-ne p1, v1, :cond_16

    :goto_12
    return-object v1

    :cond_16
    :goto_13
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    .line 16534
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-object p0, v2

    goto/16 :goto_1

    :catchall_a
    move-exception p1

    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_b
    move-exception p0

    .line 16535
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0

    :goto_14
    move-object v13, v2

    move-object v2, p0

    :goto_15
    move-object p0, v13

    goto :goto_17

    :catchall_c
    move-exception p0

    move-object v13, p1

    move-object p1, p0

    goto :goto_15

    :catchall_d
    move-exception v0

    .line 16536
    :try_start_1f
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    :catchall_e
    move-exception p0

    move-object v7, p1

    :goto_16
    move-object p1, p0

    move-object p0, v7

    goto :goto_17

    :catchall_f
    move-exception p1

    move-object v2, p0

    .line 16584
    :goto_17
    :try_start_20
    invoke-virtual {p0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 16588
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_1b

    .line 16590
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_17

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_17

    .line 16596
    invoke-virtual {p0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 16602
    :cond_17
    instance-of p0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p0, :cond_1a

    .line 16603
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_19

    .line 16604
    instance-of p0, p1, Lads_mobile_sdk/w01;

    if-eqz p0, :cond_18

    throw p1

    .line 16605
    :cond_18
    new-instance p0, Lads_mobile_sdk/b01;

    invoke-direct {p0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 16606
    :cond_19
    new-instance p0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p0

    .line 16607
    :cond_1a
    new-instance p0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p0

    .line 16608
    :cond_1b
    throw p1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    :catchall_10
    move-exception p0

    .line 16609
    :try_start_21
    throw p0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    :catchall_11
    move-exception p1

    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :catchall_12
    move-exception p1

    .line 16610
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/x4;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/x4;

    iget v1, v0, Lads_mobile_sdk/x4;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/x4;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/x4;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/x4;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/x4;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 279
    iget v2, v0, Lads_mobile_sdk/x4;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/x4;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/x4;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lads_mobile_sdk/x4;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 280
    iput-object p0, v0, Lads_mobile_sdk/x4;->a:Lads_mobile_sdk/h6;

    iput v4, v0, Lads_mobile_sdk/x4;->e:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    invoke-static {p0, v0}, Lads_mobile_sdk/h6;->d(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    .line 282
    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 283
    :cond_5
    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1233
    iput-object p0, v0, Lads_mobile_sdk/x4;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/x4;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/x4;->e:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    move-object v0, p0

    move-object p0, p1

    .line 1234
    :goto_3
    :try_start_0
    iget-object p1, v0, Lads_mobile_sdk/h6;->H:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 1235
    sget-object p1, Lads_mobile_sdk/w4;->b:Lads_mobile_sdk/w4;

    iput-object p1, v0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    .line 1236
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2187
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2188
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public static d(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/y4;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/y4;

    iget v1, v0, Lads_mobile_sdk/y4;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/y4;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/y4;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/y4;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/y4;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 260
    iget v2, v0, Lads_mobile_sdk/y4;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/y4;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/y4;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1210
    iput-object p0, v0, Lads_mobile_sdk/y4;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/y4;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/y4;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    .line 1211
    :cond_3
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lads_mobile_sdk/h6;->y:Z

    if-nez v0, :cond_5

    .line 1212
    iget-object v0, p0, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lads_mobile_sdk/h6;->p:I

    if-lt v0, v1, :cond_4

    goto :goto_2

    .line 1213
    :cond_4
    iget-object v0, p0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    sget-object v1, Lads_mobile_sdk/w4;->c:Lads_mobile_sdk/w4;

    if-eq v0, v1, :cond_5

    .line 1214
    iget-object v0, p0, Lads_mobile_sdk/h6;->E:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1215
    iget-object v0, p0, Lads_mobile_sdk/h6;->I:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1216
    iget-object v0, p0, Lads_mobile_sdk/h6;->J:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1217
    iget-object v0, p0, Lads_mobile_sdk/h6;->F:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1218
    iget-object p0, p0, Lads_mobile_sdk/h6;->G:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p0}, Lkotlinx/coroutines/CompletableJob;->isCompleted()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v3, 0x0

    .line 1219
    :goto_3
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2172
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 2173
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic e(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/n5;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/n5;

    iget v1, v0, Lads_mobile_sdk/n5;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/n5;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/n5;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/n5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/n5;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 256
    iget v2, v0, Lads_mobile_sdk/n5;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/n5;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/n5;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1199
    iput-object p0, v0, Lads_mobile_sdk/n5;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/n5;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/n5;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    .line 1200
    :cond_3
    :goto_1
    :try_start_0
    iget-object p0, p0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    sget-object v0, Lads_mobile_sdk/w4;->c:Lads_mobile_sdk/w4;

    if-ne p0, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2146
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 2147
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic f(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 255
    instance-of v0, p1, Lads_mobile_sdk/o5;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/o5;

    iget v1, v0, Lads_mobile_sdk/o5;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/o5;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/o5;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/o5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/o5;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 464
    iget v2, v0, Lads_mobile_sdk/o5;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/o5;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/o5;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1353
    iput-object p0, v0, Lads_mobile_sdk/o5;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/o5;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/o5;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    .line 1354
    :cond_3
    :goto_1
    :try_start_0
    iget-object p0, p0, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2247
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 2248
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static g(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 45
    instance-of v0, p1, Lads_mobile_sdk/r5;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/r5;

    iget v1, v0, Lads_mobile_sdk/r5;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/r5;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/r5;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/r5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/r5;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 46
    iget v2, v0, Lads_mobile_sdk/r5;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/r5;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/r5;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1077
    iput-object p0, v0, Lads_mobile_sdk/r5;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/r5;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/r5;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    .line 1078
    :cond_3
    :goto_1
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/h6;->J:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2112
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    .line 2113
    :cond_4
    :try_start_1
    invoke-static {v4, v3, v4}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/h6;->J:Lkotlinx/coroutines/CompletableJob;

    .line 2114
    iget-boolean v0, p0, Lads_mobile_sdk/h6;->j:Z

    if-nez v0, :cond_5

    goto :goto_2

    .line 2115
    :cond_5
    iget-object v0, p0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    sget-object v1, Lads_mobile_sdk/w4;->b:Lads_mobile_sdk/w4;

    if-ne v0, v1, :cond_6

    .line 2116
    sget-object v0, Lads_mobile_sdk/w4;->a:Lads_mobile_sdk/w4;

    iput-object v0, p0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    .line 2117
    invoke-static {v4, v3, v4}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/h6;->H:Lkotlinx/coroutines/CompletableJob;

    .line 2118
    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3149
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic h(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/s5;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/s5;

    iget v1, v0, Lads_mobile_sdk/s5;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/s5;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/s5;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/s5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/s5;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2
    iget v2, v0, Lads_mobile_sdk/s5;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/s5;->a:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lads_mobile_sdk/s5;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/s5;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1038
    iput-object p0, v0, Lads_mobile_sdk/s5;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/s5;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/s5;->e:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_2

    .line 1039
    :cond_4
    :goto_1
    :try_start_1
    iget-object v2, p0, Lads_mobile_sdk/h6;->J:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v2}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 1040
    iget-boolean v2, p0, Lads_mobile_sdk/h6;->n:Z

    if-eqz v2, :cond_5

    .line 1041
    iput-object p1, v0, Lads_mobile_sdk/s5;->a:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/s5;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/s5;->e:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/h6;->x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_5
    move-object p0, p1

    .line 1043
    :goto_3
    :try_start_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2078
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_4
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_5
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic i(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 56
    instance-of v0, p1, Lads_mobile_sdk/t5;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/t5;

    iget v1, v0, Lads_mobile_sdk/t5;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/t5;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/t5;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/t5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/t5;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 57
    iget v2, v0, Lads_mobile_sdk/t5;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/t5;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/t5;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1102
    iput-object p0, v0, Lads_mobile_sdk/t5;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/t5;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/t5;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    .line 1103
    :cond_3
    :goto_1
    :try_start_0
    iget-object p0, p0, Lads_mobile_sdk/h6;->I:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 1104
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2151
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static j(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/u5;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/u5;

    iget v1, v0, Lads_mobile_sdk/u5;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/u5;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/u5;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/u5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/u5;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2
    iget v2, v0, Lads_mobile_sdk/u5;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/u5;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/u5;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1042
    iput-object p0, v0, Lads_mobile_sdk/u5;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/u5;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/u5;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    .line 1043
    :cond_3
    :goto_1
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/h6;->I:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2086
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    .line 2087
    :cond_4
    :try_start_1
    invoke-static {v4, v3, v4}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/h6;->I:Lkotlinx/coroutines/CompletableJob;

    .line 2088
    iget-boolean v0, p0, Lads_mobile_sdk/h6;->j:Z

    if-nez v0, :cond_5

    goto :goto_2

    .line 2089
    :cond_5
    iget-object v0, p0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    sget-object v1, Lads_mobile_sdk/w4;->b:Lads_mobile_sdk/w4;

    if-ne v0, v1, :cond_6

    .line 2090
    sget-object v0, Lads_mobile_sdk/w4;->a:Lads_mobile_sdk/w4;

    iput-object v0, p0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    .line 2091
    invoke-static {v4, v3, v4}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/h6;->H:Lkotlinx/coroutines/CompletableJob;

    .line 2092
    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3132
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/g6;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/g6;

    iget v1, v0, Lads_mobile_sdk/g6;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/g6;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/g6;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/g6;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/g6;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 330
    iget v2, v0, Lads_mobile_sdk/g6;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lads_mobile_sdk/g6;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object p1, v2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v2, v0, Lads_mobile_sdk/g6;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v0, Lads_mobile_sdk/g6;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    move-object v2, v6

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    .line 332
    :goto_1
    iget-object v2, p1, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1457
    iput-object p1, v0, Lads_mobile_sdk/g6;->a:Lads_mobile_sdk/h6;

    iput-object v2, v0, Lads_mobile_sdk/g6;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/g6;->e:I

    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_5

    goto/16 :goto_4

    :cond_5
    move-object v7, v2

    move-object v2, p1

    move-object p1, v7

    .line 1458
    :goto_2
    :try_start_0
    iget-object v6, v2, Lads_mobile_sdk/h6;->D:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v6}, Lkotlinx/coroutines/CompletableJob;->isCompleted()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1459
    iget-object v6, v2, Lads_mobile_sdk/h6;->D:Lkotlinx/coroutines/CompletableJob;

    goto :goto_3

    .line 1460
    :cond_6
    iget-object v6, v2, Lads_mobile_sdk/h6;->E:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v6}, Lkotlinx/coroutines/CompletableJob;->isCompleted()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1461
    iget-object v6, v2, Lads_mobile_sdk/h6;->E:Lkotlinx/coroutines/CompletableJob;

    goto :goto_3

    .line 1462
    :cond_7
    iget-object v6, v2, Lads_mobile_sdk/h6;->F:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v6}, Lkotlinx/coroutines/CompletableJob;->isCompleted()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1463
    iget-object v6, v2, Lads_mobile_sdk/h6;->F:Lkotlinx/coroutines/CompletableJob;

    goto :goto_3

    .line 1464
    :cond_8
    iget-object v6, v2, Lads_mobile_sdk/h6;->I:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v6}, Lkotlinx/coroutines/CompletableJob;->isCompleted()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1465
    iget-object v6, v2, Lads_mobile_sdk/h6;->I:Lkotlinx/coroutines/CompletableJob;

    goto :goto_3

    .line 1466
    :cond_9
    iget-object v6, v2, Lads_mobile_sdk/h6;->J:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v6}, Lkotlinx/coroutines/CompletableJob;->isCompleted()Z

    move-result v6

    if-nez v6, :cond_a

    .line 1467
    iget-object v6, v2, Lads_mobile_sdk/h6;->J:Lkotlinx/coroutines/CompletableJob;

    goto :goto_3

    .line 1468
    :cond_a
    iget-object v6, v2, Lads_mobile_sdk/h6;->G:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v6}, Lkotlinx/coroutines/CompletableJob;->isCompleted()Z

    move-result v6

    if-nez v6, :cond_b

    .line 1469
    iget-object v6, v2, Lads_mobile_sdk/h6;->G:Lkotlinx/coroutines/CompletableJob;

    goto :goto_3

    .line 1470
    :cond_b
    iget-object v6, v2, Lads_mobile_sdk/h6;->H:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v6}, Lkotlinx/coroutines/CompletableJob;->isCompleted()Z

    move-result v6

    if-nez v6, :cond_c

    .line 1471
    iget-object v6, v2, Lads_mobile_sdk/h6;->H:Lkotlinx/coroutines/CompletableJob;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_c
    move-object v6, v5

    .line 2586
    :goto_3
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v6, :cond_d

    .line 2587
    iput-object v2, v0, Lads_mobile_sdk/g6;->a:Lads_mobile_sdk/h6;

    iput-object v5, v0, Lads_mobile_sdk/g6;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/g6;->e:I

    invoke-interface {v6, v0}, Lkotlinx/coroutines/CompletableJob;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    :goto_4
    return-object v1

    .line 2589
    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception v0

    .line 3695
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 15745
    invoke-static {p0, p3}, Lads_mobile_sdk/h6;->i(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/qx2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 7404
    instance-of v3, v2, Lads_mobile_sdk/c5;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/c5;

    iget v4, v3, Lads_mobile_sdk/c5;->h:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/c5;->h:I

    goto :goto_0

    :cond_0
    new-instance v3, Lads_mobile_sdk/c5;

    invoke-direct {v3, v1, v2}, Lads_mobile_sdk/c5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lads_mobile_sdk/c5;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 7806
    iget v5, v3, Lads_mobile_sdk/c5;->h:I

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v3, Lads_mobile_sdk/c5;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v3, Lads_mobile_sdk/c5;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v7, v3, Lads_mobile_sdk/c5;->c:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v3, Lads_mobile_sdk/c5;->b:Lads_mobile_sdk/qx2;

    iget-object v12, v3, Lads_mobile_sdk/c5;->a:Lads_mobile_sdk/h6;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v17, v11

    move-object v11, v0

    move-object/from16 v0, v17

    goto/16 :goto_2

    :cond_3
    iget-object v0, v3, Lads_mobile_sdk/c5;->b:Lads_mobile_sdk/qx2;

    iget-object v5, v3, Lads_mobile_sdk/c5;->a:Lads_mobile_sdk/h6;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v5

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 7807
    iget-object v2, v1, Lads_mobile_sdk/h6;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    if-eqz v2, :cond_6

    .line 7808
    new-instance v5, Lads_mobile_sdk/f5;

    invoke-direct {v5, v2, v1, v0, v10}, Lads_mobile_sdk/f5;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lads_mobile_sdk/h6;Lads_mobile_sdk/qx2;Lkotlin/coroutines/Continuation;)V

    .line 7811
    iget-object v2, v1, Lads_mobile_sdk/h6;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7813
    const-string v11, "key"

    const-string v12, "gads:preload_validator:enabled"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7829
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v13, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v2, v12, v11, v13}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7830
    new-instance v2, Lads_mobile_sdk/wq2;

    .line 7831
    iget-object v11, v1, Lads_mobile_sdk/h6;->b:Ljava/lang/String;

    .line 7832
    iget-object v12, v1, Lads_mobile_sdk/h6;->k:Lads_mobile_sdk/j53;

    .line 7833
    sget-object v13, Lads_mobile_sdk/xq2;->b:Lads_mobile_sdk/xq2;

    .line 7834
    invoke-direct {v2, v11, v12, v13}, Lads_mobile_sdk/wq2;-><init>(Ljava/lang/String;Lads_mobile_sdk/j53;Lads_mobile_sdk/xq2;)V

    .line 7835
    new-instance v11, Lads_mobile_sdk/d5;

    invoke-direct {v11, v5, v10}, Lads_mobile_sdk/d5;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object v1, v3, Lads_mobile_sdk/c5;->a:Lads_mobile_sdk/h6;

    iput-object v0, v3, Lads_mobile_sdk/c5;->b:Lads_mobile_sdk/qx2;

    iput v9, v3, Lads_mobile_sdk/c5;->h:I

    invoke-static {v2, v11, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_6

    goto/16 :goto_7

    .line 7845
    :cond_5
    iput-object v1, v3, Lads_mobile_sdk/c5;->a:Lads_mobile_sdk/h6;

    iput-object v0, v3, Lads_mobile_sdk/c5;->b:Lads_mobile_sdk/qx2;

    iput v8, v3, Lads_mobile_sdk/c5;->h:I

    invoke-virtual {v5, v3}, Lads_mobile_sdk/f5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_6

    goto/16 :goto_7

    :cond_6
    move-object v12, v1

    .line 7848
    :goto_1
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 7849
    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 7850
    iget-object v11, v12, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 8905
    iput-object v12, v3, Lads_mobile_sdk/c5;->a:Lads_mobile_sdk/h6;

    iput-object v0, v3, Lads_mobile_sdk/c5;->b:Lads_mobile_sdk/qx2;

    iput-object v2, v3, Lads_mobile_sdk/c5;->c:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object v5, v3, Lads_mobile_sdk/c5;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object v11, v3, Lads_mobile_sdk/c5;->e:Lkotlinx/coroutines/sync/Mutex;

    iput v7, v3, Lads_mobile_sdk/c5;->h:I

    invoke-interface {v11, v10, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_7

    goto/16 :goto_7

    :cond_7
    move-object v7, v2

    .line 8906
    :goto_2
    :try_start_0
    sget-object v2, Lads_mobile_sdk/w4;->a:Lads_mobile_sdk/w4;

    iput-object v2, v12, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    .line 8907
    iget v2, v12, Lads_mobile_sdk/h6;->w:I

    add-int/2addr v2, v9

    iput v2, v12, Lads_mobile_sdk/h6;->w:I

    .line 8908
    sget-object v2, Lads_mobile_sdk/h6;->K:Ljava/util/Set;

    .line 8909
    iget-object v0, v0, Lads_mobile_sdk/qx2;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    .line 8910
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;->getCode()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, v12, Lads_mobile_sdk/h6;->w:I

    iget v2, v12, Lads_mobile_sdk/h6;->q:I

    if-le v0, v2, :cond_8

    goto :goto_4

    :cond_8
    if-le v0, v9, :cond_a

    .line 8916
    iget-wide v13, v12, Lads_mobile_sdk/h6;->r:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v13, v15

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    if-lez v0, :cond_9

    .line 8918
    :try_start_1
    iget-object v0, v12, Lads_mobile_sdk/h6;->h:Lads_mobile_sdk/f13;

    move-object v2, v7

    int-to-double v6, v8

    mul-double/2addr v6, v13

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8919
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextDouble()D

    move-result-wide v13

    mul-double/2addr v13, v6

    add-double/2addr v13, v15

    .line 8920
    iget-wide v6, v12, Lads_mobile_sdk/h6;->r:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-double v15, v13, v6

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v8, v10

    move-object v15, v11

    goto/16 :goto_a

    :cond_9
    move-object v2, v7

    :goto_3
    move-wide v6, v15

    .line 8924
    :try_start_2
    iget-wide v13, v12, Lads_mobile_sdk/h6;->x:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v15, v11

    :try_start_3
    iget-wide v10, v12, Lads_mobile_sdk/h6;->t:D

    invoke-static {v13, v14, v10, v11}, Lkotlin/time/Duration;->times-UwyO8pc(JD)J

    move-result-wide v10

    invoke-static {v10, v11, v6, v7}, Lkotlin/time/Duration;->times-UwyO8pc(JD)J

    move-result-wide v6

    iput-wide v6, v12, Lads_mobile_sdk/h6;->x:J

    .line 8925
    iget-wide v10, v12, Lads_mobile_sdk/h6;->s:J

    invoke-static {v6, v7, v10, v11}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v0

    if-lez v0, :cond_c

    .line 8926
    iget-wide v6, v12, Lads_mobile_sdk/h6;->s:J

    iput-wide v6, v12, Lads_mobile_sdk/h6;->x:J

    goto :goto_5

    :cond_a
    move-object v2, v7

    move-object v15, v11

    goto :goto_5

    :cond_b
    :goto_4
    move-object v2, v7

    move-object v15, v11

    .line 8927
    iput-boolean v9, v12, Lads_mobile_sdk/h6;->y:Z

    .line 8928
    iget-object v0, v12, Lads_mobile_sdk/h6;->z:Lkotlinx/coroutines/Job;

    const/4 v8, 0x0

    invoke-static {v0, v8, v9, v8}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8943
    :cond_c
    :goto_5
    iget-object v0, v12, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iput v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 8944
    iget-object v0, v12, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    sget-object v6, Lads_mobile_sdk/w4;->c:Lads_mobile_sdk/w4;

    if-ne v0, v6, :cond_d

    goto :goto_6

    :cond_d
    const/4 v9, 0x0

    :goto_6
    iput-boolean v9, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 8945
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v8, 0x0

    .line 9982
    invoke-interface {v15, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 9983
    iget v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-boolean v2, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iput-object v8, v3, Lads_mobile_sdk/c5;->a:Lads_mobile_sdk/h6;

    iput-object v8, v3, Lads_mobile_sdk/c5;->b:Lads_mobile_sdk/qx2;

    iput-object v8, v3, Lads_mobile_sdk/c5;->c:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object v8, v3, Lads_mobile_sdk/c5;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object v8, v3, Lads_mobile_sdk/c5;->e:Lkotlinx/coroutines/sync/Mutex;

    const/4 v5, 0x4

    iput v5, v3, Lads_mobile_sdk/c5;->h:I

    invoke-virtual {v12, v0, v2}, Lads_mobile_sdk/h6;->a(IZ)Lkotlin/Unit;

    move-result-object v0

    if-ne v0, v4, :cond_e

    :goto_7
    return-object v4

    .line 9984
    :cond_e
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v15, v11

    :goto_9
    const/4 v8, 0x0

    .line 11019
    :goto_a
    invoke-interface {v15, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lads_mobile_sdk/xt2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 11020
    const-string v3, "block"

    const-string v4, "context"

    const-string v5, "<this>"

    instance-of v6, v2, Lads_mobile_sdk/g5;

    if-eqz v6, :cond_0

    move-object v6, v2

    check-cast v6, Lads_mobile_sdk/g5;

    iget v7, v6, Lads_mobile_sdk/g5;->g:I

    const/high16 v8, -0x80000000

    and-int v9, v7, v8

    if-eqz v9, :cond_0

    sub-int/2addr v7, v8

    iput v7, v6, Lads_mobile_sdk/g5;->g:I

    goto :goto_0

    :cond_0
    new-instance v6, Lads_mobile_sdk/g5;

    invoke-direct {v6, v1, v2}, Lads_mobile_sdk/g5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v6, Lads_mobile_sdk/g5;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 11379
    iget v8, v6, Lads_mobile_sdk/g5;->g:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_2

    if-ne v8, v9, :cond_1

    iget-object v0, v6, Lads_mobile_sdk/g5;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v6, Lads_mobile_sdk/g5;->c:Lads_mobile_sdk/yt2;

    iget-object v8, v6, Lads_mobile_sdk/g5;->b:Lads_mobile_sdk/xt2;

    iget-object v6, v6, Lads_mobile_sdk/g5;->a:Lads_mobile_sdk/h6;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v18, v8

    move-object v8, v0

    move-object/from16 v0, v18

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11380
    new-instance v2, Lads_mobile_sdk/yt2;

    sget-object v8, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v8, v1, Lads_mobile_sdk/h6;->f:Lads_mobile_sdk/tx;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11381
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 11382
    sget-object v8, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v11, v12, v8}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v11

    .line 11383
    invoke-direct {v2, v0, v11, v12}, Lads_mobile_sdk/yt2;-><init>(Lads_mobile_sdk/xt2;J)V

    .line 11384
    iget-object v8, v1, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 12489
    iput-object v1, v6, Lads_mobile_sdk/g5;->a:Lads_mobile_sdk/h6;

    iput-object v0, v6, Lads_mobile_sdk/g5;->b:Lads_mobile_sdk/xt2;

    iput-object v2, v6, Lads_mobile_sdk/g5;->c:Lads_mobile_sdk/yt2;

    iput-object v8, v6, Lads_mobile_sdk/g5;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v9, v6, Lads_mobile_sdk/g5;->g:I

    invoke-interface {v8, v10, v6}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v7, :cond_3

    return-object v7

    :cond_3
    move-object v6, v1

    move-object v7, v2

    .line 12490
    :goto_1
    :try_start_0
    sget-object v2, Lads_mobile_sdk/w4;->a:Lads_mobile_sdk/w4;

    iput-object v2, v6, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    .line 12491
    iget-object v2, v6, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {v2, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 12493
    iget-object v11, v6, Lads_mobile_sdk/h6;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/h5;

    invoke-direct {v2, v6, v10}, Lads_mobile_sdk/h5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    .line 12494
    sget-object v13, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 12495
    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12753
    new-instance v14, Lads_mobile_sdk/ws3;

    invoke-direct {v14, v2, v10}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v15, 0x2

    const/16 v16, 0x0

    move-object v12, v13

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v2

    .line 12754
    iget-boolean v11, v6, Lads_mobile_sdk/h6;->n:Z

    if-eqz v11, :cond_4

    .line 12755
    iput-object v2, v7, Lads_mobile_sdk/yt2;->c:Lkotlinx/coroutines/Job;

    .line 12756
    :cond_4
    iget-object v2, v6, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    iget v7, v6, Lads_mobile_sdk/h6;->p:I

    if-lt v2, v7, :cond_5

    .line 12757
    invoke-static {v10, v9, v10}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v2

    iput-object v2, v6, Lads_mobile_sdk/h6;->D:Lkotlinx/coroutines/CompletableJob;

    :cond_5
    const/4 v2, 0x0

    .line 12758
    iput v2, v6, Lads_mobile_sdk/h6;->w:I

    .line 12759
    iget-wide v13, v6, Lads_mobile_sdk/h6;->o:J

    iput-wide v13, v6, Lads_mobile_sdk/h6;->x:J

    .line 12760
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13852
    invoke-interface {v8, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 13853
    iget-object v7, v6, Lads_mobile_sdk/h6;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    if-eqz v7, :cond_6

    .line 13854
    iget-object v8, v6, Lads_mobile_sdk/h6;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v9, Lads_mobile_sdk/l5;

    invoke-direct {v9, v7, v6, v0, v10}, Lads_mobile_sdk/l5;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lads_mobile_sdk/h6;Lads_mobile_sdk/xt2;Lkotlin/coroutines/Continuation;)V

    .line 13855
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14113
    new-instance v15, Lads_mobile_sdk/ws3;

    invoke-direct {v15, v9, v10}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v14, 0x0

    move-object v13, v12

    move-object v12, v8

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_6
    return-object v2

    :catchall_0
    move-exception v0

    .line 14114
    invoke-interface {v8, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Ljava/util/Iterator;Lads_mobile_sdk/yt2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 2714
    instance-of v3, v2, Lads_mobile_sdk/a5;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/a5;

    iget v4, v3, Lads_mobile_sdk/a5;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/a5;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Lads_mobile_sdk/a5;

    invoke-direct {v3, v1, v2}, Lads_mobile_sdk/a5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lads_mobile_sdk/a5;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 3217
    iget v5, v3, Lads_mobile_sdk/a5;->e:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v4, v3, Lads_mobile_sdk/a5;->b:Lads_mobile_sdk/rr3;

    iget-object v3, v3, Lads_mobile_sdk/a5;->a:Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 3218
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v3, Lads_mobile_sdk/a5;->b:Lads_mobile_sdk/rr3;

    iget-object v3, v3, Lads_mobile_sdk/a5;->a:Lads_mobile_sdk/rr3;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_2

    .line 3219
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3223
    iget-object v2, v1, Lads_mobile_sdk/h6;->e:Lads_mobile_sdk/g83;

    sget-object v5, Lads_mobile_sdk/s11;->l1:Lads_mobile_sdk/s11;

    .line 4215
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 4216
    new-instance v11, Lads_mobile_sdk/ks3;

    .line 4217
    new-instance v12, Lads_mobile_sdk/n03;

    invoke-direct {v12}, Lads_mobile_sdk/n03;-><init>()V

    .line 4218
    new-instance v13, Lads_mobile_sdk/tn1;

    invoke-direct {v13}, Lads_mobile_sdk/tn1;-><init>()V

    .line 4219
    new-instance v14, Lads_mobile_sdk/m33;

    invoke-direct {v14}, Lads_mobile_sdk/m33;-><init>()V

    .line 4220
    new-instance v15, Lads_mobile_sdk/zb;

    invoke-direct {v15}, Lads_mobile_sdk/zb;-><init>()V

    .line 4221
    invoke-direct {v11, v12, v13, v14, v15}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 4222
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v12

    .line 4223
    iget-object v12, v12, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v12, :cond_c

    .line 4224
    invoke-static {v2, v5, v10, v11}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v2

    .line 4225
    :try_start_2
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v5

    invoke-virtual {v5}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v5

    .line 4226
    iget-object v6, v0, Lads_mobile_sdk/yt2;->a:Lads_mobile_sdk/xt2;

    .line 4227
    iget-object v6, v6, Lads_mobile_sdk/xt2;->a:Lads_mobile_sdk/zh1;

    .line 4228
    invoke-interface {v6}, Lads_mobile_sdk/zh1;->f()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v7, v6, v8}, Lads_mobile_sdk/h6;->a(Lads_mobile_sdk/h6;ZLjava/lang/String;I)Lads_mobile_sdk/ar2;

    move-result-object v6

    .line 4229
    iput-object v6, v5, Lads_mobile_sdk/uj2;->C:Lads_mobile_sdk/ar2;

    .line 4232
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->remove()V

    .line 4233
    iget-object v5, v0, Lads_mobile_sdk/yt2;->c:Lkotlinx/coroutines/Job;

    if-eqz v5, :cond_4

    .line 4234
    invoke-static {v5, v9, v8, v9}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4235
    :cond_4
    iget-object v0, v0, Lads_mobile_sdk/yt2;->a:Lads_mobile_sdk/xt2;

    .line 4236
    iget-object v0, v0, Lads_mobile_sdk/xt2;->a:Lads_mobile_sdk/zh1;

    .line 4237
    invoke-interface {v0}, Lads_mobile_sdk/zh1;->destroy()V

    .line 4238
    iput-object v2, v3, Lads_mobile_sdk/a5;->a:Lads_mobile_sdk/rr3;

    iput-object v2, v3, Lads_mobile_sdk/a5;->b:Lads_mobile_sdk/rr3;

    iput v8, v3, Lads_mobile_sdk/a5;->e:I

    .line 4239
    invoke-virtual {v1, v7, v3}, Lads_mobile_sdk/h6;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/Unit;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v4, :cond_5

    goto/16 :goto_4

    :cond_5
    move-object v3, v2

    move-object v4, v3

    .line 4240
    :goto_1
    :try_start_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5230
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_6

    .line 5231
    check-cast v0, Lads_mobile_sdk/i01;

    .line 5232
    invoke-static {v0, v7}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5233
    :cond_6
    invoke-static {v4, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :goto_2
    move-object v2, v3

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v4, v2

    .line 5241
    :goto_3
    :try_start_4
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 5245
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_b

    .line 5247
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_7

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_7

    .line 5253
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 5259
    :cond_7
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_a

    .line 5260
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_9

    .line 5261
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_8

    throw v0

    .line 5262
    :cond_8
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 5263
    :cond_9
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 5264
    :cond_a
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 5265
    :cond_b
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 5266
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 5300
    :cond_c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2, v8}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 5301
    :try_start_6
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v5

    invoke-virtual {v5}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v5

    .line 5302
    iget-object v10, v0, Lads_mobile_sdk/yt2;->a:Lads_mobile_sdk/xt2;

    .line 5303
    iget-object v10, v10, Lads_mobile_sdk/xt2;->a:Lads_mobile_sdk/zh1;

    .line 5304
    invoke-interface {v10}, Lads_mobile_sdk/zh1;->f()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v7, v10, v8}, Lads_mobile_sdk/h6;->a(Lads_mobile_sdk/h6;ZLjava/lang/String;I)Lads_mobile_sdk/ar2;

    move-result-object v10

    .line 5305
    iput-object v10, v5, Lads_mobile_sdk/uj2;->C:Lads_mobile_sdk/ar2;

    .line 5308
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->remove()V

    .line 5309
    iget-object v5, v0, Lads_mobile_sdk/yt2;->c:Lkotlinx/coroutines/Job;

    if-eqz v5, :cond_d

    .line 5310
    invoke-static {v5, v9, v8, v9}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 5311
    :cond_d
    iget-object v0, v0, Lads_mobile_sdk/yt2;->a:Lads_mobile_sdk/xt2;

    .line 5312
    iget-object v0, v0, Lads_mobile_sdk/xt2;->a:Lads_mobile_sdk/zh1;

    .line 5313
    invoke-interface {v0}, Lads_mobile_sdk/zh1;->destroy()V

    .line 5314
    iput-object v2, v3, Lads_mobile_sdk/a5;->a:Lads_mobile_sdk/rr3;

    iput-object v2, v3, Lads_mobile_sdk/a5;->b:Lads_mobile_sdk/rr3;

    iput v6, v3, Lads_mobile_sdk/a5;->e:I

    .line 5315
    invoke-virtual {v1, v7, v3}, Lads_mobile_sdk/h6;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/Unit;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-ne v0, v4, :cond_e

    :goto_4
    return-object v4

    :cond_e
    move-object v3, v2

    move-object v4, v3

    .line 5316
    :goto_5
    :try_start_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6343
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_f

    .line 6344
    check-cast v0, Lads_mobile_sdk/i01;

    .line 6345
    invoke-static {v0, v7}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 6346
    :cond_f
    invoke-static {v4, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 6347
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_7
    move-object v2, v3

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v4, v2

    .line 7378
    :goto_8
    :try_start_8
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 7382
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_14

    .line 7384
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_10

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_10

    .line 7390
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 7396
    :cond_10
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_13

    .line 7397
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_12

    .line 7398
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_11

    throw v0

    .line 7399
    :cond_11
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 7400
    :cond_12
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 7401
    :cond_13
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 7402
    :cond_14
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 7403
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(IZ)Lkotlin/Unit;
    .locals 8

    .line 14116
    iget-boolean v0, p0, Lads_mobile_sdk/h6;->j:Z

    if-nez v0, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 14117
    :cond_0
    iget-object v1, p0, Lads_mobile_sdk/h6;->i:Lads_mobile_sdk/pt2;

    .line 14118
    iget-object v6, v1, Lads_mobile_sdk/pt2;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 14119
    new-instance v0, Lads_mobile_sdk/sr2;

    const/4 v5, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/sr2;-><init>(Lads_mobile_sdk/pt2;Lads_mobile_sdk/h6;IZLkotlin/coroutines/Continuation;)V

    .line 14120
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 14121
    const-string p1, "<this>"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14379
    new-instance v5, Lads_mobile_sdk/ws3;

    const/4 p1, 0x0

    invoke-direct {v5, v0, p1}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    move-object v2, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 14380
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14381
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    return-object p1
.end method

.method public final a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/Unit;
    .locals 8

    .line 14383
    iget-object v0, p0, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 14384
    sget-object v0, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 15436
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-virtual {v0, p2}, Lkotlinx/coroutines/NonCancellable;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 15437
    sget-object v0, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {p2, v0}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 15438
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {p2, v0}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 15439
    sget-object v0, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {p2, v0}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 15440
    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    .line 15446
    new-instance v5, Lads_mobile_sdk/p5;

    invoke-direct {v5, p0, v1}, Lads_mobile_sdk/p5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 15447
    :cond_0
    iget-object p2, p0, Lads_mobile_sdk/h6;->D:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p2}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    if-nez p1, :cond_1

    .line 15451
    iget-object p1, p0, Lads_mobile_sdk/h6;->A:Lkotlinx/coroutines/Job;

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15452
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 15455
    :cond_1
    iget-object p1, p0, Lads_mobile_sdk/h6;->A:Lkotlinx/coroutines/Job;

    const/4 p2, 0x1

    invoke-static {p1, v1, p2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 15456
    iget-object p1, p0, Lads_mobile_sdk/h6;->F:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 15466
    invoke-static {v1, p2, v1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/h6;->F:Lkotlinx/coroutines/CompletableJob;

    .line 15467
    iget-boolean p1, p0, Lads_mobile_sdk/h6;->j:Z

    if-nez p1, :cond_2

    goto :goto_0

    .line 15468
    :cond_2
    iget-object p1, p0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    sget-object v0, Lads_mobile_sdk/w4;->b:Lads_mobile_sdk/w4;

    if-ne p1, v0, :cond_3

    .line 15469
    sget-object p1, Lads_mobile_sdk/w4;->a:Lads_mobile_sdk/w4;

    iput-object p1, p0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    .line 15470
    invoke-static {v1, p2, v1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/h6;->H:Lkotlinx/coroutines/CompletableJob;

    .line 15471
    :cond_3
    :goto_0
    iget-object v2, p0, Lads_mobile_sdk/h6;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/q5;

    invoke-direct {p1, p0, v1}, Lads_mobile_sdk/q5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    .line 15472
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 15473
    const-string p2, "<this>"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "block"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15731
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, p1, v1}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 15732
    iput-object p1, p0, Lads_mobile_sdk/h6;->A:Lkotlinx/coroutines/Job;

    .line 15744
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 18786
    invoke-static {p0, p3}, Lads_mobile_sdk/h6;->h(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 16611
    instance-of v0, p1, Lads_mobile_sdk/b5;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/b5;

    iget v1, v0, Lads_mobile_sdk/b5;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/b5;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/b5;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/b5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/b5;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 16881
    iget v2, v0, Lads_mobile_sdk/b5;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lads_mobile_sdk/b5;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/b5;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 17831
    iput-object p0, v0, Lads_mobile_sdk/b5;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/b5;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/b5;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 17832
    :goto_1
    :try_start_0
    iget-object p1, v0, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    add-int/lit8 v2, p1, -0x1

    .line 17833
    iget-object v0, v0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    sget-object v3, Lads_mobile_sdk/w4;->c:Lads_mobile_sdk/w4;

    if-eq v0, v3, :cond_5

    sget-object v3, Lads_mobile_sdk/w4;->b:Lads_mobile_sdk/w4;

    if-ne v0, v3, :cond_4

    goto :goto_2

    :cond_4
    move p1, v2

    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 17836
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18785
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final c(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 2189
    invoke-static {p0, p3}, Lads_mobile_sdk/h6;->j(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 2174
    invoke-static {p0, p3}, Lads_mobile_sdk/h6;->g(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f()I
    .locals 1

    .line 254
    iget v0, p0, Lads_mobile_sdk/h6;->p:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lads_mobile_sdk/h6;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lads_mobile_sdk/j53;
    .locals 1

    .line 55
    iget-object v0, p0, Lads_mobile_sdk/h6;->k:Lads_mobile_sdk/j53;

    return-object v0
.end method

.method public final k()Lkotlin/Unit;
    .locals 8

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/h6;->B:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/h6;->G:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 5
    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/h6;->G:Lkotlinx/coroutines/CompletableJob;

    .line 6
    iget-object v2, p0, Lads_mobile_sdk/h6;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/e6;

    invoke-direct {v0, p0, v1}, Lads_mobile_sdk/e6;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    .line 7
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 8
    const-string v4, "<this>"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, v0, v1}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 267
    iput-object v0, p0, Lads_mobile_sdk/h6;->B:Lkotlinx/coroutines/Job;

    .line 279
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/m5;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/m5;

    iget v1, v0, Lads_mobile_sdk/m5;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/m5;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/m5;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/m5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/m5;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 198
    iget v2, v0, Lads_mobile_sdk/m5;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lads_mobile_sdk/m5;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lads_mobile_sdk/m5;->c:Lads_mobile_sdk/rr3;

    iget-object v8, v0, Lads_mobile_sdk/m5;->b:Lads_mobile_sdk/rr3;

    iget-object v9, v0, Lads_mobile_sdk/m5;->a:Lads_mobile_sdk/h6;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 199
    :cond_3
    iget-object v2, v0, Lads_mobile_sdk/m5;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lads_mobile_sdk/m5;->c:Lads_mobile_sdk/rr3;

    iget-object v8, v0, Lads_mobile_sdk/m5;->b:Lads_mobile_sdk/rr3;

    iget-object v9, v0, Lads_mobile_sdk/m5;->a:Lads_mobile_sdk/h6;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto/16 :goto_2

    .line 200
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 201
    iget-object p1, p0, Lads_mobile_sdk/h6;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->q0()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 202
    iget-object p1, p0, Lads_mobile_sdk/h6;->l:Lads_mobile_sdk/k6;

    iget-object v2, p0, Lads_mobile_sdk/h6;->b:Ljava/lang/String;

    iget-object v8, p0, Lads_mobile_sdk/h6;->k:Lads_mobile_sdk/j53;

    invoke-virtual {p1, v8, v2}, Lads_mobile_sdk/k6;->a(Lads_mobile_sdk/j53;Ljava/lang/String;)V

    .line 204
    :cond_5
    iget-object p1, p0, Lads_mobile_sdk/h6;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    const-string v2, "key"

    const-string v8, "gads:resetExponentialBackoffOnAdAvailable:enabled"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v9, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v8, v2, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 223
    iget-object p1, p0, Lads_mobile_sdk/h6;->e:Lads_mobile_sdk/g83;

    sget-object v2, Lads_mobile_sdk/s11;->o1:Lads_mobile_sdk/s11;

    .line 1029
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 1030
    new-instance v9, Lads_mobile_sdk/ks3;

    .line 1031
    new-instance v10, Lads_mobile_sdk/n03;

    invoke-direct {v10}, Lads_mobile_sdk/n03;-><init>()V

    .line 1032
    new-instance v11, Lads_mobile_sdk/tn1;

    invoke-direct {v11}, Lads_mobile_sdk/tn1;-><init>()V

    .line 1033
    new-instance v12, Lads_mobile_sdk/m33;

    invoke-direct {v12}, Lads_mobile_sdk/m33;-><init>()V

    .line 1034
    new-instance v13, Lads_mobile_sdk/zb;

    invoke-direct {v13}, Lads_mobile_sdk/zb;-><init>()V

    .line 1035
    invoke-direct {v9, v10, v11, v12, v13}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 1036
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v10

    .line 1037
    iget-object v10, v10, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v10, :cond_d

    .line 1038
    invoke-static {p1, v2, v8, v9}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 1039
    :try_start_2
    iget-object v2, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1855
    iput-object p0, v0, Lads_mobile_sdk/m5;->a:Lads_mobile_sdk/h6;

    iput-object v4, v0, Lads_mobile_sdk/m5;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v0, Lads_mobile_sdk/m5;->c:Lads_mobile_sdk/rr3;

    iput-object v2, v0, Lads_mobile_sdk/m5;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v0, Lads_mobile_sdk/m5;->g:I

    invoke-interface {v2, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne p1, v1, :cond_6

    goto/16 :goto_6

    :cond_6
    move-object v9, p0

    move-object v8, v4

    .line 1856
    :goto_1
    :try_start_3
    iput v6, v9, Lads_mobile_sdk/h6;->w:I

    .line 1857
    iget-wide v10, v9, Lads_mobile_sdk/h6;->o:J

    iput-wide v10, v9, Lads_mobile_sdk/h6;->x:J

    .line 1858
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2678
    :try_start_4
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2680
    instance-of v2, p1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_7

    .line 2681
    check-cast p1, Lads_mobile_sdk/i01;

    .line 2682
    invoke-static {p1, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2683
    :cond_7
    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catchall_2
    move-exception p1

    .line 2695
    :try_start_5
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_3
    move-exception p1

    move-object v8, v4

    .line 2702
    :goto_2
    :try_start_6
    invoke-virtual {v8, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2706
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_c

    .line 2708
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_8

    .line 2714
    invoke-virtual {v8, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2720
    :cond_8
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_b

    .line 2721
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_a

    .line 2722
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_9

    throw p1

    .line 2723
    :cond_9
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2724
    :cond_a
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 2725
    :cond_b
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 2726
    :cond_c
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    .line 2727
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v4, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 2772
    :cond_d
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {v2, p1, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 2773
    :try_start_8
    iget-object v2, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 3589
    iput-object p0, v0, Lads_mobile_sdk/m5;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/m5;->b:Lads_mobile_sdk/rr3;

    iput-object p1, v0, Lads_mobile_sdk/m5;->c:Lads_mobile_sdk/rr3;

    iput-object v2, v0, Lads_mobile_sdk/m5;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/m5;->g:I

    invoke-interface {v2, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-ne v4, v1, :cond_e

    goto/16 :goto_6

    :cond_e
    move-object v9, p0

    move-object v4, p1

    move-object v8, v4

    .line 3590
    :goto_3
    :try_start_9
    iput v6, v9, Lads_mobile_sdk/h6;->w:I

    .line 3591
    iget-wide v10, v9, Lads_mobile_sdk/h6;->o:J

    iput-wide v10, v9, Lads_mobile_sdk/h6;->x:J

    .line 3592
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 4412
    :try_start_a
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 4451
    instance-of v2, p1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_f

    .line 4452
    check-cast p1, Lads_mobile_sdk/i01;

    .line 4453
    invoke-static {p1, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 4454
    :cond_f
    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_6
    move-exception p1

    .line 4455
    :try_start_b
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_7
    move-exception v0

    move-object v4, p1

    move-object v8, v4

    move-object p1, v0

    .line 4499
    :goto_4
    :try_start_c
    invoke-virtual {v8, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 4503
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_14

    .line 4505
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_10

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_10

    .line 4511
    invoke-virtual {v8, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 4517
    :cond_10
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_13

    .line 4518
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_12

    .line 4519
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_11

    throw p1

    .line 4520
    :cond_11
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 4521
    :cond_12
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 4522
    :cond_13
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 4523
    :cond_14
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :catchall_8
    move-exception p1

    .line 4524
    :try_start_d
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    :catchall_9
    move-exception v0

    invoke-static {v4, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_15
    move-object v9, p0

    .line 4525
    :goto_5
    iput-object v7, v0, Lads_mobile_sdk/m5;->a:Lads_mobile_sdk/h6;

    iput-object v7, v0, Lads_mobile_sdk/m5;->b:Lads_mobile_sdk/rr3;

    iput-object v7, v0, Lads_mobile_sdk/m5;->c:Lads_mobile_sdk/rr3;

    iput-object v7, v0, Lads_mobile_sdk/m5;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/m5;->g:I

    .line 4526
    invoke-static {v9, v0}, Lads_mobile_sdk/h6;->f(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_16

    :goto_6
    return-object v1

    .line 4527
    :cond_16
    :goto_7
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lez p1, :cond_17

    goto :goto_8

    :cond_17
    move v5, v6

    :goto_8
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public abstract t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/h6;->f(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/v5;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/v5;

    iget v1, v0, Lads_mobile_sdk/v5;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/v5;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/v5;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/v5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/v5;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 287
    iget v2, v0, Lads_mobile_sdk/v5;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v1, v0, Lads_mobile_sdk/v5;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/v5;->c:Lads_mobile_sdk/rr3;

    iget-object v4, v0, Lads_mobile_sdk/v5;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/v5;->a:Lads_mobile_sdk/h6;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 288
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, v0, Lads_mobile_sdk/v5;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/v5;->c:Lads_mobile_sdk/rr3;

    iget-object v4, v0, Lads_mobile_sdk/v5;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/v5;->a:Lads_mobile_sdk/h6;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 289
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 290
    iget-object p1, p0, Lads_mobile_sdk/h6;->e:Lads_mobile_sdk/g83;

    sget-object v2, Lads_mobile_sdk/s11;->n1:Lads_mobile_sdk/s11;

    .line 1243
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 1244
    new-instance v8, Lads_mobile_sdk/ks3;

    .line 1245
    new-instance v9, Lads_mobile_sdk/n03;

    invoke-direct {v9}, Lads_mobile_sdk/n03;-><init>()V

    .line 1246
    new-instance v10, Lads_mobile_sdk/tn1;

    invoke-direct {v10}, Lads_mobile_sdk/tn1;-><init>()V

    .line 1247
    new-instance v11, Lads_mobile_sdk/m33;

    invoke-direct {v11}, Lads_mobile_sdk/m33;-><init>()V

    .line 1248
    new-instance v12, Lads_mobile_sdk/zb;

    invoke-direct {v12}, Lads_mobile_sdk/zb;-><init>()V

    .line 1249
    invoke-direct {v8, v9, v10, v11, v12}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 1250
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v9

    .line 1251
    iget-object v9, v9, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v9, :cond_b

    .line 1252
    invoke-static {p1, v2, v7, v8}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v2

    .line 1253
    :try_start_2
    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 2216
    iput-object p0, v0, Lads_mobile_sdk/v5;->a:Lads_mobile_sdk/h6;

    iput-object v2, v0, Lads_mobile_sdk/v5;->b:Lads_mobile_sdk/rr3;

    iput-object v2, v0, Lads_mobile_sdk/v5;->c:Lads_mobile_sdk/rr3;

    iput-object p1, v0, Lads_mobile_sdk/v5;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v0, Lads_mobile_sdk/v5;->g:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne v0, v1, :cond_4

    goto/16 :goto_3

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    .line 2217
    :goto_1
    :try_start_3
    iget-object p1, v0, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/yt2;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3183
    :try_start_4
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 3185
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_5

    .line 3186
    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/i01;

    .line 3187
    invoke-static {v0, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3188
    :cond_5
    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_2
    move-exception p1

    .line 3200
    :try_start_5
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_3
    move-exception p1

    move-object v4, v2

    .line 3207
    :goto_2
    :try_start_6
    invoke-virtual {v4, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 3211
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_a

    .line 3213
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_6

    .line 3219
    invoke-virtual {v4, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 3225
    :cond_6
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_9

    .line 3226
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_8

    .line 3227
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_7

    throw p1

    .line 3228
    :cond_7
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 3229
    :cond_8
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 3230
    :cond_9
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 3231
    :cond_a
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    .line 3232
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 3277
    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {v2, p1, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 3278
    :try_start_8
    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 4241
    iput-object p0, v0, Lads_mobile_sdk/v5;->a:Lads_mobile_sdk/h6;

    iput-object v2, v0, Lads_mobile_sdk/v5;->b:Lads_mobile_sdk/rr3;

    iput-object v2, v0, Lads_mobile_sdk/v5;->c:Lads_mobile_sdk/rr3;

    iput-object p1, v0, Lads_mobile_sdk/v5;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/v5;->g:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-ne v0, v1, :cond_c

    :goto_3
    return-object v1

    :cond_c
    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    .line 4242
    :goto_4
    :try_start_9
    iget-object p1, v0, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/yt2;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 5208
    :try_start_a
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 5247
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_d

    .line 5248
    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/i01;

    .line 5249
    invoke-static {v0, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 5250
    :cond_d
    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_6
    move-exception p1

    .line 5251
    :try_start_b
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_7
    move-exception p1

    move-object v4, v2

    .line 5295
    :goto_5
    :try_start_c
    invoke-virtual {v4, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 5299
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_12

    .line 5301
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_e

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_e

    .line 5307
    invoke-virtual {v4, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 5313
    :cond_e
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_11

    .line 5314
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_10

    .line 5315
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_f

    throw p1

    .line 5316
    :cond_f
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5317
    :cond_10
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 5318
    :cond_11
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 5319
    :cond_12
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :catchall_8
    move-exception p1

    .line 5320
    :try_start_d
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    :catchall_9
    move-exception v0

    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/w5;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/w5;

    iget v3, v2, Lads_mobile_sdk/w5;->h:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/w5;->h:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/w5;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/w5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lads_mobile_sdk/w5;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 212
    iget v4, v2, Lads_mobile_sdk/w5;->h:I

    const-string v5, "gads:resetExponentialBackoffOnSingleAd:enabled"

    const-string v6, "gads:resetExponentialBackoffOnPollAd:enabled"

    const-string v8, "preloadId"

    const-string v9, "key"

    const/4 v11, 0x1

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v3, v2, Lads_mobile_sdk/w5;->d:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/yt2;

    iget-object v4, v2, Lads_mobile_sdk/w5;->c:Ljava/io/Closeable;

    iget-object v5, v2, Lads_mobile_sdk/w5;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/w5;->a:Lads_mobile_sdk/h6;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_13

    :catchall_0
    move-exception v0

    goto/16 :goto_17

    .line 213
    :pswitch_1
    iget-object v4, v2, Lads_mobile_sdk/w5;->e:Lads_mobile_sdk/yt2;

    iget-object v5, v2, Lads_mobile_sdk/w5;->d:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v2, Lads_mobile_sdk/w5;->c:Ljava/io/Closeable;

    iget-object v7, v2, Lads_mobile_sdk/w5;->b:Lads_mobile_sdk/rr3;

    iget-object v11, v2, Lads_mobile_sdk/w5;->a:Lads_mobile_sdk/h6;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_10

    :catchall_1
    move-exception v0

    goto/16 :goto_18

    .line 214
    :pswitch_2
    iget-object v4, v2, Lads_mobile_sdk/w5;->d:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v13, v2, Lads_mobile_sdk/w5;->c:Ljava/io/Closeable;

    iget-object v14, v2, Lads_mobile_sdk/w5;->b:Lads_mobile_sdk/rr3;

    iget-object v15, v2, Lads_mobile_sdk/w5;->a:Lads_mobile_sdk/h6;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v7, v14

    goto/16 :goto_d

    :catchall_2
    move-exception v0

    goto/16 :goto_1a

    .line 215
    :pswitch_3
    iget-object v3, v2, Lads_mobile_sdk/w5;->d:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/yt2;

    iget-object v4, v2, Lads_mobile_sdk/w5;->c:Ljava/io/Closeable;

    iget-object v5, v2, Lads_mobile_sdk/w5;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/w5;->a:Lads_mobile_sdk/h6;

    :try_start_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_7

    :catchall_3
    move-exception v0

    goto/16 :goto_a

    .line 216
    :pswitch_4
    iget-object v4, v2, Lads_mobile_sdk/w5;->e:Lads_mobile_sdk/yt2;

    iget-object v5, v2, Lads_mobile_sdk/w5;->d:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v2, Lads_mobile_sdk/w5;->c:Ljava/io/Closeable;

    iget-object v7, v2, Lads_mobile_sdk/w5;->b:Lads_mobile_sdk/rr3;

    iget-object v11, v2, Lads_mobile_sdk/w5;->a:Lads_mobile_sdk/h6;

    :try_start_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/16 :goto_5

    :catchall_4
    move-exception v0

    :goto_1
    const/4 v12, 0x0

    goto/16 :goto_b

    .line 217
    :pswitch_5
    iget-object v4, v2, Lads_mobile_sdk/w5;->d:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v13, v2, Lads_mobile_sdk/w5;->c:Ljava/io/Closeable;

    iget-object v14, v2, Lads_mobile_sdk/w5;->b:Lads_mobile_sdk/rr3;

    iget-object v15, v2, Lads_mobile_sdk/w5;->a:Lads_mobile_sdk/h6;

    :try_start_5
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object v7, v14

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object v4, v13

    move-object v5, v14

    goto/16 :goto_a

    .line 218
    :pswitch_6
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 220
    iget-object v0, v1, Lads_mobile_sdk/h6;->e:Lads_mobile_sdk/g83;

    sget-object v4, Lads_mobile_sdk/s11;->m1:Lads_mobile_sdk/s11;

    .line 1115
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 1116
    new-instance v14, Lads_mobile_sdk/ks3;

    .line 1117
    new-instance v15, Lads_mobile_sdk/n03;

    invoke-direct {v15}, Lads_mobile_sdk/n03;-><init>()V

    .line 1118
    new-instance v7, Lads_mobile_sdk/tn1;

    invoke-direct {v7}, Lads_mobile_sdk/tn1;-><init>()V

    .line 1119
    new-instance v10, Lads_mobile_sdk/m33;

    invoke-direct {v10}, Lads_mobile_sdk/m33;-><init>()V

    .line 1120
    new-instance v12, Lads_mobile_sdk/zb;

    invoke-direct {v12}, Lads_mobile_sdk/zb;-><init>()V

    .line 1121
    invoke-direct {v14, v15, v7, v10, v12}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 1122
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v7

    .line 1123
    iget-object v7, v7, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v7, :cond_11

    .line 1124
    invoke-static {v0, v4, v13, v14}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 1125
    :try_start_6
    iget-object v0, v1, Lads_mobile_sdk/h6;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->q0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1126
    iget-object v0, v1, Lads_mobile_sdk/h6;->l:Lads_mobile_sdk/k6;

    iget-object v7, v1, Lads_mobile_sdk/h6;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1127
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1207
    iget-object v0, v0, Lads_mobile_sdk/k6;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    :cond_1
    iget-object v0, v1, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 2110
    iput-object v1, v2, Lads_mobile_sdk/w5;->a:Lads_mobile_sdk/h6;

    iput-object v4, v2, Lads_mobile_sdk/w5;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/w5;->c:Ljava/io/Closeable;

    iput-object v0, v2, Lads_mobile_sdk/w5;->d:Ljava/lang/Object;

    iput v11, v2, Lads_mobile_sdk/w5;->h:I

    const/4 v7, 0x0

    invoke-interface {v0, v7, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    if-ne v10, v3, :cond_2

    goto/16 :goto_12

    :cond_2
    move-object v15, v1

    move-object v7, v4

    move-object v13, v7

    move-object v4, v0

    .line 2111
    :goto_2
    :try_start_7
    iget-object v0, v15, Lads_mobile_sdk/h6;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2113
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2129
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v12, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v6, v10, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2130
    iget-object v0, v15, Lads_mobile_sdk/h6;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2132
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2148
    invoke-virtual {v0, v5, v10, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2149
    iget-object v0, v15, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v11, :cond_4

    const/4 v0, 0x0

    .line 2150
    iput v0, v15, Lads_mobile_sdk/h6;->w:I

    .line 2151
    iget-wide v5, v15, Lads_mobile_sdk/h6;->o:J

    iput-wide v5, v15, Lads_mobile_sdk/h6;->x:J

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 2152
    iput v0, v15, Lads_mobile_sdk/h6;->w:I

    .line 2153
    iget-wide v5, v15, Lads_mobile_sdk/h6;->o:J

    iput-wide v5, v15, Lads_mobile_sdk/h6;->x:J

    .line 2154
    :cond_4
    :goto_3
    iget-object v0, v15, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/yt2;

    .line 2155
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v5

    invoke-virtual {v5}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v5

    if-eqz v0, :cond_5

    move v6, v11

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    const/4 v10, 0x2

    const/4 v12, 0x0

    .line 2156
    invoke-static {v15, v6, v12, v10}, Lads_mobile_sdk/h6;->a(Lads_mobile_sdk/h6;ZLjava/lang/String;I)Lads_mobile_sdk/ar2;

    move-result-object v6

    .line 2157
    iput-object v6, v5, Lads_mobile_sdk/uj2;->C:Lads_mobile_sdk/ar2;

    if-eqz v0, :cond_8

    .line 2158
    iget-object v5, v0, Lads_mobile_sdk/yt2;->c:Lkotlinx/coroutines/Job;

    if-eqz v5, :cond_6

    .line 2159
    invoke-static {v5, v12, v11, v12}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2160
    :cond_6
    iput-object v15, v2, Lads_mobile_sdk/w5;->a:Lads_mobile_sdk/h6;

    iput-object v7, v2, Lads_mobile_sdk/w5;->b:Lads_mobile_sdk/rr3;

    iput-object v13, v2, Lads_mobile_sdk/w5;->c:Ljava/io/Closeable;

    iput-object v4, v2, Lads_mobile_sdk/w5;->d:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/w5;->e:Lads_mobile_sdk/yt2;

    const/4 v10, 0x2

    iput v10, v2, Lads_mobile_sdk/w5;->h:I

    invoke-virtual {v15, v11, v2}, Lads_mobile_sdk/h6;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/Unit;

    move-result-object v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-ne v5, v3, :cond_7

    goto/16 :goto_12

    :cond_7
    move-object v5, v4

    move-object v6, v13

    move-object v11, v15

    move-object v4, v0

    .line 2161
    :goto_5
    :try_start_8
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 2162
    iget-object v0, v0, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 2163
    iget-object v0, v0, Lads_mobile_sdk/ks3;->d:Lads_mobile_sdk/zb;

    .line 2164
    iget-object v10, v4, Lads_mobile_sdk/yt2;->a:Lads_mobile_sdk/xt2;

    .line 2165
    iget-object v10, v10, Lads_mobile_sdk/xt2;->a:Lads_mobile_sdk/zh1;

    .line 2166
    invoke-interface {v10}, Lads_mobile_sdk/zh1;->f()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lads_mobile_sdk/zb;->b:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v0, v4

    move-object v4, v5

    move-object v15, v11

    const/4 v12, 0x0

    goto :goto_6

    :cond_8
    move-object v6, v13

    .line 3053
    :goto_6
    :try_start_9
    invoke-interface {v4, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v0, :cond_a

    .line 3054
    iget-object v4, v0, Lads_mobile_sdk/yt2;->a:Lads_mobile_sdk/xt2;

    if-eqz v4, :cond_a

    .line 3055
    iget-object v4, v4, Lads_mobile_sdk/xt2;->a:Lads_mobile_sdk/zh1;

    if-eqz v4, :cond_a

    .line 3056
    iput-object v15, v2, Lads_mobile_sdk/w5;->a:Lads_mobile_sdk/h6;

    iput-object v7, v2, Lads_mobile_sdk/w5;->b:Lads_mobile_sdk/rr3;

    iput-object v6, v2, Lads_mobile_sdk/w5;->c:Ljava/io/Closeable;

    iput-object v0, v2, Lads_mobile_sdk/w5;->d:Ljava/lang/Object;

    const/4 v12, 0x0

    iput-object v12, v2, Lads_mobile_sdk/w5;->e:Lads_mobile_sdk/yt2;

    const/4 v5, 0x3

    iput v5, v2, Lads_mobile_sdk/w5;->h:I

    invoke-interface {v4, v2}, Lads_mobile_sdk/zh1;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/Unit;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-ne v2, v3, :cond_9

    goto/16 :goto_12

    :cond_9
    move-object v3, v0

    move-object v4, v6

    move-object v5, v7

    move-object v2, v15

    .line 3057
    :goto_7
    :try_start_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v15, v2

    move-object v0, v3

    goto :goto_9

    :goto_8
    move-object v4, v7

    goto :goto_c

    :cond_a
    move-object v4, v6

    move-object v5, v7

    .line 3940
    :goto_9
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_b

    .line 3941
    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/i01;

    const/4 v3, 0x0

    .line 3942
    invoke-static {v2, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_b
    const/4 v12, 0x0

    .line 3943
    invoke-static {v4, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    :goto_a
    move-object v6, v4

    move-object v4, v5

    goto :goto_c

    :catchall_6
    move-exception v0

    move-object v5, v4

    move-object v6, v13

    goto/16 :goto_1

    .line 3955
    :goto_b
    :try_start_b
    invoke-interface {v5, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_8

    :catchall_8
    move-exception v0

    move-object v6, v4

    .line 3962
    :goto_c
    :try_start_c
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 3966
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_10

    .line 3968
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_c

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_c

    .line 3974
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 3980
    :cond_c
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_f

    .line 3981
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_e

    .line 3982
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_d

    throw v0

    .line 3983
    :cond_d
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3984
    :cond_e
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 3985
    :cond_f
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 3986
    :cond_10
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    :catchall_9
    move-exception v0

    move-object v2, v0

    .line 3987
    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    :catchall_a
    move-exception v0

    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 4032
    :cond_11
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0, v11}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v13

    .line 4033
    :try_start_e
    iget-object v0, v1, Lads_mobile_sdk/h6;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->q0()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4034
    iget-object v0, v1, Lads_mobile_sdk/h6;->l:Lads_mobile_sdk/k6;

    iget-object v4, v1, Lads_mobile_sdk/h6;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4035
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4115
    iget-object v0, v0, Lads_mobile_sdk/k6;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4116
    :cond_12
    iget-object v0, v1, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 5018
    iput-object v1, v2, Lads_mobile_sdk/w5;->a:Lads_mobile_sdk/h6;

    iput-object v13, v2, Lads_mobile_sdk/w5;->b:Lads_mobile_sdk/rr3;

    iput-object v13, v2, Lads_mobile_sdk/w5;->c:Ljava/io/Closeable;

    iput-object v0, v2, Lads_mobile_sdk/w5;->d:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v2, Lads_mobile_sdk/w5;->h:I

    const/4 v12, 0x0

    invoke-interface {v0, v12, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    if-ne v4, v3, :cond_13

    goto/16 :goto_12

    :cond_13
    move-object v4, v0

    move-object v15, v1

    move-object v7, v13

    .line 5019
    :goto_d
    :try_start_f
    iget-object v0, v15, Lads_mobile_sdk/h6;->g:Lads_mobile_sdk/ex0;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d

    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5021
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5037
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v12, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v6, v10, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    if-eqz v0, :cond_15

    .line 5038
    :try_start_11
    iget-object v0, v15, Lads_mobile_sdk/h6;->g:Lads_mobile_sdk/ex0;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5040
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5056
    invoke-virtual {v0, v5, v10, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    if-eqz v0, :cond_14

    .line 5057
    :try_start_13
    iget-object v0, v15, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    if-ne v0, v11, :cond_15

    const/4 v0, 0x0

    .line 5058
    :try_start_14
    iput v0, v15, Lads_mobile_sdk/h6;->w:I

    .line 5059
    iget-wide v5, v15, Lads_mobile_sdk/h6;->o:J

    iput-wide v5, v15, Lads_mobile_sdk/h6;->x:J

    goto :goto_e

    :cond_14
    const/4 v0, 0x0

    .line 5060
    iput v0, v15, Lads_mobile_sdk/h6;->w:I

    .line 5061
    iget-wide v5, v15, Lads_mobile_sdk/h6;->o:J

    iput-wide v5, v15, Lads_mobile_sdk/h6;->x:J
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    .line 5062
    :cond_15
    :goto_e
    :try_start_15
    iget-object v0, v15, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/yt2;

    .line 5063
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v5

    invoke-virtual {v5}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v5

    if-eqz v0, :cond_16

    move v6, v11

    goto :goto_f

    :cond_16
    const/4 v6, 0x0

    :goto_f
    const/4 v10, 0x2

    const/4 v12, 0x0

    .line 5064
    invoke-static {v15, v6, v12, v10}, Lads_mobile_sdk/h6;->a(Lads_mobile_sdk/h6;ZLjava/lang/String;I)Lads_mobile_sdk/ar2;

    move-result-object v6

    .line 5065
    iput-object v6, v5, Lads_mobile_sdk/uj2;->C:Lads_mobile_sdk/ar2;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    if-eqz v0, :cond_19

    .line 5066
    :try_start_16
    iget-object v5, v0, Lads_mobile_sdk/yt2;->c:Lkotlinx/coroutines/Job;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    if-eqz v5, :cond_17

    .line 5067
    :try_start_17
    invoke-static {v5, v12, v11, v12}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    .line 5068
    :cond_17
    :try_start_18
    iput-object v15, v2, Lads_mobile_sdk/w5;->a:Lads_mobile_sdk/h6;

    iput-object v7, v2, Lads_mobile_sdk/w5;->b:Lads_mobile_sdk/rr3;

    iput-object v13, v2, Lads_mobile_sdk/w5;->c:Ljava/io/Closeable;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    :try_start_19
    iput-object v4, v2, Lads_mobile_sdk/w5;->d:Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    :try_start_1a
    iput-object v0, v2, Lads_mobile_sdk/w5;->e:Lads_mobile_sdk/yt2;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    const/4 v5, 0x5

    :try_start_1b
    iput v5, v2, Lads_mobile_sdk/w5;->h:I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    :try_start_1c
    invoke-virtual {v15, v11, v2}, Lads_mobile_sdk/h6;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/Unit;

    move-result-object v5
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    if-ne v5, v3, :cond_18

    goto :goto_12

    :cond_18
    move-object v5, v4

    move-object v6, v13

    move-object v11, v15

    move-object v4, v0

    .line 5069
    :goto_10
    :try_start_1d
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    .line 5070
    :try_start_1e
    iget-object v0, v0, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    .line 5071
    :try_start_1f
    iget-object v0, v0, Lads_mobile_sdk/ks3;->d:Lads_mobile_sdk/zb;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    .line 5072
    :try_start_20
    iget-object v10, v4, Lads_mobile_sdk/yt2;->a:Lads_mobile_sdk/xt2;

    .line 5073
    iget-object v10, v10, Lads_mobile_sdk/xt2;->a:Lads_mobile_sdk/zh1;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    .line 5074
    :try_start_21
    invoke-interface {v10}, Lads_mobile_sdk/zh1;->f()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lads_mobile_sdk/zb;->b:Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    move-object v0, v4

    move-object v4, v5

    move-object v13, v6

    move-object v15, v11

    const/4 v12, 0x0

    :cond_19
    move-object v14, v7

    goto :goto_11

    :catchall_b
    move-exception v0

    goto/16 :goto_18

    .line 5961
    :goto_11
    :try_start_22
    invoke-interface {v4, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v0, :cond_1b

    .line 5962
    iget-object v4, v0, Lads_mobile_sdk/yt2;->a:Lads_mobile_sdk/xt2;

    if-eqz v4, :cond_1b

    .line 5963
    iget-object v4, v4, Lads_mobile_sdk/xt2;->a:Lads_mobile_sdk/zh1;

    if-eqz v4, :cond_1b

    .line 5964
    iput-object v15, v2, Lads_mobile_sdk/w5;->a:Lads_mobile_sdk/h6;

    iput-object v14, v2, Lads_mobile_sdk/w5;->b:Lads_mobile_sdk/rr3;

    iput-object v13, v2, Lads_mobile_sdk/w5;->c:Ljava/io/Closeable;

    iput-object v0, v2, Lads_mobile_sdk/w5;->d:Ljava/lang/Object;

    const/4 v12, 0x0

    iput-object v12, v2, Lads_mobile_sdk/w5;->e:Lads_mobile_sdk/yt2;

    const/4 v5, 0x6

    iput v5, v2, Lads_mobile_sdk/w5;->h:I

    invoke-interface {v4, v2}, Lads_mobile_sdk/zh1;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/Unit;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    if-ne v2, v3, :cond_1a

    :goto_12
    return-object v3

    :cond_1a
    move-object v3, v0

    move-object v4, v13

    move-object v5, v14

    move-object v2, v15

    .line 5965
    :goto_13
    :try_start_23
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v15, v2

    move-object v0, v3

    goto :goto_14

    :cond_1b
    move-object v4, v13

    move-object v5, v14

    .line 6885
    :goto_14
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_1c

    .line 6886
    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/i01;

    const/4 v3, 0x0

    .line 6887
    invoke-static {v2, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    :cond_1c
    const/4 v12, 0x0

    .line 6888
    invoke-static {v4, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 6889
    :goto_15
    iget-object v2, v15, Lads_mobile_sdk/h6;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6891
    const-string v3, "gads:preload_validator_polled_in_callback_check:enabled"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6907
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v2, v3, v4, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 6908
    iget-object v2, v15, Lads_mobile_sdk/h6;->l:Lads_mobile_sdk/k6;

    iget-object v6, v15, Lads_mobile_sdk/h6;->b:Ljava/lang/String;

    iget-object v7, v15, Lads_mobile_sdk/h6;->k:Lads_mobile_sdk/j53;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "requestType"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6909
    iget-object v8, v2, Lads_mobile_sdk/k6;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6911
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6927
    invoke-virtual {v8, v3, v4, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_16

    .line 6928
    :cond_1d
    sget-object v3, Lads_mobile_sdk/wq2;->b:Lads_mobile_sdk/vq2;

    .line 6929
    sget-object v3, Lads_mobile_sdk/wq2;->c:Ljava/lang/ThreadLocal;

    .line 6930
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/uq2;

    if-nez v3, :cond_1e

    goto :goto_16

    .line 6931
    :cond_1e
    iget-object v4, v3, Lads_mobile_sdk/uq2;->a:Ljava/lang/String;

    .line 6932
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 6933
    iget-object v4, v3, Lads_mobile_sdk/uq2;->b:Lads_mobile_sdk/j53;

    if-eq v4, v7, :cond_1f

    goto :goto_16

    .line 6934
    :cond_1f
    iget-object v3, v3, Lads_mobile_sdk/uq2;->c:Lads_mobile_sdk/xq2;

    .line 6935
    sget-object v4, Lads_mobile_sdk/xq2;->a:Lads_mobile_sdk/xq2;

    if-ne v3, v4, :cond_20

    .line 6937
    sget-object v3, Lads_mobile_sdk/bu2;->c:Lads_mobile_sdk/bu2;

    const/4 v12, 0x0

    .line 6938
    invoke-virtual {v2, v3, v6, v7, v12}, Lads_mobile_sdk/k6;->a(Lads_mobile_sdk/bu2;Ljava/lang/String;Lads_mobile_sdk/j53;Ljava/lang/String;)V

    :cond_20
    :goto_16
    return-object v0

    :goto_17
    move-object v13, v4

    move-object v14, v5

    goto :goto_1a

    :catchall_c
    move-exception v0

    goto :goto_19

    :catchall_d
    move-exception v0

    move-object v5, v4

    move-object v6, v13

    :goto_18
    move-object v4, v5

    move-object v13, v6

    :goto_19
    move-object v14, v7

    const/4 v12, 0x0

    .line 6939
    :try_start_24
    invoke-interface {v4, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    :catchall_e
    move-exception v0

    move-object v14, v13

    .line 6983
    :goto_1a
    :try_start_25
    invoke-virtual {v14, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 6987
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_25

    .line 6989
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_21

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_21

    .line 6995
    invoke-virtual {v14, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 7001
    :cond_21
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_24

    .line 7002
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_23

    .line 7003
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_22

    throw v0

    .line 7004
    :cond_22
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 7005
    :cond_23
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 7006
    :cond_24
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 7007
    :cond_25
    throw v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    :catchall_f
    move-exception v0

    move-object v2, v0

    .line 7008
    :try_start_26
    throw v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_10

    :catchall_10
    move-exception v0

    invoke-static {v13, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/y5;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/y5;

    iget v3, v2, Lads_mobile_sdk/y5;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/y5;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/y5;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/y5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/y5;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 471
    iget v4, v2, Lads_mobile_sdk/y5;->f:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-wide v6, v2, Lads_mobile_sdk/y5;->c:J

    iget-object v4, v2, Lads_mobile_sdk/y5;->b:Ljava/util/Iterator;

    iget-object v8, v2, Lads_mobile_sdk/y5;->a:Lads_mobile_sdk/h6;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 472
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v1, v0, Lads_mobile_sdk/h6;->f:Lads_mobile_sdk/tx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 474
    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v6, v7, v1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v6

    .line 475
    iget-object v1, v0, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v8, v0

    .line 476
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 477
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/yt2;

    .line 478
    iget-wide v9, v1, Lads_mobile_sdk/yt2;->b:J

    .line 479
    iget-wide v11, v8, Lads_mobile_sdk/h6;->m:J

    invoke-static {v9, v10, v11, v12}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v9

    invoke-static {v9, v10, v6, v7}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v9

    .line 480
    sget-object v11, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v11}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v11

    if-gtz v11, :cond_4

    .line 481
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v8, v2, Lads_mobile_sdk/y5;->a:Lads_mobile_sdk/h6;

    iput-object v4, v2, Lads_mobile_sdk/y5;->b:Ljava/util/Iterator;

    iput-wide v6, v2, Lads_mobile_sdk/y5;->c:J

    iput v5, v2, Lads_mobile_sdk/y5;->f:I

    invoke-virtual {v8, v4, v1, v2}, Lads_mobile_sdk/h6;->a(Ljava/util/Iterator;Lads_mobile_sdk/yt2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    .line 482
    :cond_4
    iget-object v11, v1, Lads_mobile_sdk/yt2;->c:Lkotlinx/coroutines/Job;

    const/4 v12, 0x0

    if-eqz v11, :cond_5

    .line 483
    invoke-static {v11, v12, v5, v12}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 484
    :cond_5
    iget-object v13, v8, Lads_mobile_sdk/h6;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v11, Lads_mobile_sdk/z5;

    invoke-direct {v11, v9, v10, v8, v12}, Lads_mobile_sdk/z5;-><init>(JLads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    .line 485
    sget-object v14, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 486
    const-string v9, "<this>"

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "context"

    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "block"

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    new-instance v9, Lads_mobile_sdk/ws3;

    invoke-direct {v9, v11, v12}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v9

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v9

    .line 745
    iput-object v9, v1, Lads_mobile_sdk/yt2;->c:Lkotlinx/coroutines/Job;

    goto :goto_1

    .line 746
    :cond_6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final y(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/c6;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/c6;

    iget v3, v2, Lads_mobile_sdk/c6;->h:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/c6;->h:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/c6;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/c6;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lads_mobile_sdk/c6;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 133
    iget v4, v2, Lads_mobile_sdk/c6;->h:I

    const-string v5, "block"

    const-string v6, "context"

    const-string v7, "<this>"

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v12, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v10, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v9, :cond_1

    iget-boolean v2, v2, Lads_mobile_sdk/c6;->e:Z

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lads_mobile_sdk/c6;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v8, v2, Lads_mobile_sdk/c6;->c:Lads_mobile_sdk/rr3;

    iget-object v13, v2, Lads_mobile_sdk/c6;->b:Lads_mobile_sdk/rr3;

    iget-object v14, v2, Lads_mobile_sdk/c6;->a:Lads_mobile_sdk/h6;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 134
    :cond_3
    iget-object v4, v2, Lads_mobile_sdk/c6;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v8, v2, Lads_mobile_sdk/c6;->c:Lads_mobile_sdk/rr3;

    iget-object v13, v2, Lads_mobile_sdk/c6;->b:Lads_mobile_sdk/rr3;

    iget-object v14, v2, Lads_mobile_sdk/c6;->a:Lads_mobile_sdk/h6;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_3

    .line 135
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 137
    iget-object v0, v1, Lads_mobile_sdk/h6;->e:Lads_mobile_sdk/g83;

    sget-object v4, Lads_mobile_sdk/s11;->i1:Lads_mobile_sdk/s11;

    .line 655
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 656
    new-instance v14, Lads_mobile_sdk/ks3;

    .line 657
    new-instance v15, Lads_mobile_sdk/n03;

    invoke-direct {v15}, Lads_mobile_sdk/n03;-><init>()V

    .line 658
    new-instance v8, Lads_mobile_sdk/tn1;

    invoke-direct {v8}, Lads_mobile_sdk/tn1;-><init>()V

    .line 659
    new-instance v9, Lads_mobile_sdk/m33;

    invoke-direct {v9}, Lads_mobile_sdk/m33;-><init>()V

    .line 660
    new-instance v11, Lads_mobile_sdk/zb;

    invoke-direct {v11}, Lads_mobile_sdk/zb;-><init>()V

    .line 661
    invoke-direct {v14, v15, v8, v9, v11}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 662
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v8

    .line 663
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v8, :cond_e

    .line 664
    invoke-static {v0, v4, v13, v14}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v8

    .line 665
    :try_start_2
    iget-object v4, v1, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1193
    iput-object v1, v2, Lads_mobile_sdk/c6;->a:Lads_mobile_sdk/h6;

    iput-object v8, v2, Lads_mobile_sdk/c6;->b:Lads_mobile_sdk/rr3;

    iput-object v8, v2, Lads_mobile_sdk/c6;->c:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/c6;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v10, v2, Lads_mobile_sdk/c6;->h:I

    invoke-interface {v4, v12, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne v0, v3, :cond_5

    goto/16 :goto_7

    :cond_5
    move-object v14, v1

    move-object v13, v8

    .line 1194
    :goto_1
    :try_start_3
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    const/4 v9, 0x3

    const/4 v11, 0x0

    invoke-static {v14, v11, v12, v9}, Lads_mobile_sdk/h6;->a(Lads_mobile_sdk/h6;ZLjava/lang/String;I)Lads_mobile_sdk/ar2;

    move-result-object v15

    iput-object v15, v0, Lads_mobile_sdk/uj2;->C:Lads_mobile_sdk/ar2;

    .line 1195
    iget-object v0, v14, Lads_mobile_sdk/h6;->z:Lkotlinx/coroutines/Job;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v10, 0x0

    goto :goto_2

    .line 1197
    :cond_6
    iget-boolean v0, v14, Lads_mobile_sdk/h6;->j:Z

    if-eqz v0, :cond_7

    .line 1198
    invoke-static {v12, v10, v12}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, v14, Lads_mobile_sdk/h6;->H:Lkotlinx/coroutines/CompletableJob;

    .line 1201
    :cond_7
    iget-object v0, v14, Lads_mobile_sdk/h6;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v9, Lads_mobile_sdk/d6;

    invoke-direct {v9, v14, v12}, Lads_mobile_sdk/d6;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    .line 1202
    sget-object v11, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1203
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1461
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, v9, v12}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    move-object/from16 v19, v5

    move-object/from16 v17, v11

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 1462
    iput-object v0, v14, Lads_mobile_sdk/h6;->z:Lkotlinx/coroutines/Job;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1986
    :goto_2
    :try_start_4
    invoke-interface {v4, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1987
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2521
    instance-of v4, v0, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_8

    .line 2522
    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/i01;

    const/4 v11, 0x0

    .line 2523
    invoke-static {v4, v11}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2524
    :cond_8
    invoke-static {v8, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    .line 2536
    :try_start_5
    invoke-interface {v4, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_3
    move-exception v0

    move-object v13, v8

    .line 2543
    :goto_3
    :try_start_6
    invoke-virtual {v13, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2547
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_d

    .line 2549
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_9

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_9

    .line 2555
    invoke-virtual {v13, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2561
    :cond_9
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_c

    .line 2562
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_b

    .line 2563
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_a

    throw v0

    .line 2564
    :cond_a
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2565
    :cond_b
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 2566
    :cond_c
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 2567
    :cond_d
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 2568
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 2613
    :cond_e
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0, v10}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v8

    .line 2614
    :try_start_8
    iget-object v4, v1, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 3142
    iput-object v1, v2, Lads_mobile_sdk/c6;->a:Lads_mobile_sdk/h6;

    iput-object v8, v2, Lads_mobile_sdk/c6;->b:Lads_mobile_sdk/rr3;

    iput-object v8, v2, Lads_mobile_sdk/c6;->c:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/c6;->d:Lkotlinx/coroutines/sync/Mutex;

    const/4 v0, 0x2

    iput v0, v2, Lads_mobile_sdk/c6;->h:I

    invoke-interface {v4, v12, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-ne v0, v3, :cond_f

    goto/16 :goto_7

    :cond_f
    move-object v14, v1

    move-object v13, v8

    .line 3143
    :goto_4
    :try_start_9
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    const/4 v9, 0x3

    const/4 v11, 0x0

    invoke-static {v14, v11, v12, v9}, Lads_mobile_sdk/h6;->a(Lads_mobile_sdk/h6;ZLjava/lang/String;I)Lads_mobile_sdk/ar2;

    move-result-object v15

    iput-object v15, v0, Lads_mobile_sdk/uj2;->C:Lads_mobile_sdk/ar2;

    .line 3144
    iget-object v0, v14, Lads_mobile_sdk/h6;->z:Lkotlinx/coroutines/Job;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v10, 0x0

    goto :goto_5

    .line 3146
    :cond_10
    iget-boolean v0, v14, Lads_mobile_sdk/h6;->j:Z

    if-eqz v0, :cond_11

    .line 3147
    invoke-static {v12, v10, v12}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, v14, Lads_mobile_sdk/h6;->H:Lkotlinx/coroutines/CompletableJob;

    .line 3150
    :cond_11
    iget-object v0, v14, Lads_mobile_sdk/h6;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v9, Lads_mobile_sdk/d6;

    invoke-direct {v9, v14, v12}, Lads_mobile_sdk/d6;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    .line 3151
    sget-object v11, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 3152
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3410
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, v9, v12}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    move-object/from16 v19, v5

    move-object/from16 v17, v11

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 3411
    iput-object v0, v14, Lads_mobile_sdk/h6;->z:Lkotlinx/coroutines/Job;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 3935
    :goto_5
    :try_start_a
    invoke-interface {v4, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 3936
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4507
    instance-of v4, v0, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_12

    .line 4508
    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/i01;

    const/4 v11, 0x0

    .line 4509
    invoke-static {v4, v11}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 4510
    :cond_12
    invoke-static {v8, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 4511
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4526
    iget-boolean v4, v14, Lads_mobile_sdk/h6;->j:Z

    if-eqz v4, :cond_13

    .line 4527
    iput-object v12, v2, Lads_mobile_sdk/c6;->a:Lads_mobile_sdk/h6;

    iput-object v12, v2, Lads_mobile_sdk/c6;->b:Lads_mobile_sdk/rr3;

    iput-object v12, v2, Lads_mobile_sdk/c6;->c:Lads_mobile_sdk/rr3;

    iput-object v12, v2, Lads_mobile_sdk/c6;->d:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean v0, v2, Lads_mobile_sdk/c6;->e:Z

    const/4 v9, 0x3

    iput v9, v2, Lads_mobile_sdk/c6;->h:I

    const/4 v11, 0x0

    invoke-virtual {v14, v11, v11}, Lads_mobile_sdk/h6;->a(IZ)Lkotlin/Unit;

    move-result-object v2

    if-ne v2, v3, :cond_13

    :goto_7
    return-object v3

    :cond_13
    move v2, v0

    .line 4529
    :goto_8
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catchall_6
    move-exception v0

    .line 5044
    :try_start_b
    invoke-interface {v4, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_7
    move-exception v0

    move-object v13, v8

    .line 5088
    :goto_9
    :try_start_c
    invoke-virtual {v13, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 5092
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_18

    .line 5094
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_14

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_14

    .line 5100
    invoke-virtual {v13, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 5106
    :cond_14
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_17

    .line 5107
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_16

    .line 5108
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_15

    throw v0

    .line 5109
    :cond_15
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 5110
    :cond_16
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 5111
    :cond_17
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 5112
    :cond_18
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :catchall_8
    move-exception v0

    move-object v2, v0

    .line 5113
    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    :catchall_9
    move-exception v0

    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final z(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/f6;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/f6;

    iget v1, v0, Lads_mobile_sdk/f6;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/f6;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/f6;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/f6;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/f6;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 180
    iget v2, v0, Lads_mobile_sdk/f6;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v1, v0, Lads_mobile_sdk/f6;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/f6;->c:Lads_mobile_sdk/rr3;

    iget-object v4, v0, Lads_mobile_sdk/f6;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/f6;->a:Lads_mobile_sdk/h6;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    .line 181
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, v0, Lads_mobile_sdk/f6;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/f6;->c:Lads_mobile_sdk/rr3;

    iget-object v4, v0, Lads_mobile_sdk/f6;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/f6;->a:Lads_mobile_sdk/h6;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto/16 :goto_3

    .line 182
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 183
    iget-object p1, p0, Lads_mobile_sdk/h6;->e:Lads_mobile_sdk/g83;

    sget-object v2, Lads_mobile_sdk/s11;->j1:Lads_mobile_sdk/s11;

    .line 922
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 923
    new-instance v9, Lads_mobile_sdk/ks3;

    .line 924
    new-instance v10, Lads_mobile_sdk/n03;

    invoke-direct {v10}, Lads_mobile_sdk/n03;-><init>()V

    .line 925
    new-instance v11, Lads_mobile_sdk/tn1;

    invoke-direct {v11}, Lads_mobile_sdk/tn1;-><init>()V

    .line 926
    new-instance v12, Lads_mobile_sdk/m33;

    invoke-direct {v12}, Lads_mobile_sdk/m33;-><init>()V

    .line 927
    new-instance v13, Lads_mobile_sdk/zb;

    invoke-direct {v13}, Lads_mobile_sdk/zb;-><init>()V

    .line 928
    invoke-direct {v9, v10, v11, v12, v13}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 929
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v10

    .line 930
    iget-object v10, v10, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v11, "preloadId"

    if-nez v10, :cond_e

    .line 931
    invoke-static {p1, v2, v8, v9}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v2

    .line 932
    :try_start_2
    iget-object p1, p0, Lads_mobile_sdk/h6;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->q0()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 933
    iget-object p1, p0, Lads_mobile_sdk/h6;->l:Lads_mobile_sdk/k6;

    iget-object v4, p0, Lads_mobile_sdk/h6;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 934
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    iget-object p1, p1, Lads_mobile_sdk/k6;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    :cond_4
    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1756
    iput-object p0, v0, Lads_mobile_sdk/f6;->a:Lads_mobile_sdk/h6;

    iput-object v2, v0, Lads_mobile_sdk/f6;->b:Lads_mobile_sdk/rr3;

    iput-object v2, v0, Lads_mobile_sdk/f6;->c:Lads_mobile_sdk/rr3;

    iput-object p1, v0, Lads_mobile_sdk/f6;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v6, v0, Lads_mobile_sdk/f6;->g:I

    invoke-interface {p1, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne v0, v1, :cond_5

    goto/16 :goto_4

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    .line 1757
    :goto_1
    :try_start_3
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object p1

    invoke-static {v0, v5, v7, v3}, Lads_mobile_sdk/h6;->a(Lads_mobile_sdk/h6;ZLjava/lang/String;I)Lads_mobile_sdk/ar2;

    move-result-object v3

    iput-object v3, p1, Lads_mobile_sdk/uj2;->C:Lads_mobile_sdk/ar2;

    .line 1758
    iget-object p1, v0, Lads_mobile_sdk/h6;->z:Lkotlinx/coroutines/Job;

    invoke-static {p1, v7, v6, v7}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1759
    iget-object p1, v0, Lads_mobile_sdk/h6;->D:Lkotlinx/coroutines/CompletableJob;

    invoke-static {p1, v7, v6, v7}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1760
    iget-object p1, v0, Lads_mobile_sdk/h6;->F:Lkotlinx/coroutines/CompletableJob;

    invoke-static {p1, v7, v6, v7}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1761
    iget-object p1, v0, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/yt2;

    .line 1762
    iget-object v8, v3, Lads_mobile_sdk/yt2;->c:Lkotlinx/coroutines/Job;

    if-eqz v8, :cond_6

    .line 1763
    invoke-static {v8, v7, v6, v7}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1764
    :cond_6
    iget-object v3, v3, Lads_mobile_sdk/yt2;->a:Lads_mobile_sdk/xt2;

    .line 1765
    iget-object v3, v3, Lads_mobile_sdk/xt2;->a:Lads_mobile_sdk/zh1;

    .line 1766
    invoke-interface {v3}, Lads_mobile_sdk/zh1;->destroy()V

    goto :goto_2

    .line 1768
    :cond_7
    iget-object p1, v0, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 1769
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2509
    :try_start_4
    invoke-interface {v1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2511
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_8

    .line 2512
    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/i01;

    .line 2513
    invoke-static {v0, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2514
    :cond_8
    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_2
    move-exception p1

    .line 2526
    :try_start_5
    invoke-interface {v1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_3
    move-exception p1

    move-object v4, v2

    .line 2533
    :goto_3
    :try_start_6
    invoke-virtual {v4, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2537
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_d

    .line 2539
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_9

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_9

    .line 2545
    invoke-virtual {v4, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2551
    :cond_9
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_c

    .line 2552
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_b

    .line 2553
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_a

    throw p1

    .line 2554
    :cond_a
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2555
    :cond_b
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 2556
    :cond_c
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 2557
    :cond_d
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    .line 2558
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 2603
    :cond_e
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {v2, p1, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 2604
    :try_start_8
    iget-object p1, p0, Lads_mobile_sdk/h6;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->q0()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2605
    iget-object p1, p0, Lads_mobile_sdk/h6;->l:Lads_mobile_sdk/k6;

    iget-object v8, p0, Lads_mobile_sdk/h6;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2606
    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2681
    iget-object p1, p1, Lads_mobile_sdk/k6;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2682
    :cond_f
    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 3428
    iput-object p0, v0, Lads_mobile_sdk/f6;->a:Lads_mobile_sdk/h6;

    iput-object v2, v0, Lads_mobile_sdk/f6;->b:Lads_mobile_sdk/rr3;

    iput-object v2, v0, Lads_mobile_sdk/f6;->c:Lads_mobile_sdk/rr3;

    iput-object p1, v0, Lads_mobile_sdk/f6;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/f6;->g:I

    invoke-interface {p1, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-ne v0, v1, :cond_10

    :goto_4
    return-object v1

    :cond_10
    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    .line 3429
    :goto_5
    :try_start_9
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object p1

    invoke-static {v0, v5, v7, v3}, Lads_mobile_sdk/h6;->a(Lads_mobile_sdk/h6;ZLjava/lang/String;I)Lads_mobile_sdk/ar2;

    move-result-object v3

    iput-object v3, p1, Lads_mobile_sdk/uj2;->C:Lads_mobile_sdk/ar2;

    .line 3430
    iget-object p1, v0, Lads_mobile_sdk/h6;->z:Lkotlinx/coroutines/Job;

    invoke-static {p1, v7, v6, v7}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3431
    iget-object p1, v0, Lads_mobile_sdk/h6;->D:Lkotlinx/coroutines/CompletableJob;

    invoke-static {p1, v7, v6, v7}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3432
    iget-object p1, v0, Lads_mobile_sdk/h6;->F:Lkotlinx/coroutines/CompletableJob;

    invoke-static {p1, v7, v6, v7}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3433
    iget-object p1, v0, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/yt2;

    .line 3434
    iget-object v8, v3, Lads_mobile_sdk/yt2;->c:Lkotlinx/coroutines/Job;

    if-eqz v8, :cond_11

    .line 3435
    invoke-static {v8, v7, v6, v7}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3436
    :cond_11
    iget-object v3, v3, Lads_mobile_sdk/yt2;->a:Lads_mobile_sdk/xt2;

    .line 3437
    iget-object v3, v3, Lads_mobile_sdk/xt2;->a:Lads_mobile_sdk/zh1;

    .line 3438
    invoke-interface {v3}, Lads_mobile_sdk/zh1;->destroy()V

    goto :goto_6

    .line 3440
    :cond_12
    iget-object p1, v0, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 3441
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 4181
    :try_start_a
    invoke-interface {v1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 4220
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_13

    .line 4221
    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/i01;

    .line 4222
    invoke-static {v0, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 4223
    :cond_13
    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_6
    move-exception p1

    .line 4224
    :try_start_b
    invoke-interface {v1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_7
    move-exception p1

    move-object v4, v2

    .line 4268
    :goto_7
    :try_start_c
    invoke-virtual {v4, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 4272
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_18

    .line 4274
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_14

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_14

    .line 4280
    invoke-virtual {v4, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 4286
    :cond_14
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_17

    .line 4287
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_16

    .line 4288
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_15

    throw p1

    .line 4289
    :cond_15
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 4290
    :cond_16
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 4291
    :cond_17
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 4292
    :cond_18
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :catchall_8
    move-exception p1

    .line 4293
    :try_start_d
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    :catchall_9
    move-exception v0

    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
