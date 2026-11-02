.class public final Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;
.super Ljava/lang/Object;
.source "Http2ExchangeCodec.kt"

# interfaces
.implements Lcom/applovin/shadow/okhttp3/internal/http/ExchangeCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 (2\u00020\u0001:\u0001(B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0014H\u0016J\u0008\u0010\u001c\u001a\u00020\u0014H\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0012\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020\u000cH\u0016J\u0010\u0010$\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010%\u001a\u00020&H\u0016J\u0010\u0010\'\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;",
        "Lcom/applovin/shadow/okhttp3/internal/http/ExchangeCodec;",
        "client",
        "Lcom/applovin/shadow/okhttp3/OkHttpClient;",
        "connection",
        "Lcom/applovin/shadow/okhttp3/internal/connection/RealConnection;",
        "chain",
        "Lcom/applovin/shadow/okhttp3/internal/http/RealInterceptorChain;",
        "http2Connection",
        "Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;",
        "(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/internal/http2/Http2Connection;)V",
        "canceled",
        "",
        "getConnection",
        "()Lokhttp3/internal/connection/RealConnection;",
        "protocol",
        "Lcom/applovin/shadow/okhttp3/Protocol;",
        "stream",
        "Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;",
        "cancel",
        "",
        "createRequestBody",
        "Lcom/applovin/shadow/okio/Sink;",
        "request",
        "Lcom/applovin/shadow/okhttp3/Request;",
        "contentLength",
        "",
        "finishRequest",
        "flushRequest",
        "openResponseBodySource",
        "Lcom/applovin/shadow/okio/Source;",
        "response",
        "Lcom/applovin/shadow/okhttp3/Response;",
        "readResponseHeaders",
        "Lcom/applovin/shadow/okhttp3/Response$Builder;",
        "expectContinue",
        "reportedContentLength",
        "trailers",
        "Lcom/applovin/shadow/okhttp3/Headers;",
        "writeRequestHeaders",
        "Companion",
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


# static fields
.field private static final CONNECTION:Ljava/lang/String; = "connection"

.field public static final Companion:Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec$Companion;

.field private static final ENCODING:Ljava/lang/String; = "encoding"

.field private static final HOST:Ljava/lang/String; = "host"

.field private static final HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:Ljava/lang/String; = "keep-alive"

.field private static final PROXY_CONNECTION:Ljava/lang/String; = "proxy-connection"

.field private static final TE:Ljava/lang/String; = "te"

.field private static final TRANSFER_ENCODING:Ljava/lang/String; = "transfer-encoding"

.field private static final UPGRADE:Ljava/lang/String; = "upgrade"


# instance fields
.field private volatile canceled:Z

.field private final chain:Lcom/applovin/shadow/okhttp3/internal/http/RealInterceptorChain;

.field private final connection:Lcom/applovin/shadow/okhttp3/internal/connection/RealConnection;

.field private final http2Connection:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;

.field private final protocol:Lcom/applovin/shadow/okhttp3/Protocol;

.field private volatile stream:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->Companion:Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec$Companion;

    const/16 v0, 0xc

    .line 138
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "connection"

    aput-object v2, v0, v1

    const/4 v3, 0x1

    .line 139
    const-string v4, "host"

    aput-object v4, v0, v3

    const/4 v5, 0x2

    .line 140
    const-string v6, "keep-alive"

    aput-object v6, v0, v5

    const/4 v7, 0x3

    .line 141
    const-string v8, "proxy-connection"

    aput-object v8, v0, v7

    const/4 v9, 0x4

    .line 142
    const-string v10, "te"

    aput-object v10, v0, v9

    const/4 v11, 0x5

    .line 143
    const-string v12, "transfer-encoding"

    aput-object v12, v0, v11

    const/4 v13, 0x6

    .line 144
    const-string v14, "encoding"

    aput-object v14, v0, v13

    const/4 v15, 0x7

    .line 145
    const-string v16, "upgrade"

    aput-object v16, v0, v15

    .line 146
    const-string v17, ":method"

    move/from16 v18, v1

    const/16 v1, 0x8

    aput-object v17, v0, v1

    const/16 v17, 0x9

    .line 147
    const-string v19, ":path"

    aput-object v19, v0, v17

    const/16 v17, 0xa

    .line 148
    const-string v19, ":scheme"

    aput-object v19, v0, v17

    const/16 v17, 0xb

    .line 149
    const-string v19, ":authority"

    aput-object v19, v0, v17

    .line 137
    invoke-static {v0}, Lcom/applovin/shadow/okhttp3/internal/Util;->immutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    .line 151
    new-array v0, v1, [Ljava/lang/String;

    aput-object v2, v0, v18

    .line 152
    aput-object v4, v0, v3

    .line 153
    aput-object v6, v0, v5

    .line 154
    aput-object v8, v0, v7

    .line 155
    aput-object v10, v0, v9

    .line 156
    aput-object v12, v0, v11

    .line 157
    aput-object v14, v0, v13

    .line 158
    aput-object v16, v0, v15

    .line 150
    invoke-static {v0}, Lcom/applovin/shadow/okhttp3/internal/Util;->immutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/shadow/okhttp3/OkHttpClient;Lcom/applovin/shadow/okhttp3/internal/connection/RealConnection;Lcom/applovin/shadow/okhttp3/internal/http/RealInterceptorChain;Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "http2Connection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->connection:Lcom/applovin/shadow/okhttp3/internal/connection/RealConnection;

    .line 53
    iput-object p3, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->chain:Lcom/applovin/shadow/okhttp3/internal/http/RealInterceptorChain;

    .line 54
    iput-object p4, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->http2Connection:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;

    .line 58
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object p1

    sget-object p2, Lcom/applovin/shadow/okhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lcom/applovin/shadow/okhttp3/Protocol;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    sget-object p1, Lcom/applovin/shadow/okhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lcom/applovin/shadow/okhttp3/Protocol;

    goto :goto_0

    .line 61
    :cond_0
    sget-object p1, Lcom/applovin/shadow/okhttp3/Protocol;->HTTP_2:Lcom/applovin/shadow/okhttp3/Protocol;

    .line 58
    :goto_0
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->protocol:Lcom/applovin/shadow/okhttp3/Protocol;

    return-void
.end method

.method public static final synthetic access$getHTTP_2_SKIPPED_REQUEST_HEADERS$cp()Ljava/util/List;
    .locals 1

    .line 50
    sget-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getHTTP_2_SKIPPED_RESPONSE_HEADERS$cp()Ljava/util/List;
    .locals 1

    .line 50
    sget-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->canceled:Z

    .line 123
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->stream:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;->CANCEL:Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;->closeLater(Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;)V

    :cond_0
    return-void
.end method

.method public createRequestBody(Lcom/applovin/shadow/okhttp3/Request;J)Lcom/applovin/shadow/okio/Sink;
    .locals 0

    const-string p2, "request"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->stream:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;->getSink()Lcom/applovin/shadow/okio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public finishRequest()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->stream:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;->getSink()Lcom/applovin/shadow/okio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lcom/applovin/shadow/okio/Sink;->close()V

    return-void
.end method

.method public flushRequest()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->http2Connection:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->flush()V

    return-void
.end method

.method public getConnection()Lcom/applovin/shadow/okhttp3/internal/connection/RealConnection;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->connection:Lcom/applovin/shadow/okhttp3/internal/connection/RealConnection;

    return-object v0
.end method

.method public openResponseBodySource(Lcom/applovin/shadow/okhttp3/Response;)Lcom/applovin/shadow/okio/Source;
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->stream:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;->getSource$okhttp()Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream$FramingSource;

    move-result-object p1

    check-cast p1, Lcom/applovin/shadow/okio/Source;

    return-object p1
.end method

.method public readResponseHeaders(Z)Lcom/applovin/shadow/okhttp3/Response$Builder;
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->stream:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;->takeHeaders()Lcom/applovin/shadow/okhttp3/Headers;

    move-result-object v0

    .line 98
    sget-object v1, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->Companion:Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec$Companion;

    iget-object v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->protocol:Lcom/applovin/shadow/okhttp3/Protocol;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec$Companion;->readHttp2HeadersList(Lcom/applovin/shadow/okhttp3/Headers;Lcom/applovin/shadow/okhttp3/Protocol;)Lcom/applovin/shadow/okhttp3/Response$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/Response$Builder;->getCode$okhttp()I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0

    .line 96
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "stream wasn\'t created"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reportedContentLength(Lcom/applovin/shadow/okhttp3/Response;)J
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Lcom/applovin/shadow/okhttp3/internal/http/HttpHeaders;->promisesBody(Lcom/applovin/shadow/okhttp3/Response;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 109
    :cond_0
    invoke-static {p1}, Lcom/applovin/shadow/okhttp3/internal/Util;->headersContentLength(Lcom/applovin/shadow/okhttp3/Response;)J

    move-result-wide v0

    return-wide v0
.end method

.method public trailers()Lcom/applovin/shadow/okhttp3/Headers;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->stream:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;->trailers()Lcom/applovin/shadow/okhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public writeRequestHeaders(Lcom/applovin/shadow/okhttp3/Request;)V
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->stream:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/Request;->body()Lcom/applovin/shadow/okhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 75
    :goto_0
    sget-object v1, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->Companion:Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec$Companion;

    invoke-virtual {v1, p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec$Companion;->http2HeadersList(Lcom/applovin/shadow/okhttp3/Request;)Ljava/util/List;

    move-result-object p1

    .line 76
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->http2Connection:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1, v0}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->newStream(Ljava/util/List;Z)Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->stream:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;

    .line 79
    iget-boolean p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->canceled:Z

    if-nez p1, :cond_2

    .line 83
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->stream:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;->readTimeout()Lcom/applovin/shadow/okio/Timeout;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->chain:Lcom/applovin/shadow/okhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/internal/http/RealInterceptorChain;->getReadTimeoutMillis$okhttp()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/applovin/shadow/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/applovin/shadow/okio/Timeout;

    .line 84
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->stream:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;->writeTimeout()Lcom/applovin/shadow/okio/Timeout;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->chain:Lcom/applovin/shadow/okhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/internal/http/RealInterceptorChain;->getWriteTimeoutMillis$okhttp()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/applovin/shadow/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/applovin/shadow/okio/Timeout;

    return-void

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2ExchangeCodec;->stream:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;->CANCEL:Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;->closeLater(Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;)V

    .line 81
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
