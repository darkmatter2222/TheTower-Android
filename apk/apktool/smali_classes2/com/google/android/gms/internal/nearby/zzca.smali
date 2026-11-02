.class public final Lcom/google/android/gms/internal/nearby/zzca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzcc;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzcc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzcc;-><init>(Lcom/google/android/gms/internal/nearby/zzcb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzca;->zza:Lcom/google/android/gms/internal/nearby/zzcc;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzdp;)Lcom/google/android/gms/internal/nearby/zzca;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzca;->zza:Lcom/google/android/gms/internal/nearby/zzcc;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzcc;->zza(Lcom/google/android/gms/internal/nearby/zzcc;Lcom/google/android/gms/internal/nearby/zzdp;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/nearby/zzcc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzca;->zza:Lcom/google/android/gms/internal/nearby/zzcc;

    return-object v0
.end method
