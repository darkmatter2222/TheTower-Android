.class public final Lcom/google/android/gms/internal/nearby/zzbg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzbi;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzbi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzbi;-><init>(Lcom/google/android/gms/internal/nearby/zzbh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbg;->zza:Lcom/google/android/gms/internal/nearby/zzbi;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzcy;)Lcom/google/android/gms/internal/nearby/zzbg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbg;->zza:Lcom/google/android/gms/internal/nearby/zzbi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzbi;->zza(Lcom/google/android/gms/internal/nearby/zzbi;Lcom/google/android/gms/internal/nearby/zzcy;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/nearby/zzbi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbg;->zza:Lcom/google/android/gms/internal/nearby/zzbi;

    return-object v0
.end method
