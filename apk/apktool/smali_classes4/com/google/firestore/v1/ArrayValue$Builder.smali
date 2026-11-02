.class public final Lcom/google/firestore/v1/ArrayValue$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ArrayValue.java"

# interfaces
.implements Lcom/google/firestore/v1/ArrayValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/ArrayValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/ArrayValue;",
        "Lcom/google/firestore/v1/ArrayValue$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ArrayValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 257
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->access$000()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/ArrayValue$1;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllValues(Ljava/lang/Iterable;)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/ArrayValue$Builder;"
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;->copyOnWrite()V

    .line 383
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ArrayValue;->access$400(Lcom/google/firestore/v1/ArrayValue;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addValues(ILcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;->copyOnWrite()V

    .line 369
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    .line 370
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firestore/v1/Value;

    .line 369
    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/ArrayValue;->access$300(Lcom/google/firestore/v1/ArrayValue;ILcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public addValues(ILcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1

    .line 342
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;->copyOnWrite()V

    .line 343
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/ArrayValue;->access$300(Lcom/google/firestore/v1/ArrayValue;ILcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public addValues(Lcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;->copyOnWrite()V

    .line 356
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ArrayValue;->access$200(Lcom/google/firestore/v1/ArrayValue;Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public addValues(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1

    .line 329
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;->copyOnWrite()V

    .line 330
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ArrayValue;->access$200(Lcom/google/firestore/v1/ArrayValue;Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public clearValues()Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;->copyOnWrite()V

    .line 395
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0}, Lcom/google/firestore/v1/ArrayValue;->access$500(Lcom/google/firestore/v1/ArrayValue;)V

    return-object p0
.end method

.method public getValues(I)Lcom/google/firestore/v1/Value;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/ArrayValue;->getValues(I)Lcom/google/firestore/v1/Value;

    move-result-object p1

    return-object p1
.end method

.method public getValuesCount()I
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v0

    return v0
.end method

.method public getValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    .line 271
    invoke-virtual {v0}, Lcom/google/firestore/v1/ArrayValue;->getValuesList()Ljava/util/List;

    move-result-object v0

    .line 270
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeValues(I)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1

    .line 406
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;->copyOnWrite()V

    .line 407
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ArrayValue;->access$600(Lcom/google/firestore/v1/ArrayValue;I)V

    return-object p0
.end method

.method public setValues(ILcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1

    .line 316
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;->copyOnWrite()V

    .line 317
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    .line 318
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firestore/v1/Value;

    .line 317
    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/ArrayValue;->access$100(Lcom/google/firestore/v1/ArrayValue;ILcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public setValues(ILcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;->copyOnWrite()V

    .line 304
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/ArrayValue;->access$100(Lcom/google/firestore/v1/ArrayValue;ILcom/google/firestore/v1/Value;)V

    return-object p0
.end method
