.class public final Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;",
        "",
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;",
        "presentationScope",
        "setPresentationScope",
        "(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;)Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;",
        "position",
        "setPosition",
        "(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;)Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;",
        "build",
        "()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;",
        "<init>",
        "()V",
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
.field private a:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

.field private b:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;->SCREEN:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;->a:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    .line 4
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;->DEFAULT:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;->b:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;->a:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;->b:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;I)V

    return-object v0
.end method

.method public final setPosition(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;)Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;
    .locals 1

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;->b:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    return-object p0
.end method

.method public final setPresentationScope(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;)Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;
    .locals 1

    const-string v0, "presentationScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;->a:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    return-object p0
.end method
