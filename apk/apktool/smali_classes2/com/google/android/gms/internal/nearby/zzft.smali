.class final Lcom/google/android/gms/internal/nearby/zzft;
.super Lcom/google/android/gms/internal/nearby/zzgp;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/nearby/zzla;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzfx;Lcom/google/android/gms/internal/nearby/zzla;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzft;->zza:Lcom/google/android/gms/internal/nearby/zzla;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/nearby/zzgp;-><init>(Lcom/google/android/gms/internal/nearby/zzgo;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzft;->zza:Lcom/google/android/gms/internal/nearby/zzla;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zzla;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;->onDisconnected(Ljava/lang/String;)V

    return-void
.end method
