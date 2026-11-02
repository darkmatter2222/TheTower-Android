.class public final Lorg/chromium/net/impl/proto/Proxy$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Proxy.java"

# interfaces
.implements Lorg/chromium/net/impl/proto/ProxyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/proto/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lorg/chromium/net/impl/proto/Proxy;",
        "Lorg/chromium/net/impl/proto/Proxy$Builder;",
        ">;",
        "Lorg/chromium/net/impl/proto/ProxyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 244
    invoke-static {}, Lorg/chromium/net/impl/proto/Proxy;->-$$Nest$sfgetDEFAULT_INSTANCE()Lorg/chromium/net/impl/proto/Proxy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/net/impl/proto/Proxy-IA;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/Proxy$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHost()Lorg/chromium/net/impl/proto/Proxy$Builder;
    .locals 1

    .line 325
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/Proxy$Builder;->copyOnWrite()V

    .line 326
    iget-object v0, p0, Lorg/chromium/net/impl/proto/Proxy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0}, Lorg/chromium/net/impl/proto/Proxy;->-$$Nest$mclearHost(Lorg/chromium/net/impl/proto/Proxy;)V

    return-object p0
.end method

.method public clearPort()Lorg/chromium/net/impl/proto/Proxy$Builder;
    .locals 1

    .line 372
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/Proxy$Builder;->copyOnWrite()V

    .line 373
    iget-object v0, p0, Lorg/chromium/net/impl/proto/Proxy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0}, Lorg/chromium/net/impl/proto/Proxy;->-$$Nest$mclearPort(Lorg/chromium/net/impl/proto/Proxy;)V

    return-object p0
.end method

.method public clearScheme()Lorg/chromium/net/impl/proto/Proxy$Builder;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/Proxy$Builder;->copyOnWrite()V

    .line 280
    iget-object v0, p0, Lorg/chromium/net/impl/proto/Proxy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0}, Lorg/chromium/net/impl/proto/Proxy;->-$$Nest$mclearScheme(Lorg/chromium/net/impl/proto/Proxy;)V

    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/chromium/net/impl/proto/Proxy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/Proxy;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/Proxy;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 307
    iget-object v0, p0, Lorg/chromium/net/impl/proto/Proxy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/Proxy;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/Proxy;->getHostBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/chromium/net/impl/proto/Proxy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/Proxy;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/Proxy;->getPort()I

    move-result v0

    return v0
.end method

.method public getScheme()Lorg/chromium/net/impl/proto/ProxyScheme;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/chromium/net/impl/proto/Proxy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/Proxy;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/Proxy;->getScheme()Lorg/chromium/net/impl/proto/ProxyScheme;

    move-result-object v0

    return-object v0
.end method

.method public hasHost()Z
    .locals 1

    .line 290
    iget-object v0, p0, Lorg/chromium/net/impl/proto/Proxy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/Proxy;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/Proxy;->hasHost()Z

    move-result v0

    return v0
.end method

.method public hasPort()Z
    .locals 1

    .line 347
    iget-object v0, p0, Lorg/chromium/net/impl/proto/Proxy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/Proxy;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/Proxy;->hasPort()Z

    move-result v0

    return v0
.end method

.method public hasScheme()Z
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/chromium/net/impl/proto/Proxy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/Proxy;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/Proxy;->hasScheme()Z

    move-result v0

    return v0
.end method

.method public setHost(Ljava/lang/String;)Lorg/chromium/net/impl/proto/Proxy$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/Proxy$Builder;->copyOnWrite()V

    .line 317
    iget-object v0, p0, Lorg/chromium/net/impl/proto/Proxy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/Proxy;->-$$Nest$msetHost(Lorg/chromium/net/impl/proto/Proxy;Ljava/lang/String;)V

    return-object p0
.end method

.method public setHostBytes(Lcom/google/protobuf/ByteString;)Lorg/chromium/net/impl/proto/Proxy$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/Proxy$Builder;->copyOnWrite()V

    .line 337
    iget-object v0, p0, Lorg/chromium/net/impl/proto/Proxy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/Proxy;->-$$Nest$msetHostBytes(Lorg/chromium/net/impl/proto/Proxy;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPort(I)Lorg/chromium/net/impl/proto/Proxy$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 363
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/Proxy$Builder;->copyOnWrite()V

    .line 364
    iget-object v0, p0, Lorg/chromium/net/impl/proto/Proxy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/Proxy;->-$$Nest$msetPort(Lorg/chromium/net/impl/proto/Proxy;I)V

    return-object p0
.end method

.method public setScheme(Lorg/chromium/net/impl/proto/ProxyScheme;)Lorg/chromium/net/impl/proto/Proxy$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/Proxy$Builder;->copyOnWrite()V

    .line 271
    iget-object v0, p0, Lorg/chromium/net/impl/proto/Proxy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/Proxy;->-$$Nest$msetScheme(Lorg/chromium/net/impl/proto/Proxy;Lorg/chromium/net/impl/proto/ProxyScheme;)V

    return-object p0
.end method
