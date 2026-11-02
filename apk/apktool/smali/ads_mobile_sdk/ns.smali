.class public abstract Lads_mobile_sdk/ns;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/q04;

.field public final c:Lads_mobile_sdk/ex0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/q04;Lads_mobile_sdk/ex0;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewProfileNameHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lads_mobile_sdk/ns;->a:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lads_mobile_sdk/ns;->b:Lads_mobile_sdk/q04;

    .line 20
    iput-object p3, p0, Lads_mobile_sdk/ns;->c:Lads_mobile_sdk/ex0;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/rz;ZLads_mobile_sdk/wz3;)V
    .locals 5

    .line 1
    const-string v0, "key"

    const-string v1, "executor"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/ns;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string v2, "gads:webview_profile:enabled"

    .line 4
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v2, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Default"

    if-eqz v1, :cond_0

    .line 21
    :try_start_1
    iget-object v1, p0, Lads_mobile_sdk/ns;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    const-string v3, "gads:init_profile_during_webview_startup:enabled"

    .line 23
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 40
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GMA_WEBVIEW_PROFILE"

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 47
    :goto_0
    sget-object v1, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lads_mobile_sdk/ns;->a:Landroid/content/Context;

    invoke-static {v1, p1, p2, v0, p3}, Lads_mobile_sdk/az3;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;ZLjava/util/Set;Lads_mobile_sdk/wz3;)V

    return-void
.end method

.method public final a()Z
    .locals 12

    const/4 v0, 0x0

    .line 48
    :try_start_0
    const-string v1, "MULTI_PROFILE"

    invoke-static {v1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 49
    :cond_0
    iget-object v1, p0, Lads_mobile_sdk/ns;->b:Lads_mobile_sdk/q04;

    check-cast v1, Lads_mobile_sdk/r14;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 50
    :try_start_1
    iget-object v1, v1, Lads_mobile_sdk/r14;->m:Landroidx/webkit/Profile;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroidx/webkit/Profile;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    const-string v4, "GMA_WEBVIEW_PROFILE"

    if-nez v1, :cond_2

    .line 51
    :try_start_2
    iget-object v5, p0, Lads_mobile_sdk/ns;->b:Lads_mobile_sdk/q04;

    check-cast v5, Lads_mobile_sdk/r14;

    invoke-virtual {v5}, Lads_mobile_sdk/r14;->g()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 55
    iget-object v1, p0, Lads_mobile_sdk/ns;->b:Lads_mobile_sdk/q04;

    check-cast v1, Lads_mobile_sdk/r14;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    const-string v5, "profileName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    iget-object v6, v1, Lads_mobile_sdk/r14;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v9, Lads_mobile_sdk/p14;

    invoke-direct {v9, v1, v4, v2}, Lads_mobile_sdk/p14;-><init>(Lads_mobile_sdk/r14;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return v3

    :cond_2
    if-eqz v1, :cond_3

    .line 325
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    return v3

    :catchall_1
    :cond_3
    return v0
.end method
