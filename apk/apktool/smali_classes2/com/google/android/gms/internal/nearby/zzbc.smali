.class public final Lcom/google/android/gms/internal/nearby/zzbc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzbe;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzbe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzbe;-><init>(Lcom/google/android/gms/internal/nearby/zzbd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbc;->zza:Lcom/google/android/gms/internal/nearby/zzbe;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;)Lcom/google/android/gms/internal/nearby/zzbc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbc;->zza:Lcom/google/android/gms/internal/nearby/zzbe;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzbe;->zza(Lcom/google/android/gms/internal/nearby/zzbe;Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/nearby/zzcs;)Lcom/google/android/gms/internal/nearby/zzbc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbc;->zza:Lcom/google/android/gms/internal/nearby/zzbe;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzbe;->zzb(Lcom/google/android/gms/internal/nearby/zzbe;Lcom/google/android/gms/internal/nearby/zzcs;)V

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/nearby/zzbe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbc;->zza:Lcom/google/android/gms/internal/nearby/zzbe;

    return-object v0
.end method
