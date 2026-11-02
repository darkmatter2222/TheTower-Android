.class public final Lcom/unity3d/ads/core/domain/AndroidGetUniversalRequestCommonAttributes;
.super Ljava/lang/Object;
.source "AndroidGetUniversalRequestCommonAttributes.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetUniversalRequestCommonAttributes;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidGetUniversalRequestCommonAttributes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetUniversalRequestCommonAttributes.kt\ncom/unity3d/ads/core/domain/AndroidGetUniversalRequestCommonAttributes\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,23:1\n1#2:24\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/AndroidGetUniversalRequestCommonAttributes;",
        "Lcom/unity3d/ads/core/domain/GetUniversalRequestCommonAttributes;",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "coherenceLibraryManager",
        "Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;",
        "<init>",
        "(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;)V",
        "invoke",
        "Lcom/google/protobuf/ByteString;",
        "isInitializationRequest",
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


# instance fields
.field private final coherenceLibraryManager:Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;)V
    .locals 1

    const-string v0, "sessionRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coherenceLibraryManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetUniversalRequestCommonAttributes;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 9
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidGetUniversalRequestCommonAttributes;->coherenceLibraryManager:Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;

    return-void
.end method


# virtual methods
.method public invoke(Z)Lcom/google/protobuf/ByteString;
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetUniversalRequestCommonAttributes;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->getEnableDataLibraryRequestAttributes()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 20
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetUniversalRequestCommonAttributes;->coherenceLibraryManager:Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;

    invoke-interface {v0, p1}, Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;->getCommonAttributes(I)[B

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method
