.class public final Lcom/applovin/shadow/okhttp3/ResponseBody$Companion$asResponseBody$1;
.super Lcom/applovin/shadow/okhttp3/ResponseBody;
.source "ResponseBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/shadow/okhttp3/ResponseBody$Companion;->create(Lcom/applovin/shadow/okio/BufferedSource;Lcom/applovin/shadow/okhttp3/MediaType;J)Lcom/applovin/shadow/okhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/applovin/shadow/okhttp3/ResponseBody$Companion$asResponseBody$1",
        "Lcom/applovin/shadow/okhttp3/ResponseBody;",
        "contentLength",
        "",
        "contentType",
        "Lcom/applovin/shadow/okhttp3/MediaType;",
        "source",
        "Lcom/applovin/shadow/okio/BufferedSource;",
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
.field final synthetic $contentLength:J

.field final synthetic $contentType:Lcom/applovin/shadow/okhttp3/MediaType;

.field final synthetic $this_asResponseBody:Lcom/applovin/shadow/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/applovin/shadow/okhttp3/MediaType;JLcom/applovin/shadow/okio/BufferedSource;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion$asResponseBody$1;->$contentType:Lcom/applovin/shadow/okhttp3/MediaType;

    iput-wide p2, p0, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion$asResponseBody$1;->$contentLength:J

    iput-object p4, p0, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion$asResponseBody$1;->$this_asResponseBody:Lcom/applovin/shadow/okio/BufferedSource;

    .line 268
    invoke-direct {p0}, Lcom/applovin/shadow/okhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 271
    iget-wide v0, p0, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion$asResponseBody$1;->$contentLength:J

    return-wide v0
.end method

.method public contentType()Lcom/applovin/shadow/okhttp3/MediaType;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion$asResponseBody$1;->$contentType:Lcom/applovin/shadow/okhttp3/MediaType;

    return-object v0
.end method

.method public source()Lcom/applovin/shadow/okio/BufferedSource;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion$asResponseBody$1;->$this_asResponseBody:Lcom/applovin/shadow/okio/BufferedSource;

    return-object v0
.end method
