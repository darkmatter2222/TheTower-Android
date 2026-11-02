.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

.field public final synthetic ﻛ:Ljava/lang/String;

.field public final synthetic ｋ:Ljava/lang/String;

.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ｋ:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﻛ:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    const-string v1, "hzk=\n"

    const-string v2, "4kHPpf8Jfo8=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

    .line 4
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;

    .line 5
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ｋ:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

    .line 8
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;

    .line 9
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ｋ()Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    .line 11
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

    .line 12
    const-string v4, "FSG8kkQjqxg=\n"

    const-string v5, "UWjv0wZv7lw=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    const-string v1, "zzOp8stTPGP+Eabyz1ctfg==\n"

    const-string v2, "jFzHnK4wSAw=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

    .line 14
    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;

    .line 15
    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ﻛ:Ljava/lang/String;

    .line 16
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "0Rm+iMXr2m6eCPGP2K7dc4Ibs4rO6g==\n"

    const-string v5, "8XrR5quOuRo=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_6

    .line 17
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ｋ:Ljava/lang/String;

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    .line 18
    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ԅ;

    invoke-direct {v4, v3, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ԅ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ь;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/צ;)V

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    goto/16 :goto_1

    .line 19
    :cond_0
    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ｋ:Ljava/lang/String;

    .line 20
    invoke-virtual {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 21
    const-string v1, "B9La2p/cy0428NXam9jaUw==\n"

    const-string v4, "RL20tPq/vyE=\n"

    invoke-static {v1, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

    .line 22
    iget-object v5, v5, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;

    .line 23
    iget-object v5, v5, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ﻛ:Ljava/lang/String;

    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/glh2YEBneixGC7Ajhfe+LcZb9WDAZq8uBhh2s8Qlvn+GWvFmQGM\n"

    const-string v6, "3moOt+9k/pw=\n"

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    .line 25
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ｋ:Ljava/lang/String;

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    .line 26
    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/ԅ;

    invoke-direct {v5, v3, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ԅ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ь;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/צ;)V

    invoke-static {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 27
    :cond_1
    const-string v1, "wjXL\n"

    const-string v3, "pla4dbSBfrQ=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 28
    :cond_2
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 31
    monitor-enter v2

    .line 32
    :try_start_0
    iget-object v4, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾒ:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 33
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->טּ:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 34
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ףּ:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 38
    iget-object v2, v4, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;

    .line 39
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ﻏ:Ljava/lang/String;

    .line 40
    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;->ﾒ(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 41
    iget-object v2, v4, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;

    .line 42
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ﺙ:Ljava/lang/String;

    .line 43
    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;->ﾒ(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_3

    goto/16 :goto_0

    .line 44
    :cond_3
    const-string v2, "N55c\n"

    const-string v4, "ROgvNWJDO40=\n"

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz v3, :cond_4

    .line 45
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ｋ:Ljava/lang/String;

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ب;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

    .line 46
    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/ւ;

    invoke-direct {v5, v3, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ւ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ь;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ب;)V

    invoke-static {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 47
    :cond_4
    const-string v2, "kpOId4Hx7XqjsYd3hfX8Zw==\n"

    const-string v3, "0fzmGeSSmRU=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﻛ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 48
    const-string v3, "pGfQU1+jqsb3Xft2Xw==\n"

    const-string v5, "hDSUGH/Vz7Q=\n"

    invoke-static {v3, v5, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᖟ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    const-string v2, "5Vqfe37Nb7q8Vph7Y9dr6qpBmD50gnnj5UeEPjDBdPSrVo8vf9A=\n"

    const-string v3, "xTPsWxCiG5o=\n"

    invoke-static {v2, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 508
    invoke-static/range {v4 .. v9}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    .line 509
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﻛ()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 510
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;

    move-result-object v1

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;->AD_NETWORK_VERSION_NOT_SUPPORTED_YET:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

    .line 511
    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;

    .line 512
    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ﻛ:Ljava/lang/String;

    .line 513
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dNKlhTNPjWwn6I6gMw==\n"

    const-string v5, "VIHhzhM56B4=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

    .line 514
    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;

    .line 515
    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ｋ()Ljava/lang/String;

    move-result-object v4

    .line 516
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 517
    const-string v4, "ELkpWd7n51JJtS5Zw/3jAl+iLhzUqPELEKQyHJDr/BxetTkN3/o=\n"

    const-string v5, "MNBaebCIk3I=\n"

    invoke-static {v4, v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 978
    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/จ;

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/จ;->adQualitySdkInitFailed(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V

    goto :goto_1

    .line 979
    :cond_5
    :goto_0
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ᒎ;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᒎ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 1001
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    :cond_6
    :goto_1
    const-string v1, "La8=\n"

    const-string v2, "SNdhN8sdgQw=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    .line 1012
    monitor-exit v2

    throw v0
.end method

.method public final ﾒ(Ljava/lang/Throwable;)V
    .locals 8

    .line 1023
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    .line 1024
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ｋ:Ljava/lang/String;

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ب;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

    .line 1026
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ւ;

    invoke-direct {v3, v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ւ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ь;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ب;)V

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 1027
    :cond_0
    const-string v0, "aJ+TBvdT87ZZvZwG81fiqw==\n"

    const-string v1, "K/D9aJIwh9k=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "J7kFW6boH+0Lvx5VuKEM6gysV1e7phjmAb8YRvQ=\n"

    const-string v3, "Yst3NNTIdoM=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒌ;->ｋ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v5, 0x1

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    return-void
.end method
