.class public final Lcom/ironsource/adqualitysdk/sdk/i/ь;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ｋ:Lcom/ironsource/adqualitysdk/sdk/i/แ;

.field public ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;

.field public final ﾒ:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/แ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/แ;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾒ:Ljava/util/HashMap;

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ь;Lcom/ironsource/adqualitysdk/sdk/i/ח;)V
    .locals 3

    .line 22
    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;

    if-eqz p0, :cond_a

    .line 23
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    if-eq p1, v0, :cond_a

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    if-eq p1, v0, :cond_a

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    if-ne p1, v0, :cond_0

    goto/16 :goto_3

    .line 24
    :cond_0
    iget-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﻏ:Z

    if-eqz p1, :cond_1

    goto/16 :goto_3

    .line 25
    :cond_1
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/Ł;->ﾒ:Ljava/lang/String;

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 27
    iput-wide v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﮐ:J

    .line 28
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ҫ;

    .line 29
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ҫ;->ﾒ:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->ﾒ(Landroid/content/Context;)I

    move-result p1

    .line 31
    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﮌ:I

    .line 32
    iget-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﮉ:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﭴ:Z

    if-nez p1, :cond_4

    .line 33
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﻛ:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 35
    :cond_2
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﻛ:Landroid/os/Handler;

    if-nez p1, :cond_3

    goto :goto_0

    .line 38
    :cond_3
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ｩ;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ｩ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;)V

    iget v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﭸ:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﺙ:Z

    if-nez p1, :cond_5

    goto :goto_3

    .line 42
    :cond_5
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Һ;

    .line 43
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/Һ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

    .line 44
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾒ:Ljava/util/HashMap;

    if-eqz p1, :cond_7

    .line 45
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 48
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    .line 49
    :cond_7
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ח;

    .line 51
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    .line 52
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    if-eq v0, v1, :cond_a

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    if-eq v0, v1, :cond_a

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    if-ne v0, v1, :cond_8

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﾒ(Z)V

    :cond_a
    :goto_3
    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ח;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾒ:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ח;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ﾒ()Lorg/json/JSONObject;
    .locals 13

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾒ:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;

    .line 62
    iget-object v3, v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﾒ:Ljava/lang/String;

    .line 63
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 65
    :try_start_0
    sget-object v5, Lcom/ironsource/adqualitysdk/sdk/i/į;->ᖸ:Ljava/lang/String;

    .line 66
    iget-object v6, v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ｋ:Ljava/lang/String;

    .line 67
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    iget-boolean v5, v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﮐ:Z

    if-eqz v5, :cond_2

    .line 69
    const-string v5, "fAoVoX25\n"

    const-string v6, "H2t2yRjdsrg=\n"

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 72
    :cond_2
    const-string v5, "7H2YZyXo\n"

    const-string v6, "nwn5E1CbIUA=\n"

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73
    iget-object v6, v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    iget-object v5, v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱟ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

    .line 76
    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ب;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

    if-eq v5, v6, :cond_5

    .line 77
    const-string v5, "oYwVmx8=\n"

    const-string v6, "xP5n9G2iGoA=\n"

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    iget-object v6, v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    sget-object v7, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    if-ne v6, v7, :cond_3

    .line 79
    iget-object v6, v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱟ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 80
    :goto_3
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    iget-object v5, v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱟ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

    .line 82
    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ب;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

    if-eq v5, v6, :cond_4

    .line 83
    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ب;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

    if-ne v5, v6, :cond_5

    .line 84
    :cond_4
    sget-object v5, Lcom/ironsource/adqualitysdk/sdk/i/į;->ᖭ:Ljava/lang/String;

    .line 85
    iget-object v6, v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﻛ:Ljava/lang/String;

    .line 86
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    iget-object v5, v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱟ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

    .line 88
    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ب;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

    if-ne v5, v6, :cond_5

    .line 89
    const-string v5, "Inxmi5pp0Hw=\n"

    const-string v6, "UBkX/+oftQ4=\n"

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    iget-object v6, v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﺙ:Ljava/lang/String;

    .line 91
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    :cond_5
    iget-wide v5, v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﮉ:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_6

    .line 93
    iget-boolean v5, v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﮐ:Z

    if-nez v5, :cond_6

    .line 94
    const-string v5, "JAA=\n"

    const-string v6, "QnSlQX3WIX4=\n"

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    iget-wide v9, v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﮉ:J

    .line 96
    iget-wide v11, v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﮌ:J

    sub-long/2addr v9, v11

    .line 97
    invoke-virtual {v4, v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 98
    :cond_6
    iget-wide v5, v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﭸ:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_7

    .line 99
    const-string v5, "mD4=\n"

    const-string v6, "8UoWrGYc1X8=\n"

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    iget-wide v6, v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﭸ:J

    .line 101
    iget-wide v8, v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﮉ:J

    sub-long/2addr v6, v8

    .line 102
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :catch_0
    :cond_7
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    :cond_8
    return-object v0
.end method

.method public final declared-synchronized ﾒ(Z)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/וּ;->ﾇ:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/וּ;->ﾒ:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ח;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 9
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    .line 10
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    if-eq v1, v2, :cond_2

    goto :goto_2

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾒ:Ljava/util/HashMap;

    if-eqz p1, :cond_7

    .line 12
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    .line 19
    :cond_6
    invoke-virtual {p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ח;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 20
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    .line 21
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/צ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    :cond_7
    :goto_2
    const/4 p1, 0x0

    :goto_3
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
