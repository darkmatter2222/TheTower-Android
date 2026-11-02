.class public Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$Insets;
.super Ljava/lang/Object;
.source "UnityNativeTemplateAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Insets"
.end annotation


# instance fields
.field bottom:I

.field left:I

.field right:I

.field top:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$Insets;->top:I

    .line 49
    iput v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$Insets;->bottom:I

    .line 50
    iput v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$Insets;->left:I

    .line 51
    iput v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$Insets;->right:I

    return-void
.end method
