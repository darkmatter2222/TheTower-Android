.class public Lcom/ironsource/g8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/g8$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "POST"

.field private static final b:Ljava/lang/String; = "GET"

.field private static final c:Ljava/lang/String; = "ISHttpService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/Rd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/ironsource/Rd;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 3
    new-instance v0, Lcom/ironsource/g8$a$a;

    invoke-direct {v0}, Lcom/ironsource/g8$a$a;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ironsource/g8$a$a;->c(Ljava/lang/String;)Lcom/ironsource/g8$a$a;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p1}, Lcom/ironsource/g8$a$a;->a(Ljava/lang/String;)Lcom/ironsource/g8$a$a;

    move-result-object p0

    .line 7
    const-string p1, "GET"

    invoke-virtual {p0, p1}, Lcom/ironsource/g8$a$a;->d(Ljava/lang/String;)Lcom/ironsource/g8$a$a;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p2}, Lcom/ironsource/g8$a$a;->a(Ljava/util/List;)Lcom/ironsource/g8$a$a;

    .line 10
    invoke-virtual {v0}, Lcom/ironsource/g8$a$a;->a()Lcom/ironsource/g8$a;

    move-result-object p0

    invoke-static {p0}, Lcom/ironsource/g8;->b(Lcom/ironsource/g8$a;)Lcom/ironsource/Rd;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/ironsource/g8$a;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/ironsource/g8$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 41
    iget v1, p0, Lcom/ironsource/g8$a;->d:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 42
    iget v1, p0, Lcom/ironsource/g8$a;->e:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 43
    iget-object p0, p0, Lcom/ironsource/g8$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/ironsource/g8$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Lcom/ironsource/g8$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p1, Lcom/ironsource/g8$a;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/ironsource/g8$a;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 16
    array-length v0, p1

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {p0, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p0, p1}, Lcom/ironsource/g8;->a(Ljava/net/HttpURLConnection;[B)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 24
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 26
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 29
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 30
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 34
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 36
    throw p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/ironsource/g8$a;)Lcom/ironsource/Rd;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "ISHttpService"

    const-string v1, "Failed post to "

    .line 5
    iget-object v2, p0, Lcom/ironsource/g8$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/g8$a;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ironsource/g8;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 9
    new-instance v2, Lcom/ironsource/Rd;

    invoke-direct {v2}, Lcom/ironsource/Rd;-><init>()V

    const/4 v3, 0x0

    .line 15
    :try_start_0
    invoke-static {p0}, Lcom/ironsource/g8;->a(Lcom/ironsource/g8$a;)Ljava/net/HttpURLConnection;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    iget-object v5, p0, Lcom/ironsource/g8$a;->g:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lcom/ironsource/g8;->a(Ljava/net/HttpURLConnection;Ljava/util/List;)V

    .line 21
    invoke-static {v4, p0}, Lcom/ironsource/g8;->a(Ljava/net/HttpURLConnection;Lcom/ironsource/g8$a;)V

    .line 24
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 26
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    iput v5, v2, Lcom/ironsource/Rd;->a:I

    if-eqz v3, :cond_0

    .line 28
    invoke-static {v3}, Lcom/ironsource/vg;->a(Ljava/io/InputStream;)[B

    move-result-object v5

    iput-object v5, v2, Lcom/ironsource/Rd;->b:[B
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v3, :cond_4

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception v5

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_0
    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto/16 :goto_6

    :catch_2
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v4, v3

    goto/16 :goto_7

    :catch_3
    move-exception v5

    move-object v4, v3

    .line 59
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    if-eqz v3, :cond_2

    .line 62
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 63
    :cond_1
    new-instance p0, Lcom/ironsource/Mc;

    invoke-direct {p0, v5}, Lcom/ironsource/Mc;-><init>(Ljava/lang/Exception;)V

    throw p0

    :cond_2
    :goto_2
    if-eqz v3, :cond_5

    .line 68
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    iput v6, v2, Lcom/ironsource/Rd;->a:I

    const/16 v7, 0x190

    if-lt v6, v7, :cond_5

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/ironsource/g8$a;->a:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " StatusCode: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v1, v2, Lcom/ironsource/Rd;->a:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_3

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    .line 54
    :goto_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :cond_3
    move-object v4, v3

    .line 58
    :cond_4
    :goto_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    .line 71
    :cond_5
    :try_start_3
    throw v5

    :catchall_2
    move-exception p0

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_7

    :catch_4
    move-exception v2

    :goto_5
    move-object v4, v3

    goto :goto_6

    :catch_5
    move-exception v2

    goto :goto_5

    .line 72
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/ironsource/g8$a;->a:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " exception: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_7
    if-eqz v3, :cond_6

    .line 91
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v4, :cond_7

    .line 95
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 97
    :cond_7
    throw p0

    .line 98
    :cond_8
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string v0, "not valid params"

    invoke-direct {p0, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/Rd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/ironsource/Rd;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ironsource/g8$a$a;

    invoke-direct {v0}, Lcom/ironsource/g8$a$a;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/ironsource/g8$a$a;->c(Ljava/lang/String;)Lcom/ironsource/g8$a$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ironsource/g8$a$a;->a(Ljava/lang/String;)Lcom/ironsource/g8$a$a;

    move-result-object p0

    const-string p1, "POST"

    invoke-virtual {p0, p1}, Lcom/ironsource/g8$a$a;->d(Ljava/lang/String;)Lcom/ironsource/g8$a$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ironsource/g8$a$a;->a(Ljava/util/List;)Lcom/ironsource/g8$a$a;

    .line 4
    invoke-virtual {v0}, Lcom/ironsource/g8$a$a;->a()Lcom/ironsource/g8$a;

    move-result-object p0

    invoke-static {p0}, Lcom/ironsource/g8;->b(Lcom/ironsource/g8$a;)Lcom/ironsource/Rd;

    move-result-object p0

    return-object p0
.end method
