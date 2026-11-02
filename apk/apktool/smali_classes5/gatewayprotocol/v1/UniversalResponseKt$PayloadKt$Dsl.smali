.class public final Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;
.super Ljava/lang/Object;
.source "UniversalResponseKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 R2\u00020\u0001:\u0001RB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0019\u001a\u00020\u0010J\u0006\u0010\u001a\u001a\u00020\u0012J\u0006\u0010!\u001a\u00020\u0010J\u0006\u0010\"\u001a\u00020\u0012J\u0006\u0010)\u001a\u00020\u0010J\u0006\u0010*\u001a\u00020\u0012J\u0006\u00101\u001a\u00020\u0010J\u0006\u00102\u001a\u00020\u0012J\u0006\u00109\u001a\u00020\u0010J\u0006\u0010:\u001a\u00020\u0012J\u0006\u0010C\u001a\u00020\u0010J\u0006\u0010D\u001a\u00020\u0012J\u0006\u0010K\u001a\u00020\u0010J\u0006\u0010L\u001a\u00020\u0012J\u0006\u0010Q\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u00138G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0008\u001a\u00020\u001b8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010$\u001a\u00020#2\u0006\u0010\u0008\u001a\u00020#8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R$\u0010,\u001a\u00020+2\u0006\u0010\u0008\u001a\u00020+8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R$\u00104\u001a\u0002032\u0006\u0010\u0008\u001a\u0002038G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R*\u0010<\u001a\u00020;2\u0006\u0010\u0008\u001a\u00020;8G@GX\u0087\u000e\u00a2\u0006\u0012\u0012\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR$\u0010F\u001a\u00020E2\u0006\u0010\u0008\u001a\u00020E8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\u0011\u0010M\u001a\u00020N8G\u00a2\u0006\u0006\u001a\u0004\u0008O\u0010P\u00a8\u0006S"
    }
    d2 = {
        "Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;",
        "value",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;",
        "initializationResponse",
        "getInitializationResponse",
        "()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;",
        "setInitializationResponse",
        "(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V",
        "clearInitializationResponse",
        "",
        "hasInitializationResponse",
        "",
        "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;",
        "adResponse",
        "getAdResponse",
        "()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;",
        "setAdResponse",
        "(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V",
        "clearAdResponse",
        "hasAdResponse",
        "Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;",
        "adPlayerConfigResponse",
        "getAdPlayerConfigResponse",
        "()Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;",
        "setAdPlayerConfigResponse",
        "(Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V",
        "clearAdPlayerConfigResponse",
        "hasAdPlayerConfigResponse",
        "Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;",
        "adDataRefreshResponse",
        "getAdDataRefreshResponse",
        "()Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;",
        "setAdDataRefreshResponse",
        "(Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V",
        "clearAdDataRefreshResponse",
        "hasAdDataRefreshResponse",
        "Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;",
        "privacyUpdateResponse",
        "getPrivacyUpdateResponse",
        "()Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;",
        "setPrivacyUpdateResponse",
        "(Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V",
        "clearPrivacyUpdateResponse",
        "hasPrivacyUpdateResponse",
        "Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;",
        "audienceManagementResponse",
        "getAudienceManagementResponse",
        "()Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;",
        "setAudienceManagementResponse",
        "(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)V",
        "clearAudienceManagementResponse",
        "hasAudienceManagementResponse",
        "Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;",
        "rewardedOffersResponse",
        "getRewardedOffersResponse$annotations",
        "()V",
        "getRewardedOffersResponse",
        "()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;",
        "setRewardedOffersResponse",
        "(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)V",
        "clearRewardedOffersResponse",
        "hasRewardedOffersResponse",
        "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;",
        "adViewerResponse",
        "getAdViewerResponse",
        "()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;",
        "setAdViewerResponse",
        "(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V",
        "clearAdViewerResponse",
        "hasAdViewerResponse",
        "valueCase",
        "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;",
        "getValueCase",
        "()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;",
        "clearValue",
        "Companion",
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
.field public static final Companion:Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->Companion:Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;-><init>(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;)V

    return-void
.end method

.method public static synthetic getRewardedOffersResponse$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Field rewardedOffersResponse is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .locals 2

    .line 169
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object v0
.end method

.method public final clearAdDataRefreshResponse()V
    .locals 1

    .line 301
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->clearAdDataRefreshResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-void
.end method

.method public final clearAdPlayerConfigResponse()V
    .locals 1

    .line 265
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->clearAdPlayerConfigResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-void
.end method

.method public final clearAdResponse()V
    .locals 1

    .line 229
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->clearAdResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-void
.end method

.method public final clearAdViewerResponse()V
    .locals 1

    .line 448
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->clearAdViewerResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-void
.end method

.method public final clearAudienceManagementResponse()V
    .locals 1

    .line 373
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->clearAudienceManagementResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-void
.end method

.method public final clearInitializationResponse()V
    .locals 1

    .line 193
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->clearInitializationResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-void
.end method

.method public final clearPrivacyUpdateResponse()V
    .locals 1

    .line 337
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->clearPrivacyUpdateResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-void
.end method

.method public final clearRewardedOffersResponse()V
    .locals 1

    .line 411
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->clearRewardedOffersResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-void
.end method

.method public final clearValue()V
    .locals 1

    .line 466
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->clearValue()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-void
.end method

.method public final getAdDataRefreshResponse()Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;
    .locals 2

    .line 288
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->getAdDataRefreshResponse()Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    move-result-object v0

    const-string v1, "getAdDataRefreshResponse(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAdPlayerConfigResponse()Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;
    .locals 2

    .line 252
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->getAdPlayerConfigResponse()Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    move-result-object v0

    const-string v1, "getAdPlayerConfigResponse(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAdResponse()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .locals 2

    .line 216
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->getAdResponse()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    move-result-object v0

    const-string v1, "getAdResponse(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAdViewerResponse()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
    .locals 2

    .line 435
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->getAdViewerResponse()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    move-result-object v0

    const-string v1, "getAdViewerResponse(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAudienceManagementResponse()Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;
    .locals 2

    .line 360
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->getAudienceManagementResponse()Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    move-result-object v0

    const-string v1, "getAudienceManagementResponse(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getInitializationResponse()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .locals 2

    .line 180
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->getInitializationResponse()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    move-result-object v0

    const-string v1, "getInitializationResponse(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPrivacyUpdateResponse()Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;
    .locals 2

    .line 324
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->getPrivacyUpdateResponse()Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    move-result-object v0

    const-string v1, "getPrivacyUpdateResponse(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getRewardedOffersResponse()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
    .locals 2

    .line 397
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->getRewardedOffersResponse()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    move-result-object v0

    const-string v1, "getRewardedOffersResponse(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getValueCase()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;
    .locals 2

    .line 463
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->getValueCase()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    move-result-object v0

    const-string v1, "getValueCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasAdDataRefreshResponse()Z
    .locals 1

    .line 312
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->hasAdDataRefreshResponse()Z

    move-result v0

    return v0
.end method

.method public final hasAdPlayerConfigResponse()Z
    .locals 1

    .line 276
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->hasAdPlayerConfigResponse()Z

    move-result v0

    return v0
.end method

.method public final hasAdResponse()Z
    .locals 1

    .line 240
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->hasAdResponse()Z

    move-result v0

    return v0
.end method

.method public final hasAdViewerResponse()Z
    .locals 1

    .line 459
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->hasAdViewerResponse()Z

    move-result v0

    return v0
.end method

.method public final hasAudienceManagementResponse()Z
    .locals 1

    .line 384
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->hasAudienceManagementResponse()Z

    move-result v0

    return v0
.end method

.method public final hasInitializationResponse()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->hasInitializationResponse()Z

    move-result v0

    return v0
.end method

.method public final hasPrivacyUpdateResponse()Z
    .locals 1

    .line 348
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->hasPrivacyUpdateResponse()Z

    move-result v0

    return v0
.end method

.method public final hasRewardedOffersResponse()Z
    .locals 1

    .line 423
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->hasRewardedOffersResponse()Z

    move-result v0

    return v0
.end method

.method public final setAdDataRefreshResponse(Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->setAdDataRefreshResponse(Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-void
.end method

.method public final setAdPlayerConfigResponse(Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->setAdPlayerConfigResponse(Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-void
.end method

.method public final setAdResponse(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->setAdResponse(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-void
.end method

.method public final setAdViewerResponse(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->setAdViewerResponse(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-void
.end method

.method public final setAudienceManagementResponse(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->setAudienceManagementResponse(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-void
.end method

.method public final setInitializationResponse(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->setInitializationResponse(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-void
.end method

.method public final setPrivacyUpdateResponse(Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->setPrivacyUpdateResponse(Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-void
.end method

.method public final setRewardedOffersResponse(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->setRewardedOffersResponse(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-void
.end method
