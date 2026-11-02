.class final synthetic Lcom/unity3d/ads/core/domain/AndroidGetAdRequest$invoke$request$1$3$2;
.super Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.source "AndroidGetAdRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidGetAdRequest;->invoke(Ljava/lang/String;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const-class v2, Lgatewayprotocol/v1/AdRequestKt$Dsl;

    const-string v4, "getMediationAdUnitId()Ljava/lang/String;"

    const/4 v5, 0x0

    const-string v3, "mediationAdUnitId"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetAdRequest$invoke$request$1$3$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdRequestKt$Dsl;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestKt$Dsl;->getMediationAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetAdRequest$invoke$request$1$3$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdRequestKt$Dsl;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestKt$Dsl;->setMediationAdUnitId(Ljava/lang/String;)V

    return-void
.end method
