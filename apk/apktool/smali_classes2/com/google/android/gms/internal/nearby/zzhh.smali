.class public final synthetic Lcom/google/android/gms/internal/nearby/zzhh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/nearby/zzih;

.field public final synthetic zzb:Ljava/util/List;

.field public final synthetic zzc:Lcom/google/android/gms/nearby/connection/Payload;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzih;Ljava/util/List;Lcom/google/android/gms/nearby/connection/Payload;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzhh;->zza:Lcom/google/android/gms/internal/nearby/zzih;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzhh;->zzb:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzhh;->zzc:Lcom/google/android/gms/nearby/connection/Payload;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzhh;->zza:Lcom/google/android/gms/internal/nearby/zzih;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzhh;->zzb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzhh;->zzc:Lcom/google/android/gms/nearby/connection/Payload;

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzgy;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v3, Lcom/google/android/gms/internal/nearby/zzif;

    invoke-direct {v3, v0, p2}, Lcom/google/android/gms/internal/nearby/zzif;-><init>(Lcom/google/android/gms/internal/nearby/zzih;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/String;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1
    invoke-virtual {p1, v3, v0, v2, p2}, Lcom/google/android/gms/internal/nearby/zzgy;->zzz(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;[Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;Z)V

    return-void
.end method
