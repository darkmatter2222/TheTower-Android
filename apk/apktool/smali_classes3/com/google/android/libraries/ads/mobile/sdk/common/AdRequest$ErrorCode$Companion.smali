.class public final Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$ErrorCode$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0004R\u0014\u0010\u0008\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0004\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$ErrorCode$Companion;",
        "",
        "",
        "INTERNAL_ERROR",
        "I",
        "INVALID_REQUEST",
        "NETWORK_ERROR",
        "NO_FILL",
        "APP_ID_MISSING",
        "MEDIATION_NO_FILL",
        "INVALID_AD_STRING",
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
.field public static final APP_ID_MISSING:I = 0x4

.field public static final INTERNAL_ERROR:I = 0x0

.field public static final INVALID_AD_STRING:I = 0x6

.field public static final INVALID_REQUEST:I = 0x1

.field public static final MEDIATION_NO_FILL:I = 0x5

.field public static final NETWORK_ERROR:I = 0x2

.field public static final NO_FILL:I = 0x3

.field static final synthetic a:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$ErrorCode$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$ErrorCode$Companion;

    invoke-direct {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$ErrorCode$Companion;-><init>()V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$ErrorCode$Companion;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$ErrorCode$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
