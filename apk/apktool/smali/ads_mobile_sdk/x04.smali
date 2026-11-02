.class public final Lads_mobile_sdk/x04;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Landroidx/webkit/Profile;

.field public final synthetic b:Lads_mobile_sdk/r14;


# direct methods
.method public constructor <init>(Landroidx/webkit/Profile;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/x04;->a:Landroidx/webkit/Profile;

    iput-object p2, p0, Lads_mobile_sdk/x04;->b:Lads_mobile_sdk/r14;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lads_mobile_sdk/x04;

    iget-object v0, p0, Lads_mobile_sdk/x04;->a:Landroidx/webkit/Profile;

    iget-object v1, p0, Lads_mobile_sdk/x04;->b:Lads_mobile_sdk/r14;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/x04;-><init>(Landroidx/webkit/Profile;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/x04;

    iget-object v0, p0, Lads_mobile_sdk/x04;->a:Landroidx/webkit/Profile;

    iget-object v1, p0, Lads_mobile_sdk/x04;->b:Lads_mobile_sdk/r14;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/x04;-><init>(Landroidx/webkit/Profile;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/x04;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 143
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 144
    sget-object p1, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p1, p0, Lads_mobile_sdk/x04;->a:Landroidx/webkit/Profile;

    iget-object v0, p0, Lads_mobile_sdk/x04;->b:Lads_mobile_sdk/r14;

    .line 145
    iget-object v0, v0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xd

    .line 161
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "https://fonts.googleapis.com"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "https://googleads.g.doubleclick.net"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "https://lh3.googleusercontent.com"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "https://pagead2.googlesyndication.com"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "https://pubads.g.doubleclick.net"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "https://redirector.gvt1.com"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, "https://redirector.gvt1-cn.com"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v4, "https://static.doubleclick.net"

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v4, "https://s0.2mdn.net"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string v4, "https://s1.2mdn.net"

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string v4, "https://tpc.googlesyndication.com"

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-string v4, "https://www.googletagservices.com"

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-string v4, "https://www.gstatic.com"

    aput-object v4, v1, v2

    .line 162
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 163
    const-string v2, "key"

    const-string v4, "gads:webview_quic_hints_domain_list"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "defaultValue"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    sget-object v2, Lads_mobile_sdk/yr;->g:Lads_mobile_sdk/qr;

    invoke-virtual {v0, v4, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 209
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 210
    const-string v1, "profile"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "hosts"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    sget-object v1, Lads_mobile_sdk/az3;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    :try_start_0
    invoke-interface {p1, v0}, Landroidx/webkit/Profile;->addQuicHints(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 345
    :catchall_0
    sget-object p1, Lads_mobile_sdk/az3;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 346
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
