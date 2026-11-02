.class final Lcom/google/android/gms/internal/nearby/zzgl;
.super Lcom/google/android/gms/internal/nearby/zzgp;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/nearby/zzli;

.field final synthetic zzb:Lcom/google/android/gms/internal/nearby/zzgn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzgn;Lcom/google/android/gms/internal/nearby/zzli;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzgl;->zzb:Lcom/google/android/gms/internal/nearby/zzgn;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzgl;->zza:Lcom/google/android/gms/internal/nearby/zzli;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/nearby/zzgp;-><init>(Lcom/google/android/gms/internal/nearby/zzgo;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgl;->zzb:Lcom/google/android/gms/internal/nearby/zzgn;

    invoke-static {v0}, Lcom/google/android/gms/internal/nearby/zzgn;->zzb(Lcom/google/android/gms/internal/nearby/zzgn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgl;->zza:Lcom/google/android/gms/internal/nearby/zzli;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzli;->zza()Lcom/google/android/gms/internal/nearby/zzmb;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/nearby/zzmd;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/nearby/zzmb;)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/nearby/zzgl;->zza:Lcom/google/android/gms/internal/nearby/zzli;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzli;->zza()Lcom/google/android/gms/internal/nearby/zzmb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzmb;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Failed to convert incoming ParcelablePayload %d to Payload."

    .line 4
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NearbyConnectionsClient"

    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/nearby/connection/Payload;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/nearby/connection/Payload;->asBytes()[B

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgl;->zza:Lcom/google/android/gms/internal/nearby/zzli;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzli;->zzb()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzgl;->zza:Lcom/google/android/gms/internal/nearby/zzli;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzli;->zzc()Z

    move-result v2

    .line 7
    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;->onMessageReceived(Ljava/lang/String;[BZ)V

    :cond_2
    :goto_0
    return-void
.end method
