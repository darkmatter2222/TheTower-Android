.class public final Lcom/google/android/gms/internal/nearby/zzdz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzeb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzeb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzeb;-><init>(Lcom/google/android/gms/internal/nearby/zzea;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzdz;->zza:Lcom/google/android/gms/internal/nearby/zzeb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzco;)Lcom/google/android/gms/internal/nearby/zzdz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzdz;->zza:Lcom/google/android/gms/internal/nearby/zzeb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzeb;->zza(Lcom/google/android/gms/internal/nearby/zzeb;Lcom/google/android/gms/internal/nearby/zzco;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/nearby/zzeb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzdz;->zza:Lcom/google/android/gms/internal/nearby/zzeb;

    return-object v0
.end method
