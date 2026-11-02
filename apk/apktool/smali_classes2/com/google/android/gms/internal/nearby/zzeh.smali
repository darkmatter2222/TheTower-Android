.class public final Lcom/google/android/gms/internal/nearby/zzeh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzej;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzej;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzej;-><init>(Lcom/google/android/gms/internal/nearby/zzei;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzeh;->zza:Lcom/google/android/gms/internal/nearby/zzej;

    return-void
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/gms/internal/nearby/zzeh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzeh;->zza:Lcom/google/android/gms/internal/nearby/zzej;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzej;->zza(Lcom/google/android/gms/internal/nearby/zzej;Z)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/common/api/internal/IStatusCallback;)Lcom/google/android/gms/internal/nearby/zzeh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzeh;->zza:Lcom/google/android/gms/internal/nearby/zzej;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzej;->zzb(Lcom/google/android/gms/internal/nearby/zzej;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/nearby/zzej;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzeh;->zza:Lcom/google/android/gms/internal/nearby/zzej;

    return-object v0
.end method
