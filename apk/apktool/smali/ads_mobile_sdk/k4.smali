.class public final Lads_mobile_sdk/k4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ai1;


# instance fields
.field public final a:Lads_mobile_sdk/qn;

.field public final b:Lads_mobile_sdk/j53;

.field public final c:Lads_mobile_sdk/bn2;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/qn;Lads_mobile_sdk/j53;Lads_mobile_sdk/bn2;)V
    .locals 1

    .line 1
    const-string v0, "appState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phantomReferences"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lads_mobile_sdk/k4;->a:Lads_mobile_sdk/qn;

    .line 22
    iput-object p2, p0, Lads_mobile_sdk/k4;->b:Lads_mobile_sdk/j53;

    .line 23
    iput-object p3, p0, Lads_mobile_sdk/k4;->c:Lads_mobile_sdk/bn2;

    .line 26
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/k4;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/k4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 2
    iget-object p1, p0, Lads_mobile_sdk/k4;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    const-string v1, "requestType"

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lads_mobile_sdk/k4;->a:Lads_mobile_sdk/qn;

    iget-object v2, p0, Lads_mobile_sdk/k4;->b:Lads_mobile_sdk/j53;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object p1, p1, Lads_mobile_sdk/qn;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 75
    :cond_0
    iget-object p1, p0, Lads_mobile_sdk/k4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 76
    iget-object p1, p0, Lads_mobile_sdk/k4;->a:Lads_mobile_sdk/qn;

    iget-object v0, p0, Lads_mobile_sdk/k4;->b:Lads_mobile_sdk/j53;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object p1, p1, Lads_mobile_sdk/qn;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 156
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final h(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 66
    iget-object p1, p0, Lads_mobile_sdk/k4;->b:Lads_mobile_sdk/j53;

    .line 67
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 76
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 77
    :pswitch_0
    iget-object p1, p0, Lads_mobile_sdk/k4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lads_mobile_sdk/k4;->a:Lads_mobile_sdk/qn;

    iget-object v0, p0, Lads_mobile_sdk/k4;->b:Lads_mobile_sdk/j53;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    const-string v1, "requestType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object p1, p1, Lads_mobile_sdk/qn;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 158
    :cond_0
    :pswitch_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/k4;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/k4;->a:Lads_mobile_sdk/qn;

    iget-object v1, p0, Lads_mobile_sdk/k4;->b:Lads_mobile_sdk/j53;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/qn;->a(Lads_mobile_sdk/j53;)V

    .line 4
    iget-object v0, p0, Lads_mobile_sdk/k4;->c:Lads_mobile_sdk/bn2;

    .line 6
    new-instance v1, Lads_mobile_sdk/j4;

    iget-object v2, p0, Lads_mobile_sdk/k4;->a:Lads_mobile_sdk/qn;

    iget-object v3, p0, Lads_mobile_sdk/k4;->b:Lads_mobile_sdk/j53;

    iget-object v4, p0, Lads_mobile_sdk/k4;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, p0, Lads_mobile_sdk/k4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2, v3, v4, v5}, Lads_mobile_sdk/j4;-><init>(Lads_mobile_sdk/qn;Lads_mobile_sdk/j53;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {v0, p0, v1, p1}, Lads_mobile_sdk/bn2;->a(Lads_mobile_sdk/bn2;Ljava/lang/Object;Lads_mobile_sdk/vm2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 14
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    :goto_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final p(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 54
    iget-object p1, p0, Lads_mobile_sdk/k4;->b:Lads_mobile_sdk/j53;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 64
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 65
    :pswitch_0
    iget-object p1, p0, Lads_mobile_sdk/k4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 66
    iget-object p1, p0, Lads_mobile_sdk/k4;->a:Lads_mobile_sdk/qn;

    iget-object v0, p0, Lads_mobile_sdk/k4;->b:Lads_mobile_sdk/j53;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/qn;->b(Lads_mobile_sdk/j53;)V

    .line 67
    :cond_0
    :pswitch_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final r(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 48
    iget-object p1, p0, Lads_mobile_sdk/k4;->b:Lads_mobile_sdk/j53;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 58
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 59
    :pswitch_0
    iget-object p1, p0, Lads_mobile_sdk/k4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 60
    iget-object p1, p0, Lads_mobile_sdk/k4;->a:Lads_mobile_sdk/qn;

    iget-object v0, p0, Lads_mobile_sdk/k4;->b:Lads_mobile_sdk/j53;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/qn;->b(Lads_mobile_sdk/j53;)V

    .line 61
    :cond_0
    :pswitch_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
