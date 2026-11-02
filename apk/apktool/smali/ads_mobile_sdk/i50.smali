.class public final Lads_mobile_sdk/i50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/r41;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r41;)V
    .locals 1

    .line 1
    const-string v0, "gmsgHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/i50;->a:Lads_mobile_sdk/r41;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/i50;->a:Lads_mobile_sdk/r41;

    invoke-interface {v0, p1, p2, p3}, Lads_mobile_sdk/r41;->a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 2
    const-string v0, "adKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lads_mobile_sdk/i50;->a:Lads_mobile_sdk/r41;

    invoke-interface {v0, p1}, Lads_mobile_sdk/r41;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final f()Lads_mobile_sdk/r41;
    .locals 1

    .line 58
    iget-object v0, p0, Lads_mobile_sdk/i50;->a:Lads_mobile_sdk/r41;

    invoke-interface {v0}, Lads_mobile_sdk/r41;->f()Lads_mobile_sdk/r41;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lads_mobile_sdk/u11;
    .locals 1

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/i50;->a:Lads_mobile_sdk/r41;

    invoke-interface {v0}, Lads_mobile_sdk/r41;->g()Lads_mobile_sdk/u11;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/i50;->a:Lads_mobile_sdk/r41;

    invoke-interface {v0}, Lads_mobile_sdk/r41;->i()Z

    move-result v0

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/i50;->a:Lads_mobile_sdk/r41;

    invoke-interface {v0}, Lads_mobile_sdk/r41;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
