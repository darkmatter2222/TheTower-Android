.class public final Lads_mobile_sdk/r4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/t4;

.field public final b:Lads_mobile_sdk/o4;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/t4;Lads_mobile_sdk/o4;)V
    .locals 1

    .line 1
    const-string v0, "adMetadataHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adMetadataChangedEventEmitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lads_mobile_sdk/r4;->a:Lads_mobile_sdk/t4;

    .line 18
    iput-object p2, p0, Lads_mobile_sdk/r4;->b:Lads_mobile_sdk/o4;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    const-string p1, "info"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 25
    :cond_0
    sget-object p2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-static {p1}, Lads_mobile_sdk/ds1;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to parse ad metadata info: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x6

    invoke-static {p1, p2, p3}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 28
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 31
    :cond_1
    iget-object p1, p0, Lads_mobile_sdk/r4;->a:Lads_mobile_sdk/t4;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/t4;->a(Landroid/os/Bundle;)V

    .line 32
    iget-object p1, p0, Lads_mobile_sdk/r4;->b:Lads_mobile_sdk/o4;

    invoke-virtual {p1, p2, p3}, Lads_mobile_sdk/o4;->a(Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->t:Lads_mobile_sdk/u11;

    return-object v0
.end method
