.class public final synthetic Lcom/google/android/gms/internal/nearby/zzgz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/nearby/zzih;

.field public final synthetic zzb:Lcom/google/android/gms/internal/nearby/zzid;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzih;Lcom/google/android/gms/internal/nearby/zzid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzgz;->zza:Lcom/google/android/gms/internal/nearby/zzih;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzgz;->zzb:Lcom/google/android/gms/internal/nearby/zzid;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgz;->zza:Lcom/google/android/gms/internal/nearby/zzih;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgz;->zzb:Lcom/google/android/gms/internal/nearby/zzid;

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzgy;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/nearby/zzif;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/nearby/zzif;-><init>(Lcom/google/android/gms/internal/nearby/zzih;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/nearby/zzid;->zza(Lcom/google/android/gms/internal/nearby/zzgy;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-void
.end method
