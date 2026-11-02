.class public final Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;
.super Ljava/lang/Object;
.source "UnityAdsInitModuleListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/UnityAdsInitModuleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;",
        "",
        "<init>",
        "()V",
        "ERROR_INITIALIZATION_FAILED",
        "",
        "ERROR_NO_CONFIG",
        "ERROR_INTERNAL",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;

.field public static final ERROR_INITIALIZATION_FAILED:I = 0x1

.field public static final ERROR_INTERNAL:I = 0x3

.field public static final ERROR_NO_CONFIG:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;

    invoke-direct {v0}, Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;-><init>()V

    sput-object v0, Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;->$$INSTANCE:Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
