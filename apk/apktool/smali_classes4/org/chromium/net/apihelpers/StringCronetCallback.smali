.class public abstract Lorg/chromium/net/apihelpers/StringCronetCallback;
.super Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;
.source "StringCronetCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE_HEADER_NAME:Ljava/lang/String; = "Content-Type"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;-><init>()V

    return-void
.end method

.method private getCharsetFromHeaders(Lorg/chromium/net/UrlResponseInfo;)Ljava/nio/charset/Charset;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Content-Type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :catch_0
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 42
    new-instance v2, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;

    invoke-direct {v2, v1}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;-><init>(Ljava/lang/String;)V

    .line 44
    :goto_0
    invoke-virtual {v2}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->hasMore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    :try_start_0
    invoke-virtual {v2}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->getNextParameter()Ljava/util/Map$Entry;

    move-result-object v1
    :try_end_0
    .catch Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Multiple charsets provided: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 63
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1

    .line 66
    :cond_4
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic addCompletionListener(Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;)Lorg/chromium/net/apihelpers/ImplicitFlowControlCallback;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "listener"
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lorg/chromium/net/apihelpers/StringCronetCallback;->addCompletionListener(Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;)Lorg/chromium/net/apihelpers/StringCronetCallback;

    move-result-object p1

    return-object p1
.end method

.method public addCompletionListener(Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;)Lorg/chromium/net/apihelpers/StringCronetCallback;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/apihelpers/CronetRequestCompletionListener<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/chromium/net/apihelpers/StringCronetCallback;"
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;->addCompletionListener(Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;)Lorg/chromium/net/apihelpers/ImplicitFlowControlCallback;

    return-object p0
.end method

.method protected bridge synthetic transformBodyBytes(Lorg/chromium/net/UrlResponseInfo;[B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "info",
            "bodyBytes"
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/apihelpers/StringCronetCallback;->transformBodyBytes(Lorg/chromium/net/UrlResponseInfo;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected transformBodyBytes(Lorg/chromium/net/UrlResponseInfo;[B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "info",
            "bodyBytes"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/chromium/net/apihelpers/StringCronetCallback;->getCharsetFromHeaders(Lorg/chromium/net/UrlResponseInfo;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
