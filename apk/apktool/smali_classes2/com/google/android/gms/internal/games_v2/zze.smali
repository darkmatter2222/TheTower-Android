.class Lcom/google/android/gms/internal/games_v2/zze;
.super Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;
    .locals 8

    .line 1
    check-cast p4, Lcom/google/android/gms/games/zzi;

    if-nez p4, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/games/zzi;->zza()Lcom/google/android/gms/games/zzh;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/games/zzh;->zzd()Lcom/google/android/gms/games/zzi;

    move-result-object p4

    :cond_0
    move-object v4, p4

    .line 3
    new-instance v0, Lcom/google/android/gms/games/internal/zzah;

    invoke-static {}, Lcom/google/android/gms/games/internal/zzap;->zza()Lcom/google/android/gms/games/internal/zzap;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/games/internal/zzah;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/games/zzi;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;Lcom/google/android/gms/games/internal/zzap;)V

    iget-object p1, v4, Lcom/google/android/gms/games/zzi;->zzn:Lcom/google/android/gms/games/internal/zzi;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/zzi;->zza()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    sget p1, Lcom/google/android/gms/games/internal/zzf;->zza:I

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzf;->zza(Landroid/app/Application;)Lcom/google/android/gms/games/internal/zzf;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/zzah;->zzu(Lcom/google/android/gms/games/internal/zzf;)V

    :cond_1
    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
