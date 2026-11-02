.class final Lcom/google/android/gms/internal/nearby/zzgc;
.super Lcom/google/android/gms/internal/nearby/zzgp;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/nearby/zzlc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzgg;Lcom/google/android/gms/internal/nearby/zzlc;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zza:Lcom/google/android/gms/internal/nearby/zzlc;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/nearby/zzgp;-><init>(Lcom/google/android/gms/internal/nearby/zzgo;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;

    iget-object p1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zza:Lcom/google/android/gms/internal/nearby/zzlc;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzlc;->zzc()Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zza:Lcom/google/android/gms/internal/nearby/zzlc;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzlc;->zza()I

    iget-object p1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zza:Lcom/google/android/gms/internal/nearby/zzlc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzlc;->zzb()Lcom/google/android/gms/nearby/connection/zzu;

    return-void
.end method
