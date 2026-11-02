.class public final Lads_mobile_sdk/xc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/m;


# instance fields
.field public final a:Lads_mobile_sdk/zd3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/zd3;)V
    .locals 1

    .line 1
    const-string v0, "sharedSettingsDataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lads_mobile_sdk/xc3;->a:Lads_mobile_sdk/zd3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/j;)Ljava/lang/Object;
    .locals 1

    .line 2
    const-string v0, "total_inflight_ad_limit"

    invoke-static {p1, v0}, Lads_mobile_sdk/ds1;->d(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    .line 4
    iget-object v0, p0, Lads_mobile_sdk/xc3;->a:Lads_mobile_sdk/zd3;

    invoke-virtual {v0, p1, p2}, Lads_mobile_sdk/zd3;->a(ILads_mobile_sdk/j;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 6
    :cond_1
    sget-object p2, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Received non-positive total_inflight_ad_limit: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    .line 8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
