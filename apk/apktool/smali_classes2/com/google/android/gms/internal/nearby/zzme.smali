.class public final Lcom/google/android/gms/internal/nearby/zzme;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzmg;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzmg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzmg;-><init>(Lcom/google/android/gms/internal/nearby/zzmf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzme;->zza:Lcom/google/android/gms/internal/nearby/zzmg;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzme;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzme;->zza:Lcom/google/android/gms/internal/nearby/zzmg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzmg;->zza(Lcom/google/android/gms/internal/nearby/zzmg;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/nearby/zzkj;)Lcom/google/android/gms/internal/nearby/zzme;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzme;->zza:Lcom/google/android/gms/internal/nearby/zzmg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzmg;->zzb(Lcom/google/android/gms/internal/nearby/zzmg;Lcom/google/android/gms/internal/nearby/zzkj;)V

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/nearby/zzmg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzme;->zza:Lcom/google/android/gms/internal/nearby/zzmg;

    return-object v0
.end method
