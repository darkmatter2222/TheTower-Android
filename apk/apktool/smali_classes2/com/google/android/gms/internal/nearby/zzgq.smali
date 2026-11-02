.class final Lcom/google/android/gms/internal/nearby/zzgq;
.super Lcom/google/android/gms/internal/nearby/zzgp;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/nearby/zzli;

.field final synthetic zzb:Lcom/google/android/gms/nearby/connection/Payload;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzgu;Lcom/google/android/gms/internal/nearby/zzli;Lcom/google/android/gms/nearby/connection/Payload;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzgq;->zza:Lcom/google/android/gms/internal/nearby/zzli;

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzgq;->zzb:Lcom/google/android/gms/nearby/connection/Payload;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/nearby/zzgp;-><init>(Lcom/google/android/gms/internal/nearby/zzgo;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/nearby/connection/PayloadCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgq;->zza:Lcom/google/android/gms/internal/nearby/zzli;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zzli;->zzb()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgq;->zzb:Lcom/google/android/gms/nearby/connection/Payload;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/nearby/connection/PayloadCallback;->onPayloadReceived(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;)V

    return-void
.end method
