.class public final Lcom/google/android/gms/internal/nearby/zzfl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzfn;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzfn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzfn;-><init>(Lcom/google/android/gms/internal/nearby/zzfm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzfl;->zza:Lcom/google/android/gms/internal/nearby/zzfn;

    return-void
.end method


# virtual methods
.method public final zza(J)Lcom/google/android/gms/internal/nearby/zzfl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzfl;->zza:Lcom/google/android/gms/internal/nearby/zzfn;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/nearby/zzfn;->zza(Lcom/google/android/gms/internal/nearby/zzfn;J)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/nearby/zzkj;)Lcom/google/android/gms/internal/nearby/zzfl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzfl;->zza:Lcom/google/android/gms/internal/nearby/zzfn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzfn;->zzb(Lcom/google/android/gms/internal/nearby/zzfn;Lcom/google/android/gms/internal/nearby/zzkj;)V

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/nearby/zzfn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzfl;->zza:Lcom/google/android/gms/internal/nearby/zzfn;

    return-object v0
.end method
