.class Lio/grpc/android/UdsSocket;
.super Ljava/net/Socket;
.source "UdsSocket.java"


# instance fields
.field private closed:Z

.field private inputShutdown:Z

.field private final localSocket:Landroid/net/LocalSocket;

.field private final localSocketAddress:Landroid/net/LocalSocketAddress;

.field private outputShutdown:Z


# direct methods
.method public constructor <init>(Landroid/net/LocalSocketAddress;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lio/grpc/android/UdsSocket;->closed:Z

    .line 50
    iput-boolean v0, p0, Lio/grpc/android/UdsSocket;->inputShutdown:Z

    .line 53
    iput-boolean v0, p0, Lio/grpc/android/UdsSocket;->outputShutdown:Z

    .line 57
    iput-object p1, p0, Lio/grpc/android/UdsSocket;->localSocketAddress:Landroid/net/LocalSocketAddress;

    .line 58
    new-instance p1, Landroid/net/LocalSocket;

    invoke-direct {p1}, Landroid/net/LocalSocket;-><init>()V

    iput-object p1, p0, Lio/grpc/android/UdsSocket;->localSocket:Landroid/net/LocalSocket;

    return-void
.end method

.method private static toSocketException(Ljava/lang/Throwable;)Ljava/net/SocketException;
    .locals 1

    .line 308
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0}, Ljava/net/SocketException;-><init>()V

    .line 309
    invoke-virtual {v0, p0}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 68
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/android/UdsSocket;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 69
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lio/grpc/android/UdsSocket;->inputShutdown:Z

    if-nez v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lio/grpc/android/UdsSocket;->shutdownInput()V

    .line 74
    :cond_1
    iget-boolean v0, p0, Lio/grpc/android/UdsSocket;->outputShutdown:Z

    if-nez v0, :cond_2

    .line 75
    invoke-virtual {p0}, Lio/grpc/android/UdsSocket;->shutdownOutput()V

    .line 77
    :cond_2
    iget-object v0, p0, Lio/grpc/android/UdsSocket;->localSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lio/grpc/android/UdsSocket;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object p1, p0, Lio/grpc/android/UdsSocket;->localSocket:Landroid/net/LocalSocket;

    iget-object v0, p0, Lio/grpc/android/UdsSocket;->localSocketAddress:Landroid/net/LocalSocketAddress;

    invoke-virtual {p1, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object p1, p0, Lio/grpc/android/UdsSocket;->localSocket:Landroid/net/LocalSocket;

    iget-object v0, p0, Lio/grpc/android/UdsSocket;->localSocketAddress:Landroid/net/LocalSocketAddress;

    invoke-virtual {p1, v0, p2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;I)V

    return-void
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getChannel() not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getInetAddress() not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    new-instance v0, Lio/grpc/android/UdsSocket$1;

    iget-object v1, p0, Lio/grpc/android/UdsSocket;->localSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/grpc/android/UdsSocket$1;-><init>(Lio/grpc/android/UdsSocket;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getKeepAlive()Z
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation getKeepAlive()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation getLocalAddress()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocalPort()I
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation getLocalPort()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 128
    new-instance v0, Lio/grpc/android/UdsSocket$2;

    invoke-direct {v0, p0}, Lio/grpc/android/UdsSocket$2;-><init>(Lio/grpc/android/UdsSocket;)V

    return-object v0
.end method

.method public getOOBInline()Z
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation getOOBInline()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    new-instance v0, Lio/grpc/android/UdsSocket$3;

    iget-object v1, p0, Lio/grpc/android/UdsSocket;->localSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/grpc/android/UdsSocket$3;-><init>(Lio/grpc/android/UdsSocket;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public getPort()I
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation getPort()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 154
    :try_start_0
    iget-object v0, p0, Lio/grpc/android/UdsSocket;->localSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getReceiveBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 156
    invoke-static {v0}, Lio/grpc/android/UdsSocket;->toSocketException(Ljava/lang/Throwable;)Ljava/net/SocketException;

    move-result-object v0

    throw v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 162
    new-instance v0, Lio/grpc/android/UdsSocket$4;

    invoke-direct {v0, p0}, Lio/grpc/android/UdsSocket$4;-><init>(Lio/grpc/android/UdsSocket;)V

    return-object v0
.end method

.method public getReuseAddress()Z
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation getReuseAddress()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 173
    :try_start_0
    iget-object v0, p0, Lio/grpc/android/UdsSocket;->localSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getSendBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 175
    invoke-static {v0}, Lio/grpc/android/UdsSocket;->toSocketException(Ljava/lang/Throwable;)Ljava/net/SocketException;

    move-result-object v0

    throw v0
.end method

.method public getSoLinger()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 187
    :try_start_0
    iget-object v0, p0, Lio/grpc/android/UdsSocket;->localSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getSoTimeout()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 189
    invoke-static {v0}, Lio/grpc/android/UdsSocket;->toSocketException(Ljava/lang/Throwable;)Ljava/net/SocketException;

    move-result-object v0

    throw v0
.end method

.method public getTcpNoDelay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTrafficClass()I
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation getTrafficClass()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isBound()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lio/grpc/android/UdsSocket;->localSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->isBound()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 210
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/android/UdsSocket;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isConnected()Z
    .locals 1

    .line 215
    iget-object v0, p0, Lio/grpc/android/UdsSocket;->localSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isInputShutdown()Z
    .locals 1

    monitor-enter p0

    .line 220
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/android/UdsSocket;->inputShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isOutputShutdown()Z
    .locals 1

    monitor-enter p0

    .line 225
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/android/UdsSocket;->outputShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendUrgentData(I)V
    .locals 1

    .line 230
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported operation sendUrgentData()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKeepAlive(Z)V
    .locals 1

    .line 235
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported operation setKeepAlive()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOOBInline(Z)V
    .locals 1

    .line 240
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported operation setOOBInline()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPerformancePreferences(III)V
    .locals 0

    .line 245
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unsupported operation setPerformancePreferences()"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReceiveBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 251
    :try_start_0
    iget-object v0, p0, Lio/grpc/android/UdsSocket;->localSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0, p1}, Landroid/net/LocalSocket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 253
    invoke-static {p1}, Lio/grpc/android/UdsSocket;->toSocketException(Ljava/lang/Throwable;)Ljava/net/SocketException;

    move-result-object p1

    throw p1
.end method

.method public setReuseAddress(Z)V
    .locals 1

    .line 259
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported operation setReuseAddress()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSendBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 265
    :try_start_0
    iget-object v0, p0, Lio/grpc/android/UdsSocket;->localSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0, p1}, Landroid/net/LocalSocket;->setSendBufferSize(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 267
    invoke-static {p1}, Lio/grpc/android/UdsSocket;->toSocketException(Ljava/lang/Throwable;)Ljava/net/SocketException;

    move-result-object p1

    throw p1
.end method

.method public setSoLinger(ZI)V
    .locals 0

    .line 273
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unsupported operation setSoLinger()"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 279
    :try_start_0
    iget-object v0, p0, Lio/grpc/android/UdsSocket;->localSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0, p1}, Landroid/net/LocalSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 281
    invoke-static {p1}, Lio/grpc/android/UdsSocket;->toSocketException(Ljava/lang/Throwable;)Ljava/net/SocketException;

    move-result-object p1

    throw p1
.end method

.method public setTcpNoDelay(Z)V
    .locals 0

    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1

    .line 292
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported operation setTrafficClass()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized shutdownInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lio/grpc/android/UdsSocket;->localSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownInput()V

    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lio/grpc/android/UdsSocket;->inputShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 303
    :try_start_0
    iget-object v0, p0, Lio/grpc/android/UdsSocket;->localSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownOutput()V

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lio/grpc/android/UdsSocket;->outputShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
