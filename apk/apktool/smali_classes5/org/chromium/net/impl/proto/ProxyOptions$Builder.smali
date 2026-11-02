.class public final Lorg/chromium/net/impl/proto/ProxyOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ProxyOptions.java"

# interfaces
.implements Lorg/chromium/net/impl/proto/ProxyOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/proto/ProxyOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lorg/chromium/net/impl/proto/ProxyOptions;",
        "Lorg/chromium/net/impl/proto/ProxyOptions$Builder;",
        ">;",
        "Lorg/chromium/net/impl/proto/ProxyOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 214
    invoke-static {}, Lorg/chromium/net/impl/proto/ProxyOptions;->-$$Nest$sfgetDEFAULT_INSTANCE()Lorg/chromium/net/impl/proto/ProxyOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/net/impl/proto/ProxyOptions-IA;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllProxies(Ljava/lang/Iterable;)Lorg/chromium/net/impl/proto/ProxyOptions$Builder;
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
            "Lorg/chromium/net/impl/proto/Proxy;",
            ">;)",
            "Lorg/chromium/net/impl/proto/ProxyOptions$Builder;"
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->copyOnWrite()V

    .line 300
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/ProxyOptions;->-$$Nest$maddAllProxies(Lorg/chromium/net/impl/proto/ProxyOptions;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addProxies(ILorg/chromium/net/impl/proto/Proxy$Builder;)Lorg/chromium/net/impl/proto/ProxyOptions$Builder;
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

    .line 289
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->copyOnWrite()V

    .line 290
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/ProxyOptions;

    .line 291
    invoke-virtual {p2}, Lorg/chromium/net/impl/proto/Proxy$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lorg/chromium/net/impl/proto/Proxy;

    .line 290
    invoke-static {v0, p1, p2}, Lorg/chromium/net/impl/proto/ProxyOptions;->-$$Nest$maddProxies(Lorg/chromium/net/impl/proto/ProxyOptions;ILorg/chromium/net/impl/proto/Proxy;)V

    return-object p0
.end method

.method public addProxies(ILorg/chromium/net/impl/proto/Proxy;)Lorg/chromium/net/impl/proto/ProxyOptions$Builder;
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

    .line 271
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->copyOnWrite()V

    .line 272
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v0, p1, p2}, Lorg/chromium/net/impl/proto/ProxyOptions;->-$$Nest$maddProxies(Lorg/chromium/net/impl/proto/ProxyOptions;ILorg/chromium/net/impl/proto/Proxy;)V

    return-object p0
.end method

.method public addProxies(Lorg/chromium/net/impl/proto/Proxy$Builder;)Lorg/chromium/net/impl/proto/ProxyOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->copyOnWrite()V

    .line 281
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-virtual {p1}, Lorg/chromium/net/impl/proto/Proxy$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/ProxyOptions;->-$$Nest$maddProxies(Lorg/chromium/net/impl/proto/ProxyOptions;Lorg/chromium/net/impl/proto/Proxy;)V

    return-object p0
.end method

.method public addProxies(Lorg/chromium/net/impl/proto/Proxy;)Lorg/chromium/net/impl/proto/ProxyOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->copyOnWrite()V

    .line 263
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/ProxyOptions;->-$$Nest$maddProxies(Lorg/chromium/net/impl/proto/ProxyOptions;Lorg/chromium/net/impl/proto/Proxy;)V

    return-object p0
.end method

.method public clearProxies()Lorg/chromium/net/impl/proto/ProxyOptions$Builder;
    .locals 1

    .line 307
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->copyOnWrite()V

    .line 308
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v0}, Lorg/chromium/net/impl/proto/ProxyOptions;->-$$Nest$mclearProxies(Lorg/chromium/net/impl/proto/ProxyOptions;)V

    return-object p0
.end method

.method public getProxies(I)Lorg/chromium/net/impl/proto/Proxy;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-virtual {v0, p1}, Lorg/chromium/net/impl/proto/ProxyOptions;->getProxies(I)Lorg/chromium/net/impl/proto/Proxy;

    move-result-object p1

    return-object p1
.end method

.method public getProxiesCount()I
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/ProxyOptions;->getProxiesCount()I

    move-result v0

    return v0
.end method

.method public getProxiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/net/impl/proto/Proxy;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/ProxyOptions;

    .line 224
    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/ProxyOptions;->getProxiesList()Ljava/util/List;

    move-result-object v0

    .line 223
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeProxies(I)Lorg/chromium/net/impl/proto/ProxyOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 315
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->copyOnWrite()V

    .line 316
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/ProxyOptions;->-$$Nest$mremoveProxies(Lorg/chromium/net/impl/proto/ProxyOptions;I)V

    return-object p0
.end method

.method public setProxies(ILorg/chromium/net/impl/proto/Proxy$Builder;)Lorg/chromium/net/impl/proto/ProxyOptions$Builder;
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

    .line 253
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->copyOnWrite()V

    .line 254
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/ProxyOptions;

    .line 255
    invoke-virtual {p2}, Lorg/chromium/net/impl/proto/Proxy$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lorg/chromium/net/impl/proto/Proxy;

    .line 254
    invoke-static {v0, p1, p2}, Lorg/chromium/net/impl/proto/ProxyOptions;->-$$Nest$msetProxies(Lorg/chromium/net/impl/proto/ProxyOptions;ILorg/chromium/net/impl/proto/Proxy;)V

    return-object p0
.end method

.method public setProxies(ILorg/chromium/net/impl/proto/Proxy;)Lorg/chromium/net/impl/proto/ProxyOptions$Builder;
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

    .line 244
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->copyOnWrite()V

    .line 245
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v0, p1, p2}, Lorg/chromium/net/impl/proto/ProxyOptions;->-$$Nest$msetProxies(Lorg/chromium/net/impl/proto/ProxyOptions;ILorg/chromium/net/impl/proto/Proxy;)V

    return-object p0
.end method
