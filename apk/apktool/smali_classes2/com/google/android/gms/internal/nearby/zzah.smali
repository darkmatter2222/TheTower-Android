.class public final synthetic Lcom/google/android/gms/internal/nearby/zzah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/nearby/zzax;

.field public final synthetic zzb:Ljava/util/List;

.field public final synthetic zzc:Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;

.field public final synthetic zzd:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzax;Ljava/util/List;Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzah;->zza:Lcom/google/android/gms/internal/nearby/zzax;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzah;->zzb:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzah;->zzc:Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;

    iput-object p4, p0, Lcom/google/android/gms/internal/nearby/zzah;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzah;->zza:Lcom/google/android/gms/internal/nearby/zzax;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzah;->zzb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzah;->zzc:Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzah;->zzd:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzn;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    const/high16 v6, 0x10000000

    .line 3
    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 4
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzn;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzdr;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzed;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzed;-><init>()V

    .line 6
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/nearby/zzed;->zzc(Ljava/util/List;)Lcom/google/android/gms/internal/nearby/zzed;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/nearby/zzed;->zzb(Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;)Lcom/google/android/gms/internal/nearby/zzed;

    new-instance v2, Lcom/google/android/gms/internal/nearby/zzas;

    invoke-direct {v2, v0, v4, p2}, Lcom/google/android/gms/internal/nearby/zzas;-><init>(Lcom/google/android/gms/internal/nearby/zzax;Ljava/util/List;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/nearby/zzed;->zzd(Lcom/google/android/gms/common/api/internal/IStatusCallback;)Lcom/google/android/gms/internal/nearby/zzed;

    .line 9
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/nearby/zzed;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzed;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzed;->zzf()Lcom/google/android/gms/internal/nearby/zzef;

    move-result-object v0

    .line 10
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/nearby/zzdr;->zzo(Lcom/google/android/gms/internal/nearby/zzef;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const v1, 0x9a52

    .line 12
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 11
    invoke-static {v0, p2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
