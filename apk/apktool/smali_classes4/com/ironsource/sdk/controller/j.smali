.class Lcom/ironsource/sdk/controller/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/ironsource/b6;


# direct methods
.method static bridge synthetic -$$Nest$ma(Lcom/ironsource/sdk/controller/j;Lcom/ironsource/va;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/j;->a(Lcom/ironsource/va;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$ma(Lcom/ironsource/sdk/controller/j;Lcom/ironsource/va;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/j;->a(Lcom/ironsource/va;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;Lcom/ironsource/b6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/sdk/controller/j;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ironsource/sdk/controller/j;->b:Lcom/ironsource/b6;

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ironsource/D8;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    const-string v0, "folderPath"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    new-instance v0, Lcom/ironsource/D8;

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->buildAbsolutePathToDirInCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ironsource/D8;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 141
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Missing params for folder"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/ironsource/va;Lcom/ironsource/wa;)Lcom/ironsource/Vc;
    .locals 1

    .line 114
    new-instance v0, Lcom/ironsource/sdk/controller/j$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/ironsource/sdk/controller/j$a;-><init>(Lcom/ironsource/sdk/controller/j;Lcom/ironsource/wa;Lcom/ironsource/va;)V

    return-object v0
.end method

.method private a(Lcom/ironsource/va;J)Lorg/json/JSONObject;
    .locals 1

    .line 122
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/va;->e()Lorg/json/JSONObject;

    move-result-object p1

    .line 123
    const-string v0, "result"

    invoke-virtual {p1, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 125
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 126
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 128
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method private a(Lcom/ironsource/va;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 129
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/va;->e()Lorg/json/JSONObject;

    move-result-object p1

    .line 130
    const-string v0, "errMsg"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 132
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 133
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 135
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method private a(Lcom/ironsource/va;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 115
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/va;->e()Lorg/json/JSONObject;

    move-result-object p1

    .line 116
    const-string v0, "result"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 118
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 119
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 121
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ironsource/D8;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "filePath"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fileName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v1, Lcom/ironsource/D8;

    .line 7
    invoke-static {p2, v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->buildAbsolutePathToDirInCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lcom/ironsource/D8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Missing params for file"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a(Lorg/json/JSONObject;Lcom/ironsource/ua;)V
    .locals 9

    .line 1
    new-instance v1, Lcom/ironsource/va;

    invoke-direct {v1, p1}, Lcom/ironsource/va;-><init>(Lorg/json/JSONObject;)V

    .line 2
    new-instance p1, Lcom/ironsource/wa;

    invoke-direct {p1, p2}, Lcom/ironsource/wa;-><init>(Lcom/ironsource/ua;)V

    .line 4
    :try_start_0
    invoke-virtual {v1}, Lcom/ironsource/va;->b()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {v1}, Lcom/ironsource/va;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/ironsource/sdk/controller/j;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/ironsource/sdk/controller/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ironsource/D8;

    move-result-object v4

    .line 8
    iget-object v2, p0, Lcom/ironsource/sdk/controller/j;->a:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->ensurePathSafety(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "getFiles"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v6

    goto :goto_1

    :sswitch_1
    const-string v2, "deleteFile"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v8

    goto :goto_1

    :sswitch_2
    const-string v2, "updateAttributesOfFile"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v3

    goto :goto_1

    :sswitch_3
    const-string v2, "getTotalSizeOfFiles"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v5

    goto :goto_1

    :sswitch_4
    const-string v2, "deleteFolder"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v7

    goto :goto_1

    :sswitch_5
    const-string v2, "saveFile"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_6

    if-eq p2, v8, :cond_5

    if-eq p2, v7, :cond_4

    if-eq p2, v6, :cond_3

    if-eq p2, v5, :cond_2

    if-eq p2, v3, :cond_1

    goto/16 :goto_2

    .line 50
    :cond_1
    const-string p2, "attributesToUpdate"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 51
    iget-object v0, p0, Lcom/ironsource/sdk/controller/j;->b:Lcom/ironsource/b6;

    invoke-virtual {v0, v4, p2}, Lcom/ironsource/b6;->a(Lcom/ironsource/D8;Lorg/json/JSONObject;)V

    .line 53
    invoke-virtual {v4}, Lcom/ironsource/D8;->a()Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lcom/ironsource/sdk/controller/j;->a(Lcom/ironsource/va;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 54
    invoke-virtual {p1, v1, p2}, Lcom/ironsource/wa;->b(Lcom/ironsource/va;Lorg/json/JSONObject;)V

    return-void

    .line 55
    :cond_2
    iget-object p2, p0, Lcom/ironsource/sdk/controller/j;->b:Lcom/ironsource/b6;

    invoke-virtual {p2, v4}, Lcom/ironsource/b6;->d(Lcom/ironsource/D8;)J

    move-result-wide v2

    .line 56
    invoke-direct {p0, v1, v2, v3}, Lcom/ironsource/sdk/controller/j;->a(Lcom/ironsource/va;J)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/ironsource/wa;->b(Lcom/ironsource/va;Lorg/json/JSONObject;)V

    return-void

    .line 57
    :cond_3
    iget-object p2, p0, Lcom/ironsource/sdk/controller/j;->b:Lcom/ironsource/b6;

    invoke-virtual {p2, v4}, Lcom/ironsource/b6;->c(Lcom/ironsource/D8;)Lorg/json/JSONObject;

    move-result-object p2

    .line 58
    invoke-direct {p0, v1, p2}, Lcom/ironsource/sdk/controller/j;->a(Lcom/ironsource/va;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/ironsource/wa;->b(Lcom/ironsource/va;Lorg/json/JSONObject;)V

    return-void

    .line 59
    :cond_4
    iget-object p2, p0, Lcom/ironsource/sdk/controller/j;->b:Lcom/ironsource/b6;

    invoke-virtual {p2, v4}, Lcom/ironsource/b6;->b(Lcom/ironsource/D8;)V

    .line 61
    invoke-virtual {v4}, Lcom/ironsource/D8;->a()Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lcom/ironsource/sdk/controller/j;->a(Lcom/ironsource/va;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 62
    invoke-virtual {p1, v1, p2}, Lcom/ironsource/wa;->b(Lcom/ironsource/va;Lorg/json/JSONObject;)V

    return-void

    .line 63
    :cond_5
    iget-object p2, p0, Lcom/ironsource/sdk/controller/j;->b:Lcom/ironsource/b6;

    invoke-virtual {p2, v4}, Lcom/ironsource/b6;->a(Lcom/ironsource/D8;)V

    .line 65
    invoke-virtual {v4}, Lcom/ironsource/D8;->a()Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lcom/ironsource/sdk/controller/j;->a(Lcom/ironsource/va;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 66
    invoke-virtual {p1, v1, p2}, Lcom/ironsource/wa;->b(Lcom/ironsource/va;Lorg/json/JSONObject;)V

    return-void

    .line 67
    :cond_6
    const-string p2, "fileUrl"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    const-string p2, "connectionTimeout"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 69
    const-string p2, "readTimeout"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 71
    invoke-direct {p0, v1, p1}, Lcom/ironsource/sdk/controller/j;->a(Lcom/ironsource/va;Lcom/ironsource/wa;)Lcom/ironsource/Vc;

    move-result-object v8

    .line 72
    iget-object v3, p0, Lcom/ironsource/sdk/controller/j;->b:Lcom/ironsource/b6;

    invoke-virtual/range {v3 .. v8}, Lcom/ironsource/b6;->a(Lcom/ironsource/D8;Ljava/lang/String;IILcom/ironsource/Vc;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 112
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 113
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lcom/ironsource/sdk/controller/j;->a(Lcom/ironsource/va;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/ironsource/wa;->a(Lcom/ironsource/va;Lorg/json/JSONObject;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b8fdb67 -> :sswitch_5
        -0x43c59e07 -> :sswitch_4
        -0x12f60ecf -> :sswitch_3
        0x200a7713 -> :sswitch_2
        0x692721c7 -> :sswitch_1
        0x746c60c1 -> :sswitch_0
    .end sparse-switch
.end method
