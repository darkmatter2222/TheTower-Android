.class public Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public ﻐ:Lorg/json/JSONObject;

.field public ﻛ:Ljava/lang/String;

.field public ｋ:D

.field public ﾇ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

.field public ﾒ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->UNKNOWN:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    .line 3
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->UNKNOWN:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    return-void
.end method


# virtual methods
.method public build()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    iget-wide v3, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;->ｋ:D

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;->ﻛ:Ljava/lang/String;

    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;->ﻐ:Lorg/json/JSONObject;

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;-><init>(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;DLjava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public setAdType(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    return-object p0
.end method

.method public setCustomData(Lorg/json/JSONObject;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;->ﻐ:Lorg/json/JSONObject;

    :cond_0
    return-object p0
.end method

.method public setMediationNetwork(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    return-object p0
.end method

.method public setPlacement(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;->ﻛ:Ljava/lang/String;

    return-object p0
.end method

.method public setRevenue(D)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;->ｋ:D

    return-object p0
.end method
