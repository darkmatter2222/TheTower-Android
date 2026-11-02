.class public final Lads_mobile_sdk/hk3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/if1;

.field public final b:Lads_mobile_sdk/ex0;

.field public final c:Lads_mobile_sdk/ur3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/if1;Lads_mobile_sdk/ex0;Lads_mobile_sdk/ur3;)V
    .locals 1

    .line 1
    const-string v0, "inspectorManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lads_mobile_sdk/hk3;->a:Lads_mobile_sdk/if1;

    .line 21
    iput-object p2, p0, Lads_mobile_sdk/hk3;->b:Lads_mobile_sdk/ex0;

    .line 22
    iput-object p3, p0, Lads_mobile_sdk/hk3;->c:Lads_mobile_sdk/ur3;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of p1, p3, Lads_mobile_sdk/gk3;

    if-eqz p1, :cond_0

    move-object p1, p3

    check-cast p1, Lads_mobile_sdk/gk3;

    iget v0, p1, Lads_mobile_sdk/gk3;->e:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p1, Lads_mobile_sdk/gk3;->e:I

    goto :goto_0

    :cond_0
    new-instance p1, Lads_mobile_sdk/gk3;

    invoke-direct {p1, p0, p3}, Lads_mobile_sdk/gk3;-><init>(Lads_mobile_sdk/hk3;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, p1, Lads_mobile_sdk/gk3;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 27
    iget v1, p1, Lads_mobile_sdk/gk3;->e:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v4, :cond_1

    iget-object p2, p1, Lads_mobile_sdk/gk3;->b:Ljava/util/Map;

    iget-object p1, p1, Lads_mobile_sdk/gk3;->a:Lads_mobile_sdk/hk3;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    goto :goto_3

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    iget-object p3, p0, Lads_mobile_sdk/hk3;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {p3}, Lads_mobile_sdk/ex0;->a0()Z

    move-result p3

    if-nez p3, :cond_3

    .line 30
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 33
    :cond_3
    const-string p3, "extras"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_7

    .line 34
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    .line 41
    :cond_4
    :try_start_1
    iget-object v1, p0, Lads_mobile_sdk/hk3;->a:Lads_mobile_sdk/if1;

    .line 43
    const-string v5, "expires"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_1

    :cond_5
    const-wide v5, 0x7fffffffffffffffL

    .line 44
    :goto_1
    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    .line 45
    iput-object p0, p1, Lads_mobile_sdk/gk3;->a:Lads_mobile_sdk/hk3;

    iput-object p2, p1, Lads_mobile_sdk/gk3;->b:Ljava/util/Map;

    iput v4, p1, Lads_mobile_sdk/gk3;->e:I

    invoke-static {v1, p3, v5, p1}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Ljava/lang/Long;Lads_mobile_sdk/gk3;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 55
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catch_1
    move-exception p3

    move-object p1, p0

    .line 56
    :goto_3
    const-string v0, "Invalid expiration in SingleAdSourceTesting GMSG."

    invoke-static {v0}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 57
    iget-object p1, p1, Lads_mobile_sdk/hk3;->c:Lads_mobile_sdk/ur3;

    check-cast p1, Lads_mobile_sdk/as3;

    const-string v0, "SingleAdSourceTestingGmsgHandler.onGmsg"

    invoke-virtual {p1, v0, p3}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Invalid expiration in SingleAdSource GMSG: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 59
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 60
    :cond_7
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Network Extras is missing from SingleAdSource GMSG: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 61
    const-string p1, "Missing network extras in SingleAdSourceTesting request."

    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 62
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->N:Lads_mobile_sdk/u11;

    return-object v0
.end method
