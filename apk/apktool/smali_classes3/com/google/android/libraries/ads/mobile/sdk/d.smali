.class public final Lcom/google/android/libraries/ads/mobile/sdk/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationStatus;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lads_mobile_sdk/jl1;->a()Lads_mobile_sdk/ke;

    move-result-object v0

    const-string v1, "com.google.android.libraries.ads.mobile.sdk.MobileAds"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/d;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getAdapterStatusMap()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/d;->a:Ljava/util/Map;

    return-object v0
.end method

.method public final getTotalLatency()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
