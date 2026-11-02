.class public final Lcom/unity3d/ads/core/domain/AndroidShouldUseLazyStaticDeviceInfo;
.super Ljava/lang/Object;
.source "AndroidShouldUseLazyStaticDeviceInfo.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/ShouldUseLazyStaticDeviceInfo;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0006\u001a\u00020\u0007H\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/AndroidShouldUseLazyStaticDeviceInfo;",
        "Lcom/unity3d/ads/core/domain/ShouldUseLazyStaticDeviceInfo;",
        "mediationTraitsMetadataReader",
        "Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;",
        "<init>",
        "(Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;)V",
        "invoke",
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
.field private final mediationTraitsMetadataReader:Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;)V
    .locals 1

    const-string v0, "mediationTraitsMetadataReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidShouldUseLazyStaticDeviceInfo;->mediationTraitsMetadataReader:Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;

    return-void
.end method


# virtual methods
.method public invoke()Z
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidShouldUseLazyStaticDeviceInfo;->mediationTraitsMetadataReader:Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;

    .line 11
    const-string v1, "lazyStaticDeviceInfo"

    .line 10
    invoke-virtual {v0, v1}, Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;->getBooleanTrait(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
