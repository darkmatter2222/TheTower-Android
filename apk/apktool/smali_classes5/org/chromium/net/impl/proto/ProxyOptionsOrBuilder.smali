.class public interface abstract Lorg/chromium/net/impl/proto/ProxyOptionsOrBuilder;
.super Ljava/lang/Object;
.source "ProxyOptionsOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getProxies(I)Lorg/chromium/net/impl/proto/Proxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getProxiesCount()I
.end method

.method public abstract getProxiesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/net/impl/proto/Proxy;",
            ">;"
        }
    .end annotation
.end method
