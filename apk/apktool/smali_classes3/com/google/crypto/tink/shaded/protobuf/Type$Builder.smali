.class public final Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "Type.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/TypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/Type;",
        "Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/TypeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 593
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$000()Lcom/google/crypto/tink/shaded/protobuf/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/Type$1;)V
    .locals 0

    .line 586
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllFields(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/Field;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;"
        }
    .end annotation

    .line 727
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 728
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$700(Lcom/google/crypto/tink/shaded/protobuf/Type;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOneofs(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;"
        }
    .end annotation

    .line 815
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 816
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1200(Lcom/google/crypto/tink/shaded/protobuf/Type;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOptions(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;"
        }
    .end annotation

    .line 921
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 922
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1800(Lcom/google/crypto/tink/shaded/protobuf/Type;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addFields(ILcom/google/crypto/tink/shaded/protobuf/Field$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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

    .line 717
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 718
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    .line 719
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Field;

    .line 718
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$600(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public addFields(ILcom/google/crypto/tink/shaded/protobuf/Field;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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

    .line 699
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 700
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$600(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public addFields(Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 708
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 709
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$500(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public addFields(Lcom/google/crypto/tink/shaded/protobuf/Field;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 690
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 691
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$500(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public addOneofs(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 804
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 805
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1100(Lcom/google/crypto/tink/shaded/protobuf/Type;Ljava/lang/String;)V

    return-object p0
.end method

.method public addOneofsBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 835
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 836
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1400(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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

    .line 911
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 912
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    .line 913
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 912
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1700(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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

    .line 893
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 894
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1700(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 902
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 903
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1600(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 884
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 885
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1600(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1

    .line 586
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1

    .line 586
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 1

    .line 586
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEdition()Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1

    .line 1068
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 1069
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2800(Lcom/google/crypto/tink/shaded/protobuf/Type;)V

    return-object p0
.end method

.method public clearFields()Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1

    .line 735
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 736
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$800(Lcom/google/crypto/tink/shaded/protobuf/Type;)V

    return-object p0
.end method

.method public clearName()Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1

    .line 630
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 631
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$200(Lcom/google/crypto/tink/shaded/protobuf/Type;)V

    return-object p0
.end method

.method public clearOneofs()Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1

    .line 824
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 825
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1300(Lcom/google/crypto/tink/shaded/protobuf/Type;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1

    .line 929
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 930
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1900(Lcom/google/crypto/tink/shaded/protobuf/Type;)V

    return-object p0
.end method

.method public clearSourceContext()Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1

    .line 984
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 985
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2300(Lcom/google/crypto/tink/shaded/protobuf/Type;)V

    return-object p0
.end method

.method public clearSyntax()Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1

    .line 1030
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 1031
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2600(Lcom/google/crypto/tink/shaded/protobuf/Type;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 586
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 1

    .line 586
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

    .line 586
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1

    .line 586
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getEdition()Ljava/lang/String;
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getEdition()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditionBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getEditionBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFields(I)Lcom/google/crypto/tink/shaded/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getFields(I)Lcom/google/crypto/tink/shaded/protobuf/Field;

    move-result-object p1

    return-object p1
.end method

.method public getFieldsCount()I
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getFieldsCount()I

    move-result v0

    return v0
.end method

.method public getFieldsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/Field;",
            ">;"
        }
    .end annotation

    .line 651
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    .line 652
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getFieldsList()Ljava/util/List;

    move-result-object v0

    .line 651
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOneofs(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getOneofs(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOneofsBytes(I)Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getOneofsBytes(I)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getOneofsCount()I
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getOneofsCount()I

    move-result v0

    return v0
.end method

.method public getOneofsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 755
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    .line 756
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getOneofsList()Ljava/util/List;

    move-result-object v0

    .line 755
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

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

    .line 859
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Option;

    move-result-object p1

    return-object p1
.end method

.method public getOptionsCount()I
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getOptionsCount()I

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

    .line 845
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    .line 846
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 845
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSourceContext()Lcom/google/crypto/tink/shaded/protobuf/SourceContext;
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getSourceContext()Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Lcom/google/crypto/tink/shaded/protobuf/Syntax;
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getSyntax()Lcom/google/crypto/tink/shaded/protobuf/Syntax;

    move-result-object v0

    return-object v0
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getSyntaxValue()I

    move-result v0

    return v0
.end method

.method public hasSourceContext()Z
    .locals 1

    .line 947
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->hasSourceContext()Z

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

    .line 586
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

    .line 586
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

    .line 586
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

    .line 586
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

    .line 586
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

    .line 586
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

    .line 586
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

    .line 586
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

    .line 586
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

    .line 586
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

    .line 586
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

    .line 586
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

    .line 586
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

    .line 586
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

    .line 586
    invoke-super {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeSourceContext(Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 977
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 978
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2200(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V

    return-object p0
.end method

.method public removeFields(I)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 743
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 744
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$900(Lcom/google/crypto/tink/shaded/protobuf/Type;I)V

    return-object p0
.end method

.method public removeOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 937
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 938
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2000(Lcom/google/crypto/tink/shaded/protobuf/Type;I)V

    return-object p0
.end method

.method public setEdition(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1059
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 1060
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2700(Lcom/google/crypto/tink/shaded/protobuf/Type;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEditionBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1079
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 1080
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2900(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFields(ILcom/google/crypto/tink/shaded/protobuf/Field$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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

    .line 681
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 682
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    .line 683
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Field;

    .line 682
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$400(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public setFields(ILcom/google/crypto/tink/shaded/protobuf/Field;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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

    .line 672
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 673
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$400(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 621
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 622
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$100(Lcom/google/crypto/tink/shaded/protobuf/Type;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 641
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 642
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$300(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOneofs(ILjava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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

    .line 793
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 794
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1000(Lcom/google/crypto/tink/shaded/protobuf/Type;ILjava/lang/String;)V

    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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

    .line 875
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 876
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    .line 877
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 876
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1500(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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

    .line 866
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 867
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1500(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public setSourceContext(Lcom/google/crypto/tink/shaded/protobuf/SourceContext$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 969
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 970
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/SourceContext$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2100(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V

    return-object p0
.end method

.method public setSourceContext(Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 960
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 961
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2100(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V

    return-object p0
.end method

.method public setSyntax(Lcom/google/crypto/tink/shaded/protobuf/Syntax;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1021
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 1022
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2500(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/Syntax;)V

    return-object p0
.end method

.method public setSyntaxValue(I)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1003
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 1004
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2400(Lcom/google/crypto/tink/shaded/protobuf/Type;I)V

    return-object p0
.end method
