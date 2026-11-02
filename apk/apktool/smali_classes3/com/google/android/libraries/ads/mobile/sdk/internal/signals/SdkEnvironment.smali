.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;",
        "",
        "",
        "isInstantApp",
        "Ljava/lang/Boolean;",
        "isPrivilegedProcess",
        "Z",
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
.field public isInstantApp:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "instant_app"
    .end annotation
.end field

.field public isPrivilegedProcess:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_privileged_process"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;-><init>(Ljava/lang/Boolean;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isInstantApp:Ljava/lang/Boolean;

    .line 5
    iput-boolean p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isPrivilegedProcess:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isInstantApp:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isInstantApp:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isPrivilegedProcess:Z

    iget-boolean p1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isPrivilegedProcess:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isInstantApp:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isPrivilegedProcess:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isInstantApp:Ljava/lang/Boolean;

    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isPrivilegedProcess:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SdkEnvironment(isInstantApp="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isPrivilegedProcess="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
