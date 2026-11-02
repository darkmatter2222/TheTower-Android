.class public final synthetic Lcom/google/android/gms/internal/nearby/zzhk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/nearby/zzih;

.field public final synthetic zzb:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzih;Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzhk;->zza:Lcom/google/android/gms/internal/nearby/zzih;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzhk;->zzb:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzhk;->zza:Lcom/google/android/gms/internal/nearby/zzih;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzhk;->zzb:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/nearby/zzih;->zze(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;Ljava/lang/Void;)V

    return-void
.end method
