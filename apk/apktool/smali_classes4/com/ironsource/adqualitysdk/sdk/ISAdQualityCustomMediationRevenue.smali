.class public Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final ﻐ:Lorg/json/JSONObject;

.field public final ﻛ:Ljava/lang/String;

.field public final ｋ:D

.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;DLjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    .line 3
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    .line 4
    iput-wide p3, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->ｋ:D

    .line 5
    iput-object p5, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->ﻛ:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->ﻐ:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getAdType()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    return-object v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->ﻐ:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMediationNetwork()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    return-object v0
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->ﻛ:Ljava/lang/String;

    return-object v0
.end method

.method public getRevenue()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->ｋ:D

    return-wide v0
.end method
