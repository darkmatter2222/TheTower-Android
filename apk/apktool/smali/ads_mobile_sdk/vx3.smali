.class public final Lads_mobile_sdk/vx3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/ur3;

.field public final b:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ur3;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    .line 1
    const-string v0, "traceLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lads_mobile_sdk/vx3;->a:Lads_mobile_sdk/ur3;

    iput-object p2, p0, Lads_mobile_sdk/vx3;->b:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 33
    :try_start_0
    invoke-virtual {p1}, Lads_mobile_sdk/r31;->d()Lads_mobile_sdk/q41;

    move-result-object p3

    .line 35
    const-string v0, "duration"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    if-nez p3, :cond_1

    .line 39
    const-string p3, "1"

    const-string v3, "customControlsAllowed"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    .line 40
    const-string v3, "1"

    const-string v4, "clickToExpandAllowed"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    new-instance v3, Lads_mobile_sdk/q41;

    .line 43
    iget-object v4, p0, Lads_mobile_sdk/vx3;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 44
    invoke-direct {v3, v4, p1, v0, p3}, Lads_mobile_sdk/q41;-><init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/r31;FZ)V

    .line 45
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :try_start_1
    invoke-virtual {p1}, Lads_mobile_sdk/r31;->d()Lads_mobile_sdk/q41;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 47
    sget-object p3, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    const-string p3, "Attempt to create multiple GmaWebViewVideoController."

    .line 48
    invoke-static {p3, v2}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 49
    :cond_0
    iput-object v3, p1, Lads_mobile_sdk/r31;->r:Lads_mobile_sdk/q41;

    .line 51
    :goto_0
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    monitor-exit p1

    move-object p3, v3

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    .line 53
    :cond_1
    :goto_1
    const-string p1, "1"

    const-string v3, "muted"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 56
    const-string v3, "playbackState"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 59
    invoke-static {}, Lads_mobile_sdk/k41;->values()[Lads_mobile_sdk/k41;

    move-result-object v4

    .line 83
    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 84
    iget v8, v7, Lads_mobile_sdk/k41;->a:I

    if-ne v8, v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    move-object v7, v2

    :goto_3
    if-nez v7, :cond_4

    .line 85
    sget-object v7, Lads_mobile_sdk/k41;->b:Lads_mobile_sdk/k41;

    .line 88
    :cond_4
    const-string v3, "aspectRatio"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_5

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .line 91
    invoke-virtual {p3, v0, v7, p1, p2}, Lads_mobile_sdk/q41;->a(FLads_mobile_sdk/k41;ZF)V

    goto :goto_4

    .line 92
    :cond_5
    const-string p1, "Invalid videoMeta gmsg with no aspect ratio."

    invoke-static {p1, v2, v1}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 93
    :cond_6
    const-string p1, "Invalid videoMeta gmsg with no playback state."

    invoke-static {p1, v2, v1}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 94
    :cond_7
    const-string p1, "Invalid videoMeta gmsg with no duration."

    invoke-static {p1, v2, v1}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 124
    const-string p2, "Exception handling video metadata"

    const/4 p3, 0x4

    invoke-static {p2, p1, p3}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 125
    iget-object p2, p0, Lads_mobile_sdk/vx3;->a:Lads_mobile_sdk/ur3;

    check-cast p2, Lads_mobile_sdk/as3;

    const-string p3, "VideoMetadataGmsgHandler.onGmsg"

    invoke-virtual {p2, p3, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->k:Lads_mobile_sdk/u11;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
