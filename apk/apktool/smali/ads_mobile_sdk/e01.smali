.class public interface abstract Lads_mobile_sdk/e01;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lads_mobile_sdk/e01;Lads_mobile_sdk/f81;Lkotlin/time/Duration;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;
    .locals 7

    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p5, 0x8

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    move v4, p3

    :goto_0
    and-int/lit8 p2, p5, 0x10

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v5, v0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    .line 2
    invoke-interface/range {v0 .. v6}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/f81;Lkotlin/time/Duration;Ljava/util/Map;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lads_mobile_sdk/e01;Ljava/net/URL;Ljava/util/Map;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;
    .locals 7

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v3, p2

    and-int/lit8 p2, p4, 0x10

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    move v5, p2

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 4
    invoke-interface/range {v0 .. v6}, Lads_mobile_sdk/e01;->a(Ljava/net/URL;Lkotlin/time/Duration;Ljava/util/Map;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a(IJLads_mobile_sdk/m8;)Ljava/lang/Object;
.end method

.method public abstract a(Lads_mobile_sdk/f81;Lkotlin/time/Duration;Lads_mobile_sdk/ja2;)Ljava/lang/Object;
.end method

.method public abstract a(Lads_mobile_sdk/f81;Lkotlin/time/Duration;Ljava/util/Map;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract a(Lads_mobile_sdk/sl1;)Ljava/lang/Object;
.end method

.method public abstract a(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract a(Ljava/net/URL;Lads_mobile_sdk/ss0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract a(Ljava/net/URL;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract a(Ljava/net/URL;Lkotlin/time/Duration;Ljava/util/Map;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract a(Lads_mobile_sdk/uv;)V
.end method

.method public abstract a(Lads_mobile_sdk/vk0;)V
.end method
