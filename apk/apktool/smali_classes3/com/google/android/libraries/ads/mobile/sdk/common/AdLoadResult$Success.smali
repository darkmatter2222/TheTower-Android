.class public final Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Success;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT::",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult<",
        "TAdT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000*\u0008\u0008\u0001\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00010\u0003B\u000f\u0012\u0006\u0010\u0008\u001a\u00028\u0001\u00a2\u0006\u0004\u0008\t\u0010\nR\u0017\u0010\u0008\u001a\u00028\u00018\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Success;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;",
        "AdT",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;",
        "a",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;",
        "getAd",
        "()Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;",
        "ad",
        "<init>",
        "(Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;)V",
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
.field private final a:Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdT;)V"
        }
    .end annotation

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Success;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;

    return-void
.end method


# virtual methods
.method public final getAd()Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Success;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;

    return-object v0
.end method
