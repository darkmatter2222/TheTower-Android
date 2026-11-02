.class public final Lcom/applovin/shadow/okhttp3/RequestBody$Companion$toRequestBody$1;
.super Lcom/applovin/shadow/okhttp3/RequestBody;
.source "RequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/shadow/okhttp3/RequestBody$Companion;->create(Lcom/applovin/shadow/okio/ByteString;Lcom/applovin/shadow/okhttp3/MediaType;)Lcom/applovin/shadow/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/applovin/shadow/okhttp3/RequestBody$Companion$toRequestBody$1",
        "Lcom/applovin/shadow/okhttp3/RequestBody;",
        "contentLength",
        "",
        "contentType",
        "Lcom/applovin/shadow/okhttp3/MediaType;",
        "writeTo",
        "",
        "sink",
        "Lcom/applovin/shadow/okio/BufferedSink;",
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
.field final synthetic $contentType:Lcom/applovin/shadow/okhttp3/MediaType;

.field final synthetic $this_toRequestBody:Lcom/applovin/shadow/okio/ByteString;


# direct methods
.method constructor <init>(Lcom/applovin/shadow/okhttp3/MediaType;Lcom/applovin/shadow/okio/ByteString;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/RequestBody$Companion$toRequestBody$1;->$contentType:Lcom/applovin/shadow/okhttp3/MediaType;

    iput-object p2, p0, Lcom/applovin/shadow/okhttp3/RequestBody$Companion$toRequestBody$1;->$this_toRequestBody:Lcom/applovin/shadow/okio/ByteString;

    .line 125
    invoke-direct {p0}, Lcom/applovin/shadow/okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/RequestBody$Companion$toRequestBody$1;->$this_toRequestBody:Lcom/applovin/shadow/okio/ByteString;

    invoke-virtual {v0}, Lcom/applovin/shadow/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lcom/applovin/shadow/okhttp3/MediaType;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/RequestBody$Companion$toRequestBody$1;->$contentType:Lcom/applovin/shadow/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lcom/applovin/shadow/okio/BufferedSink;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/RequestBody$Companion$toRequestBody$1;->$this_toRequestBody:Lcom/applovin/shadow/okio/ByteString;

    invoke-interface {p1, v0}, Lcom/applovin/shadow/okio/BufferedSink;->write(Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okio/BufferedSink;

    return-void
.end method
