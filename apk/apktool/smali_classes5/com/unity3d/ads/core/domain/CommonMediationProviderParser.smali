.class public final Lcom/unity3d/ads/core/domain/CommonMediationProviderParser;
.super Ljava/lang/Object;
.source "CommonMediationProviderParser.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/MediationProviderParser;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0096\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/CommonMediationProviderParser;",
        "Lcom/unity3d/ads/core/domain/MediationProviderParser;",
        "<init>",
        "()V",
        "invoke",
        "Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;",
        "mediationProvider",
        "",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .locals 2

    if-eqz p1, :cond_5

    .line 9
    const-string v0, "AppLovinSdk_"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_MAX:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "AdMob"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_ADMOB:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    goto :goto_0

    .line 11
    :cond_1
    const-string v0, "MAX"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_MAX:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    goto :goto_0

    .line 12
    :cond_2
    const-string v0, "ironSource"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_LEVELPLAY:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    goto :goto_0

    .line 13
    :cond_3
    sget-object p1, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_CUSTOM:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    :goto_0
    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    return-object p1

    .line 15
    :cond_5
    :goto_1
    sget-object p1, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_UNSPECIFIED:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    return-object p1
.end method
