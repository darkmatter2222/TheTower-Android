.class public final synthetic Lcom/google/android/gms/internal/nearby/zzre;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/nearby/zzrs;

.field public final synthetic zzb:Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzrs;Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzre;->zza:Lcom/google/android/gms/internal/nearby/zzrs;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzre;->zzb:Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzre;->zza:Lcom/google/android/gms/internal/nearby/zzrs;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzre;->zzb:Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzqs;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzqs;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzos;

    new-instance v2, Lcom/google/android/gms/internal/nearby/zzqk;

    invoke-direct {v2}, Lcom/google/android/gms/internal/nearby/zzqk;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/nearby/zzrk;

    .line 2
    invoke-direct {v3, v0, p2}, Lcom/google/android/gms/internal/nearby/zzrk;-><init>(Lcom/google/android/gms/internal/nearby/zzrs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/nearby/zzqk;->zza(Lcom/google/android/gms/internal/nearby/zzpb;)Lcom/google/android/gms/internal/nearby/zzqk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzqk;->zzb()Lcom/google/android/gms/internal/nearby/zzqm;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/nearby/zzos;->zzl(Lcom/google/android/gms/internal/nearby/zzqm;)V

    const-class p1, Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->createListenerKey(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object p1

    const/16 p2, 0x519

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/nearby/zzrs;->doUnregisterEventListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;I)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
