.class public final Lcom/google/android/libraries/ads/mobile/sdk/a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

.field public b:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/a;->d:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/a;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/a;->e:I

    iget-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/a;->d:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->generateSignal(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
