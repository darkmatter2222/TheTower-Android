.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/ṟ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile ﱡ:Z

.field public static final ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ẛ;

.field public static final ﻏ:Ljava/util/regex/Pattern;

.field public static final ﻐ:Ljava/util/regex/Pattern;

.field public static final ﻛ:Ljava/util/regex/Pattern;

.field public static final ｋ:Ljava/util/regex/Pattern;

.field public static final ﾇ:Ljava/util/regex/Pattern;

.field public static final ﾒ:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "6hFWTBU=\n"

    const-string v1, "pnQuKWejSgA=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1
    const-string v0, "LrZcCMV5yuxUsmB+3hWd9123DQiGHLjrWg==\n"

    const-string v1, "cO09Jb8457Y=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﾒ:Ljava/util/regex/Pattern;

    .line 2
    const-string v0, "sHBM5lKXKNOSCTr7NeJe0w==\n"

    const-string v1, "7lJk2WjLdPE=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﾇ:Ljava/util/regex/Pattern;

    .line 3
    const-string v0, "fgx4ZAh3bo1ccA58bwIYjQ==\n"

    const-string v1, "ICtQWzIrMqo=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ｋ:Ljava/util/regex/Pattern;

    .line 4
    const-string v0, "K2u91pXOHaVba73Wlc4d\n"

    const-string v1, "dTCN+6yTNvk=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﻛ:Ljava/util/regex/Pattern;

    .line 5
    const-string v0, "mTIvv8z9Eg==\n"

    const-string v1, "x2kfkvWgOXw=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﻐ:Ljava/util/regex/Pattern;

    .line 6
    const-string v0, "M7CptaR+gxFJtJXDvxLUCkCx+LXnG/FlMMGUtr1Tzzgew/e5gheH\n"

    const-string v1, "bevImN4/rks=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﻏ:Ljava/util/regex/Pattern;

    .line 8
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ẛ;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ẛ;-><init>()V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ẛ;

    return-void
.end method

