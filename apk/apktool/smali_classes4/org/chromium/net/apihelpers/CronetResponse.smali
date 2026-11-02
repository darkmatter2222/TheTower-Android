.class public Lorg/chromium/net/apihelpers/CronetResponse;
.super Ljava/lang/Object;
.source "CronetResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mResponseBody:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mUrlResponseInfo:Lorg/chromium/net/UrlResponseInfo;


# direct methods
.method constructor <init>(Lorg/chromium/net/UrlResponseInfo;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "urlResponseInfo",
            "responseBody"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/UrlResponseInfo;",
            "TT;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/chromium/net/apihelpers/CronetResponse;->mUrlResponseInfo:Lorg/chromium/net/UrlResponseInfo;

    .line 28
    iput-object p2, p0, Lorg/chromium/net/apihelpers/CronetResponse;->mResponseBody:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 46
    :cond_0
    instance-of v1, p1, Lorg/chromium/net/apihelpers/CronetResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 49
    :cond_1
    check-cast p1, Lorg/chromium/net/apihelpers/CronetResponse;

    .line 50
    iget-object v1, p0, Lorg/chromium/net/apihelpers/CronetResponse;->mUrlResponseInfo:Lorg/chromium/net/UrlResponseInfo;

    iget-object v3, p1, Lorg/chromium/net/apihelpers/CronetResponse;->mUrlResponseInfo:Lorg/chromium/net/UrlResponseInfo;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/net/apihelpers/CronetResponse;->mResponseBody:Ljava/lang/Object;

    iget-object p1, p1, Lorg/chromium/net/apihelpers/CronetResponse;->mResponseBody:Ljava/lang/Object;

    .line 51
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getResponseBody()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/chromium/net/apihelpers/CronetResponse;->mResponseBody:Ljava/lang/Object;

    return-object v0
.end method

.method public getUrlResponseInfo()Lorg/chromium/net/UrlResponseInfo;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/chromium/net/apihelpers/CronetResponse;->mUrlResponseInfo:Lorg/chromium/net/UrlResponseInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 56
    iget-object v0, p0, Lorg/chromium/net/apihelpers/CronetResponse;->mUrlResponseInfo:Lorg/chromium/net/UrlResponseInfo;

    iget-object v1, p0, Lorg/chromium/net/apihelpers/CronetResponse;->mResponseBody:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
