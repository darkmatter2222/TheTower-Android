.class Lcom/ironsource/h7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/h7;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/i7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/i7;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/i7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/h7$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/h7$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/h7$a;->c:Lcom/ironsource/i7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "invalid response code "

    const-string v1, "exception while sending request "

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :try_start_0
    iget-object v4, p0, Lcom/ironsource/h7$a;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/ironsource/h7;->-$$Nest$smb(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {v4}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    iget-object v6, p0, Lcom/ironsource/h7$a;->b:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/ironsource/h7;->-$$Nest$sma(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_0
    if-nez v7, :cond_1

    .line 8
    sget-object v8, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " sending request"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/ironsource/h7$a;->c:Lcom/ironsource/i7;

    invoke-interface {v0, v7}, Lcom/ironsource/i7;->a(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v3

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v5, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v4, v3

    move-object v5, v4

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v4, v3

    move-object v5, v4

    .line 18
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 19
    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/ironsource/h7$a;->c:Lcom/ironsource/i7;

    invoke-interface {v0, v2}, Lcom/ironsource/i7;->a(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 17
    :goto_2
    invoke-static {v5, v4, v3}, Lcom/ironsource/h7;->-$$Nest$sma(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    return-void

    :catchall_2
    move-exception v0

    .line 22
    :goto_3
    invoke-static {v5, v4, v3}, Lcom/ironsource/h7;->-$$Nest$sma(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    .line 23
    throw v0
.end method
