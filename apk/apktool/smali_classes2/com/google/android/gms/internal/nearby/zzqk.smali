.class public final Lcom/google/android/gms/internal/nearby/zzqk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzqm;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzqm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzqm;-><init>(Lcom/google/android/gms/internal/nearby/zzql;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzqk;->zza:Lcom/google/android/gms/internal/nearby/zzqm;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzpb;)Lcom/google/android/gms/internal/nearby/zzqk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzqk;->zza:Lcom/google/android/gms/internal/nearby/zzqm;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzqm;->zza(Lcom/google/android/gms/internal/nearby/zzqm;Lcom/google/android/gms/internal/nearby/zzpb;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/nearby/zzqm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzqk;->zza:Lcom/google/android/gms/internal/nearby/zzqm;

    return-object v0
.end method
