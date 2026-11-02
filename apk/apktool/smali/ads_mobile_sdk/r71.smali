.class public final Lads_mobile_sdk/r71;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/s71;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/s71;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/r71;->a:Lads_mobile_sdk/s71;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/r71;->a:Lads_mobile_sdk/s71;

    .line 3
    iget-object v0, v0, Lads_mobile_sdk/s71;->a:Lads_mobile_sdk/a81;

    .line 4
    iget-object v1, v0, Lads_mobile_sdk/a81;->e:Lkotlin/Lazy;

    .line 5
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, v0, Lads_mobile_sdk/a81;->c:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lads_mobile_sdk/e01;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Lads_mobile_sdk/a81;->b:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lads_mobile_sdk/e01;

    .line 12
    :goto_0
    iget-object v1, p0, Lads_mobile_sdk/r71;->a:Lads_mobile_sdk/s71;

    .line 13
    iget-object v1, v1, Lads_mobile_sdk/s71;->c:Lads_mobile_sdk/vk0;

    if-eqz v1, :cond_1

    .line 14
    invoke-interface {v0, v1}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/vk0;)V

    .line 15
    :cond_1
    iget-object v1, p0, Lads_mobile_sdk/r71;->a:Lads_mobile_sdk/s71;

    .line 16
    iget-object v1, v1, Lads_mobile_sdk/s71;->b:Lads_mobile_sdk/uv;

    if-eqz v1, :cond_2

    .line 17
    invoke-interface {v0, v1}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/uv;)V

    :cond_2
    return-object v0
.end method
