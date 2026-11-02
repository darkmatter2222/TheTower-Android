.class public final Lcom/google/android/gms/internal/nearby/zzoh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzoj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzoj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzoj;-><init>(Lcom/google/android/gms/internal/nearby/zzoi;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzoh;->zza:Lcom/google/android/gms/internal/nearby/zzoj;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzpe;)Lcom/google/android/gms/internal/nearby/zzoh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzoh;->zza:Lcom/google/android/gms/internal/nearby/zzoj;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzoj;->zza(Lcom/google/android/gms/internal/nearby/zzoj;Lcom/google/android/gms/internal/nearby/zzpe;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/nearby/zzoj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzoh;->zza:Lcom/google/android/gms/internal/nearby/zzoj;

    return-object v0
.end method
