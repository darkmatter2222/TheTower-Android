.class public interface abstract Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$AffordanceListener;,
        Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;,
        Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;
    }
.end annotation


# static fields
.field public static final SDK_VERSION:Ljava/lang/String; = "2.0.0"


# virtual methods
.method public abstract detach()V
.end method

.method public abstract dismiss(Ljava/lang/String;)V
.end method

.method public abstract endSession(Ljava/lang/String;)V
.end method

.method public abstract open(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;)V
.end method

.method public abstract open(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract open(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Ljava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract prewarm(Ljava/util/List;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;",
            ">;",
            "Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract stopAffordance(Ljava/lang/String;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$AffordanceListener;)V
.end method
