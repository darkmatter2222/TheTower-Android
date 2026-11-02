.class public abstract Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;
.end method

.method public abstract setExtraQueryParams(Ljava/util/Map;)Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;"
        }
    .end annotation
.end method

.method public abstract setReferrer(Ljava/lang/String;)Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;
.end method

.method public abstract setTargetAppPackageName(Ljava/lang/String;)Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;
.end method

.method public abstract setWindowToken(Landroid/os/IBinder;)Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;
.end method
