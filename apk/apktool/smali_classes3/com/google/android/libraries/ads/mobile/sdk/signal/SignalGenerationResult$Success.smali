.class public final Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationResult$Success;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationResult$Success;",
        "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationResult;",
        "Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;",
        "a",
        "Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;",
        "getSignal",
        "()Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;",
        "signal",
        "<init>",
        "(Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;)V",
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
.field private final a:Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;)V
    .locals 1

    const-string v0, "signal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationResult$Success;->a:Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;

    return-void
.end method


# virtual methods
.method public final getSignal()Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationResult$Success;->a:Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;

    return-object v0
.end method
