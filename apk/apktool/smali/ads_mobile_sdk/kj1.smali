.class public final Lads_mobile_sdk/kj1;
.super Lads_mobile_sdk/bs;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/hj1;


# instance fields
.field public final e:I

.field public final f:Lads_mobile_sdk/bb2;

.field public final g:Lads_mobile_sdk/ex0;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILads_mobile_sdk/ks3;Lads_mobile_sdk/ej1;Lads_mobile_sdk/bb2;Lads_mobile_sdk/ex0;)V
    .locals 1

    .line 1
    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalAdRequestEventEmitter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkRequester"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lads_mobile_sdk/bs;-><init>(Ljava/lang/String;ILads_mobile_sdk/ks3;Lads_mobile_sdk/ej1;)V

    .line 42
    iput p2, p0, Lads_mobile_sdk/kj1;->e:I

    .line 45
    iput-object p5, p0, Lads_mobile_sdk/kj1;->f:Lads_mobile_sdk/bb2;

    .line 46
    iput-object p6, p0, Lads_mobile_sdk/kj1;->g:Lads_mobile_sdk/ex0;

    return-void
.end method

.method public static a(Lads_mobile_sdk/kj1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 38
    instance-of v0, p1, Lads_mobile_sdk/ij1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ij1;

    iget v1, v0, Lads_mobile_sdk/ij1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ij1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/ij1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ij1;-><init>(Lads_mobile_sdk/kj1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/ij1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 80
    iget v2, v0, Lads_mobile_sdk/ij1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 81
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lads_mobile_sdk/ij1;->a:Lads_mobile_sdk/kj1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    iput-object p0, v0, Lads_mobile_sdk/ij1;->a:Lads_mobile_sdk/kj1;

    iput v4, v0, Lads_mobile_sdk/ij1;->d:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p1

    iget-object v2, p0, Lads_mobile_sdk/bs;->c:Lads_mobile_sdk/ks3;

    .line 84
    const-string v5, "<set-?>"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iput-object v2, p1, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 103
    iget-object p1, p0, Lads_mobile_sdk/bs;->c:Lads_mobile_sdk/ks3;

    iget-object p1, p1, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    iget-object v2, p0, Lads_mobile_sdk/bs;->a:Ljava/lang/String;

    iput-object v2, p1, Lads_mobile_sdk/tn1;->a:Ljava/lang/String;

    .line 104
    iget v2, p0, Lads_mobile_sdk/bs;->b:I

    iput v2, p1, Lads_mobile_sdk/tn1;->c:I

    .line 106
    iget-object p1, p0, Lads_mobile_sdk/bs;->d:Lads_mobile_sdk/ej1;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ej1;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_4

    check-cast p1, Lkotlin/Unit;

    goto :goto_1

    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-ne p1, v1, :cond_5

    goto :goto_3

    .line 107
    :cond_5
    :goto_2
    :try_start_1
    iget-object p1, p0, Lads_mobile_sdk/kj1;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    const-string v2, "gads:load_timeout:milliseconds"

    sget-object v5, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v5, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    const/4 v6, 0x5

    invoke-static {v6, v5}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v5

    const-string v7, "key"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-static {v5, v6}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v5

    sget-object v6, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {p1, v2, v5, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v5

    .line 110
    new-instance p1, Lads_mobile_sdk/jj1;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lads_mobile_sdk/jj1;-><init>(Lads_mobile_sdk/kj1;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v0, Lads_mobile_sdk/ij1;->a:Lads_mobile_sdk/kj1;

    iput v3, v0, Lads_mobile_sdk/ij1;->d:I

    invoke-static {v5, v6, p1, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    :goto_3
    return-object v1

    .line 111
    :cond_6
    :goto_4
    check-cast p1, Lads_mobile_sdk/v01;
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 124
    new-instance p1, Lads_mobile_sdk/r01;

    invoke-direct {p1, p0, v4}, Lads_mobile_sdk/r01;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;I)V

    return-object p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 35
    iget v0, p0, Lads_mobile_sdk/kj1;->e:I

    return v0
.end method

.method public final a(Lads_mobile_sdk/vk2;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-static {p0, p1}, Lads_mobile_sdk/kj1;->a(Lads_mobile_sdk/kj1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
