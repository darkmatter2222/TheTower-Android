.class public final Lads_mobile_sdk/ut3;
.super Lcom/google/android/gms/common/internal/BaseGmsClient;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lads_mobile_sdk/wt3;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 7

    const/16 v3, 0x8

    const/4 v6, 0x0

    move-object v5, p1

    move-object v0, p0

    move-object v4, p1

    move-object v1, p2

    move-object v2, p3

    .line 41
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .line 2
    const-string v0, "binder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget v0, Lads_mobile_sdk/n81;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    instance-of v1, v0, Lads_mobile_sdk/o81;

    if-eqz v1, :cond_1

    .line 59
    check-cast v0, Lads_mobile_sdk/o81;

    return-object v0

    .line 61
    :cond_1
    new-instance v0, Lads_mobile_sdk/m81;

    invoke-direct {v0, p1}, Lads_mobile_sdk/m81;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xe8076a0

    return v0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    return-object v0
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.service.START"

    return-object v0
.end method
