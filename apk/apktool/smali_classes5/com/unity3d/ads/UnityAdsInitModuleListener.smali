.class public interface abstract Lcom/unity3d/ads/UnityAdsInitModuleListener;
.super Ljava/lang/Object;
.source "UnityAdsInitModuleListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fJ\u0008\u0010\u0002\u001a\u00020\u0003H&J\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0007H&J$\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0007H&J\u0018\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/unity3d/ads/UnityAdsInitModuleListener;",
        "",
        "moduleName",
        "",
        "initParams",
        "",
        "extraData",
        "",
        "onSuccess",
        "",
        "config",
        "onFailure",
        "reason",
        "errorCode",
        "",
        "Companion",
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
.field public static final Companion:Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;

.field public static final ERROR_INITIALIZATION_FAILED:I = 0x1

.field public static final ERROR_INTERNAL:I = 0x3

.field public static final ERROR_NO_CONFIG:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;->$$INSTANCE:Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;

    sput-object v0, Lcom/unity3d/ads/UnityAdsInitModuleListener;->Companion:Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;

    return-void
.end method


# virtual methods
.method public abstract initParams(Ljava/util/Map;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation
.end method

.method public abstract moduleName()Ljava/lang/String;
.end method

.method public abstract onFailure(Ljava/lang/String;I)V
.end method

.method public abstract onSuccess([BLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
