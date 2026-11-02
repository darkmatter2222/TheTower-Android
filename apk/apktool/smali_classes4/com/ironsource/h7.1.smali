.class public Lcom/ironsource/h7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x3a98

.field private static final b:Ljava/lang/String; = "GET"

.field private static final c:Ljava/lang/String; = "POST"

.field private static final d:Ljava/lang/String; = "UTF-8"

.field public static final e:Ljava/lang/String; = "ERROR:"

.field private static final f:Ljava/lang/String; = "Bad Request - 400"

.field private static final g:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static bridge synthetic -$$Nest$sma(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sma(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/h7;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smb(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 0

    invoke-static {p0}, Lcom/ironsource/h7;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ironsource/h7;->g:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/j7;
    .locals 6

    const-string v0, "exception while sending request "

    const/4 v1, 0x0

    .line 52
    :try_start_0
    invoke-static {p0}, Lcom/ironsource/h7;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 53
    :try_start_1
    const-string v2, "Content-Type"

    const-string v3, "application/json; charset=utf-8"

    invoke-virtual {p0, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    :try_start_2
    invoke-static {p1, v2}, Lcom/ironsource/h7;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 57
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_1

    .line 63
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :try_start_3
    invoke-static {p1}, Lcom/ironsource/h7;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    new-instance v3, Lcom/ironsource/j7$b;

    invoke-direct {v3, v1}, Lcom/ironsource/j7$b;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 75
    invoke-static {v2, p0, p1}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    return-object v3

    .line 76
    :cond_0
    :try_start_4
    new-instance v1, Lcom/ironsource/j7$a$c;

    invoke-direct {v1}, Lcom/ironsource/j7$a$c;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 83
    invoke-static {v2, p0, p1}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_1

    .line 84
    :cond_1
    :try_start_5
    new-instance v3, Lcom/ironsource/j7$a$b;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/ironsource/j7$a$b;-><init>(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 99
    invoke-static {v2, p0, v1}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    return-object v3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v2, v1

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object p0, v1

    move-object v2, p0

    goto :goto_2

    :catch_3
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    move-object v2, p0

    :goto_0
    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    .line 100
    :goto_1
    :try_start_6
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 101
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/ironsource/j7$a$a;

    invoke-direct {v0, v1}, Lcom/ironsource/j7$a$a;-><init>(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 104
    invoke-static {v2, p0, p1}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    return-object v0

    :catchall_3
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    :goto_2
    invoke-static {v2, p0, v1}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    .line 105
    throw p1
.end method

.method private static a(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/ironsource/h7;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/p$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/ironsource/mediationsdk/p$c;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v1, 0x3a98

    .line 5
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 6
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 7
    const-string v1, "GET"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 10
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 12
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_0

    .line 16
    const-string v1, "Bad Request - 400"

    invoke-interface {p1, v1}, Lcom/ironsource/mediationsdk/p$c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    :cond_0
    invoke-static {v0, p0, v0}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    return-object v0

    .line 28
    :cond_1
    :try_start_2
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 29
    :try_start_3
    invoke-static {p1}, Lcom/ironsource/h7;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    invoke-static {v0, p0, p1}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object p0, v0

    move-object v1, p0

    goto :goto_2

    :catch_2
    move-exception p1

    move-object p0, v0

    :goto_0
    move-object v1, p1

    move-object p1, v0

    .line 35
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 38
    invoke-static {v0, p0, p1}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    return-object v0

    :catchall_3
    move-exception v1

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    :goto_2
    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    :goto_3
    invoke-static {v0, p0, p1}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    .line 39
    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/p$c;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/ironsource/h7;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/j7;

    move-result-object p0

    .line 42
    instance-of p1, p0, Lcom/ironsource/j7$a;

    if-eqz p1, :cond_1

    .line 43
    check-cast p0, Lcom/ironsource/j7$a;

    .line 44
    invoke-interface {p0}, Lcom/ironsource/j7$a;->b()Z

    move-result p1

    if-nez p1, :cond_0

    .line 45
    invoke-interface {p0}, Lcom/ironsource/j7$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/ironsource/mediationsdk/p$c;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_1
    check-cast p0, Lcom/ironsource/j7$b;

    .line 51
    invoke-virtual {p0}, Lcom/ironsource/j7$b;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 121
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 122
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception while closing output stream "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    if-eqz p2, :cond_2

    .line 130
    :try_start_1
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 132
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 133
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "exception while closing reader "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 107
    invoke-virtual {v0, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 109
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/i7;)V
    .locals 2

    .line 40
    sget-object v0, Lcom/ironsource/h7;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ironsource/h7$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/h7$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/i7;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v0, 0x3a98

    .line 3
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 4
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 5
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 7
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    return-object p0
.end method
