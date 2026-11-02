.class Lcom/applovin/impl/s2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/s2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private final b:Lcom/applovin/impl/x4;


# direct methods
.method public static synthetic $r8$lambda$vx37qOxdHlJJsTutexd9f4l1qvw(Lcom/applovin/impl/s2$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/s2$a;->a()V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/x4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/s2$a;->a:Lcom/applovin/impl/sdk/p;

    iput-object p2, p0, Lcom/applovin/impl/s2$a;->b:Lcom/applovin/impl/x4;

    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/s2$a;->a:Lcom/applovin/impl/sdk/p;

    const-string v2, "LicenseVerificationManager"

    const-string v3, "Failed to unbind license service"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    const-string v1, "LicenseVerificationManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/s2$a;->a:Lcom/applovin/impl/sdk/p;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "License service connected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    .line 6
    new-instance v0, Lcom/applovin/impl/s2$b;

    iget-object v2, p0, Lcom/applovin/impl/s2$a;->a:Lcom/applovin/impl/sdk/p;

    iget-object v3, p0, Lcom/applovin/impl/s2$a;->b:Lcom/applovin/impl/x4;

    new-instance v4, Lcom/applovin/impl/s2$a$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/applovin/impl/s2$a$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/s2$a;)V

    invoke-direct {v0, v2, v3, p1, v4}, Lcom/applovin/impl/s2$b;-><init>(Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/x4;ILjava/lang/Runnable;)V

    .line 9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 12
    :try_start_0
    const-string v3, "com.android.vending.licensing.ILicensingService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    int-to-long v3, p1

    .line 13
    invoke-virtual {v2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 18
    invoke-interface {p2, v0, v2, p1, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 33
    :cond_1
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "transact() returned false"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    :try_start_2
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/applovin/impl/s2$a;->a:Lcom/applovin/impl/sdk/p;

    const-string v0, "Failed to check license"

    invoke-virtual {p2, v1, v0, p1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    :cond_2
    invoke-direct {p0}, Lcom/applovin/impl/s2$a;->a()V

    .line 40
    iget-object p2, p0, Lcom/applovin/impl/s2$a;->b:Lcom/applovin/impl/x4;

    invoke-virtual {p2, p1}, Lcom/applovin/impl/x4;->a(Ljava/lang/Object;)Lcom/applovin/impl/x4;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 45
    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "License service disconnected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/s2$a;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LicenseVerificationManager"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/p;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/s2$a;->b:Lcom/applovin/impl/x4;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/x4;->a(Ljava/lang/Object;)Lcom/applovin/impl/x4;

    return-void
.end method
