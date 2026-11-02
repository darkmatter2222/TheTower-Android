.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﾒ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "19d9H7XzYgQ=\n"

    const-string v1, "mbIJSsGaDnc=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ:Ljava/lang/String;

    return-void
.end method

.method public static ﾇ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;
    .locals 10

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 3
    const-string v0, "b08L\n"

    const-string v2, "KApfysevGmc=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/Ł;->ﾒ:Ljava/lang/String;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 6
    invoke-static {p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 8
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x190

    if-lt v6, v0, :cond_0

    .line 11
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 14
    :cond_0
    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v2

    .line 16
    invoke-direct/range {v4 .. v9}, Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;-><init>(Ljava/lang/String;ILjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v5, p0

    .line 19
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lAnx8ACp7oK/H+rxFan6gqVb8foD/PiUpUGj\n"

    const-string v3, "0XuDn3KJnec=\n"

    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v5}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    .line 20
    invoke-static/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    return-object v1
.end method

.method public static ﾒ(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/r;Landroid/content/Context;Z)Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;
    .locals 9

    const/4 v1, 0x0

    .line 128
    :try_start_0
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p4, :cond_0

    .line 135
    :try_start_1
    invoke-static {v2, p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/r;Landroid/content/Context;)Lcom/ironsource/adqualitysdk/sdk/i/ﾘ;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﾘ;->ﾒ:[B

    .line 138
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﾘ;->ﾇ:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 143
    :try_start_2
    sget-object p2, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "MNxMTtCrPZEa3A9PwrI5iBDWD1Pb+y+ZHN5KWIX7PIsc3Egc2bcokRuIDw==\n"

    const-string v0, "dbIvPKnbSfg=\n"

    invoke-static {p4, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    .line 144
    invoke-static {p2, p2, p1, p3}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    move-object p1, v1

    move-object p2, p1

    :goto_0
    if-nez p2, :cond_1

    .line 145
    invoke-static {v2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;)[B

    move-result-object p2

    .line 148
    :cond_1
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/Ł;->ﾒ:Ljava/lang/String;

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    .line 150
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 151
    new-instance p0, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 152
    :try_start_3
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 153
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 155
    invoke-static {v2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 157
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    const/16 p0, 0x190

    if-lt v5, p0, :cond_2

    .line 160
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 163
    :cond_2
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sub-long v7, p0, p3

    .line 165
    invoke-direct/range {v3 .. v8}, Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;-><init>(Ljava/lang/String;ILjava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v3

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 166
    :try_start_5
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    move-object v5, p0

    .line 167
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "VXBK7hLUCut+ZlHvB9QJ4WN2GPMFhQzrY3YCoQ==\n"

    const-string p2, "EAI4gWD0eY4=\n"

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v5}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    .line 168
    invoke-static/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    return-object v1
.end method

.method public static ﾒ(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/r;Landroid/content/Context;)Lcom/ironsource/adqualitysdk/sdk/i/ﾘ;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "syjHZbixzZY=\n"

    const-string v4, "8EmpC9fF7fPdS7UcyMXt5NZZsgDLxeG23UezRcvUo/LaRqBF0cX3tg==\n"

    const/4 v5, 0x0

    if-eqz v2, :cond_d

    if-nez p4, :cond_0

    goto/16 :goto_5

    .line 42
    :cond_0
    iget-object v6, v2, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﾒ:Ljava/lang/String;

    .line 43
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 44
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﾒ:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_1
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﾇ:Ljava/lang/String;

    :goto_0
    if-eqz v2, :cond_c

    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 51
    :cond_3
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 55
    :cond_4
    const-string v3, "eu4=\n"

    const-string v4, "JMH8eLlTxGY=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2f

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ltz v3, :cond_5

    add-int/2addr v3, v2

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    move-object v7, v1

    goto :goto_2

    :catch_0
    :cond_7
    :goto_1
    move-object v7, v5

    :goto_2
    if-nez v7, :cond_8

    return-object v5

    .line 59
    :cond_8
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;

    .line 60
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ˈ;

    if-nez v1, :cond_9

    return-object v5

    .line 61
    :cond_9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    .line 62
    invoke-static/range {p1 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 63
    const-string v4, "KUIvcvM=\n"

    const-string v5, "fBZpX8uu+P4=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 64
    iget-object v11, v1, Lcom/ironsource/adqualitysdk/sdk/i/ˈ;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/ᙇ;

    .line 65
    iget-object v6, v1, Lcom/ironsource/adqualitysdk/sdk/i/ˈ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﾐ;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    :try_start_1
    iget-object v4, v6, Lcom/ironsource/adqualitysdk/sdk/i/ﾐ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/כּ;

    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/כּ;->ﾒ()[B

    move-result-object v4

    .line 67
    iget-object v5, v6, Lcom/ironsource/adqualitysdk/sdk/i/ﾐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;

    invoke-virtual {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ε;

    move-result-object v5

    .line 68
    iget-object v9, v6, Lcom/ironsource/adqualitysdk/sdk/i/ﾐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;

    const/16 v10, 0xc

    .line 69
    new-array v14, v10, [B

    .line 70
    iget-object v9, v9, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﾒ:Ljava/security/SecureRandom;

    invoke-virtual {v9, v14}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 72
    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/э;->ﾒ([B)[B

    move-result-object v3

    .line 73
    iget-object v9, v6, Lcom/ironsource/adqualitysdk/sdk/i/ﾐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;

    .line 74
    iget-object v10, v5, Lcom/ironsource/adqualitysdk/sdk/i/ε;->ﾒ:[B

    .line 75
    invoke-virtual {v9, v10, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﾒ([B[B)[B

    move-result-object v4

    .line 76
    sget-object v9, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﺙ:[B

    array-length v10, v9

    add-int/lit8 v10, v10, 0x3

    new-array v10, v10, [B

    .line 77
    array-length v15, v9

    move/from16 p3, v2

    const/4 v2, 0x0

    invoke-static {v9, v2, v10, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    array-length v15, v9

    int-to-byte v2, v2

    aput-byte v2, v10, v15

    .line 79
    array-length v2, v9

    add-int/lit8 v2, v2, 0x1

    move/from16 v15, p3

    move/from16 p1, v2

    int-to-byte v2, v15

    aput-byte v2, v10, p1

    .line 80
    array-length v2, v9

    const/4 v9, 0x2

    add-int/2addr v2, v9

    int-to-byte v9, v9

    aput-byte v9, v10, v2

    .line 81
    iget-object v2, v6, Lcom/ironsource/adqualitysdk/sdk/i/ﾐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;

    invoke-virtual {v2, v4, v14, v10}, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﾒ([B[B[B)[B

    move-result-object v2

    move-wide v9, v12

    .line 83
    invoke-virtual/range {v6 .. v11}, Lcom/ironsource/adqualitysdk/sdk/i/ﾐ;->ﾒ(Ljava/lang/String;Ljava/lang/String;JLcom/ironsource/adqualitysdk/sdk/i/ᙇ;)[B

    move-result-object v7

    move-wide v12, v9

    .line 84
    iget-object v6, v6, Lcom/ironsource/adqualitysdk/sdk/i/ﾐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;

    invoke-virtual {v6, v2, v14, v3, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﾇ([B[B[B[B)Lcom/ironsource/adqualitysdk/sdk/i/κ;

    move-result-object v2

    .line 85
    iget-object v15, v5, Lcom/ironsource/adqualitysdk/sdk/i/ε;->ﾇ:[B

    .line 86
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/κ;->ﾒ:[B

    move-object/from16 v17, v2

    move-object/from16 v16, v7

    .line 87
    invoke-static/range {v12 .. v17}, Lcom/ironsource/adqualitysdk/sdk/i/ﾐ;->ﾒ(J[B[B[B[B)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/і;

    .line 90
    iget-object v5, v1, Lcom/ironsource/adqualitysdk/sdk/i/ˈ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᵧ;

    .line 91
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 93
    invoke-direct {v3, v8, v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/і;-><init>(Ljava/lang/String;[BJ)V

    .line 94
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ˈ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ᘁ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 96
    iget-object v6, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘁ;->ﾇ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 97
    :cond_a
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 98
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ironsource/adqualitysdk/sdk/i/і;

    .line 100
    iget-wide v9, v7, Lcom/ironsource/adqualitysdk/sdk/i/і;->ｋ:J

    sub-long v9, v4, v9

    .line 101
    iget-wide v11, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘁ;->ﾒ:J

    cmp-long v7, v9, v11

    if-lez v7, :cond_a

    .line 102
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 103
    :cond_b
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘁ;->ﾇ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    iget-object v4, v3, Lcom/ironsource/adqualitysdk/sdk/i/і;->ﾒ:Ljava/lang/String;

    .line 105
    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "1JV7iGKMXLjDg2WZ\n"

    const-string v3, "l/oV/AfiKJU=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "WMalV63JIg9Q2bsUq8k3Hk2bpk+2zyIW\n"

    const-string v4, "ObbVO8SqQ3s=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "bRVou1Vn\n"

    const-string v3, "LHYL3iUTYa4=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "VHelgWWYiO5caLvCY5id/0Eqppl+noj3\n"

    const-string v4, "NQfV7Qz76Zo=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "gaVbfg==\n"

    const-string v3, "+Yg0DUPJx6c=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Lw==\n"

    const-string v4, "Tv6jjOyH3bg=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x1

    .line 109
    invoke-virtual {v0, v15}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 110
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ﾘ;

    invoke-direct {v0, v2, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ﾘ;-><init>([BLjava/lang/String;)V

    return-object v0

    :catch_1
    move-exception v0

    .line 111
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "r5Jc3K1S+m2G01fFoVq+OYydQ9WkWap8\n"

    const-string v3, "6fM1sMg22hk=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 112
    :cond_c
    :goto_4
    const-string v0, "7yX/CTjL+6f4arAaaNzRr+QDuw==\n"

    const-string v1, "gUrfaEi7sMI=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    invoke-static {v4, v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ϙ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x0

    move-object v7, v6

    .line 115
    invoke-static/range {v6 .. v11}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    return-object v5

    .line 116
    :cond_d
    :goto_5
    const-string v0, "ZYkIYhAOJZFkiE5+BEs4oCuFR3kXDi+m\n"

    const-string v1, "C+YoF2NrV9I=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    invoke-static {v4, v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ϙ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x0

    move-object v7, v6

    .line 119
    invoke-static/range {v6 .. v11}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    return-object v5
.end method

.method public static ﾒ(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ˈ;

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ny5DwbMpt38HT3L+8jy5ZA4OZfz2cfhuAwFp/+dqvGgBHX7g52qqaBEfaP7gL/hrDR0n4vY7rWgR\nG070rg==\n"

    const-string v3, "Ym8HkJNK2A0=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾇ(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 8
    invoke-static {p0, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ˈ;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 10
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ:Ljava/lang/String;

    const-string v0, "gwb02f1vazymKN77uD1qKrU1yfipdGEh9iHR4bF4anT2NdX7rXJgPLNn0ue5ZC4mpWfe/bFxLmel\nM8LtvHAuLro11em5ZC4suSnD/bB4amY=\n"

    const-string v2, "1kewiN0dDk8=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾇ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 16
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0yG110Q1WnahJ6nDTntKe+QnrYdNOkB/5CDqh14oQH3mZLbLSjJHM/Mhp8MRew==\n"

    const-string v4, "gUTGpytbKRM=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v0, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 19
    :try_start_2
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    :try_start_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_3

    const/16 v3, 0xd

    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 26
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 28
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/io/Closeable;)V

    .line 34
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p0, v0

    move-object p0, v1

    :goto_1
    move-object p1, v1

    :goto_2
    move-object v5, v0

    .line 35
    :try_start_4
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ:Ljava/lang/String;

    const-string v0, "ZhWUEtZkBCFXE48Tw2QRIVAXiRPXIQ==\n"

    const-string v3, "I2fmfaREY0Q=\n"

    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    .line 36
    invoke-static/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 37
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/io/Closeable;)V

    .line 38
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/io/Closeable;)V

    :goto_3
    return-object v1

    :catchall_3
    move-exception v0

    .line 39
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/io/Closeable;)V

    .line 40
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/io/Closeable;)V

    .line 41
    throw v0
.end method

.method public static ﾒ(Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ˈ;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    .line 198
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 199
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLength()I

    move-result p0

    const/high16 v0, 0x10000

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    .line 201
    :goto_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    :try_start_2
    new-array p0, v0, [B

    .line 204
    :goto_1
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    const/4 v4, 0x0

    .line 205
    invoke-virtual {v3, p0, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 207
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 208
    invoke-virtual {p2, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ˈ;->ﾒ([BLjava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_2

    .line 210
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ:Ljava/lang/String;

    const-string p1, "fGpzyq4D+8RbUkfv3ALt10ZFRP6uFfvTXFlZ/upH8NJFRw==\n"

    const-string p2, "KSs3m45nnqc=\n"

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾇ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/io/Closeable;)V

    .line 220
    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/io/Closeable;)V

    return-object v1

    .line 221
    :cond_2
    :try_start_3
    new-instance p1, Ljava/lang/String;

    const-string p2, "EoQOIC4=\n"

    const-string v0, "R9BIDRbZef0=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/io/Closeable;)V

    .line 228
    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v6, p0

    move-object p0, v3

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    move-object v2, v1

    :goto_2
    move-object v6, p0

    move-object p0, v1

    .line 229
    :goto_3
    :try_start_4
    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "iOu9hvm+kZqtxZekvOyQjL7YgKetpZuH/cyYvrWpkNP9\n"

    const-string v0, "3ar519nM9Ok=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾇ(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string p1, "rZKU96zE2heclI/2ucvZF4uSn+iqjdMVyJKD666L0wGN\n"

    const-string p2, "6ODmmN7kvXI=\n"

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v3

    .line 231
    invoke-static/range {v3 .. v8}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 232
    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/io/Closeable;)V

    .line 233
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/io/Closeable;)V

    return-object v1

    :catchall_3
    move-exception v0

    move-object p1, v0

    .line 234
    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/io/Closeable;)V

    .line 235
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Ljava/io/Closeable;)V

    .line 236
    throw p1
.end method

.method public static ﾒ(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    .line 238
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 240
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/চ;->ﾒ:Ljava/lang/String;

    .line 241
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x8

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 242
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/চ;->ﾇ:Ljava/lang/String;

    const-string v4, "SJjpzOY=\n"

    const-string v5, "Hcyv4d6m3tA=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 243
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 244
    const-string v2, " "

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ZxWESdw=\n"

    const-string v3, "MkHCZOQTaF8=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 246
    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ژ;->ﾒ([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 248
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/চ;->ﾒ:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bxR3fK+wiw==\n"

    const-string v4, "KmYFE92Kq74=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﻛ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x7d

    .line 249
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 251
    const-string v1, "4ZmqEPgP7g==\n"

    const-string v2, "zbvCY9o1zIQ=\n"

    invoke-static {v1, v2, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᖟ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 252
    const-string v0, "pOU=\n"

    const-string v1, "hpgEAibVI2I=\n"

    invoke-static {v0, v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 2
        0x48s
        0x6ds
        0x61s
        0x63s
        0x53s
        0x48s
        0x41s
        0x31s
    .end array-data
.end method

.method public static ﾒ(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 187
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 189
    const-string v0, "ckl6yA==\n"

    const-string v1, "IgYpnLOJvVk=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 190
    const-string v0, "ddZN+3LlLQJiwFPq\n"

    const-string v1, "NrkjjxeLWS8=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tDvvMALZ6Be8JPFzAcnmDe5r/DQKyPoGoXbqKA2XsQ==\n"

    const-string v2, "1UufXGu6iWM=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v0, 0x1

    .line 193
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 194
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const v0, 0xea60

    .line 196
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 197
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-object p0
.end method

.method public static ﾒ(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 237
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static ﾒ(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;)[B
    .locals 3

    .line 169
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮄ;->ﾒ(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 170
    const-string v0, "JV67rvo=\n"

    const-string v1, "cAr9g8JFw+c=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x100

    if-le p1, v1, :cond_1

    .line 172
    const-string p1, "uUKANueeYyq/Q40t5pl5YA==\n"

    const-string v1, "+i3uQoLwFwc=\n"

    invoke-static {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "BdcDjw==\n"

    const-string v2, "Yq1q/4op9gM=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 173
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 174
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 175
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 176
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 177
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    .line 181
    :goto_0
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    move-object p0, v1

    :goto_1
    move-object v1, p0

    move-object p0, p1

    :goto_2
    if-eqz v1, :cond_0

    .line 184
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 186
    :catch_2
    :cond_0
    throw p0

    :cond_1
    return-object v0
.end method