.method public static ﾒ(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 282
    sget-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﱡ:Z

    if-eqz v0, :cond_1

    .line 283
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ẛ;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 284
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Matcher;

    if-nez v1, :cond_0

    .line 286
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 287
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 293
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p2, p0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 294
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 295
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result p0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;-><init>()V

    .line 5
    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit v0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 8
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_16

    .line 9
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v3, 0x1

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    if-eqz v6, :cond_2

    .line 13
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    const/16 v8, 0xa

    if-eq v4, v8, :cond_15

    const/16 v8, 0x5b

    if-eq v4, v8, :cond_13

    const/16 v8, 0x5d

    if-eq v4, v8, :cond_13

    const/16 v8, 0x21

    if-eq v4, v8, :cond_10

    const/16 v8, 0x22

    const/4 v9, 0x0

    if-eq v4, v8, :cond_e

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_6

    .line 14
    :pswitch_0
    iget-boolean v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾒ:Z

    if-nez v3, :cond_3

    .line 15
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;Ljava/lang/String;)V

    goto :goto_3

    .line 17
    :cond_3
    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾇ:[Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    aget-object v3, v3, v4

    .line 18
    :goto_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :pswitch_1
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_13

    .line 19
    invoke-virtual {v1, v4, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾒ(CC)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :pswitch_2
    const/16 v7, 0x2b

    if-ne v6, v7, :cond_4

    .line 20
    invoke-virtual {v1, v4, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾒ(CC)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 21
    :cond_4
    iget-boolean v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾒ:Z

    if-nez v3, :cond_5

    .line 22
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;Ljava/lang/String;)V

    goto :goto_4

    .line 24
    :cond_5
    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾇ:[Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    aget-object v3, v3, v4

    .line 25
    :goto_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 78
    :pswitch_3
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ｋ:Ljava/util/regex/Pattern;

    invoke-static {v4, p2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﾒ(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    const-string v6, "VPGDY2Qz\n"

    const-string v7, "GJT7BhYcF24=\n"

    invoke-static {v6, v7, v4, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ϙ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p4lao2BDWTmQiEGidUNaLJCSRqsyAl14kpRbpWYKRjbC\n"

    const-string v8, "4vsozBJjKVg=\n"

    invoke-static {v7, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 83
    const-string v6, "YJu8OQ==\n"

    const-string v7, "QPLSGRTVSJU=\n"

    invoke-static {v6, v7, v3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ϙ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-static {v4, v3, v9, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ﹻ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;)V

    goto/16 :goto_c

    .line 85
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_7

    .line 87
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 88
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾇ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 90
    :cond_7
    invoke-virtual {v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ｋ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    goto/16 :goto_7

    :pswitch_4
    if-ne v6, v4, :cond_8

    .line 103
    invoke-virtual {v1, v4, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾒ(CC)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 108
    :cond_8
    :goto_6
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_9

    goto/16 :goto_c

    .line 120
    :cond_9
    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﾒ:Ljava/util/regex/Pattern;

    invoke-static {v6, p2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﾒ(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 121
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 122
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    .line 123
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_a

    .line 124
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﻏ:Ljava/util/regex/Pattern;

    invoke-static {v4, p2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﾒ(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 126
    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;

    invoke-direct {v5, v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    goto/16 :goto_8

    .line 131
    :cond_a
    invoke-virtual {v1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﻛ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    goto/16 :goto_8

    .line 135
    :cond_b
    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﻛ:Ljava/util/regex/Pattern;

    invoke-static {v6, p2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﾒ(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 136
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 137
    invoke-virtual {v1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    goto/16 :goto_8

    .line 141
    :cond_c
    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﻐ:Ljava/util/regex/Pattern;

    invoke-static {v6, p2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﾒ(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 142
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 143
    invoke-virtual {v1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾇ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    goto/16 :goto_8

    .line 147
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    const-string v7, "kQuENxtE\n"

    const-string v8, "3W78UmlrCQs=\n"

    invoke-static {v7, v8, v6, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ϙ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DZJu0Pk3mOkxhnnRujuX5irc\n"

    const-string v10, "WPwctZpY/4c=\n"

    invoke-static {v8, v10}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "Mzqw6OivVaJnMqumuA==\n"

    const-string v8, "E1vEyJjAJss=\n"

    invoke-static {v7, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 150
    const-string v4, "NCNSEA==\n"

    const-string v7, "FEo8MG8Jt2Q=\n"

    invoke-static {v4, v7, v3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ϙ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-static {v6, v3, v9, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ﹻ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;)V

    goto/16 :goto_c

    .line 152
    :cond_e
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﾇ:Ljava/util/regex/Pattern;

    invoke-static {v4, p2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﾒ(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    const-string v6, "mJugkn7f\n"

    const-string v7, "1P7Y9wzwZb0=\n"

    invoke-static {v6, v7, v4, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ϙ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "yeLOXutTNaL+49Vf/lM2t/750la5EjHj/P/PWO0aKq2s\n"

    const-string v8, "jJC8MZlzRcM=\n"

    invoke-static {v7, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 157
    const-string v6, "8wW4pQ==\n"

    const-string v7, "02zWhfRMSmE=\n"

    invoke-static {v6, v7, v3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ϙ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-static {v4, v3, v9, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ﹻ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;)V

    goto :goto_c

    .line 159
    :cond_f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-virtual {v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ｋ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    :goto_7
    add-int/lit8 v4, v4, 0x2

    :goto_8
    add-int/2addr v3, v4

    goto/16 :goto_0

    :cond_10
    :pswitch_5
    const/16 v7, 0x3d

    if-ne v6, v7, :cond_11

    .line 162
    invoke-virtual {v1, v4, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾒ(CC)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_0

    .line 163
    :cond_11
    iget-boolean v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾒ:Z

    if-nez v3, :cond_12

    .line 164
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;Ljava/lang/String;)V

    goto :goto_a

    .line 166
    :cond_12
    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾇ:[Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    aget-object v3, v3, v4

    .line 167
    :goto_a
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 168
    :cond_13
    :pswitch_6
    iget-boolean v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾒ:Z

    if-nez v3, :cond_14

    .line 169
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;Ljava/lang/String;)V

    goto :goto_b

    .line 171
    :cond_14
    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾇ:[Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    aget-object v3, v3, v4

    .line 172
    :goto_b
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_c
    move v3, v5

    goto/16 :goto_0

    :cond_16
    return-object v0

    :catchall_0
    move-exception p0

    .line 281
    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_6
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
