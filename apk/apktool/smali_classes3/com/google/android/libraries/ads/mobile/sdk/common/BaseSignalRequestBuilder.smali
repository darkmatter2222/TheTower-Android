.class public abstract Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;
.super Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder<",
        "TT;>;>",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008\'\u0018\u0000*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0002B\u0019\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00028\u00002\u0006\u0010\u0008\u001a\u00020\u0007H\u0017\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;",
        "T",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;",
        "",
        "adUnitId",
        "setAdUnitId",
        "(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;",
        "",
        "placementId",
        "setPlacementId",
        "(J)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;",
        "signalType",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
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
.field private final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "signalType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final setAdUnitId(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->self()Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;

    return-object p1
.end method

.method public bridge synthetic setPlacementId(J)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;->setPlacementId(J)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPlacementId(J)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->self()Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;

    return-object p1
.end method
