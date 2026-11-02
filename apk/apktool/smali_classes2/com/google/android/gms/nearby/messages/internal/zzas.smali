.class public final synthetic Lcom/google/android/gms/nearby/messages/internal/zzas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/nearby/messages/internal/zzbc;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/nearby/messages/internal/zzbh;

.field public final synthetic zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field public final synthetic zzc:Lcom/google/android/gms/nearby/messages/internal/zzbg;

.field public final synthetic zzd:Lcom/google/android/gms/nearby/messages/SubscribeOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzbh;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/nearby/messages/internal/zzbg;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzas;->zza:Lcom/google/android/gms/nearby/messages/internal/zzbh;

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/zzas;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzas;->zzc:Lcom/google/android/gms/nearby/messages/internal/zzbg;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/zzas;->zzd:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/nearby/messages/internal/zzai;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzas;->zza:Lcom/google/android/gms/nearby/messages/internal/zzbh;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzas;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzas;->zzc:Lcom/google/android/gms/nearby/messages/internal/zzbg;

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/zzas;->zzd:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/nearby/messages/internal/zzbh;->zze(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/nearby/messages/internal/zzbg;Lcom/google/android/gms/nearby/messages/SubscribeOptions;Lcom/google/android/gms/nearby/messages/internal/zzai;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    return-void
.end method
