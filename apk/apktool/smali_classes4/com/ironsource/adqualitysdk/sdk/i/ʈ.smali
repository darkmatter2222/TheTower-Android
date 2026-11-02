.class public final Lcom/ironsource/adqualitysdk/sdk/i/ʈ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ｋ:Ljava/lang/String;


# instance fields
.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

.field public ﾒ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ZauymW4ovgNPvJ6CTjOkHGG8uZ5cM6IeQou4gVgpvhQ=\n"

    const-string v1, "LNnd9z1Hy3E=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ʈ;->ｋ:Ljava/lang/String;

    const-string v0, "Ik0IzlnWvH0hBgPJe9emZiBFPsJO\n"

    const-string v1, "Tyhspzii1RI=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "YoG8Ugwi6DhhyrdVITP3MmO0tFoUBOQh\n"

    const-string v1, "D+TYO21WgVc=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "dhewL7/lzZB1XLcqu/DKvG4BoCmzw8GJ\n"

    const-string v1, "G3LURt6RpP8=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ʈ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    .line 3
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/Ϋ;

    invoke-direct {p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/Ϋ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ʈ;)V

    .line 17
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;

    move-result-object v0

    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0

    throw p1
.end method

.method public static ﾒ(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;)Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->ADMOB:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    if-ne p0, v0, :cond_0

    .line 14
    const-string p0, "cyWtwYg=\n"

    const-string v0, "EkHArupPn48=\n"

    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_0
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->DT_FAIR_BID:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    if-ne p0, v0, :cond_1

    .line 16
    const-string p0, "bfuQhj5BeQ==\n"

    const-string v0, "C5r59FwoHTM=\n"

    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 17
    :cond_1
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->HELIUM:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    if-ne p0, v0, :cond_2

    .line 18
    const-string p0, "q4UaP4qA\n"

    const-string v0, "w+B2Vv/tj6s=\n"

    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19
    :cond_2
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->LEVEL_PLAY:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    if-ne p0, v0, :cond_3

    .line 20
    const-string p0, "1R3XlqvPFSnPCw==\n"

    const-string v0, "pmin89m8ekc=\n"

    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 21
    :cond_3
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->MAX:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    if-ne p0, v0, :cond_4

    .line 22
    const-string p0, "XKfSjxtZXxM=\n"

    const-string v0, "Pdei43QvNn0=\n"

    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :cond_4
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->UNITY:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    if-ne p0, v0, :cond_5

    .line 24
    const-string p0, "Fat4mUv95Fw=\n"

    const-string v0, "YMUR7TKcgC8=\n"

    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
    :cond_5
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->SELF_MEDIATED:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    if-ne p0, v0, :cond_6

    .line 26
    const-string p0, "vWeRKsdBNoKvdpgo\n"

    const-string v0, "zgL9TKokUus=\n"

    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 27
    :cond_6
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->OTHER:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    if-ne p0, v0, :cond_7

    .line 28
    const-string p0, "8pLep9Q=\n"

    const-string v0, "nea2wqYIoo4=\n"

    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 30
    :cond_7
    const-string p0, ""

    return-object p0
.end method

.method public static ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ʈ;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺭ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﺭ;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺭ;->ﻏ:Z

    .line 4
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->getRevenue()D

    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺭ;->ｋ:D

    .line 6
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->getMediationNetwork()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ʈ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺭ;->ﾒ:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->getPlacement()Ljava/lang/String;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺭ;->ﻐ:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->getCustomData()Lorg/json/JSONObject;

    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺭ;->ﺙ:Lorg/json/JSONObject;

    .line 12
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﺭ;->ﾇ()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
