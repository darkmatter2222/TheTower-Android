.class public final Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;,
        Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Companion;,
        Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;,
        Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;,
        Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;,
        Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 .2\u00020\u0001:\u0006/.0123J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0018\u001a\u00020\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001d\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00198\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u0017\u0010%\u001a\u00020 8\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$R\u001c\u0010+\u001a\u0004\u0018\u00010&8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u0011\u0010-\u001a\u00020&8F\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010*\u00a8\u00064"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "isTestDevice",
        "(Landroid/content/Context;)Z",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;",
        "a",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;",
        "getTagForChildDirectedTreatment",
        "()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;",
        "tagForChildDirectedTreatment",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;",
        "b",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;",
        "getTagForUnderAgeOfConsent",
        "()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;",
        "tagForUnderAgeOfConsent",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;",
        "c",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;",
        "getMaxAdContentRating",
        "()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;",
        "maxAdContentRating",
        "",
        "",
        "d",
        "Ljava/util/List;",
        "getTestDeviceIds",
        "()Ljava/util/List;",
        "testDeviceIds",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;",
        "e",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;",
        "getPublisherPrivacyPersonalizationState",
        "()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;",
        "publisherPrivacyPersonalizationState",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;",
        "f",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;",
        "getAgeRestrictedTreatmentInternal",
        "()Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;",
        "ageRestrictedTreatmentInternal",
        "getAgeRestrictedTreatment",
        "ageRestrictedTreatment",
        "Companion",
        "Builder",
        "MaxAdContentRating",
        "PublisherPrivacyPersonalizationState",
        "TagForChildDirectedTreatment",
        "TagForUnderAgeOfConsent",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Companion;

.field public static final MAX_AD_CONTENT_RATING_KEY:Ljava/lang/String; = "max_ad_content_rating"


# instance fields
.field private final a:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

.field private final b:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

.field private final c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

.field private final d:Ljava/util/List;

.field private final e:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;

.field private final f:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Companion;-><init>(I)V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;Ljava/util/ArrayList;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    .line 7
    iput-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    .line 8
    iput-object p4, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->d:Ljava/util/List;

    .line 9
    iput-object p5, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;

    .line 10
    iput-object p6, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    .line 11
    iput-boolean p7, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;Ljava/util/ArrayList;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;ZI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;Ljava/util/ArrayList;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;Z)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->g:Z

    return v0
.end method

.method public final b()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->setMaxAdContentRating(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->setPublisherPrivacyPersonalizationState(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->setTestDeviceIds(Ljava/util/List;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->setAgeRestrictedTreatment(Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;

    move-result-object v0

    .line 8
    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->g:Z

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->a(Z)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAgeRestrictedTreatment()Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;->UNSPECIFIED:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    :cond_0
    return-object v0
.end method

.method public final getAgeRestrictedTreatmentInternal()Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    return-object v0
.end method

.method public final getMaxAdContentRating()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    return-object v0
.end method

.method public final getPublisherPrivacyPersonalizationState()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;

    return-object v0
.end method

.method public final getTagForChildDirectedTreatment()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    return-object v0
.end method

.method public final getTagForUnderAgeOfConsent()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    return-object v0
.end method

.method public final getTestDeviceIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->d:Ljava/util/List;

    return-object v0
.end method

.method public final isTestDevice(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->d:Ljava/util/List;

    sget-object v1, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    invoke-static {p1}, Lads_mobile_sdk/m21;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
