.class public final Lcom/unity3d/ads/BannerConfiguration$Builder;
.super Ljava/lang/Object;
.source "BannerConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/BannerConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0003J\u001a\u0010\u0011\u001a\u00020\u00002\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000cJ\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0003J\u0006\u0010\u0014\u001a\u00020\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/unity3d/ads/BannerConfiguration$Builder;",
        "",
        "placementId",
        "",
        "bannerSize",
        "Lcom/unity3d/ads/BannerSize;",
        "listener",
        "Lcom/unity3d/ads/BannerShowListener;",
        "<init>",
        "(Ljava/lang/String;Lcom/unity3d/ads/BannerSize;Lcom/unity3d/ads/BannerShowListener;)V",
        "adMarkup",
        "extras",
        "",
        "mediationInfo",
        "Lcom/unity3d/ads/MediationInfo;",
        "mediationAdUnitId",
        "withAdMarkup",
        "withExtras",
        "withMediationInfo",
        "withMediationAdUnitId",
        "build",
        "Lcom/unity3d/ads/BannerConfiguration;",
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
.field private adMarkup:Ljava/lang/String;

.field private final bannerSize:Lcom/unity3d/ads/BannerSize;

.field private extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/unity3d/ads/BannerShowListener;

.field private mediationAdUnitId:Ljava/lang/String;

.field private mediationInfo:Lcom/unity3d/ads/MediationInfo;

.field private final placementId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/BannerSize;Lcom/unity3d/ads/BannerShowListener;)V
    .locals 1

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->placementId:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->bannerSize:Lcom/unity3d/ads/BannerSize;

    iput-object p3, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->listener:Lcom/unity3d/ads/BannerShowListener;

    .line 47
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->extras:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final build()Lcom/unity3d/ads/BannerConfiguration;
    .locals 9

    .line 101
    new-instance v0, Lcom/unity3d/ads/BannerConfiguration;

    .line 102
    iget-object v1, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->placementId:Ljava/lang/String;

    .line 103
    iget-object v2, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->bannerSize:Lcom/unity3d/ads/BannerSize;

    .line 104
    iget-object v3, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->listener:Lcom/unity3d/ads/BannerShowListener;

    .line 105
    iget-object v4, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->extras:Ljava/util/Map;

    .line 106
    iget-object v5, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->adMarkup:Ljava/lang/String;

    .line 107
    iget-object v6, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    .line 108
    iget-object v7, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->mediationAdUnitId:Ljava/lang/String;

    const/4 v8, 0x0

    .line 101
    invoke-direct/range {v0 .. v8}, Lcom/unity3d/ads/BannerConfiguration;-><init>(Ljava/lang/String;Lcom/unity3d/ads/BannerSize;Lcom/unity3d/ads/BannerShowListener;Ljava/util/Map;Ljava/lang/String;Lcom/unity3d/ads/MediationInfo;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final withAdMarkup(Ljava/lang/String;)Lcom/unity3d/ads/BannerConfiguration$Builder;
    .locals 1

    const-string v0, "adMarkup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->adMarkup:Ljava/lang/String;

    return-object p0
.end method

.method public final withExtras(Ljava/util/Map;)Lcom/unity3d/ads/BannerConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/unity3d/ads/BannerConfiguration$Builder;"
        }
    .end annotation

    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->extras:Ljava/util/Map;

    return-object p0
.end method

.method public final withMediationAdUnitId(Ljava/lang/String;)Lcom/unity3d/ads/BannerConfiguration$Builder;
    .locals 1

    const-string v0, "mediationAdUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->mediationAdUnitId:Ljava/lang/String;

    return-object p0
.end method

.method public final withMediationInfo(Lcom/unity3d/ads/MediationInfo;)Lcom/unity3d/ads/BannerConfiguration$Builder;
    .locals 1

    const-string v0, "mediationInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    return-object p0
.end method
