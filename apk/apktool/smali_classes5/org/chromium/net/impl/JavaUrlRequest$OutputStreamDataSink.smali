.class final Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;
.super Lorg/chromium/net/impl/JavaUploadDataSinkBase;
.source "JavaUrlRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/JavaUrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OutputStreamDataSink"
.end annotation


# instance fields
.field private mOutputChannel:Ljava/nio/channels/WritableByteChannel;

.field private final mOutputChannelClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mUrlConnection:Ljava/net/HttpURLConnection;

.field private mUrlConnectionOutputStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lorg/chromium/net/impl/JavaUrlRequest;


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/net/HttpURLConnection;Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "userExecutor",
            "executor",
            "urlConnection",
            "provider"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    .line 342
    invoke-direct {p0, p2, p3, p5}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lorg/chromium/net/UploadDataProvider;)V

    .line 333
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mOutputChannelClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 343
    iput-object p4, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mUrlConnection:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method closeOutputChannel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mOutputChannel:Ljava/nio/channels/WritableByteChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mOutputChannelClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 360
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mOutputChannel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V

    :cond_0
    return-void
.end method

.method protected finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->closeOutputChannel()V

    .line 369
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$mfireGetHeaders(Lorg/chromium/net/impl/JavaUrlRequest;)V

    return-void
.end method

.method protected getErrorSettingRunnable(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$merrorSetting(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method protected getUploadErrorSettingRunnable(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$muploadErrorSetting(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method protected initializeRead()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mOutputChannel:Ljava/nio/channels/WritableByteChannel;

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fputmAdditionalStatusDetails(Lorg/chromium/net/impl/JavaUrlRequest;I)V

    .line 350
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mUrlConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 351
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 352
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fputmAdditionalStatusDetails(Lorg/chromium/net/impl/JavaUrlRequest;I)V

    .line 353
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mUrlConnectionOutputStream:Ljava/io/OutputStream;

    .line 354
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mOutputChannel:Ljava/nio/channels/WritableByteChannel;

    :cond_0
    return-void
.end method

.method protected initializeStart(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalBytes"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 375
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    return-void

    .line 377
    :cond_0
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mUrlConnection:Ljava/net/HttpURLConnection;

    const/16 p2, 0x2000

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method protected processSuccessfulRead(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 384
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mOutputChannel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 390
    :cond_0
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mUrlConnectionOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return v0
.end method

.method protected processUploadError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$menterUploadErrorState(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/lang/Throwable;)V

    return-void
.end method
