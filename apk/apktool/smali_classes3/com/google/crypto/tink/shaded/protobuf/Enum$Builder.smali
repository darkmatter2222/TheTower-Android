.class public final Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "Enum.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/EnumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/Enum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/Enum;",
        "Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/EnumOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 497
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$000()Lcom/google/crypto/tink/shaded/protobuf/Enum;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/Enum$1;)V
    .locals 0

    .line 490
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllEnumvalue(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/EnumValue;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;"
        }
    .end annotation

    .line 631
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 632
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$700(Lcom/google/crypto/tink/shaded/protobuf/Enum;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOptions(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/Option;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;"
        }
    .end annotation

    .line 733
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 734
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1300(Lcom/google/crypto/tink/shaded/protobuf/Enum;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addEnumvalue(ILcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 621
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 622
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    .line 623
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    .line 622
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$600(Lcom/google/crypto/tink/shaded/protobuf/Enum;ILcom/google/crypto/tink/shaded/protobuf/EnumValue;)V

    return-object p0
.end method

.method public addEnumvalue(ILcom/google/crypto/tink/shaded/protobuf/EnumValue;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 603
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 604
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$600(Lcom/google/crypto/tink/shaded/protobuf/Enum;ILcom/google/crypto/tink/shaded/protobuf/EnumValue;)V

    return-object p0
.end method

.method public addEnumvalue(Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 612
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 613
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$500(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/EnumValue;)V

    return-object p0
.end method

.method public addEnumvalue(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 594
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 595
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$500(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/EnumValue;)V

    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 723
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 724
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    .line 725
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 724
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1200(Lcom/google/crypto/tink/shaded/protobuf/Enum;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 705
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 706
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1200(Lcom/google/crypto/tink/shaded/protobuf/Enum;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 714
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 715
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1100(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 696
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 697
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1100(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1

    .line 490
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1

    .line 490
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 1

    .line 490
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEdition()Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1

    .line 880
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 881
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$2300(Lcom/google/crypto/tink/shaded/protobuf/Enum;)V

    return-object p0
.end method

.method public clearEnumvalue()Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 640
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$800(Lcom/google/crypto/tink/shaded/protobuf/Enum;)V

    return-object p0
.end method

.method public clearName()Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1

    .line 534
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 535
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$200(Lcom/google/crypto/tink/shaded/protobuf/Enum;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1

    .line 741
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 742
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1400(Lcom/google/crypto/tink/shaded/protobuf/Enum;)V

    return-object p0
.end method

.method public clearSourceContext()Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1

    .line 796
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 797
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1800(Lcom/google/crypto/tink/shaded/protobuf/Enum;)V

    return-object p0
.end method

.method public clearSyntax()Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1

    .line 842
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 843
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$2100(Lcom/google/crypto/tink/shaded/protobuf/Enum;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 490
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 1

    .line 490
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 490
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1

    .line 490
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getEdition()Ljava/lang/String;
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getEdition()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditionBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getEditionBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEnumvalue(I)Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getEnumvalue(I)Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    move-result-object p1

    return-object p1
.end method

.method public getEnumvalueCount()I
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getEnumvalueCount()I

    move-result v0

    return v0
.end method

.method public getEnumvalueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/EnumValue;",
            ">;"
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    .line 556
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getEnumvalueList()Ljava/util/List;

    move-result-object v0

    .line 555
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Option;

    move-result-object p1

    return-object p1
.end method

.method public getOptionsCount()I
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getOptionsCount()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    .line 658
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 657
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSourceContext()Lcom/google/crypto/tink/shaded/protobuf/SourceContext;
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getSourceContext()Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Lcom/google/crypto/tink/shaded/protobuf/Syntax;
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getSyntax()Lcom/google/crypto/tink/shaded/protobuf/Syntax;

    move-result-object v0

    return-object v0
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getSyntaxValue()I

    move-result v0

    return v0
.end method

.method public hasSourceContext()Z
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->hasSourceContext()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalMergeFrom(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "message"
        }
    .end annotation

    .line 490
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    invoke-super {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 490
    invoke-super {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 490
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 490
    invoke-super {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 490
    invoke-super {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    invoke-super {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    invoke-super {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "other"
        }
    .end annotation

    .line 490
    invoke-super {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    invoke-super {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    invoke-super {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 490
    invoke-super {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom([B)Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 490
    invoke-super {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 490
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 490
    invoke-super {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeSourceContext(Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 789
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 790
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1700(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V

    return-object p0
.end method

.method public removeEnumvalue(I)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 647
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 648
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$900(Lcom/google/crypto/tink/shaded/protobuf/Enum;I)V

    return-object p0
.end method

.method public removeOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 749
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 750
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1500(Lcom/google/crypto/tink/shaded/protobuf/Enum;I)V

    return-object p0
.end method

.method public setEdition(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 871
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 872
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$2200(Lcom/google/crypto/tink/shaded/protobuf/Enum;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEditionBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 891
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 892
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$2400(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setEnumvalue(ILcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 585
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 586
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    .line 587
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    .line 586
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$400(Lcom/google/crypto/tink/shaded/protobuf/Enum;ILcom/google/crypto/tink/shaded/protobuf/EnumValue;)V

    return-object p0
.end method

.method public setEnumvalue(ILcom/google/crypto/tink/shaded/protobuf/EnumValue;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 576
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 577
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$400(Lcom/google/crypto/tink/shaded/protobuf/Enum;ILcom/google/crypto/tink/shaded/protobuf/EnumValue;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 526
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$100(Lcom/google/crypto/tink/shaded/protobuf/Enum;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 545
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 546
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$300(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 687
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 688
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    .line 689
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 688
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1000(Lcom/google/crypto/tink/shaded/protobuf/Enum;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 678
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 679
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1000(Lcom/google/crypto/tink/shaded/protobuf/Enum;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public setSourceContext(Lcom/google/crypto/tink/shaded/protobuf/SourceContext$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 781
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 782
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/SourceContext$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1600(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V

    return-object p0
.end method

.method public setSourceContext(Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 772
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 773
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1600(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V

    return-object p0
.end method

.method public setSyntax(Lcom/google/crypto/tink/shaded/protobuf/Syntax;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 833
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 834
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$2000(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/Syntax;)V

    return-object p0
.end method

.method public setSyntaxValue(I)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 815
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 816
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1900(Lcom/google/crypto/tink/shaded/protobuf/Enum;I)V

    return-object p0
.end method
