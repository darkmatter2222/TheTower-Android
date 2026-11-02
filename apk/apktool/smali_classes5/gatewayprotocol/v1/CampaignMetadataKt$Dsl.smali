.class public final Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;
.super Ljava/lang/Object;
.source "CampaignMetadataKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignMetadataKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/CampaignMetadataKt$Dsl$AssetsToCacheProxy;,
        Lgatewayprotocol/v1/CampaignMetadataKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u001c\n\u0002\u0008\u0012\u0008\u0007\u0018\u0000 42\u00020\u0001:\u000245B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0017\u001a\u00020\u0010J%\u0010\u001e\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010\u0008\u001a\u00020\u001aH\u0007\u00a2\u0006\u0002\u0008\u001fJ&\u0010 \u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010\u0008\u001a\u00020\u001aH\u0087\n\u00a2\u0006\u0002\u0008!J+\u0010\"\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u001a0$H\u0007\u00a2\u0006\u0002\u0008%J,\u0010 \u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u001a0$H\u0087\n\u00a2\u0006\u0002\u0008&J.\u0010\'\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010(\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u001aH\u0087\u0002\u00a2\u0006\u0002\u0008)J\u001d\u0010*\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u0019H\u0007\u00a2\u0006\u0002\u0008+J\u0006\u0010/\u001a\u00020\u0010J\u0006\u00103\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\u00118G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001d\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00198F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR$\u0010,\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008-\u0010\u000c\"\u0004\u0008.\u0010\u000eR$\u00100\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00081\u0010\u000c\"\u0004\u00082\u0010\u000e\u00a8\u00066"
    }
    d2 = {
        "Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;",
        "value",
        "",
        "campaignStateDataVersion",
        "getCampaignStateDataVersion",
        "()I",
        "setCampaignStateDataVersion",
        "(I)V",
        "clearCampaignStateDataVersion",
        "",
        "Lcom/google/protobuf/ByteString;",
        "campaignStateData",
        "getCampaignStateData",
        "()Lcom/google/protobuf/ByteString;",
        "setCampaignStateData",
        "(Lcom/google/protobuf/ByteString;)V",
        "clearCampaignStateData",
        "assetsToCache",
        "Lcom/google/protobuf/kotlin/DslList;",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
        "Lgatewayprotocol/v1/CampaignMetadataKt$Dsl$AssetsToCacheProxy;",
        "getAssetsToCache",
        "()Lcom/google/protobuf/kotlin/DslList;",
        "add",
        "addAssetsToCache",
        "plusAssign",
        "plusAssignAssetsToCache",
        "addAll",
        "values",
        "",
        "addAllAssetsToCache",
        "plusAssignAllAssetsToCache",
        "set",
        "index",
        "setAssetsToCache",
        "clear",
        "clearAssetsToCache",
        "adDataRefreshDelayMs",
        "getAdDataRefreshDelayMs",
        "setAdDataRefreshDelayMs",
        "clearAdDataRefreshDelayMs",
        "ttlSeconds",
        "getTtlSeconds",
        "setTtlSeconds",
        "clearTtlSeconds",
        "Companion",
        "AssetsToCacheProxy",
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


# static fields
.field public static final Companion:Lgatewayprotocol/v1/CampaignMetadataKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->Companion:Lgatewayprotocol/v1/CampaignMetadataKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;-><init>(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .locals 2

    .line 28
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object v0
.end method

.method public final synthetic addAllAssetsToCache(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->addAllAssetsToCache(Ljava/lang/Iterable;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    return-void
.end method

.method public final synthetic addAssetsToCache(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->addAssetsToCache(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    return-void
.end method

.method public final clearAdDataRefreshDelayMs()V
    .locals 1

    .line 157
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->clearAdDataRefreshDelayMs()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    return-void
.end method

.method public final synthetic clearAssetsToCache(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->clearAssetsToCache()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    return-void
.end method

.method public final clearCampaignStateData()V
    .locals 1

    .line 61
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->clearCampaignStateData()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    return-void
.end method

.method public final clearCampaignStateDataVersion()V
    .locals 1

    .line 44
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->clearCampaignStateDataVersion()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    return-void
.end method

.method public final clearTtlSeconds()V
    .locals 1

    .line 182
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->clearTtlSeconds()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    return-void
.end method

.method public final getAdDataRefreshDelayMs()I
    .locals 1

    .line 144
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->getAdDataRefreshDelayMs()I

    move-result v0

    return v0
.end method

.method public final synthetic getAssetsToCache()Lcom/google/protobuf/kotlin/DslList;
    .locals 3

    .line 75
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 76
    iget-object v1, p0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-virtual {v1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->getAssetsToCacheList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getAssetsToCacheList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getCampaignStateData()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 52
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->getCampaignStateData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getCampaignStateData(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCampaignStateDataVersion()I
    .locals 1

    .line 35
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->getCampaignStateDataVersion()I

    move-result v0

    return v0
.end method

.method public final getTtlSeconds()I
    .locals 1

    .line 169
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->getTtlSeconds()I

    move-result v0

    return v0
.end method

.method public final synthetic plusAssignAllAssetsToCache(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            "Lgatewayprotocol/v1/CampaignMetadataKt$Dsl$AssetsToCacheProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->addAllAssetsToCache(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignAssetsToCache(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            "Lgatewayprotocol/v1/CampaignMetadataKt$Dsl$AssetsToCacheProxy;",
            ">;",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->addAssetsToCache(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-void
.end method

.method public final setAdDataRefreshDelayMs(I)V
    .locals 1

    .line 147
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->setAdDataRefreshDelayMs(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    return-void
.end method

.method public final synthetic setAssetsToCache(Lcom/google/protobuf/kotlin/DslList;ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->setAssetsToCache(ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    return-void
.end method

.method public final setCampaignStateData(Lcom/google/protobuf/ByteString;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->setCampaignStateData(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    return-void
.end method

.method public final setCampaignStateDataVersion(I)V
    .locals 1

    .line 38
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->setCampaignStateDataVersion(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    return-void
.end method

.method public final setTtlSeconds(I)V
    .locals 1

    .line 172
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->setTtlSeconds(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    return-void
.end method
