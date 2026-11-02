.class public final Lcom/google/android/gms/nearby/exposurenotification/PackageConfiguration$PackageConfigurationBuilder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/exposurenotification/PackageConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageConfigurationBuilder"
.end annotation


# instance fields
.field private zza:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/nearby/exposurenotification/PackageConfiguration;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/nearby/exposurenotification/PackageConfiguration;

    iget-object v1, p0, Lcom/google/android/gms/nearby/exposurenotification/PackageConfiguration$PackageConfigurationBuilder;->zza:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/google/android/gms/nearby/exposurenotification/PackageConfiguration;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public setValues(Landroid/os/Bundle;)Lcom/google/android/gms/nearby/exposurenotification/PackageConfiguration$PackageConfigurationBuilder;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/PackageConfiguration$PackageConfigurationBuilder;->zza:Landroid/os/Bundle;

    return-object p0
.end method
