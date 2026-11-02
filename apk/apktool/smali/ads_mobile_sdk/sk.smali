.class public final Lads_mobile_sdk/sk;
.super Lads_mobile_sdk/eq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAd;


# static fields
.field public static final d:Lads_mobile_sdk/qk;

.field public static final synthetic e:[Lkotlin/reflect/KProperty;


# instance fields
.field public final b:Lads_mobile_sdk/sj1;

.field public final c:Lads_mobile_sdk/tn3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lads_mobile_sdk/sk;

    const-string v1, "adEventCallback"

    const-string v2, "getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdEventCallback;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v3

    sput-object v1, Lads_mobile_sdk/sk;->e:[Lkotlin/reflect/KProperty;

    new-instance v0, Lads_mobile_sdk/qk;

    .line 22
    invoke-direct {v0}, Lads_mobile_sdk/qk;-><init>()V

    .line 23
    sput-object v0, Lads_mobile_sdk/sk;->d:Lads_mobile_sdk/qk;

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/sj1;)V
    .locals 2

    .line 1
    const-string v0, "internalAppOpenAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lads_mobile_sdk/eq;-><init>(Lads_mobile_sdk/zh1;)V

    .line 20
    iput-object p1, p0, Lads_mobile_sdk/sk;->b:Lads_mobile_sdk/sj1;

    .line 24
    new-instance p1, Lads_mobile_sdk/tn3;

    .line 26
    new-instance v0, Lads_mobile_sdk/rk;

    invoke-direct {v0, p0}, Lads_mobile_sdk/rk;-><init>(Lads_mobile_sdk/sk;)V

    const/4 v1, 0x0

    .line 27
    invoke-direct {p1, v0, v1}, Lads_mobile_sdk/tn3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    iput-object p1, p0, Lads_mobile_sdk/sk;->c:Lads_mobile_sdk/tn3;

    return-void
.end method


# virtual methods
.method public final getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdEventCallback;
    .locals 3

    .line 21
    iget-object v0, p0, Lads_mobile_sdk/sk;->c:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/sk;->e:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 22
    invoke-virtual {v0, p0, v1}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdEventCallback;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 33
    iget-object v0, p0, Lads_mobile_sdk/sk;->b:Lads_mobile_sdk/sj1;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->i()Lads_mobile_sdk/zy;

    move-result-object v0

    iget-boolean v0, v0, Lads_mobile_sdk/zy;->u:Z

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lads_mobile_sdk/sk;->b:Lads_mobile_sdk/sj1;

    .line 35
    iget-object v0, v0, Lads_mobile_sdk/sj1;->q:Ljava/util/Optional;

    .line 36
    invoke-static {v0}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdEventCallback;)V
    .locals 3

    .line 21
    iget-object v0, p0, Lads_mobile_sdk/sk;->c:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/sk;->e:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 22
    invoke-virtual {v0, p0, v1, p1}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 1

    .line 52
    iget-object v0, p0, Lads_mobile_sdk/sk;->b:Lads_mobile_sdk/sj1;

    .line 53
    iput-boolean p1, v0, Lads_mobile_sdk/as;->o:Z

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, v0, Lads_mobile_sdk/as;->p:Z

    return-void
.end method

.method public final setImpressionData(Ljava/util/Map;)V
    .locals 6

    .line 1
    const-string v0, "impressionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lads_mobile_sdk/sk;->b:Lads_mobile_sdk/sj1;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->i()Lads_mobile_sdk/zy;

    move-result-object v0

    iget-boolean v0, v0, Lads_mobile_sdk/zy;->u:Z

    if-eqz v0, :cond_4

    .line 42
    iget-object v0, p0, Lads_mobile_sdk/sk;->b:Lads_mobile_sdk/sj1;

    .line 43
    iget-object v0, v0, Lads_mobile_sdk/sj1;->r:Lads_mobile_sdk/t91;

    .line 44
    iget-object v1, v0, Lads_mobile_sdk/t91;->a:Lads_mobile_sdk/tn3;

    .line 45
    sget-object v2, Lads_mobile_sdk/t91;->b:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v1, v0, v4, p1}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lads_mobile_sdk/sk;->b:Lads_mobile_sdk/sj1;

    .line 47
    iget-object v0, p1, Lads_mobile_sdk/sj1;->r:Lads_mobile_sdk/t91;

    .line 48
    iget-object v1, v0, Lads_mobile_sdk/t91;->a:Lads_mobile_sdk/tn3;

    aget-object v4, v2, v3

    invoke-virtual {v1, v0, v4}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 49
    const-string v4, "targetAppName"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 50
    :goto_1
    iget-object v4, p0, Lads_mobile_sdk/sk;->b:Lads_mobile_sdk/sj1;

    .line 51
    iget-object v4, v4, Lads_mobile_sdk/sj1;->r:Lads_mobile_sdk/t91;

    .line 52
    iget-object v5, v4, Lads_mobile_sdk/t91;->a:Lads_mobile_sdk/tn3;

    aget-object v2, v2, v3

    invoke-virtual {v5, v4, v2}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 53
    const-string v3, "targetAppIconDrawable"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    instance-of v3, v2, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 54
    :cond_3
    iget-object v2, p0, Lads_mobile_sdk/sk;->b:Lads_mobile_sdk/sj1;

    .line 55
    iget-object v2, v2, Lads_mobile_sdk/sj1;->r:Lads_mobile_sdk/t91;

    .line 56
    invoke-virtual {v2}, Lads_mobile_sdk/t91;->a()Ljava/lang/String;

    move-result-object v2

    .line 57
    iget-object p1, p1, Lads_mobile_sdk/as;->n:Lads_mobile_sdk/zx0;

    .line 58
    invoke-interface {p1, v0, v1, v2}, Lads_mobile_sdk/zx0;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final show(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lads_mobile_sdk/sk;->b:Lads_mobile_sdk/sj1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/as;->a(Landroid/content/Context;)V

    return-void
.end method
