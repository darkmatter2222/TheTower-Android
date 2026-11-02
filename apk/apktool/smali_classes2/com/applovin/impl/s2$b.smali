.class final Lcom/applovin/impl/s2$b;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/s2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private final b:Lcom/applovin/impl/x4;

.field private final c:I

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/x4;ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/s2$b;->a:Lcom/applovin/impl/sdk/p;

    iput-object p2, p0, Lcom/applovin/impl/s2$b;->b:Lcom/applovin/impl/x4;

    iput p3, p0, Lcom/applovin/impl/s2$b;->c:I

    iput-object p4, p0, Lcom/applovin/impl/s2$b;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.android.vending.licensing.ILicenseResultListener"

    return-object v0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const-string v0, "LicenseVerificationManager"

    const-string v1, "Verified with code "

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    :try_start_0
    const-string p1, "com.android.vending.licensing.ILicenseResultListener"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/applovin/impl/s2$b;->a:Lcom/applovin/impl/sdk/p;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/s2$b;->b:Lcom/applovin/impl/x4;

    invoke-static {}, Lcom/applovin/impl/t2;->a()Lcom/applovin/impl/t2$a;

    move-result-object v3

    .line 13
    invoke-virtual {v3, p4}, Lcom/applovin/impl/t2$a;->b(Ljava/lang/String;)Lcom/applovin/impl/t2$a;

    move-result-object p4

    .line 14
    invoke-virtual {p4, p2}, Lcom/applovin/impl/t2$a;->a(Ljava/lang/String;)Lcom/applovin/impl/t2$a;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p1}, Lcom/applovin/impl/t2$a;->b(I)Lcom/applovin/impl/t2$a;

    move-result-object p1

    iget p2, p0, Lcom/applovin/impl/s2$b;->c:I

    .line 16
    invoke-virtual {p1, p2}, Lcom/applovin/impl/t2$a;->a(I)Lcom/applovin/impl/t2$a;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/applovin/impl/t2$a;->a()Lcom/applovin/impl/t2;

    move-result-object p1

    .line 18
    invoke-virtual {v1, p1}, Lcom/applovin/impl/x4;->b(Ljava/lang/Object;)Lcom/applovin/impl/x4;

    if-eqz p3, :cond_2

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/s2$b;->d:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return v2

    :catchall_0
    move-exception p1

    .line 39
    :try_start_1
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/applovin/impl/s2$b;->a:Lcom/applovin/impl/sdk/p;

    const-string p3, "Exception handling verifyLicense callback"

    invoke-virtual {p2, v0, p3, p1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    :cond_3
    iget-object p2, p0, Lcom/applovin/impl/s2$b;->b:Lcom/applovin/impl/x4;

    new-instance p3, Ljava/lang/Exception;

    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Lcom/applovin/impl/x4;->a(Ljava/lang/Object;)Lcom/applovin/impl/x4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    iget-object p1, p0, Lcom/applovin/impl/s2$b;->d:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    return p1

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lcom/applovin/impl/s2$b;->d:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 47
    throw p1
.end method
