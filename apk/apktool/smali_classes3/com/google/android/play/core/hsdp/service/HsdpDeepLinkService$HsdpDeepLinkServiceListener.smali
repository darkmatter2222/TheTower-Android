.class public interface abstract Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HsdpDeepLinkServiceListener"
.end annotation


# virtual methods
.method public abstract onAffordanceEnded()V
.end method

.method public abstract onAffordanceStarted()V
.end method

.method public abstract onDeepLinkStarted()V
.end method

.method public abstract onDismissed(Landroid/os/Bundle;)V
.end method

.method public abstract onError(Landroid/os/Bundle;)V
.end method

.method public abstract onShown(Landroid/os/Bundle;)V
.end method
