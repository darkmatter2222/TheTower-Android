.class public final Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StructuredAggregationQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredAggregationQueryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredAggregationQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/StructuredAggregationQuery;",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredAggregationQueryOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3058
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3000()Lcom/google/firestore/v1/StructuredAggregationQuery;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/StructuredAggregationQuery$1;)V
    .locals 0

    .line 3051
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAggregations(ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1

    .line 3298
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 3299
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    .line 3300
    invoke-virtual {p2}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 3299
    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3700(Lcom/google/firestore/v1/StructuredAggregationQuery;ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    return-object p0
.end method

.method public addAggregations(ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1

    .line 3262
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 3263
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3700(Lcom/google/firestore/v1/StructuredAggregationQuery;ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    return-object p0
.end method

.method public addAggregations(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1

    .line 3280
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 3281
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3600(Lcom/google/firestore/v1/StructuredAggregationQuery;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    return-object p0
.end method

.method public addAggregations(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1

    .line 3244
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 3245
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3600(Lcom/google/firestore/v1/StructuredAggregationQuery;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    return-object p0
.end method

.method public addAllAggregations(Ljava/lang/Iterable;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;",
            ">;)",
            "Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;"
        }
    .end annotation

    .line 3317
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 3318
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3800(Lcom/google/firestore/v1/StructuredAggregationQuery;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public clearAggregations()Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1

    .line 3334
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 3335
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3900(Lcom/google/firestore/v1/StructuredAggregationQuery;)V

    return-object p0
.end method

.method public clearQueryType()Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1

    .line 3068
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 3069
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3100(Lcom/google/firestore/v1/StructuredAggregationQuery;)V

    return-object p0
.end method

.method public clearStructuredQuery()Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1

    .line 3141
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 3142
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3400(Lcom/google/firestore/v1/StructuredAggregationQuery;)V

    return-object p0
.end method

.method public getAggregations(I)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1

    .line 3192
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->getAggregations(I)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    move-result-object p1

    return-object p1
.end method

.method public getAggregationsCount()I
    .locals 1

    .line 3177
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->getAggregationsCount()I

    move-result v0

    return v0
.end method

.method public getAggregationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;",
            ">;"
        }
    .end annotation

    .line 3160
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    .line 3161
    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->getAggregationsList()Ljava/util/List;

    move-result-object v0

    .line 3160
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getQueryTypeCase()Lcom/google/firestore/v1/StructuredAggregationQuery$QueryTypeCase;
    .locals 1

    .line 3064
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->getQueryTypeCase()Lcom/google/firestore/v1/StructuredAggregationQuery$QueryTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getStructuredQuery()Lcom/google/firestore/v1/StructuredQuery;
    .locals 1

    .line 3094
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->getStructuredQuery()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v0

    return-object v0
.end method

.method public hasStructuredQuery()Z
    .locals 1

    .line 3083
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->hasStructuredQuery()Z

    move-result v0

    return v0
.end method

.method public mergeStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1

    .line 3129
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 3130
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3300(Lcom/google/firestore/v1/StructuredAggregationQuery;Lcom/google/firestore/v1/StructuredQuery;)V

    return-object p0
.end method

.method public removeAggregations(I)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1

    .line 3351
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 3352
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$4000(Lcom/google/firestore/v1/StructuredAggregationQuery;I)V

    return-object p0
.end method

.method public setAggregations(ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1

    .line 3226
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 3227
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    .line 3228
    invoke-virtual {p2}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 3227
    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3500(Lcom/google/firestore/v1/StructuredAggregationQuery;ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    return-object p0
.end method

.method public setAggregations(ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1

    .line 3208
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 3209
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3500(Lcom/google/firestore/v1/StructuredAggregationQuery;ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    return-object p0
.end method

.method public setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery$Builder;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1

    .line 3117
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 3118
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3200(Lcom/google/firestore/v1/StructuredAggregationQuery;Lcom/google/firestore/v1/StructuredQuery;)V

    return-object p0
.end method

.method public setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1

    .line 3104
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 3105
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3200(Lcom/google/firestore/v1/StructuredAggregationQuery;Lcom/google/firestore/v1/StructuredQuery;)V

    return-object p0
.end method
