.class public final Lcom/google/firestore/v1/Pipeline$Stage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Pipeline.java"

# interfaces
.implements Lcom/google/firestore/v1/Pipeline$StageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Pipeline$Stage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Pipeline$Stage;",
        "Lcom/google/firestore/v1/Pipeline$Stage$Builder;",
        ">;",
        "Lcom/google/firestore/v1/Pipeline$StageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 625
    invoke-static {}, Lcom/google/firestore/v1/Pipeline$Stage;->access$000()Lcom/google/firestore/v1/Pipeline$Stage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Pipeline$1;)V
    .locals 0

    .line 618
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllArgs(Ljava/lang/Iterable;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/Pipeline$Stage$Builder;"
        }
    .end annotation

    .line 839
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 840
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Pipeline$Stage;->access$700(Lcom/google/firestore/v1/Pipeline$Stage;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addArgs(ILcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1

    .line 825
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 826
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    .line 827
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firestore/v1/Value;

    .line 826
    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Pipeline$Stage;->access$600(Lcom/google/firestore/v1/Pipeline$Stage;ILcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public addArgs(ILcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1

    .line 799
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 800
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Pipeline$Stage;->access$600(Lcom/google/firestore/v1/Pipeline$Stage;ILcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public addArgs(Lcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1

    .line 812
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 813
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Pipeline$Stage;->access$500(Lcom/google/firestore/v1/Pipeline$Stage;Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public addArgs(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1

    .line 786
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 787
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Pipeline$Stage;->access$500(Lcom/google/firestore/v1/Pipeline$Stage;Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public clearArgs()Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1

    .line 851
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 852
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->access$800(Lcom/google/firestore/v1/Pipeline$Stage;)V

    return-object p0
.end method

.method public clearName()Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1

    .line 694
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 695
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->access$200(Lcom/google/firestore/v1/Pipeline$Stage;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1

    .line 889
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 890
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->access$1000(Lcom/google/firestore/v1/Pipeline$Stage;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public containsOptions(Ljava/lang/String;)Z
    .locals 1

    .line 884
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 885
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getArgs(I)Lcom/google/firestore/v1/Value;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Pipeline$Stage;->getArgs(I)Lcom/google/firestore/v1/Value;

    move-result-object p1

    return-object p1
.end method

.method public getArgsCount()I
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->getArgsCount()I

    move-result v0

    return v0
.end method

.method public getArgsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 727
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    .line 728
    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->getArgsList()Ljava/util/List;

    move-result-object v0

    .line 727
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 914
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getOptionsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 925
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    .line 926
    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    .line 925
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 2

    .line 942
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 943
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    .line 944
    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    .line 945
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getOptionsOrThrow(Ljava/lang/String;)Lcom/google/firestore/v1/Value;
    .locals 2

    .line 958
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 959
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    .line 960
    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    .line 961
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    return-object p1

    .line 962
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public putAllOptions(Ljava/util/Map;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/Pipeline$Stage$Builder;"
        }
    .end annotation

    .line 991
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 992
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->access$1000(Lcom/google/firestore/v1/Pipeline$Stage;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putOptions(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1

    .line 976
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 977
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 978
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 979
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->access$1000(Lcom/google/firestore/v1/Pipeline$Stage;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeArgs(I)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1

    .line 863
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 864
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Pipeline$Stage;->access$900(Lcom/google/firestore/v1/Pipeline$Stage;I)V

    return-object p0
.end method

.method public removeOptions(Ljava/lang/String;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1

    .line 903
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 904
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 905
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->access$1000(Lcom/google/firestore/v1/Pipeline$Stage;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setArgs(ILcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1

    .line 773
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 774
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    .line 775
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firestore/v1/Value;

    .line 774
    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Pipeline$Stage;->access$400(Lcom/google/firestore/v1/Pipeline$Stage;ILcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public setArgs(ILcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1

    .line 760
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 761
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Pipeline$Stage;->access$400(Lcom/google/firestore/v1/Pipeline$Stage;ILcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1

    .line 677
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 678
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Pipeline$Stage;->access$100(Lcom/google/firestore/v1/Pipeline$Stage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1

    .line 713
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 714
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Pipeline$Stage;->access$300(Lcom/google/firestore/v1/Pipeline$Stage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
