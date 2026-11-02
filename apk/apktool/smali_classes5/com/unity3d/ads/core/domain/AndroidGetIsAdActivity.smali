.class public final Lcom/unity3d/ads/core/domain/AndroidGetIsAdActivity;
.super Ljava/lang/Object;
.source "AndroidGetIsAdActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidGetIsAdActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetIsAdActivity.kt\ncom/unity3d/ads/core/domain/AndroidGetIsAdActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,20:1\n1563#2:21\n1634#2,3:22\n*S KotlinDebug\n*F\n+ 1 AndroidGetIsAdActivity.kt\ncom/unity3d/ads/core/domain/AndroidGetIsAdActivity\n*L\n11#1:21\n11#1:22,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0011\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0086\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R)\u0010\u0006\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00080\u00080\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/AndroidGetIsAdActivity;",
        "",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "<init>",
        "(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V",
        "activities",
        "",
        "Lokio/ByteString;",
        "kotlin.jvm.PlatformType",
        "getActivities",
        "()Ljava/util/List;",
        "activities$delegate",
        "Lkotlin/Lazy;",
        "invoke",
        "",
        "activityName",
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
.field private final activities$delegate:Lkotlin/Lazy;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method public static synthetic $r8$lambda$5tSD6qvvaHMBmCdbNXpdHl3o43Q(Lcom/unity3d/ads/core/domain/AndroidGetIsAdActivity;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/AndroidGetIsAdActivity;->activities_delegate$lambda$1(Lcom/unity3d/ads/core/domain/AndroidGetIsAdActivity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V
    .locals 1

    const-string v0, "sessionRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetIsAdActivity;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 10
    new-instance p1, Lcom/unity3d/ads/core/domain/AndroidGetIsAdActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/unity3d/ads/core/domain/AndroidGetIsAdActivity$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/core/domain/AndroidGetIsAdActivity;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetIsAdActivity;->activities$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final activities_delegate$lambda$1(Lcom/unity3d/ads/core/domain/AndroidGetIsAdActivity;)Ljava/util/List;
    .locals 3

    .line 11
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidGetIsAdActivity;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {p0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getObservableAndroidActivitiesList()Ljava/util/List;

    move-result-object p0

    const-string v0, "getObservableAndroidActivitiesList(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 22
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 23
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 11
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-static {v1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetIsAdActivity;->activities$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "activityName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lcom/unity3d/ads/core/extensions/StringExtensionsKt;->getSHA256Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    .line 17
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/AndroidGetIsAdActivity;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
