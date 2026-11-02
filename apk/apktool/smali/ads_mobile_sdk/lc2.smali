.class public final Lads_mobile_sdk/lc2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:J

.field public final d:Lads_mobile_sdk/zw3;

.field public final e:Lkotlinx/coroutines/sync/Mutex;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IJLads_mobile_sdk/zw3;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgentProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lads_mobile_sdk/lc2;->a:Landroid/content/Context;

    .line 34
    iput p2, p0, Lads_mobile_sdk/lc2;->b:I

    .line 35
    iput-wide p3, p0, Lads_mobile_sdk/lc2;->c:J

    .line 36
    iput-object p5, p0, Lads_mobile_sdk/lc2;->d:Lads_mobile_sdk/zw3;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 39
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/lc2;->e:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static a(Lads_mobile_sdk/lc2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/jc2;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/jc2;

    iget v1, v0, Lads_mobile_sdk/jc2;->j:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/jc2;->j:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/jc2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/jc2;-><init>(Lads_mobile_sdk/lc2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/jc2;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 44
    iget v2, v0, Lads_mobile_sdk/jc2;->j:I

    const-string v3, "offline_ping_sender_work"

    const/4 v4, 0x2

    const-string v5, "build(...)"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/jc2;->g:Landroidx/work/Data$Builder;

    iget-object v1, v0, Lads_mobile_sdk/jc2;->f:Ljava/lang/String;

    iget-object v2, v0, Lads_mobile_sdk/jc2;->e:Landroidx/work/Constraints;

    iget-object v4, v0, Lads_mobile_sdk/jc2;->d:Ljava/lang/Class;

    iget-object v6, v0, Lads_mobile_sdk/jc2;->c:Landroidx/work/WorkManager;

    iget-object v8, v0, Lads_mobile_sdk/jc2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/jc2;->a:Lads_mobile_sdk/lc2;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lads_mobile_sdk/jc2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/jc2;->a:Lads_mobile_sdk/lc2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p0

    move-object p0, v2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lads_mobile_sdk/lc2;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 94
    iput-object p0, v0, Lads_mobile_sdk/jc2;->a:Lads_mobile_sdk/lc2;

    iput-object p1, v0, Lads_mobile_sdk/jc2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v6, v0, Lads_mobile_sdk/jc2;->j:I

    invoke-interface {p1, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v8, p1

    .line 95
    :goto_1
    :try_start_1
    iget-boolean p1, p0, Lads_mobile_sdk/lc2;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_5

    .line 97
    :try_start_2
    iget-object p1, p0, Lads_mobile_sdk/lc2;->a:Landroid/content/Context;

    new-instance v2, Landroidx/work/Configuration$Builder;

    invoke-direct {v2}, Landroidx/work/Configuration$Builder;-><init>()V

    invoke-virtual {v2}, Landroidx/work/Configuration$Builder;->build()Landroidx/work/Configuration;

    move-result-object v2

    .line 98
    invoke-static {p1, v2}, Landroidx/work/WorkManager;->initialize(Landroid/content/Context;Landroidx/work/Configuration;)V

    .line 99
    iput-boolean v6, p0, Lads_mobile_sdk/lc2;->f:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 102
    :try_start_3
    sget-object v2, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v2, Lads_mobile_sdk/kc2;

    invoke-direct {v2, p1}, Lads_mobile_sdk/kc2;-><init>(Ljava/lang/Exception;)V

    invoke-static {v2}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 106
    :cond_5
    :goto_2
    iget-object p1, p0, Lads_mobile_sdk/lc2;->a:Landroid/content/Context;

    .line 107
    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v6

    .line 108
    invoke-virtual {v6, v3}, Landroidx/work/WorkManager;->cancelAllWorkByTag(Ljava/lang/String;)Landroidx/work/Operation;

    .line 109
    new-instance p1, Landroidx/work/Constraints$Builder;

    invoke-direct {p1}, Landroidx/work/Constraints$Builder;-><init>()V

    sget-object v2, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {p1, v2}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    const-class p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/offline/OfflinePingSender;

    sget v9, Lcom/google/android/libraries/ads/mobile/sdk/internal/offline/OfflinePingSender;->a:I

    .line 118
    new-instance v9, Landroidx/work/Data$Builder;

    invoke-direct {v9}, Landroidx/work/Data$Builder;-><init>()V

    .line 119
    const-string v10, "OFFLINE_DATABASE_VERSION"

    iget v11, p0, Lads_mobile_sdk/lc2;->b:I

    invoke-virtual {v9, v10, v11}, Landroidx/work/Data$Builder;->putInt(Ljava/lang/String;I)Landroidx/work/Data$Builder;

    move-result-object v9

    .line 120
    const-string v10, "USER_AGENT"

    iget-object v11, p0, Lads_mobile_sdk/lc2;->d:Lads_mobile_sdk/zw3;

    iput-object p0, v0, Lads_mobile_sdk/jc2;->a:Lads_mobile_sdk/lc2;

    iput-object v8, v0, Lads_mobile_sdk/jc2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-object v6, v0, Lads_mobile_sdk/jc2;->c:Landroidx/work/WorkManager;

    iput-object p1, v0, Lads_mobile_sdk/jc2;->d:Ljava/lang/Class;

    iput-object v2, v0, Lads_mobile_sdk/jc2;->e:Landroidx/work/Constraints;

    iput-object v10, v0, Lads_mobile_sdk/jc2;->f:Ljava/lang/String;

    iput-object v9, v0, Lads_mobile_sdk/jc2;->g:Landroidx/work/Data$Builder;

    iput v4, v0, Lads_mobile_sdk/jc2;->j:I

    invoke-interface {v11, v0}, Lads_mobile_sdk/zw3;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    :goto_3
    return-object v1

    :cond_6
    move-object v4, p1

    move-object p1, v0

    move-object v1, v10

    move-object v0, p0

    move-object p0, v9

    .line 121
    :goto_4
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object p0

    .line 122
    const-string p1, "HTTP_CLIENT_TIMEOUT"

    iget-wide v0, v0, Lads_mobile_sdk/lc2;->c:J

    invoke-virtual {p0, p1, v0, v1}, Landroidx/work/Data$Builder;->putLong(Ljava/lang/String;J)Landroidx/work/Data$Builder;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p0

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance p1, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-direct {p1, v4}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 126
    invoke-virtual {p1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 127
    invoke-virtual {p1, p0}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 128
    invoke-virtual {p0, v3}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 129
    invoke-virtual {p0}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p0

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/work/OneTimeWorkRequest;

    .line 130
    invoke-virtual {v6, p0}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    invoke-interface {v8, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 150
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    .line 167
    invoke-interface {v8, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method
