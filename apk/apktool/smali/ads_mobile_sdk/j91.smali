.class public final Lads_mobile_sdk/j91;
.super Lads_mobile_sdk/eq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd;


# static fields
.field public static final j:Lads_mobile_sdk/h91;

.field public static final synthetic k:[Lkotlin/reflect/KProperty;


# instance fields
.field public final b:Lads_mobile_sdk/l12;

.field public final c:Lcom/google/android/libraries/ads/mobile/sdk/common/Image;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/Double;

.field public final h:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;

.field public final i:Lads_mobile_sdk/tn3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lads_mobile_sdk/j91;

    const-string v1, "adEventCallback"

    const-string v2, "getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdEventCallback;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v1, 0x1

    .line 43
    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v3

    sput-object v1, Lads_mobile_sdk/j91;->k:[Lkotlin/reflect/KProperty;

    new-instance v0, Lads_mobile_sdk/h91;

    .line 44
    invoke-direct {v0}, Lads_mobile_sdk/h91;-><init>()V

    .line 45
    sput-object v0, Lads_mobile_sdk/j91;->j:Lads_mobile_sdk/h91;

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/l12;Lcom/google/android/libraries/ads/mobile/sdk/common/Image;)V
    .locals 1

    .line 1
    const-string v0, "nativeAdImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lads_mobile_sdk/l12;->b()Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/eq;-><init>(Lads_mobile_sdk/zh1;)V

    .line 31
    iput-object p1, p0, Lads_mobile_sdk/j91;->b:Lads_mobile_sdk/l12;

    iput-object p2, p0, Lads_mobile_sdk/j91;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/Image;

    .line 34
    invoke-virtual {p1}, Lads_mobile_sdk/l12;->getHeadline()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lads_mobile_sdk/j91;->d:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lads_mobile_sdk/l12;->getCallToAction()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lads_mobile_sdk/j91;->e:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lads_mobile_sdk/l12;->b()Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object p2

    iget-object p2, p2, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    const-string v0, "package_name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lads_mobile_sdk/j91;->f:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lads_mobile_sdk/l12;->getStarRating()Ljava/lang/Double;

    move-result-object p2

    iput-object p2, p0, Lads_mobile_sdk/j91;->g:Ljava/lang/Double;

    .line 43
    invoke-virtual {p1}, Lads_mobile_sdk/l12;->getAdChoicesInfo()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/j91;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;

    .line 46
    new-instance p1, Lads_mobile_sdk/tn3;

    .line 48
    new-instance p2, Lads_mobile_sdk/i91;

    invoke-direct {p2, p0}, Lads_mobile_sdk/i91;-><init>(Lads_mobile_sdk/j91;)V

    const/4 v0, 0x0

    .line 49
    invoke-direct {p1, p2, v0}, Lads_mobile_sdk/tn3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    iput-object p1, p0, Lads_mobile_sdk/j91;->i:Lads_mobile_sdk/tn3;

    return-void
.end method


# virtual methods
.method public final getAdChoicesInfo()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;
    .locals 1

    .line 41
    iget-object v0, p0, Lads_mobile_sdk/j91;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;

    return-object v0
.end method

.method public final getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdEventCallback;
    .locals 3

    .line 43
    iget-object v0, p0, Lads_mobile_sdk/j91;->i:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/j91;->k:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 44
    invoke-virtual {v0, p0, v1}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdEventCallback;

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lads_mobile_sdk/j91;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lads_mobile_sdk/j91;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon()Lcom/google/android/libraries/ads/mobile/sdk/common/Image;
    .locals 1

    .line 29
    iget-object v0, p0, Lads_mobile_sdk/j91;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/Image;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lads_mobile_sdk/j91;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getStarRating()Ljava/lang/Double;
    .locals 1

    .line 39
    iget-object v0, p0, Lads_mobile_sdk/j91;->g:Ljava/lang/Double;

    return-object v0
.end method

.method public final setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdEventCallback;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lads_mobile_sdk/j91;->i:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/j91;->k:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 44
    invoke-virtual {v0, p0, v1, p1}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
