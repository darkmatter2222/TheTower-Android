.class public final Lio/grpc/okhttp/OkHttpServerProvider;
.super Lio/grpc/ServerProvider;
.source "OkHttpServerProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lio/grpc/ServerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic builderForPort(I)Lio/grpc/ServerBuilder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpServerProvider;->builderForPort(I)Lio/grpc/okhttp/OkHttpServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected builderForPort(I)Lio/grpc/okhttp/OkHttpServerBuilder;
    .locals 1

    .line 41
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use Grpc.newServerBuilderForPort() instead"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected newServerBuilderForPort(ILio/grpc/ServerCredentials;)Lio/grpc/ServerProvider$NewServerBuilderResult;
    .locals 2

    .line 47
    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerBuilder;->handshakerSocketFactoryFrom(Lio/grpc/ServerCredentials;)Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;

    move-result-object p2

    .line 48
    iget-object v0, p2, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 49
    iget-object p1, p2, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->error:Ljava/lang/String;

    invoke-static {p1}, Lio/grpc/ServerProvider$NewServerBuilderResult;->error(Ljava/lang/String;)Lio/grpc/ServerProvider$NewServerBuilderResult;

    move-result-object p1

    return-object p1

    .line 51
    :cond_0
    new-instance v0, Lio/grpc/okhttp/OkHttpServerBuilder;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    iget-object p1, p2, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->factory:Lio/grpc/okhttp/HandshakerSocketFactory;

    invoke-direct {v0, v1, p1}, Lio/grpc/okhttp/OkHttpServerBuilder;-><init>(Ljava/net/SocketAddress;Lio/grpc/okhttp/HandshakerSocketFactory;)V

    invoke-static {v0}, Lio/grpc/ServerProvider$NewServerBuilderResult;->serverBuilder(Lio/grpc/ServerBuilder;)Lio/grpc/ServerProvider$NewServerBuilderResult;

    move-result-object p1

    return-object p1
.end method

.method protected priority()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
