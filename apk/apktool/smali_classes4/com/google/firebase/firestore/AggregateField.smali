.class public abstract Lcom/google/firebase/firestore/AggregateField;
.super Ljava/lang/Object;
.source "AggregateField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/AggregateField$CountAggregateField;,
        Lcom/google/firebase/firestore/AggregateField$SumAggregateField;,
        Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;
    }
.end annotation


# instance fields
.field private final alias:Ljava/lang/String;

.field private final fieldPath:Lcom/google/firebase/firestore/FieldPath;

.field private final operator:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/String;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/firebase/firestore/AggregateField;->fieldPath:Lcom/google/firebase/firestore/FieldPath;

    .line 37
    iput-object p2, p0, Lcom/google/firebase/firestore/AggregateField;->operator:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/AggregateField;->alias:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/String;Lcom/google/firebase/firestore/AggregateField$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/AggregateField;-><init>(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/String;)V

    return-void
.end method

.method public static average(Lcom/google/firebase/firestore/FieldPath;)Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;
    .locals 2

    .line 197
    new-instance v0, Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;-><init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/AggregateField$1;)V

    return-object v0
.end method

.method public static average(Ljava/lang/String;)Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;
    .locals 2

    .line 177
    new-instance v0, Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;

    invoke-static {p0}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;-><init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/AggregateField$1;)V

    return-object v0
.end method

.method public static count()Lcom/google/firebase/firestore/AggregateField$CountAggregateField;
    .locals 2

    .line 109
    new-instance v0, Lcom/google/firebase/firestore/AggregateField$CountAggregateField;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/AggregateField$CountAggregateField;-><init>(Lcom/google/firebase/firestore/AggregateField$1;)V

    return-object v0
.end method

.method public static sum(Lcom/google/firebase/firestore/FieldPath;)Lcom/google/firebase/firestore/AggregateField$SumAggregateField;
    .locals 2

    .line 157
    new-instance v0, Lcom/google/firebase/firestore/AggregateField$SumAggregateField;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/AggregateField$SumAggregateField;-><init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/AggregateField$1;)V

    return-object v0
.end method

.method public static sum(Ljava/lang/String;)Lcom/google/firebase/firestore/AggregateField$SumAggregateField;
    .locals 2

    .line 133
    new-instance v0, Lcom/google/firebase/firestore/AggregateField$SumAggregateField;

    invoke-static {p0}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/AggregateField$SumAggregateField;-><init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/AggregateField$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 80
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/AggregateField;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 84
    :cond_1
    check-cast p1, Lcom/google/firebase/firestore/AggregateField;

    .line 85
    iget-object v1, p0, Lcom/google/firebase/firestore/AggregateField;->fieldPath:Lcom/google/firebase/firestore/FieldPath;

    if-eqz v1, :cond_4

    iget-object v3, p1, Lcom/google/firebase/firestore/AggregateField;->fieldPath:Lcom/google/firebase/firestore/FieldPath;

    if-nez v3, :cond_2

    goto :goto_0

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/firestore/AggregateField;->operator:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/AggregateField;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/google/firebase/firestore/AggregateField;->getFieldPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/AggregateField;->getFieldPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v2

    :cond_4
    :goto_0
    if-nez v1, :cond_5

    .line 86
    iget-object p1, p1, Lcom/google/firebase/firestore/AggregateField;->fieldPath:Lcom/google/firebase/firestore/FieldPath;

    if-nez p1, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/firebase/firestore/AggregateField;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldPath()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/firebase/firestore/AggregateField;->fieldPath:Lcom/google/firebase/firestore/FieldPath;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FieldPath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/firebase/firestore/AggregateField;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/google/firebase/firestore/AggregateField;->getOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/AggregateField;->getFieldPath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method abstract toPipeline()Lcom/google/firebase/firestore/pipeline/AliasedAggregate;
.end method
