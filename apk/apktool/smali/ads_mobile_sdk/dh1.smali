.class public final Lads_mobile_sdk/dh1;
.super Lads_mobile_sdk/bh1;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public d:Lads_mobile_sdk/u81;

.field public e:Lads_mobile_sdk/ch1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Lads_mobile_sdk/bh1;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lads_mobile_sdk/dh1;->a:I

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/dh1;->b:Landroid/content/Context;

    .line 114
    invoke-static {p1}, Lads_mobile_sdk/dh1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/dh1;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 28
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x22

    .line 29
    invoke-static {v0}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 30
    invoke-static {}, Landroid/os/Process;->isSdkSandbox()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-class v0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;

    .line 34
    invoke-virtual {p0}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->getClientPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/f23;
    .locals 6

    .line 2
    iget v0, p0, Lads_mobile_sdk/dh1;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lads_mobile_sdk/dh1;->d:Lads_mobile_sdk/u81;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lads_mobile_sdk/dh1;->e:Lads_mobile_sdk/ch1;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v1, p0, Lads_mobile_sdk/dh1;->c:Ljava/lang/String;

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 6
    :try_start_0
    new-instance v2, Lads_mobile_sdk/f23;

    iget-object v3, p0, Lads_mobile_sdk/dh1;->d:Lads_mobile_sdk/u81;

    .line 7
    check-cast v3, Lads_mobile_sdk/s81;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 9
    iget-object v5, v3, Lads_mobile_sdk/fs;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    sget v5, Lads_mobile_sdk/ly;->a:I

    const/4 v5, 0x1

    .line 11
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 13
    invoke-virtual {v3, v4, v5}, Lads_mobile_sdk/fs;->a(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v0

    .line 14
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 19
    :goto_0
    check-cast v3, Landroid/os/Bundle;

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 21
    invoke-direct {v2, v3}, Lads_mobile_sdk/f23;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 24
    const-string v2, "RemoteException getting install referrer information"

    invoke-static {v2}, Lads_mobile_sdk/gh1;->b(Ljava/lang/String;)V

    .line 25
    iput v1, p0, Lads_mobile_sdk/dh1;->a:I

    .line 26
    throw v0

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service not connected. Please start a connection before using the service."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
