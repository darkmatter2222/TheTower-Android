.class public final Lcom/google/android/gms/internal/nearby/zzjj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzjl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzjl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzjl;-><init>(Lcom/google/android/gms/internal/nearby/zzjk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzjj;->zza:Lcom/google/android/gms/internal/nearby/zzjl;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzjj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzjj;->zza:Lcom/google/android/gms/internal/nearby/zzjl;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzjl;->zza(Lcom/google/android/gms/internal/nearby/zzjl;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/nearby/zzjl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzjj;->zza:Lcom/google/android/gms/internal/nearby/zzjl;

    return-object v0
.end method
