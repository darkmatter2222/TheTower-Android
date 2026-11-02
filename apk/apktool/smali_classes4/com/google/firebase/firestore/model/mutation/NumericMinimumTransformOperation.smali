.class public Lcom/google/firebase/firestore/model/mutation/NumericMinimumTransformOperation;
.super Lcom/google/firebase/firestore/model/mutation/NumericTransformOperation;
.source "NumericMinimumTransformOperation.java"


# direct methods
.method public constructor <init>(Lcom/google/firestore/v1/Value;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/model/mutation/NumericTransformOperation;-><init>(Lcom/google/firestore/v1/Value;)V

    return-void
.end method


# virtual methods
.method public applyToLocalView(Lcom/google/firestore/v1/Value;Lcom/google/firebase/Timestamp;)Lcom/google/firestore/v1/Value;
    .locals 4

    .line 34
    invoke-static {p1}, Lcom/google/firebase/firestore/model/Values;->isNumber(Lcom/google/firestore/v1/Value;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 35
    iget-object p1, p0, Lcom/google/firebase/firestore/model/mutation/NumericMinimumTransformOperation;->operand:Lcom/google/firestore/v1/Value;

    return-object p1

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/firestore/model/Values;->isInteger(Lcom/google/firestore/v1/Value;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/firebase/firestore/model/mutation/NumericMinimumTransformOperation;->operand:Lcom/google/firestore/v1/Value;

    invoke-static {p2}, Lcom/google/firebase/firestore/model/Values;->isInteger(Lcom/google/firestore/v1/Value;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 40
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/NumericMinimumTransformOperation;->operandAsLong()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 41
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firestore/v1/Value$Builder;->setIntegerValue(J)Lcom/google/firestore/v1/Value$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    return-object p1

    .line 44
    :cond_1
    invoke-static {p1}, Lcom/google/firebase/firestore/model/Values;->isInteger(Lcom/google/firestore/v1/Value;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 45
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v0

    long-to-double v0, v0

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v0

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/NumericMinimumTransformOperation;->operandAsDouble()D

    move-result-wide v2

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 52
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 53
    iget-object p1, p0, Lcom/google/firebase/firestore/model/mutation/NumericMinimumTransformOperation;->operand:Lcom/google/firestore/v1/Value;

    return-object p1

    :cond_4
    cmpl-double p2, v0, v2

    if-nez p2, :cond_5

    :goto_1
    return-object p1

    :cond_5
    cmpg-double p2, v0, v2

    if-gez p2, :cond_6

    return-object p1

    .line 61
    :cond_6
    iget-object p1, p0, Lcom/google/firebase/firestore/model/mutation/NumericMinimumTransformOperation;->operand:Lcom/google/firestore/v1/Value;

    return-object p1
.end method
