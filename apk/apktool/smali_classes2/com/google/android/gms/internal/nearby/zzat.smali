.class final Lcom/google/android/gms/internal/nearby/zzat;
.super Lcom/google/android/gms/internal/nearby/zzcu;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/nearby/exposurenotification/DiagnosisKeyFileProvider;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzax;Lcom/google/android/gms/nearby/exposurenotification/DiagnosisKeyFileProvider;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzat;->zza:Lcom/google/android/gms/nearby/exposurenotification/DiagnosisKeyFileProvider;

    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zzcu;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzat;->zza:Lcom/google/android/gms/nearby/exposurenotification/DiagnosisKeyFileProvider;

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/exposurenotification/DiagnosisKeyFileProvider;->zza()Ljava/io/File;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 2
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzc()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzat;->zza:Lcom/google/android/gms/nearby/exposurenotification/DiagnosisKeyFileProvider;

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/exposurenotification/DiagnosisKeyFileProvider;->zzb()Z

    move-result v0

    return v0
.end method
