.class Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$1;
.super Ljava/lang/Object;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$ListAdapter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
        "Ljava/lang/Integer;",
        "Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Integer;)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .locals 0

    .line 1582
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->forNumber(I)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1583
    sget-object p1, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->UNRECOGNIZED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    :cond_0
    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1579
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$1;->convert(Ljava/lang/Integer;)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object p1

    return-object p1
.end method
