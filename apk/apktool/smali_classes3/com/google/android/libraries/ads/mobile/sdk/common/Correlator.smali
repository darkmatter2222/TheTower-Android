.class public final Lcom/google/android/libraries/ads/mobile/sdk/common/Correlator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/common/Correlator;",
        "",
        "",
        "generateCorrelator",
        "()Ljava/lang/String;",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/android/libraries/ads/mobile/sdk/common/Correlator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/Correlator;

    invoke-direct {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/Correlator;-><init>()V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/Correlator;->INSTANCE:Lcom/google/android/libraries/ads/mobile/sdk/common/Correlator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final generateCorrelator()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vf0;

    .line 2
    iget-object v0, v0, Lads_mobile_sdk/vf0;->u3:Lads_mobile_sdk/dw2;

    .line 3
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/j40;

    .line 4
    invoke-virtual {v0}, Lads_mobile_sdk/j40;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
