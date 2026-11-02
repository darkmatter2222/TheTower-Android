.class public final Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DocumentTransform.java"

# interfaces
.implements Lcom/google/firestore/v1/DocumentTransform$FieldTransformOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/DocumentTransform$FieldTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/DocumentTransform$FieldTransform;",
        "Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;",
        ">;",
        "Lcom/google/firestore/v1/DocumentTransform$FieldTransformOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1318
    invoke-static {}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$000()Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/DocumentTransform$1;)V
    .locals 0

    .line 1311
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAppendMissingElements()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 2026
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 2027
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1900(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    return-object p0
.end method

.method public clearFieldPath()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1391
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1392
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$300(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    return-object p0
.end method

.method public clearIncrement()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1612
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1613
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1000(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    return-object p0
.end method

.method public clearMaximum()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1750
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1751
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1300(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    return-object p0
.end method

.method public clearMinimum()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1888
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1889
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1600(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    return-object p0
.end method

.method public clearRemoveAllFromArray()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 2152
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 2153
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$2200(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    return-object p0
.end method

.method public clearSetToServerValue()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1486
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1487
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$700(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    return-object p0
.end method

.method public clearTransformType()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1328
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1329
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$100(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    return-object p0
.end method

.method public getAppendMissingElements()Lcom/google/firestore/v1/ArrayValue;
    .locals 1

    .line 1935
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getAppendMissingElements()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    return-object v0
.end method

.method public getFieldPath()Ljava/lang/String;
    .locals 1

    .line 1346
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getFieldPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldPathBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1361
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getFieldPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIncrement()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 1529
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getIncrement()Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public getMaximum()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 1659
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getMaximum()Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public getMinimum()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 1797
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getMinimum()Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public getRemoveAllFromArray()Lcom/google/firestore/v1/ArrayValue;
    .locals 1

    .line 2069
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getRemoveAllFromArray()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    return-object v0
.end method

.method public getSetToServerValue()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;
    .locals 1

    .line 1461
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getSetToServerValue()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;

    move-result-object v0

    return-object v0
.end method

.method public getSetToServerValueValue()I
    .locals 1

    .line 1435
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getSetToServerValueValue()I

    move-result v0

    return v0
.end method

.method public getTransformTypeCase()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;
    .locals 1

    .line 1324
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getTransformTypeCase()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasAppendMissingElements()Z
    .locals 1

    .line 1913
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->hasAppendMissingElements()Z

    move-result v0

    return v0
.end method

.method public hasIncrement()Z
    .locals 1

    .line 1509
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->hasIncrement()Z

    move-result v0

    return v0
.end method

.method public hasMaximum()Z
    .locals 1

    .line 1637
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->hasMaximum()Z

    move-result v0

    return v0
.end method

.method public hasMinimum()Z
    .locals 1

    .line 1775
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->hasMinimum()Z

    move-result v0

    return v0
.end method

.method public hasRemoveAllFromArray()Z
    .locals 1

    .line 2049
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->hasRemoveAllFromArray()Z

    move-result v0

    return v0
.end method

.method public hasSetToServerValue()Z
    .locals 1

    .line 1423
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->hasSetToServerValue()Z

    move-result v0

    return v0
.end method

.method public mergeAppendMissingElements(Lcom/google/firestore/v1/ArrayValue;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 2003
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 2004
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1800(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/ArrayValue;)V

    return-object p0
.end method

.method public mergeIncrement(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1591
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1592
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$900(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public mergeMaximum(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1727
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1728
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1200(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public mergeMinimum(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1865
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1866
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1500(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public mergeRemoveAllFromArray(Lcom/google/firestore/v1/ArrayValue;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 2131
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 2132
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$2100(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/ArrayValue;)V

    return-object p0
.end method

.method public setAppendMissingElements(Lcom/google/firestore/v1/ArrayValue$Builder;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1980
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1981
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {p1}, Lcom/google/firestore/v1/ArrayValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1700(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/ArrayValue;)V

    return-object p0
.end method

.method public setAppendMissingElements(Lcom/google/firestore/v1/ArrayValue;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1956
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1957
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1700(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/ArrayValue;)V

    return-object p0
.end method

.method public setFieldPath(Ljava/lang/String;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1376
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1377
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$200(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFieldPathBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1408
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1409
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$400(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIncrement(Lcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1570
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1571
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$800(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public setIncrement(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1548
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1549
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$800(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public setMaximum(Lcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1704
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1705
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1100(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public setMaximum(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1680
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1681
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1100(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public setMinimum(Lcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1842
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1843
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1400(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public setMinimum(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1818
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1819
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1400(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public setRemoveAllFromArray(Lcom/google/firestore/v1/ArrayValue$Builder;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 2110
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 2111
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {p1}, Lcom/google/firestore/v1/ArrayValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$2000(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/ArrayValue;)V

    return-object p0
.end method

.method public setRemoveAllFromArray(Lcom/google/firestore/v1/ArrayValue;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 2088
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 2089
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$2000(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/ArrayValue;)V

    return-object p0
.end method

.method public setSetToServerValue(Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1473
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1474
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$600(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;)V

    return-object p0
.end method

.method public setSetToServerValueValue(I)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1447
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1448
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$500(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;I)V

    return-object p0
.end method
