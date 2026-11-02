.class public final Lcom/google/android/gms/internal/nearby/zzci;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzck;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzck;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzck;-><init>(Lcom/google/android/gms/internal/nearby/zzcj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzci;->zza:Lcom/google/android/gms/internal/nearby/zzck;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzdp;)Lcom/google/android/gms/internal/nearby/zzci;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzci;->zza:Lcom/google/android/gms/internal/nearby/zzck;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzck;->zza(Lcom/google/android/gms/internal/nearby/zzck;Lcom/google/android/gms/internal/nearby/zzdp;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/nearby/zzck;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzci;->zza:Lcom/google/android/gms/internal/nearby/zzck;

    return-object v0
.end method
