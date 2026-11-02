.class public final Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001b\u0010\u0014\u001a\u00020\u00002\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00002\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;",
        "",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;",
        "build",
        "()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;",
        "tagForChildDirectedTreatment",
        "setTagForChildDirectedTreatment",
        "(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;",
        "tagForUnderAgeOfConsent",
        "setTagForUnderAgeOfConsent",
        "(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;",
        "maxAdContentRating",
        "setMaxAdContentRating",
        "(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;",
        "",
        "",
        "testDeviceIds",
        "setTestDeviceIds",
        "(Ljava/util/List;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;",
        "publisherPrivacyPersonalizationState",
        "setPublisherPrivacyPersonalizationState",
        "(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;",
        "ageRestrictedTreatment",
        "setAgeRestrictedTreatment",
        "(Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;",
        "<init>",
        "()V",
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
.field private a:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

.field private b:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

.field private c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

.field private final d:Ljava/util/ArrayList;

.field private e:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;

.field private f:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    .line 5
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;->TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    .line 6
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;->MAX_AD_CONTENT_RATING_UNSPECIFIED:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "B3EEABB8EE11C2BE770B684D95219ECB"

    aput-object v3, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->d:Ljava/util/ArrayList;

    .line 8
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;->DEFAULT:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;

    iput-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;

    .line 10
    iput-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->g:Z

    return-void
.end method


# virtual methods
.method public final synthetic a(Z)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->g:Z

    return-object p0
.end method

.method public final build()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    .line 2
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    .line 3
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    .line 4
    iget-object v3, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    .line 5
    iget-object v4, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->d:Ljava/util/ArrayList;

    .line 6
    iget-object v5, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;

    .line 7
    iget-object v6, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    .line 8
    iget-boolean v7, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->g:Z

    const/4 v8, 0x0

    .line 9
    invoke-direct/range {v0 .. v8}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;Ljava/util/ArrayList;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;ZI)V

    return-object v0
.end method

.method public final setAgeRestrictedTreatment(Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    return-object p0
.end method

.method public final setMaxAdContentRating(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;
    .locals 1

    const-string v0, "maxAdContentRating"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    return-object p0
.end method

.method public final setPublisherPrivacyPersonalizationState(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;
    .locals 1

    const-string v0, "publisherPrivacyPersonalizationState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;

    return-object p0
.end method

.method public final setTagForChildDirectedTreatment(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use setAgeRestrictedTreatment instead."
    .end annotation

    const-string v0, "tagForChildDirectedTreatment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    return-object p0
.end method

.method public final setTagForUnderAgeOfConsent(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use setAgeRestrictedTreatment instead."
    .end annotation

    const-string v0, "tagForUnderAgeOfConsent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    return-object p0
.end method

.method public final setTestDeviceIds(Ljava/util/List;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;"
        }
    .end annotation

    const-string v0, "testDeviceIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->d:Ljava/util/ArrayList;

    const-string v0, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
