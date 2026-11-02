.class public final Lcom/google/android/gms/internal/nearby/zzqt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzqv;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzqv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzqv;-><init>(Lcom/google/android/gms/internal/nearby/zzqu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzqt;->zza:Lcom/google/android/gms/internal/nearby/zzqv;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/nearby/zzqt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzqt;->zza:Lcom/google/android/gms/internal/nearby/zzqv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzqv;->zzc(Lcom/google/android/gms/internal/nearby/zzqv;I)V

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/nearby/zzqt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzqt;->zza:Lcom/google/android/gms/internal/nearby/zzqv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzqv;->zzd(Lcom/google/android/gms/internal/nearby/zzqv;I)V

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/nearby/zzqv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzqt;->zza:Lcom/google/android/gms/internal/nearby/zzqv;

    return-object v0
.end method
