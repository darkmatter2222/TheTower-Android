.class public final Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;
.super Ljava/lang/Object;
.source "AndroidMediationRepository.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/repository/MediationRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000c\u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000bR\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;",
        "Lcom/unity3d/ads/core/data/repository/MediationRepository;",
        "mediationDataSource",
        "Lcom/unity3d/ads/core/data/datasource/MediationDataSource;",
        "mediationProviderParser",
        "Lcom/unity3d/ads/core/domain/MediationProviderParser;",
        "<init>",
        "(Lcom/unity3d/ads/core/data/datasource/MediationDataSource;Lcom/unity3d/ads/core/domain/MediationProviderParser;)V",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "version",
        "getVersion",
        "adapterVersion",
        "getAdapterVersion",
        "mediationProvider",
        "Lkotlin/Function0;",
        "Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;",
        "getMediationProvider",
        "()Lkotlin/jvm/functions/Function0;",
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


# instance fields
.field private final mediationDataSource:Lcom/unity3d/ads/core/data/datasource/MediationDataSource;

.field private final mediationProviderParser:Lcom/unity3d/ads/core/domain/MediationProviderParser;


# direct methods
.method public static synthetic $r8$lambda$iAalYlCjntXkG1L-PC5WK2oCnls(Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;->_get_mediationProvider_$lambda$0(Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/data/datasource/MediationDataSource;Lcom/unity3d/ads/core/domain/MediationProviderParser;)V
    .locals 1

    const-string v0, "mediationDataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationProviderParser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;->mediationDataSource:Lcom/unity3d/ads/core/data/datasource/MediationDataSource;

    .line 9
    iput-object p2, p0, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;->mediationProviderParser:Lcom/unity3d/ads/core/domain/MediationProviderParser;

    return-void
.end method

.method private static final _get_mediationProvider_$lambda$0(Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;->mediationProviderParser:Lcom/unity3d/ads/core/domain/MediationProviderParser;

    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/unity3d/ads/core/domain/MediationProviderParser;->invoke(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;->mediationDataSource:Lcom/unity3d/ads/core/data/datasource/MediationDataSource;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/datasource/MediationDataSource;->getAdapterVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediationProvider()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;->mediationDataSource:Lcom/unity3d/ads/core/data/datasource/MediationDataSource;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/datasource/MediationDataSource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;->mediationDataSource:Lcom/unity3d/ads/core/data/datasource/MediationDataSource;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/datasource/MediationDataSource;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
