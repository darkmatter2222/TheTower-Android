.class public final synthetic Lcom/google/android/gms/internal/nearby/zzrl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/nearby/zzrr;

.field public final synthetic zzb:Lcom/google/android/gms/internal/nearby/zzpm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzrr;Lcom/google/android/gms/internal/nearby/zzpm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzrl;->zza:Lcom/google/android/gms/internal/nearby/zzrr;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzrl;->zzb:Lcom/google/android/gms/internal/nearby/zzpm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzrl;->zza:Lcom/google/android/gms/internal/nearby/zzrr;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzrl;->zzb:Lcom/google/android/gms/internal/nearby/zzpm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nearby/zzrr;->zzh(Lcom/google/android/gms/internal/nearby/zzpm;)V

    return-void
.end method
