.class public final Lcom/google/android/play/core/hsdp/service/HsdpLoadingPanelContainer;
.super Landroid/widget/FrameLayout;
.source "com.google.android.play:hsdp@@2.0.1"


# instance fields
.field private zza:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/HsdpLoadingPanelContainer;->zza:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/play/core/hsdp/service/HsdpLoadingPanelContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/HsdpLoadingPanelContainer;->zza:Ljava/lang/Runnable;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/play/core/hsdp/service/HsdpLoadingPanelContainer;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setOnConfigurationChangedListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/HsdpLoadingPanelContainer;->zza:Ljava/lang/Runnable;

    return-void
.end method
