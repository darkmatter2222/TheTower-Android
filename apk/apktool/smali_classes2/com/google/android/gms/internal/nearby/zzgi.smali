.class final Lcom/google/android/gms/internal/nearby/zzgi;
.super Lcom/google/android/gms/internal/nearby/zzgp;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/nearby/zzlg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzgj;Lcom/google/android/gms/internal/nearby/zzlg;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzgi;->zza:Lcom/google/android/gms/internal/nearby/zzlg;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/nearby/zzgp;-><init>(Lcom/google/android/gms/internal/nearby/zzgo;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgi;->zza:Lcom/google/android/gms/internal/nearby/zzlg;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zzlg;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;->onEndpointLost(Ljava/lang/String;)V

    return-void
.end method
