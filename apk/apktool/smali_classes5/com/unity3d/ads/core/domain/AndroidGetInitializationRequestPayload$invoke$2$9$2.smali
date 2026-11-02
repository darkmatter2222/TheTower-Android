.class final synthetic Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$2$9$2;
.super Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.source "AndroidGetInitializationRequestPayload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    const-class v2, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    const-string v4, "getUadsInitBlob()Lcom/google/protobuf/ByteString;"

    const/4 v5, 0x0

    const-string v3, "uadsInitBlob"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$2$9$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->getUadsInitBlob()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$2$9$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->setUadsInitBlob(Lcom/google/protobuf/ByteString;)V

    return-void
.end method
