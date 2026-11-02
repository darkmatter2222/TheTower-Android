.class public final Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000eR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;",
        "",
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;",
        "a",
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;",
        "getPresentationScope",
        "()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;",
        "presentationScope",
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;",
        "b",
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;",
        "getPosition",
        "()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;",
        "position",
        "Builder",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

.field private final b:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;->a:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;->b:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;)V

    return-void
.end method


# virtual methods
.method public final getPosition()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;->b:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    return-object v0
.end method

.method public final getPresentationScope()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;->a:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    return-object v0
.end method
