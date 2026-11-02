.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0087\u0008\u0018\u00002\u00020\u0001R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0004R\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0018\u0010\u000c\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u000bR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0004R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000bR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0011R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0004R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0011R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0004R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0004R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0004R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0011\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;",
        "",
        "",
        "appSetId",
        "Ljava/lang/String;",
        "",
        "appSetIdScope",
        "Ljava/lang/Integer;",
        "perAppIdV1",
        "",
        "paidV1CreationTimeMilliseconds",
        "Ljava/lang/Long;",
        "paidV1CreationTimeSeconds",
        "perAppIdV2",
        "paidV2CreationTimeMilliseconds",
        "",
        "paidV2UserOption",
        "Ljava/lang/Boolean;",
        "paidV2PubOption",
        "adId",
        "isLimitedAdTracking",
        "idTypeParameter",
        "adsId",
        "amazonFireAdId",
        "isAmazonFireAdIdLimitAdTracking",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public adId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rdid"
    .end annotation
.end field

.field public adsId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "adsid"
    .end annotation
.end field

.field public amazonFireAdId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "afai"
    .end annotation
.end field

.field public appSetId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pvid"
    .end annotation
.end field

.field public appSetIdScope:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pvid_s"
    .end annotation
.end field

.field public idTypeParameter:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "idtype"
    .end annotation
.end field

.field public isAmazonFireAdIdLimitAdTracking:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_afai_lat"
    .end annotation
.end field

.field public isLimitedAdTracking:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_lat"
    .end annotation
.end field

.field public paidV1CreationTimeMilliseconds:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paidv1_creation_time_android"
    .end annotation
.end field

.field public paidV1CreationTimeSeconds:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paidv1_creation_time_android_seconds"
    .end annotation
.end field

.field public paidV2CreationTimeMilliseconds:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paidv2_creation_time_android"
    .end annotation
.end field

.field public paidV2PubOption:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paidv2_pub_option_android"
    .end annotation
.end field

.field public paidV2UserOption:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paidv2_user_option_android"
    .end annotation
.end field

.field public perAppIdV1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paidv1_id_android"
    .end annotation
.end field

.field public perAppIdV2:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paidv2_id_android"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 16

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    .line 25
    invoke-direct/range {v0 .. v15}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->appSetId:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->appSetIdScope:Ljava/lang/Integer;

    .line 6
    iput-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->perAppIdV1:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV1CreationTimeMilliseconds:Ljava/lang/Long;

    .line 10
    iput-object p5, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV1CreationTimeSeconds:Ljava/lang/Long;

    .line 13
    iput-object p6, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->perAppIdV2:Ljava/lang/String;

    .line 14
    iput-object p7, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV2CreationTimeMilliseconds:Ljava/lang/Long;

    .line 17
    iput-object p8, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV2UserOption:Ljava/lang/Boolean;

    .line 18
    iput-object p9, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV2PubOption:Ljava/lang/Boolean;

    .line 19
    iput-object p10, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->adId:Ljava/lang/String;

    .line 20
    iput-object p11, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->isLimitedAdTracking:Ljava/lang/Boolean;

    .line 21
    iput-object p12, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->idTypeParameter:Ljava/lang/String;

    .line 22
    iput-object p13, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->adsId:Ljava/lang/String;

    .line 23
    iput-object p14, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->amazonFireAdId:Ljava/lang/String;

    .line 24
    iput-object p15, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->isAmazonFireAdIdLimitAdTracking:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->appSetId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->appSetId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->appSetIdScope:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->appSetIdScope:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->perAppIdV1:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->perAppIdV1:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV1CreationTimeMilliseconds:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV1CreationTimeMilliseconds:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV1CreationTimeSeconds:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV1CreationTimeSeconds:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->perAppIdV2:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->perAppIdV2:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV2CreationTimeMilliseconds:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV2CreationTimeMilliseconds:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV2UserOption:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV2UserOption:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV2PubOption:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV2PubOption:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->adId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->adId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->isLimitedAdTracking:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->isLimitedAdTracking:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->idTypeParameter:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->idTypeParameter:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->adsId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->adsId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->amazonFireAdId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->amazonFireAdId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->isAmazonFireAdIdLimitAdTracking:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->isAmazonFireAdIdLimitAdTracking:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->appSetId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->appSetIdScope:Ljava/lang/Integer;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->perAppIdV1:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV1CreationTimeMilliseconds:Ljava/lang/Long;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV1CreationTimeSeconds:Ljava/lang/Long;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->perAppIdV2:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV2CreationTimeMilliseconds:Ljava/lang/Long;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV2UserOption:Ljava/lang/Boolean;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV2PubOption:Ljava/lang/Boolean;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->adId:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->isLimitedAdTracking:Ljava/lang/Boolean;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->idTypeParameter:Ljava/lang/String;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->adsId:Ljava/lang/String;

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->amazonFireAdId:Ljava/lang/String;

    if-nez v2, :cond_d

    move v2, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->isAmazonFireAdIdLimitAdTracking:Ljava/lang/Boolean;

    if-nez v2, :cond_e

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_e
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->appSetId:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->appSetIdScope:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->perAppIdV1:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV1CreationTimeMilliseconds:Ljava/lang/Long;

    iget-object v5, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV1CreationTimeSeconds:Ljava/lang/Long;

    iget-object v6, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->perAppIdV2:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV2CreationTimeMilliseconds:Ljava/lang/Long;

    iget-object v8, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV2UserOption:Ljava/lang/Boolean;

    iget-object v9, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV2PubOption:Ljava/lang/Boolean;

    iget-object v10, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->adId:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->isLimitedAdTracking:Ljava/lang/Boolean;

    iget-object v12, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->idTypeParameter:Ljava/lang/String;

    iget-object v13, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->adsId:Ljava/lang/String;

    iget-object v14, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->amazonFireAdId:Ljava/lang/String;

    iget-object v15, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->isAmazonFireAdIdLimitAdTracking:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v16, v15

    const-string v15, "PersonallyIdentifiableInformation(appSetId="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appSetIdScope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", perAppIdV1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paidV1CreationTimeMilliseconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paidV1CreationTimeSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", perAppIdV2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paidV2CreationTimeMilliseconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paidV2UserOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paidV2PubOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLimitedAdTracking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idTypeParameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amazonFireAdId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAmazonFireAdIdLimitAdTracking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
