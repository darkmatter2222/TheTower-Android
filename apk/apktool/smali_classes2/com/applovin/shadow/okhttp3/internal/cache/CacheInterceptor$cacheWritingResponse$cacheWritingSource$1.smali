.class public final Lcom/applovin/shadow/okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;
.super Ljava/lang/Object;
.source "CacheInterceptor.kt"

# interfaces
.implements Lcom/applovin/shadow/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/shadow/okhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lcom/applovin/shadow/okhttp3/internal/cache/CacheRequest;Lcom/applovin/shadow/okhttp3/Response;)Lcom/applovin/shadow/okhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "com/applovin/shadow/okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1",
        "Lcom/applovin/shadow/okio/Source;",
        "cacheRequestClosed",
        "",
        "close",
        "",
        "read",
        "",
        "sink",
        "Lcom/applovin/shadow/okio/Buffer;",
        "byteCount",
        "timeout",
        "Lcom/applovin/shadow/okio/Timeout;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $cacheBody:Lcom/applovin/shadow/okio/BufferedSink;

.field final synthetic $cacheRequest:Lcom/applovin/shadow/okhttp3/internal/cache/CacheRequest;

.field final synthetic $source:Lcom/applovin/shadow/okio/BufferedSource;

.field private cacheRequestClosed:Z


# direct methods
.method constructor <init>(Lcom/applovin/shadow/okio/BufferedSource;Lcom/applovin/shadow/okhttp3/internal/cache/CacheRequest;Lcom/applovin/shadow/okio/BufferedSink;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;->$source:Lcom/applovin/shadow/okio/BufferedSource;

    iput-object p2, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;->$cacheRequest:Lcom/applovin/shadow/okhttp3/internal/cache/CacheRequest;

    iput-object p3, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;->$cacheBody:Lcom/applovin/shadow/okio/BufferedSink;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;->cacheRequestClosed:Z

    if-nez v0, :cond_0

    .line 205
    move-object v0, p0

    check-cast v0, Lcom/applovin/shadow/okio/Source;

    const/16 v1, 0x64

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lcom/applovin/shadow/okhttp3/internal/Util;->discard(Lcom/applovin/shadow/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;->cacheRequestClosed:Z

    .line 207
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;->$cacheRequest:Lcom/applovin/shadow/okhttp3/internal/cache/CacheRequest;

    invoke-interface {v0}, Lcom/applovin/shadow/okhttp3/internal/cache/CacheRequest;->abort()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;->$source:Lcom/applovin/shadow/okio/BufferedSource;

    invoke-interface {v0}, Lcom/applovin/shadow/okio/BufferedSource;->close()V

    return-void
.end method

.method public read(Lcom/applovin/shadow/okio/Buffer;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;->$source:Lcom/applovin/shadow/okio/BufferedSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/applovin/shadow/okio/BufferedSource;->read(Lcom/applovin/shadow/okio/Buffer;J)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 p2, -0x1

    cmp-long v0, v6, p2

    if-nez v0, :cond_1

    .line 188
    iget-boolean p1, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;->cacheRequestClosed:Z

    if-nez p1, :cond_0

    .line 189
    iput-boolean v1, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;->cacheRequestClosed:Z

    .line 190
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;->$cacheBody:Lcom/applovin/shadow/okio/BufferedSink;

    invoke-interface {p1}, Lcom/applovin/shadow/okio/BufferedSink;->close()V

    :cond_0
    return-wide p2

    .line 195
    :cond_1
    iget-object p2, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;->$cacheBody:Lcom/applovin/shadow/okio/BufferedSink;

    invoke-interface {p2}, Lcom/applovin/shadow/okio/BufferedSink;->getBuffer()Lcom/applovin/shadow/okio/Buffer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/applovin/shadow/okio/Buffer;->size()J

    move-result-wide p2

    sub-long v4, p2, v6

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/applovin/shadow/okio/Buffer;->copyTo(Lcom/applovin/shadow/okio/Buffer;JJ)Lcom/applovin/shadow/okio/Buffer;

    .line 196
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;->$cacheBody:Lcom/applovin/shadow/okio/BufferedSink;

    invoke-interface {p1}, Lcom/applovin/shadow/okio/BufferedSink;->emitCompleteSegments()Lcom/applovin/shadow/okio/BufferedSink;

    return-wide v6

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 180
    iget-boolean p2, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;->cacheRequestClosed:Z

    if-nez p2, :cond_2

    .line 181
    iput-boolean v1, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;->cacheRequestClosed:Z

    .line 182
    iget-object p2, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;->$cacheRequest:Lcom/applovin/shadow/okhttp3/internal/cache/CacheRequest;

    invoke-interface {p2}, Lcom/applovin/shadow/okhttp3/internal/cache/CacheRequest;->abort()V

    .line 184
    :cond_2
    throw p1
.end method

.method public timeout()Lcom/applovin/shadow/okio/Timeout;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;->$source:Lcom/applovin/shadow/okio/BufferedSource;

    invoke-interface {v0}, Lcom/applovin/shadow/okio/BufferedSource;->timeout()Lcom/applovin/shadow/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
