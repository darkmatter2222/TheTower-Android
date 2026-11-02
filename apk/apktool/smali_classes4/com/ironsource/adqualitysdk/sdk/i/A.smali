.class public final Lcom/ironsource/adqualitysdk/sdk/i/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﭖ:Ljava/util/List;

.field public final ﭴ:Ljava/util/List;

.field public final ﭸ:Ljava/util/List;

.field public final ﮉ:Ljava/util/List;

.field public final ﮌ:Z

.field public final ﮐ:Z

.field public final ﱟ:Z

.field public final ﱡ:Z

.field public final ﺙ:Z

.field public final ﻏ:Z

.field public final ﻐ:Ljava/lang/String;

.field public final ﻛ:Z

.field public final ｋ:Ljava/lang/String;

.field public final ﾇ:Ljava/lang/String;

.field public final ﾒ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﮉ:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭸ:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭴ:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭖ:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﮉ:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭸ:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭴ:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭖ:Ljava/util/List;

    .line 15
    const-string v0, "jQ7m87YdPEONGcPUsgca\n"

    const-string v1, "7GqwmtNqfy8=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﾒ:Ljava/lang/String;

    .line 17
    const-string v0, "yFF3icAcFUDKXkCHwA==\n"

    const-string v1, "qTUh4KVrRSE=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﾇ:Ljava/lang/String;

    .line 19
    const-string v0, "sU+aje9T6U64SA==\n"

    const-string v1, "2zzO4qY9gys=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ｋ:Ljava/lang/String;

    .line 21
    const-string v0, "jmGRVlGgbKGeZbdtXadUvA==\n"

    const-string v1, "+xL0ATTCOsg=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 22
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﻛ:Z

    .line 23
    const-string v0, "yxi6Tw0Vw43MBLJ9KxvpgNAf\n"

    const-string v1, "vmvfGGh3gOU=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 24
    const-string v0, "MV+gB3priF08\n"

    const-string v1, "RC3MVwgO7jQ=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﻐ:Ljava/lang/String;

    .line 26
    const-string v0, "kFmINW9u9fG4Tg==\n"

    const-string v1, "+SrGVBsHg5Q=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 27
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﻏ:Z

    .line 28
    const-string v0, "Vq045OG/hJ1UgybrwZqEnUSx\n"

    const-string v1, "MMJKh4Ts4fM=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 29
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﺙ:Z

    .line 30
    const-string v0, "2lPCdL9X+6nN\n"

    const-string v1, "qDahAc0kkt8=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 31
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﱡ:Z

    .line 32
    const-string v0, "STDFaoxpY7JfMclQmQ==\n"

    const-string v1, "PEOgIO0fAsE=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 33
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﱟ:Z

    .line 34
    const-string v0, "yF6sNMvU2hL3Xg==\n"

    const-string v2, "vS3JcbOgqHM=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 35
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﮐ:Z

    .line 36
    const-string v0, "gy70w/cmpeOaOezT3Tub1Joyz8jgMLfR\n"

    const-string v2, "81yboJJV1rU=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 37
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﮌ:Z

    .line 38
    const-string v0, "pmXcMRnM9A==\n"

    const-string v1, "0Ay5RlCoh08=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    .line 40
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 41
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 42
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :cond_2
    if-eqz v3, :cond_3

    .line 43
    iput-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﮉ:Ljava/util/List;

    .line 44
    :cond_3
    const-string v0, "RgQ1/IXCS+FCFBX6usxR51UC\n"

    const-string v3, "J2dBlfOrP4g=\n"

    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    .line 46
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 47
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 48
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move-object v3, v2

    :cond_6
    if-eqz v3, :cond_7

    .line 49
    iput-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭸ:Ljava/util/List;

    .line 50
    :cond_7
    const-string v0, "QL2EOVC2KOFRuo48Rg==\n"

    const-string v3, "NtThTiPiR6g=\n"

    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 51
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    .line 52
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 53
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 54
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    move-object v3, v2

    :cond_a
    if-eqz v3, :cond_b

    .line 55
    iput-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭴ:Ljava/util/List;

    .line 56
    :cond_b
    const-string v0, "vplGf3f2KTCyvkJpdA==\n"

    const-string v3, "3fUnDASTWmQ=\n"

    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 59
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 60
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    if-eqz v2, :cond_e

    .line 61
    iput-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭖ:Ljava/util/List;

    :cond_e
    return-void
.end method
