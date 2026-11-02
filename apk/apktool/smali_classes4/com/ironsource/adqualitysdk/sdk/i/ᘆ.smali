.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ᴮ;


# static fields
.field public static final ｋ:[Ljava/lang/String;

.field public static final ﾇ:[Ljava/lang/String;


# instance fields
.field public final ﾒ:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "ZFqK\n"

    const-string v1, "Fz7hgf3BWJA=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tJ5Pt5Fhfau3mg==\n"

    const-string v2, "0/Eg0P0EItg=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KFUw7OkhMI81VA==\n"

    const-string v3, "WzFbs45RWOA=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v1, 0x2

    aput-object v2, v3, v1

    sput-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ﾇ:[Ljava/lang/String;

    .line 4
    const-string v2, "vf7p8XG0V2o=\n"

    const-string v3, "+JOcnRDAOBg=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "o2u58kC1rPWxQZY=\n"

    const-string v5, "4gXdgC/cyNU=\n"

    invoke-static {v3, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object v3, v1, v0

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ｋ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ﾒ:Landroid/content/Context;

    return-void
.end method

.method public static ﾇ()Z
    .locals 8

    .line 1
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 4
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ﾇ:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_1

    aget-object v7, v2, v5

    .line 5
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    return v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ｋ:[Ljava/lang/String;

    array-length v2, v0

    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v5, v0, v3

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v4
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "8LAPcmg0/YXZpAl+ejv7ifu4CW8=\n"

    const-string v1, "mNF9Fh9Vj+A=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    const/16 v3, 0x32

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    :try_start_0
    iget-object v5, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ﾒ:Landroid/content/Context;

    const-string v6, "XSZj3qYEaQo=\n"

    const-string v7, "PEUXt9BtHXM=\n"

    invoke-static {v6, v7}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    if-nez v5, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v6, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v6}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 10
    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 11
    iget-wide v5, v6, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v7, 0x100000

    div-long/2addr v5, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :goto_0
    const-wide/16 v5, 0x0

    :goto_1
    const-wide/16 v7, 0x400

    cmp-long v7, v5, v7

    if-gez v7, :cond_2

    const/16 v7, 0x33

    .line 12
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v7, 0x2

    const/4 v8, 0x5

    .line 13
    :try_start_1
    new-array v11, v8, [J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v8, :cond_5

    .line 15
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    :goto_3
    const/16 v3, 0x2710

    if-ge v15, v3, :cond_3

    int-to-long v3, v15

    mul-long/2addr v3, v3

    add-long v16, v3, v16

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 20
    :cond_3
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v13

    aput-wide v3, v11, v12

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v16, v3

    if-eqz v3, :cond_4

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 23
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "qPUZlbEZele/9w4=\n"

    const-string v11, "3Ztr8NB6EjY=\n"

    invoke-static {v4, v11}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_1
    const-wide/16 v18, 0x0

    :catch_2
    const/16 v17, 0x1

    goto :goto_6

    :cond_5
    const-wide/16 v18, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    :goto_4
    if-ge v12, v8, :cond_6

    const-wide/16 v15, 0x0

    .line 28
    aget-wide v3, v11, v12

    long-to-double v3, v3

    add-double/2addr v13, v3

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    const-wide/16 v15, 0x0

    int-to-double v3, v8

    div-double/2addr v13, v3

    cmpl-double v12, v13, v15

    if-nez v12, :cond_7

    .line 32
    new-array v3, v7, [J

    fill-array-data v3, :array_0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v17, 0x1

    const/16 v20, 0x0

    goto :goto_7

    :cond_7
    const/4 v12, 0x0

    :goto_5
    if-ge v12, v8, :cond_8

    const/16 v17, 0x1

    const/16 v20, 0x0

    .line 35
    :try_start_4
    aget-wide v9, v11, v12

    long-to-double v9, v9

    sub-double/2addr v9, v13

    mul-double/2addr v9, v9

    add-double/2addr v15, v9

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_8
    const/16 v17, 0x1

    const/16 v20, 0x0

    div-double v3, v15, v3

    double-to-long v9, v13

    double-to-long v3, v3

    .line 40
    new-array v11, v7, [J

    aput-wide v9, v11, v20

    aput-wide v3, v11, v17
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v3, v11

    goto :goto_7

    :catch_3
    const/16 v17, 0x1

    const-wide/16 v18, 0x0

    :goto_6
    const/16 v20, 0x0

    .line 42
    :catch_4
    new-array v3, v7, [J

    aput-wide v18, v3, v20

    const-wide/16 v9, -0x1

    aput-wide v9, v3, v17

    .line 43
    :goto_7
    aget-wide v9, v3, v20

    .line 44
    aget-wide v11, v3, v17

    cmp-long v3, v11, v18

    if-lez v3, :cond_a

    cmp-long v3, v9, v18

    if-gtz v3, :cond_9

    goto :goto_8

    :cond_9
    long-to-double v3, v11

    .line 45
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    long-to-double v9, v9

    div-double/2addr v3, v9

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v3, v9

    if-lez v3, :cond_a

    const/16 v3, 0x34

    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_a
    :goto_8
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ﾇ()Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v3, 0x35

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_b
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 52
    const-string v4, "ofHhDSvOMQ==\n"

    const-string v7, "xpSPaFmnUkk=\n"

    invoke-static {v4, v7}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "SIq+NXP02dA=\n"

    const-string v13, "PO/NQV6fvKk7\n"

    if-nez v9, :cond_c

    invoke-static {v13, v10}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    const/16 v3, 0x36

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const/4 v3, -0x1

    .line 54
    :try_start_5
    iget-object v9, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ﾒ:Landroid/content/Context;

    const-string v14, "Im1ByqHG\n"

    const-string v15, "UQgvuc60PK0=\n"

    invoke-static {v14, v15}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 55
    invoke-virtual {v9, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/SensorManager;

    if-nez v9, :cond_e

    goto :goto_9

    .line 57
    :cond_e
    invoke-virtual {v9, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_a

    :catch_5
    :goto_9
    move/from16 v9, v20

    :goto_a
    if-ge v9, v8, :cond_f

    const/16 v8, 0x37

    .line 58
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const/4 v8, 0x0

    .line 59
    :try_start_6
    new-instance v14, Landroid/content/IntentFilter;

    const-string v15, "EEXPXgUKWsMYRd9JBBcQjBJfwkMETXysJX/ufjM8faUwZexpLg==\n"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :try_start_7
    const-string v3, "cSurLGpjPu0=\n"

    invoke-static {v15, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 60
    iget-object v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ﾒ:Landroid/content/Context;

    invoke-virtual {v3, v8, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_10

    :catch_6
    const/4 v15, -0x1

    goto :goto_b

    .line 62
    :cond_10
    const-string v14, "Kci5wUSHJcEo37E=\n"

    const-string v15, "Xa3UsSH1RLU=\n"

    invoke-static {v14, v15}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    const/4 v15, -0x1

    :try_start_8
    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_c

    :catch_7
    move v15, v3

    :catch_8
    :goto_b
    move v3, v15

    :goto_c
    const/16 v14, 0xfa

    if-ne v3, v14, :cond_11

    const/16 v14, 0x38

    .line 63
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_11
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 68
    :try_start_9
    const-string v15, "GTTac35TzuwfNQ==\n"

    const-string v8, "cEefHgs/r5g=\n"

    invoke-static {v15, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ﾇ()Z

    move-result v15

    if-nez v15, :cond_13

    .line 69
    sget-object v15, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 70
    invoke-static {v4, v7}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-static {v13, v10}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_d

    :cond_12
    move/from16 v4, v20

    goto :goto_e

    :cond_13
    :goto_d
    move/from16 v4, v17

    .line 71
    :goto_e
    invoke-virtual {v14, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 72
    :catch_9
    :try_start_a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 73
    const-string v7, "x0Gvieh5wizFcK+f434=\n"

    const-string v8, "tzPA6o0KsUM=\n"

    invoke-static {v7, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    const-string v2, "wKXH4+Qt/p7buMrPyg==\n"

    const-string v7, "tMqzgohgm/M=\n"

    invoke-static {v2, v7}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 75
    const-string v2, "XzwRA8w6BzJZPB0EwTgfIA==\n"

    const-string v5, "K1V8aqJdUVM=\n"

    invoke-static {v2, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 76
    const-string v2, "rbX5FZjF+HOrvuM=\n"

    const-string v5, "3tCXZve3uxw=\n"

    invoke-static {v2, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    const-string v2, "22xpVASYNtzcYG0=\n"

    const-string v5, "uQ0dIGHqT4g=\n"

    invoke-static {v2, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    const-string v2, "f5fVIJBXDGZjmdQ1j00QdA==\n"

    const-string v3, "F/amZf0iYAc=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "xO030Wcag13C7A==\n"

    const-string v5, "rZ5yvBJ24ik=\n"

    invoke-static {v3, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v5, v20

    invoke-virtual {v14, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 79
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_f

    .line 81
    :catch_a
    const-string v2, "C20=\n"

    const-string v3, "cBAdHipgDIU=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    :goto_f
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    .line 83
    invoke-direct {v3, v4, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;-><init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method
