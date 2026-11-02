.class public final synthetic Lcom/google/android/gms/internal/nearby/zzhd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/nearby/zzih;

.field public final synthetic zzb:[B

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Lcom/google/android/gms/common/api/internal/ListenerHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzih;[BLjava/lang/String;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzhd;->zza:Lcom/google/android/gms/internal/nearby/zzih;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzhd;->zzb:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzhd;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/nearby/zzhd;->zzd:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzhd;->zza:Lcom/google/android/gms/internal/nearby/zzih;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzhd;->zzb:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzhd;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzhd;->zzd:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzgy;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v4, Lcom/google/android/gms/internal/nearby/zzif;

    invoke-direct {v4, v0, p2}, Lcom/google/android/gms/internal/nearby/zzif;-><init>(Lcom/google/android/gms/internal/nearby/zzih;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1, v4, v1, v2, v3}, Lcom/google/android/gms/internal/nearby/zzgy;->zzw(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;[BLjava/lang/String;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    return-void
.end method
