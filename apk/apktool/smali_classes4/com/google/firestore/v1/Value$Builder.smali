.class public final Lcom/google/firestore/v1/Value$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Value.java"

# interfaces
.implements Lcom/google/firestore/v1/ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Value;",
        "Lcom/google/firestore/v1/Value$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1536
    invoke-static {}, Lcom/google/firestore/v1/Value;->access$000()Lcom/google/firestore/v1/Value;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Value$1;)V
    .locals 0

    .line 1529
    invoke-direct {p0}, Lcom/google/firestore/v1/Value$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearArrayValue()Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2289
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2290
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firestore/v1/Value;->access$2700(Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public clearBooleanValue()Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 1677
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 1678
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firestore/v1/Value;->access$600(Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public clearBytesValue()Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2040
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2041
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firestore/v1/Value;->access$1800(Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public clearDoubleValue()Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 1781
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 1782
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firestore/v1/Value;->access$1000(Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public clearFieldReferenceValue()Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2487
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2488
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firestore/v1/Value;->access$3200(Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public clearFunctionValue()Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2757
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2758
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firestore/v1/Value;->access$3900(Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public clearGeoPointValue()Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2199
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2200
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firestore/v1/Value;->access$2400(Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public clearIntegerValue()Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 1729
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 1730
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firestore/v1/Value;->access$800(Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public clearMapValue()Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2361
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2362
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firestore/v1/Value;->access$3000(Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public clearNullValue()Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 1625
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 1626
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firestore/v1/Value;->access$400(Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public clearPipelineValue()Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2895
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2896
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firestore/v1/Value;->access$4200(Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public clearReferenceValue()Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2111
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2112
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firestore/v1/Value;->access$2000(Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public clearStringValue()Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 1957
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 1958
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firestore/v1/Value;->access$1500(Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public clearTimestampValue()Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 1871
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 1872
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firestore/v1/Value;->access$1300(Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public clearValueType()Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 1546
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 1547
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firestore/v1/Value;->access$100(Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public clearVariableReferenceValue()Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2600
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2601
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firestore/v1/Value;->access$3500(Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public getArrayValue()Lcom/google/firestore/v1/ArrayValue;
    .locals 1

    .line 2230
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 1

    .line 1652
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getBooleanValue()Z

    move-result v0

    return v0
.end method

.method public getBytesValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2009
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getBytesValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .line 1756
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFieldReferenceValue()Ljava/lang/String;
    .locals 1

    .line 2412
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getFieldReferenceValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldReferenceValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2437
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getFieldReferenceValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionValue()Lcom/google/firestore/v1/Function;
    .locals 1

    .line 2666
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getFunctionValue()Lcom/google/firestore/v1/Function;

    move-result-object v0

    return-object v0
.end method

.method public getGeoPointValue()Lcom/google/type/LatLng;
    .locals 1

    .line 2152
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getGeoPointValue()Lcom/google/type/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getIntegerValue()J
    .locals 2

    .line 1704
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMapValue()Lcom/google/firestore/v1/MapValue;
    .locals 1

    .line 2314
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    return-object v0
.end method

.method public getNullValue()Lcom/google/protobuf/NullValue;
    .locals 1

    .line 1600
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getNullValue()Lcom/google/protobuf/NullValue;

    move-result-object v0

    return-object v0
.end method

.method public getNullValueValue()I
    .locals 1

    .line 1574
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getNullValueValue()I

    move-result v0

    return v0
.end method

.method public getPipelineValue()Lcom/google/firestore/v1/Pipeline;
    .locals 1

    .line 2804
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getPipelineValue()Lcom/google/firestore/v1/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceValue()Ljava/lang/String;
    .locals 1

    .line 2069
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getReferenceValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2083
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getReferenceValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 1906
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1923
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getStringValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimestampValue()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 1812
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getTimestampValue()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;
    .locals 1

    .line 1542
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getVariableReferenceValue()Ljava/lang/String;
    .locals 1

    .line 2549
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getVariableReferenceValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVariableReferenceValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2566
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getVariableReferenceValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasArrayValue()Z
    .locals 1

    .line 2216
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->hasArrayValue()Z

    move-result v0

    return v0
.end method

.method public hasBooleanValue()Z
    .locals 1

    .line 1640
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->hasBooleanValue()Z

    move-result v0

    return v0
.end method

.method public hasBytesValue()Z
    .locals 1

    .line 1994
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->hasBytesValue()Z

    move-result v0

    return v0
.end method

.method public hasDoubleValue()Z
    .locals 1

    .line 1744
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->hasDoubleValue()Z

    move-result v0

    return v0
.end method

.method public hasFieldReferenceValue()Z
    .locals 1

    .line 2388
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->hasFieldReferenceValue()Z

    move-result v0

    return v0
.end method

.method public hasFunctionValue()Z
    .locals 1

    .line 2644
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->hasFunctionValue()Z

    move-result v0

    return v0
.end method

.method public hasGeoPointValue()Z
    .locals 1

    .line 2141
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->hasGeoPointValue()Z

    move-result v0

    return v0
.end method

.method public hasIntegerValue()Z
    .locals 1

    .line 1692
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->hasIntegerValue()Z

    move-result v0

    return v0
.end method

.method public hasMapValue()Z
    .locals 1

    .line 2303
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->hasMapValue()Z

    move-result v0

    return v0
.end method

.method public hasNullValue()Z
    .locals 1

    .line 1562
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->hasNullValue()Z

    move-result v0

    return v0
.end method

.method public hasPipelineValue()Z
    .locals 1

    .line 2782
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->hasPipelineValue()Z

    move-result v0

    return v0
.end method

.method public hasReferenceValue()Z
    .locals 1

    .line 2056
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->hasReferenceValue()Z

    move-result v0

    return v0
.end method

.method public hasStringValue()Z
    .locals 1

    .line 1890
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->hasStringValue()Z

    move-result v0

    return v0
.end method

.method public hasTimestampValue()Z
    .locals 1

    .line 1798
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->hasTimestampValue()Z

    move-result v0

    return v0
.end method

.method public hasVariableReferenceValue()Z
    .locals 1

    .line 2533
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->hasVariableReferenceValue()Z

    move-result v0

    return v0
.end method

.method public mergeArrayValue(Lcom/google/firestore/v1/ArrayValue;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2274
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2275
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$2600(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/ArrayValue;)V

    return-object p0
.end method

.method public mergeFunctionValue(Lcom/google/firestore/v1/Function;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2734
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2735
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$3800(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Function;)V

    return-object p0
.end method

.method public mergeGeoPointValue(Lcom/google/type/LatLng;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2187
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2188
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$2300(Lcom/google/firestore/v1/Value;Lcom/google/type/LatLng;)V

    return-object p0
.end method

.method public mergeMapValue(Lcom/google/firestore/v1/MapValue;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2349
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2350
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$2900(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/MapValue;)V

    return-object p0
.end method

.method public mergePipelineValue(Lcom/google/firestore/v1/Pipeline;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2872
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2873
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$4100(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Pipeline;)V

    return-object p0
.end method

.method public mergeTimestampValue(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 1856
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 1857
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$1200(Lcom/google/firestore/v1/Value;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public setArrayValue(Lcom/google/firestore/v1/ArrayValue$Builder;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2259
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2260
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {p1}, Lcom/google/firestore/v1/ArrayValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$2500(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/ArrayValue;)V

    return-object p0
.end method

.method public setArrayValue(Lcom/google/firestore/v1/ArrayValue;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2243
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2244
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$2500(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/ArrayValue;)V

    return-object p0
.end method

.method public setBooleanValue(Z)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 1664
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 1665
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$500(Lcom/google/firestore/v1/Value;Z)V

    return-object p0
.end method

.method public setBytesValue(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2024
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2025
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$1700(Lcom/google/firestore/v1/Value;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDoubleValue(D)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 1768
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 1769
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Value;->access$900(Lcom/google/firestore/v1/Value;D)V

    return-object p0
.end method

.method public setFieldReferenceValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2462
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2463
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$3100(Lcom/google/firestore/v1/Value;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFieldReferenceValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2514
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2515
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$3300(Lcom/google/firestore/v1/Value;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFunctionValue(Lcom/google/firestore/v1/Function$Builder;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2711
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2712
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Function$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Function;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$3700(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Function;)V

    return-object p0
.end method

.method public setFunctionValue(Lcom/google/firestore/v1/Function;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2687
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2688
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$3700(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Function;)V

    return-object p0
.end method

.method public setGeoPointValue(Lcom/google/type/LatLng$Builder;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2175
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2176
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {p1}, Lcom/google/type/LatLng$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/type/LatLng;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$2200(Lcom/google/firestore/v1/Value;Lcom/google/type/LatLng;)V

    return-object p0
.end method

.method public setGeoPointValue(Lcom/google/type/LatLng;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2162
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2163
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$2200(Lcom/google/firestore/v1/Value;Lcom/google/type/LatLng;)V

    return-object p0
.end method

.method public setIntegerValue(J)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 1716
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 1717
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Value;->access$700(Lcom/google/firestore/v1/Value;J)V

    return-object p0
.end method

.method public setMapValue(Lcom/google/firestore/v1/MapValue$Builder;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2337
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2338
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {p1}, Lcom/google/firestore/v1/MapValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/MapValue;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$2800(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/MapValue;)V

    return-object p0
.end method

.method public setMapValue(Lcom/google/firestore/v1/MapValue;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2324
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2325
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$2800(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/MapValue;)V

    return-object p0
.end method

.method public setNullValue(Lcom/google/protobuf/NullValue;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 1612
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 1613
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$300(Lcom/google/firestore/v1/Value;Lcom/google/protobuf/NullValue;)V

    return-object p0
.end method

.method public setNullValueValue(I)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 1586
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 1587
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$200(Lcom/google/firestore/v1/Value;I)V

    return-object p0
.end method

.method public setPipelineValue(Lcom/google/firestore/v1/Pipeline$Builder;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2849
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2850
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Pipeline$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$4000(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Pipeline;)V

    return-object p0
.end method

.method public setPipelineValue(Lcom/google/firestore/v1/Pipeline;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2825
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2826
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$4000(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Pipeline;)V

    return-object p0
.end method

.method public setReferenceValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2097
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2098
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$1900(Lcom/google/firestore/v1/Value;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReferenceValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2127
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2128
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$2100(Lcom/google/firestore/v1/Value;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 1940
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 1941
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$1400(Lcom/google/firestore/v1/Value;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStringValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 1976
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 1977
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$1600(Lcom/google/firestore/v1/Value;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTimestampValue(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 1841
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 1842
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$1100(Lcom/google/firestore/v1/Value;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public setTimestampValue(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 1825
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 1826
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$1100(Lcom/google/firestore/v1/Value;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public setVariableReferenceValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2583
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2584
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$3400(Lcom/google/firestore/v1/Value;Ljava/lang/String;)V

    return-object p0
.end method

.method public setVariableReferenceValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 2619
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->copyOnWrite()V

    .line 2620
    iget-object v0, p0, Lcom/google/firestore/v1/Value$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Value;->access$3600(Lcom/google/firestore/v1/Value;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
