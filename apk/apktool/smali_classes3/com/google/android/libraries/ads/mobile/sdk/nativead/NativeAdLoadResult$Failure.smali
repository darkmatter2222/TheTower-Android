.class public final Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failure"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;",
        "a",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;",
        "getError",
        "()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;",
        "error",
        "<init>",
        "(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V",
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
.field private final a:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    return-void
.end method


# virtual methods
.method public final getError()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    return-object v0
.end method
