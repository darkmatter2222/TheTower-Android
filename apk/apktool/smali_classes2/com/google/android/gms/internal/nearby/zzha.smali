.class public final synthetic Lcom/google/android/gms/internal/nearby/zzha;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/nearby/zzih;

.field public final synthetic zzb:[B

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field public final synthetic zze:Lcom/google/android/gms/nearby/connection/ConnectionOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzih;[BLjava/lang/String;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/nearby/connection/ConnectionOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzha;->zza:Lcom/google/android/gms/internal/nearby/zzih;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzha;->zzb:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzha;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/nearby/zzha;->zzd:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p5, p0, Lcom/google/android/gms/internal/nearby/zzha;->zze:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzha;->zza:Lcom/google/android/gms/internal/nearby/zzih;

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzha;->zzb:[B

    iget-object v4, p0, Lcom/google/android/gms/internal/nearby/zzha;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/nearby/zzha;->zzd:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iget-object v6, p0, Lcom/google/android/gms/internal/nearby/zzha;->zze:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/nearby/zzgy;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/nearby/zzif;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/nearby/zzif;-><init>(Lcom/google/android/gms/internal/nearby/zzih;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/nearby/zzgy;->zzy(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;[BLjava/lang/String;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/nearby/connection/ConnectionOptions;)V

    return-void
.end method
