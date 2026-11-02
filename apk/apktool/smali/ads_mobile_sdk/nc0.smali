.class public final Lads_mobile_sdk/nc0;
.super Lads_mobile_sdk/eq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;


# static fields
.field public static final synthetic g:[Lkotlin/reflect/KProperty;


# instance fields
.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

.field public final c:Lads_mobile_sdk/tn3;

.field public final d:Lads_mobile_sdk/tn3;

.field public final e:Ljava/lang/String;

.field public final f:Lads_mobile_sdk/su1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lads_mobile_sdk/nc0;

    const-string v1, "adEventCallback"

    const-string v2, "getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    .line 2
    const-string v2, "onCustomClickListener"

    const-string v4, "getOnCustomClickListener()Lcom/google/android/libraries/ads/mobile/sdk/nativead/OnCustomClickListener;"

    invoke-static {v0, v2, v4, v3}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v2, 0x2

    .line 21
    new-array v2, v2, [Lkotlin/reflect/KProperty;

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    sput-object v2, Lads_mobile_sdk/nc0;->g:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V
    .locals 3

    .line 1
    const-string v0, "internalNativeAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lads_mobile_sdk/eq;-><init>(Lads_mobile_sdk/zh1;)V

    .line 13
    iput-object p1, p0, Lads_mobile_sdk/nc0;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 17
    new-instance v0, Lads_mobile_sdk/tn3;

    .line 19
    new-instance v1, Lads_mobile_sdk/lc0;

    invoke-direct {v1, p0}, Lads_mobile_sdk/lc0;-><init>(Lads_mobile_sdk/nc0;)V

    const/4 v2, 0x0

    .line 20
    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/tn3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    iput-object v0, p0, Lads_mobile_sdk/nc0;->c:Lads_mobile_sdk/tn3;

    .line 26
    new-instance v0, Lads_mobile_sdk/tn3;

    .line 28
    new-instance v1, Lads_mobile_sdk/mc0;

    invoke-direct {v1, p0}, Lads_mobile_sdk/mc0;-><init>(Lads_mobile_sdk/nc0;)V

    .line 29
    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/tn3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    iput-object v0, p0, Lads_mobile_sdk/nc0;->d:Lads_mobile_sdk/tn3;

    .line 53
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/s02;->c:Ljava/lang/String;

    iput-object v0, p0, Lads_mobile_sdk/nc0;->e:Ljava/lang/String;

    .line 55
    new-instance v0, Lads_mobile_sdk/su1;

    invoke-direct {v0, p1}, Lads_mobile_sdk/su1;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V

    iput-object v0, p0, Lads_mobile_sdk/nc0;->f:Lads_mobile_sdk/su1;

    return-void
.end method


# virtual methods
.method public final getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;
    .locals 3

    .line 14
    iget-object v0, p0, Lads_mobile_sdk/nc0;->c:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/nc0;->g:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 15
    invoke-virtual {v0, p0, v1}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;

    return-object v0
.end method

.method public final getAssetNameSet()Ljava/util/Set;
    .locals 2

    .line 34
    iget-object v0, p0, Lads_mobile_sdk/nc0;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lads_mobile_sdk/nc0;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v1

    iget-object v1, v1, Lads_mobile_sdk/s02;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->union(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lads_mobile_sdk/nc0;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v1

    iget-object v1, v1, Lads_mobile_sdk/s02;->j:Lads_mobile_sdk/r31;

    if-eqz v1, :cond_0

    .line 40
    const-string v1, "_videoMediaView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomFormatId()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lads_mobile_sdk/nc0;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayOpenMeasurement()Lcom/google/android/libraries/ads/mobile/sdk/nativead/DisplayOpenMeasurement;
    .locals 1

    .line 56
    iget-object v0, p0, Lads_mobile_sdk/nc0;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->r()Lads_mobile_sdk/j12;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/j12;->f()Lcom/google/android/libraries/ads/mobile/sdk/nativead/DisplayOpenMeasurement;

    move-result-object v0

    return-object v0
.end method

.method public final getImage(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/Image;
    .locals 1

    .line 1
    const-string v0, "assetName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lads_mobile_sdk/nc0;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/s02;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/km1;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lads_mobile_sdk/km1;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/Image;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getMediaContent()Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;
    .locals 1

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/nc0;->f:Lads_mobile_sdk/su1;

    return-object v0
.end method

.method public final getOnCustomClickListener()Lcom/google/android/libraries/ads/mobile/sdk/nativead/OnCustomClickListener;
    .locals 3

    .line 20
    iget-object v0, p0, Lads_mobile_sdk/nc0;->d:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/nc0;->g:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 21
    invoke-virtual {v0, p0, v1}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/OnCustomClickListener;

    return-object v0
.end method

.method public final getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "assetName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lads_mobile_sdk/nc0;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final performClick(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "assetName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lads_mobile_sdk/nc0;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->r()Lads_mobile_sdk/j12;

    move-result-object v0

    invoke-virtual {v0, p1}, Lads_mobile_sdk/j12;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final recordImpression()V
    .locals 3

    .line 53
    iget-object v0, p0, Lads_mobile_sdk/nc0;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->r()Lads_mobile_sdk/j12;

    move-result-object v0

    .line 54
    iget-object v1, v0, Lads_mobile_sdk/j12;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    .line 55
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-virtual {v0}, Lads_mobile_sdk/j12;->b()V

    return-void
.end method

.method public final setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;)V
    .locals 3

    .line 14
    iget-object v0, p0, Lads_mobile_sdk/nc0;->c:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/nc0;->g:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 15
    invoke-virtual {v0, p0, v1, p1}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnCustomClickListener(Lcom/google/android/libraries/ads/mobile/sdk/nativead/OnCustomClickListener;)V
    .locals 3

    .line 20
    iget-object v0, p0, Lads_mobile_sdk/nc0;->d:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/nc0;->g:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 21
    invoke-virtual {v0, p0, v1, p1}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
