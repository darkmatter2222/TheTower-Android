.class public final Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "Api.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/ApiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/Api;",
        "Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/ApiOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 644
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$000()Lcom/google/crypto/tink/shaded/protobuf/Api;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/Api$1;)V
    .locals 0

    .line 637
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllMethods(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/Method;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;"
        }
    .end annotation

    .line 778
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 779
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$700(Lcom/google/crypto/tink/shaded/protobuf/Api;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllMixins(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/Mixin;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;"
        }
    .end annotation

    .line 1078
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 1079
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$2500(Lcom/google/crypto/tink/shaded/protobuf/Api;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOptions(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;"
        }
    .end annotation

    .line 880
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 881
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$1300(Lcom/google/crypto/tink/shaded/protobuf/Api;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addMethods(ILcom/google/crypto/tink/shaded/protobuf/Method$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
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

    .line 768
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 769
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    .line 770
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Method;

    .line 769
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$600(Lcom/google/crypto/tink/shaded/protobuf/Api;ILcom/google/crypto/tink/shaded/protobuf/Method;)V

    return-object p0
.end method

.method public addMethods(ILcom/google/crypto/tink/shaded/protobuf/Method;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
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

    .line 750
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 751
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$600(Lcom/google/crypto/tink/shaded/protobuf/Api;ILcom/google/crypto/tink/shaded/protobuf/Method;)V

    return-object p0
.end method

.method public addMethods(Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 759
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 760
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$500(Lcom/google/crypto/tink/shaded/protobuf/Api;Lcom/google/crypto/tink/shaded/protobuf/Method;)V

    return-object p0
.end method

.method public addMethods(Lcom/google/crypto/tink/shaded/protobuf/Method;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 741
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 742
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$500(Lcom/google/crypto/tink/shaded/protobuf/Api;Lcom/google/crypto/tink/shaded/protobuf/Method;)V

    return-object p0
.end method

.method public addMixins(ILcom/google/crypto/tink/shaded/protobuf/Mixin$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
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

    .line 1068
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 1069
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    .line 1070
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Mixin$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Mixin;

    .line 1069
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$2400(Lcom/google/crypto/tink/shaded/protobuf/Api;ILcom/google/crypto/tink/shaded/protobuf/Mixin;)V

    return-object p0
.end method

.method public addMixins(ILcom/google/crypto/tink/shaded/protobuf/Mixin;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
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

    .line 1050
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 1051
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$2400(Lcom/google/crypto/tink/shaded/protobuf/Api;ILcom/google/crypto/tink/shaded/protobuf/Mixin;)V

    return-object p0
.end method

.method public addMixins(Lcom/google/crypto/tink/shaded/protobuf/Mixin$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1059
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 1060
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Mixin$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Mixin;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$2300(Lcom/google/crypto/tink/shaded/protobuf/Api;Lcom/google/crypto/tink/shaded/protobuf/Mixin;)V

    return-object p0
.end method

.method public addMixins(Lcom/google/crypto/tink/shaded/protobuf/Mixin;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1041
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 1042
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$2300(Lcom/google/crypto/tink/shaded/protobuf/Api;Lcom/google/crypto/tink/shaded/protobuf/Mixin;)V

    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
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

    .line 870
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 871
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    .line 872
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 871
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$1200(Lcom/google/crypto/tink/shaded/protobuf/Api;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
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

    .line 852
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 853
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$1200(Lcom/google/crypto/tink/shaded/protobuf/Api;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 861
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 862
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$1100(Lcom/google/crypto/tink/shaded/protobuf/Api;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 843
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 844
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$1100(Lcom/google/crypto/tink/shaded/protobuf/Api;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1

    .line 637
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1

    .line 637
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 1

    .line 637
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEdition()Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1

    .line 1178
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 1179
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$3200(Lcom/google/crypto/tink/shaded/protobuf/Api;)V

    return-object p0
.end method

.method public clearMethods()Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1

    .line 786
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 787
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$800(Lcom/google/crypto/tink/shaded/protobuf/Api;)V

    return-object p0
.end method

.method public clearMixins()Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1

    .line 1086
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 1087
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$2600(Lcom/google/crypto/tink/shaded/protobuf/Api;)V

    return-object p0
.end method

.method public clearName()Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 682
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$200(Lcom/google/crypto/tink/shaded/protobuf/Api;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1

    .line 888
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 889
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$1400(Lcom/google/crypto/tink/shaded/protobuf/Api;)V

    return-object p0
.end method

.method public clearSourceContext()Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1

    .line 992
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 993
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$2100(Lcom/google/crypto/tink/shaded/protobuf/Api;)V

    return-object p0
.end method

.method public clearSyntax()Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1

    .line 1140
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 1141
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$3000(Lcom/google/crypto/tink/shaded/protobuf/Api;)V

    return-object p0
.end method

.method public clearVersion()Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1

    .line 934
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 935
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$1700(Lcom/google/crypto/tink/shaded/protobuf/Api;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 637
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 1

    .line 637
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

    .line 637
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1

    .line 637
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getEdition()Ljava/lang/String;
    .locals 1

    .line 1151
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->getEdition()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditionBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->getEditionBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMethods(I)Lcom/google/crypto/tink/shaded/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->getMethods(I)Lcom/google/crypto/tink/shaded/protobuf/Method;

    move-result-object p1

    return-object p1
.end method

.method public getMethodsCount()I
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->getMethodsCount()I

    move-result v0

    return v0
.end method

.method public getMethodsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/Method;",
            ">;"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    .line 703
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->getMethodsList()Ljava/util/List;

    move-result-object v0

    .line 702
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMixins(I)Lcom/google/crypto/tink/shaded/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1016
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->getMixins(I)Lcom/google/crypto/tink/shaded/protobuf/Mixin;

    move-result-object p1

    return-object p1
.end method

.method public getMixinsCount()I
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->getMixinsCount()I

    move-result v0

    return v0
.end method

.method public getMixinsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/Mixin;",
            ">;"
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    .line 1003
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->getMixinsList()Ljava/util/List;

    move-result-object v0

    .line 1002
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

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

    .line 818
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->getOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Option;

    move-result-object p1

    return-object p1
.end method

.method public getOptionsCount()I
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->getOptionsCount()I

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

    .line 804
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    .line 805
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 804
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSourceContext()Lcom/google/crypto/tink/shaded/protobuf/SourceContext;
    .locals 1

    .line 962
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->getSourceContext()Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Lcom/google/crypto/tink/shaded/protobuf/Syntax;
    .locals 1

    .line 1123
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->getSyntax()Lcom/google/crypto/tink/shaded/protobuf/Syntax;

    move-result-object v0

    return-object v0
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 1105
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->getSyntaxValue()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->getVersionBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasSourceContext()Z
    .locals 1

    .line 955
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Api;->hasSourceContext()Z

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

    .line 637
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

    .line 637
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

    .line 637
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

    .line 637
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

    .line 637
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

    .line 637
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

    .line 637
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

    .line 637
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

    .line 637
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

    .line 637
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

    .line 637
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

    .line 637
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

    .line 637
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

    .line 637
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

    .line 637
    invoke-super {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeSourceContext(Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 985
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 986
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$2000(Lcom/google/crypto/tink/shaded/protobuf/Api;Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V

    return-object p0
.end method

.method public removeMethods(I)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 794
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 795
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$900(Lcom/google/crypto/tink/shaded/protobuf/Api;I)V

    return-object p0
.end method

.method public removeMixins(I)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1094
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 1095
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$2700(Lcom/google/crypto/tink/shaded/protobuf/Api;I)V

    return-object p0
.end method

.method public removeOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 896
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 897
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$1500(Lcom/google/crypto/tink/shaded/protobuf/Api;I)V

    return-object p0
.end method

.method public setEdition(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1169
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 1170
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$3100(Lcom/google/crypto/tink/shaded/protobuf/Api;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEditionBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1189
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 1190
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$3300(Lcom/google/crypto/tink/shaded/protobuf/Api;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMethods(ILcom/google/crypto/tink/shaded/protobuf/Method$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
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

    .line 732
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 733
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    .line 734
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Method;

    .line 733
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$400(Lcom/google/crypto/tink/shaded/protobuf/Api;ILcom/google/crypto/tink/shaded/protobuf/Method;)V

    return-object p0
.end method

.method public setMethods(ILcom/google/crypto/tink/shaded/protobuf/Method;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
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

    .line 723
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 724
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$400(Lcom/google/crypto/tink/shaded/protobuf/Api;ILcom/google/crypto/tink/shaded/protobuf/Method;)V

    return-object p0
.end method

.method public setMixins(ILcom/google/crypto/tink/shaded/protobuf/Mixin$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
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

    .line 1032
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 1033
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    .line 1034
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Mixin$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Mixin;

    .line 1033
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$2200(Lcom/google/crypto/tink/shaded/protobuf/Api;ILcom/google/crypto/tink/shaded/protobuf/Mixin;)V

    return-object p0
.end method

.method public setMixins(ILcom/google/crypto/tink/shaded/protobuf/Mixin;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
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

    .line 1023
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 1024
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$2200(Lcom/google/crypto/tink/shaded/protobuf/Api;ILcom/google/crypto/tink/shaded/protobuf/Mixin;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 672
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 673
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$100(Lcom/google/crypto/tink/shaded/protobuf/Api;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 692
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 693
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$300(Lcom/google/crypto/tink/shaded/protobuf/Api;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
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

    .line 834
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 835
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    .line 836
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 835
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$1000(Lcom/google/crypto/tink/shaded/protobuf/Api;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
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

    .line 825
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 826
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$1000(Lcom/google/crypto/tink/shaded/protobuf/Api;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public setSourceContext(Lcom/google/crypto/tink/shaded/protobuf/SourceContext$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 977
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 978
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/SourceContext$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$1900(Lcom/google/crypto/tink/shaded/protobuf/Api;Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V

    return-object p0
.end method

.method public setSourceContext(Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 968
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 969
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$1900(Lcom/google/crypto/tink/shaded/protobuf/Api;Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V

    return-object p0
.end method

.method public setSyntax(Lcom/google/crypto/tink/shaded/protobuf/Syntax;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1131
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 1132
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$2900(Lcom/google/crypto/tink/shaded/protobuf/Api;Lcom/google/crypto/tink/shaded/protobuf/Syntax;)V

    return-object p0
.end method

.method public setSyntaxValue(I)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1113
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 1114
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$2800(Lcom/google/crypto/tink/shaded/protobuf/Api;I)V

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 925
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 926
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$1600(Lcom/google/crypto/tink/shaded/protobuf/Api;Ljava/lang/String;)V

    return-object p0
.end method

.method public setVersionBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 945
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->copyOnWrite()V

    .line 946
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Api$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Api;->access$1800(Lcom/google/crypto/tink/shaded/protobuf/Api;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method
