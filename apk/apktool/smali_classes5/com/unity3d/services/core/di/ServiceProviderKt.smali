.class public final Lcom/unity3d/services/core/di/ServiceProviderKt;
.super Ljava/lang/Object;
.source "ServiceProvider.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServiceProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceProvider.kt\ncom/unity3d/services/core/di/ServiceProviderKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1456:1\n1#2:1457\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "provideGatewayUrl",
        "Lcom/unity3d/ads/core/data/model/GatewayUrl;",
        "reader",
        "Lcom/unity3d/ads/core/configuration/AndroidManifestStringPropertyReader;",
        "(Lcom/unity3d/ads/core/configuration/AndroidManifestStringPropertyReader;)Ljava/lang/String;",
        "unity-ads_defaultRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$provideGatewayUrl(Lcom/unity3d/ads/core/configuration/AndroidManifestStringPropertyReader;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/unity3d/services/core/di/ServiceProviderKt;->provideGatewayUrl(Lcom/unity3d/ads/core/configuration/AndroidManifestStringPropertyReader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final provideGatewayUrl(Lcom/unity3d/ads/core/configuration/AndroidManifestStringPropertyReader;)Ljava/lang/String;
    .locals 1

    .line 368
    const-string v0, "GatewayUrl"

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/core/configuration/AndroidManifestStringPropertyReader;->getPropertyByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 369
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    .line 370
    :cond_1
    const-string p0, "https://gateway.unityads.unity3d.com/v1"

    .line 367
    :goto_1
    invoke-static {p0}, Lcom/unity3d/ads/core/data/model/GatewayUrl;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
