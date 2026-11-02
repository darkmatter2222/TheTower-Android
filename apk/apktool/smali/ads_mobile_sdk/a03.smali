.class public final Lads_mobile_sdk/a03;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/qn2;

.field public final b:Lads_mobile_sdk/cw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/qn2;Lads_mobile_sdk/dw2;)V
    .locals 1

    .line 1
    const-string v0, "pipAdConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestComponentBuilderProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lads_mobile_sdk/a03;->a:Lads_mobile_sdk/qn2;

    .line 8
    iput-object p2, p0, Lads_mobile_sdk/a03;->b:Lads_mobile_sdk/cw2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;)Lads_mobile_sdk/zz2;
    .locals 4

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "request"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lads_mobile_sdk/a03;->a:Lads_mobile_sdk/qn2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 85
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    .line 86
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    div-float/2addr p1, v2

    .line 88
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 89
    iget-object v0, v1, Lads_mobile_sdk/qn2;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    const-string v1, "key"

    const-string v2, "gads:picture_in_picture:ratio_of_screen_height"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3e800000    # 0.25f

    .line 113
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sget-object v3, Lads_mobile_sdk/yr;->e:Lads_mobile_sdk/mr;

    invoke-virtual {v0, v2, v1, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 114
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    invoke-direct {v0, p1, p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;-><init>(II)V

    .line 115
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;

    invoke-virtual {p2}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;-><init>(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lads_mobile_sdk/a03;->b:Lads_mobile_sdk/cw2;

    .line 118
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/d03;

    .line 119
    check-cast v0, Lads_mobile_sdk/ii0;

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    iput-object p2, v0, Lads_mobile_sdk/ii0;->i:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;

    .line 122
    sget-object v1, Lads_mobile_sdk/j53;->f:Lads_mobile_sdk/j53;

    .line 123
    iput-object v1, v0, Lads_mobile_sdk/ii0;->d:Lads_mobile_sdk/j53;

    .line 124
    iput-object p2, v0, Lads_mobile_sdk/ii0;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    .line 125
    invoke-interface {v0, p2}, Lads_mobile_sdk/f03;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/bz2;

    .line 126
    invoke-interface {p2, p1}, Lads_mobile_sdk/bz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;)Lads_mobile_sdk/bz2;

    move-result-object p2

    .line 127
    invoke-interface {p2, p1}, Lads_mobile_sdk/bz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;)Lads_mobile_sdk/bz2;

    move-result-object p1

    const/4 p2, 0x0

    .line 128
    invoke-interface {p1, p2}, Lads_mobile_sdk/f03;->b(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bz2;

    .line 129
    invoke-interface {p1, p2}, Lads_mobile_sdk/f03;->a(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bz2;

    .line 130
    invoke-interface {p1}, Lads_mobile_sdk/bz2;->a()Lads_mobile_sdk/cz2;

    move-result-object p1

    .line 131
    const-string p2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.pip.PublisherPipRequestComponent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/e03;

    .line 142
    check-cast p1, Lads_mobile_sdk/ji0;

    .line 143
    iget-object p1, p1, Lads_mobile_sdk/ji0;->m:Lads_mobile_sdk/dw2;

    .line 144
    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/zz2;

    return-object p1
.end method
