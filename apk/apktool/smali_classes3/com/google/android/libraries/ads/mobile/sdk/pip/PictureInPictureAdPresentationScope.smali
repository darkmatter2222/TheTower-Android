.class public final enum Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0003\u0008\u0087\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;",
        "",
        "SCREEN",
        "APPLICATION",
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
.field public static final enum APPLICATION:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

.field public static final enum SCREEN:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

.field private static final synthetic a:[Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    const-string v1, "SCREEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;->SCREEN:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    .line 4
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    const-string v2, "APPLICATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;->APPLICATION:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    .line 5
    filled-new-array {v0, v1}, [Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    move-result-object v0

    .line 6
    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;->a:[Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;->a:[Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    return-object v0
.end method
