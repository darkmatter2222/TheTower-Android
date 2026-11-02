.class Lcom/ironsource/d6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/ironsource/h5;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "FileWorkerThread"

.field private static final e:Ljava/lang/String; = "X-Android-Protocols"

.field private static final f:Ljava/lang/String; = "http/1.1,h2"


# instance fields
.field private final a:Lcom/ironsource/g5;

.field private final b:Ljava/lang/String;

.field private c:J


# direct methods
.method constructor <init>(Lcom/ironsource/g5;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/d6;->a:Lcom/ironsource/g5;

    .line 3
    iput-object p2, p0, Lcom/ironsource/d6;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/ironsource/d6;->c:J

    return-void
.end method


# virtual methods
.method a([BLjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->saveFile([BLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/ironsource/h5;
    .locals 9

    const-string v1, "FileWorkerThread"

    .line 11
    iget-wide v2, p0, Lcom/ironsource/d6;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const-wide/16 v2, 0x1

    .line 13
    iput-wide v2, p0, Lcom/ironsource/d6;->c:J

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    int-to-long v2, v4

    .line 17
    iget-wide v5, p0, Lcom/ironsource/d6;->c:J

    cmp-long v2, v2, v5

    const/16 v8, 0x3f1

    if-gez v2, :cond_2

    .line 19
    iget-object v0, p0, Lcom/ironsource/d6;->a:Lcom/ironsource/g5;

    .line 21
    invoke-virtual {v0}, Lcom/ironsource/g5;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/ironsource/d6;->a:Lcom/ironsource/g5;

    .line 23
    invoke-virtual {v0}, Lcom/ironsource/g5;->a()I

    move-result v5

    iget-object v0, p0, Lcom/ironsource/d6;->a:Lcom/ironsource/g5;

    .line 24
    invoke-virtual {v0}, Lcom/ironsource/g5;->c()I

    move-result v6

    iget-object v0, p0, Lcom/ironsource/d6;->a:Lcom/ironsource/g5;

    .line 25
    invoke-virtual {v0}, Lcom/ironsource/g5;->f()Z

    move-result v7

    move-object v2, p0

    .line 26
    invoke-virtual/range {v2 .. v7}, Lcom/ironsource/d6;->a(Ljava/lang/String;IIIZ)Lcom/ironsource/h5;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/ironsource/h5;->b()I

    move-result v3

    const/16 v5, 0x3f0

    if-eq v3, v5, :cond_1

    if-eq v3, v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_1
    move-object v3, v0

    if-eqz v3, :cond_6

    .line 42
    invoke-virtual {v3}, Lcom/ironsource/h5;->a()[B

    move-result-object v0

    if-eqz v0, :cond_6

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/ironsource/d6;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lcom/ironsource/d6;->a:Lcom/ironsource/g5;

    invoke-virtual {v5}, Lcom/ironsource/g5;->b()Lcom/ironsource/D8;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/ironsource/d6;->a:Lcom/ironsource/g5;

    .line 45
    invoke-virtual {v6}, Lcom/ironsource/g5;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "tmp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/ironsource/d6;->a:Lcom/ironsource/g5;

    .line 48
    invoke-virtual {v5}, Lcom/ironsource/g5;->b()Lcom/ironsource/D8;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 51
    :try_start_0
    invoke-virtual {v3}, Lcom/ironsource/h5;->a()[B

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/ironsource/d6;->a([BLjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    const/16 v0, 0x3ee

    .line 53
    invoke-virtual {v3, v0}, Lcom/ironsource/h5;->a(I)V

    return-object v3

    .line 54
    :cond_3
    invoke-virtual {p0, v4, v0}, Lcom/ironsource/d6;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x3f6

    .line 55
    invoke-virtual {v3, v0}, Lcom/ironsource/h5;->a(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 67
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x3fb

    .line 71
    invoke-virtual {v3, v0}, Lcom/ironsource/h5;->a(I)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 72
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_5
    invoke-virtual {v3, v8}, Lcom/ironsource/h5;->a(I)V

    goto :goto_2

    :catch_2
    move-exception v0

    .line 77
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x3fa

    .line 78
    invoke-virtual {v3, v0}, Lcom/ironsource/h5;->a(I)V

    :cond_6
    :goto_2
    return-object v3
.end method

.method a(Ljava/lang/String;IIIZ)Lcom/ironsource/h5;
    .locals 7

    const-string v0, "FileWorkerThread"

    const-string v1, " RESPONSE CODE: "

    .line 79
    new-instance v2, Lcom/ironsource/h5;

    invoke-direct {v2}, Lcom/ironsource/h5;-><init>()V

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    invoke-virtual {v2, p1}, Lcom/ironsource/h5;->a(Ljava/lang/String;)V

    const/16 p1, 0x3ef

    .line 87
    invoke-virtual {v2, p1}, Lcom/ironsource/h5;->a(I)V

    return-object v2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 93
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v5}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 99
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    :try_start_1
    const-string v6, "GET"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz p5, :cond_1

    .line 103
    :try_start_2
    const-string p5, "X-Android-Protocols"

    const-string v6, "http/1.1,h2"

    invoke-virtual {v5, p5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catch_0
    move-exception p5

    .line 105
    :try_start_3
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v6

    invoke-virtual {v6, p5}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 108
    :cond_1
    :goto_0
    invoke-virtual {v5, p3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 109
    invoke-virtual {v5, p4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 111
    invoke-virtual {v5}, Ljava/net/URLConnection;->connect()V

    .line 112
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 p3, 0xc8

    if-lt v4, p3, :cond_3

    const/16 p3, 0x190

    if-lt v4, p3, :cond_2

    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 121
    invoke-virtual {p0, v3}, Lcom/ironsource/d6;->a(Ljava/io/InputStream;)[B

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/ironsource/h5;->a([B)V

    goto :goto_2

    .line 122
    :cond_3
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " URL: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " ATTEMPT: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v4, 0x3f3

    :goto_2
    if-eqz v3, :cond_4

    .line 157
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 160
    :cond_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p2

    goto :goto_6

    :catch_3
    move-exception p2

    goto/16 :goto_8

    :catch_4
    move-exception p2

    goto/16 :goto_9

    :catch_5
    move-exception p2

    goto/16 :goto_a

    :catch_6
    move-exception p2

    goto/16 :goto_b

    :catchall_1
    move-exception p2

    move-object v5, v3

    goto/16 :goto_f

    :catch_7
    move-exception p2

    move-object v5, v3

    .line 169
    :goto_3
    :try_start_5
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    const/16 v4, 0x3fb

    .line 171
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 172
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_5
    if-eqz v3, :cond_6

    .line 178
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v5, :cond_7

    .line 181
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 163
    :goto_4
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 164
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 167
    :cond_7
    :goto_5
    invoke-virtual {v2, p1}, Lcom/ironsource/h5;->a(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v2, v4}, Lcom/ironsource/h5;->a(I)V

    goto/16 :goto_e

    :catch_8
    move-exception p2

    move-object v5, v3

    .line 182
    :goto_6
    :try_start_7
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 183
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 184
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_8
    const/16 p2, 0x3f1

    if-eqz v3, :cond_9

    .line 197
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catchall_2
    move-exception p3

    goto :goto_c

    :cond_9
    :goto_7
    if-eqz v5, :cond_e

    .line 200
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_d

    :catch_9
    move-exception p2

    move-object v5, v3

    .line 209
    :goto_8
    :try_start_9
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/16 p2, 0x3fa

    if-eqz v3, :cond_a

    .line 227
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_a
    if-eqz v5, :cond_e

    .line 230
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_d

    :catch_a
    move-exception p2

    move-object v5, v3

    .line 231
    :goto_9
    :try_start_b
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const/16 p2, 0x3f0

    if-eqz v3, :cond_b

    .line 252
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_b
    if-eqz v5, :cond_e

    .line 255
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_d

    :catch_b
    move-exception p2

    move-object v5, v3

    .line 256
    :goto_a
    :try_start_d
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const/16 p2, 0x3f2

    if-eqz v3, :cond_c

    .line 280
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_c
    if-eqz v5, :cond_e

    .line 283
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_d

    :catch_c
    move-exception p2

    move-object v5, v3

    .line 284
    :goto_b
    :try_start_f
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    const/16 p2, 0x3ec

    if-eqz v3, :cond_d

    .line 311
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_d
    if-eqz v5, :cond_e

    .line 314
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_d

    .line 203
    :goto_c
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 204
    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 207
    :cond_e
    :goto_d
    invoke-virtual {v2, p1}, Lcom/ironsource/h5;->a(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v2, p2}, Lcom/ironsource/h5;->a(I)V

    :goto_e
    return-object v2

    :catchall_3
    move-exception p2

    :goto_f
    if-eqz v3, :cond_f

    .line 315
    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_10

    :catchall_4
    move-exception p3

    goto :goto_11

    :cond_f
    :goto_10
    if-eqz v5, :cond_10

    .line 318
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_12

    .line 321
    :goto_11
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 322
    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 325
    :cond_10
    :goto_12
    invoke-virtual {v2, p1}, Lcom/ironsource/h5;->a(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v2, v4}, Lcom/ironsource/h5;->a(I)V

    .line 327
    throw p2
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method a(Ljava/io/InputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    .line 5
    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 6
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 7
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 10
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/d6;->a()Lcom/ironsource/h5;

    move-result-object v0

    return-object v0
.end method
