.class public final synthetic Lcom/google/android/gms/nearby/messages/internal/zzau;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/nearby/messages/internal/zzbc;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/nearby/messages/internal/zzbh;

.field public final synthetic zzb:Lcom/google/android/gms/nearby/messages/Message;

.field public final synthetic zzc:Lcom/google/android/gms/nearby/messages/internal/zzbe;

.field public final synthetic zzd:Lcom/google/android/gms/nearby/messages/PublishOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzbh;Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/nearby/messages/internal/zzbe;Lcom/google/android/gms/nearby/messages/PublishOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzau;->zza:Lcom/google/android/gms/nearby/messages/internal/zzbh;

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/zzau;->zzb:Lcom/google/android/gms/nearby/messages/Message;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzau;->zzc:Lcom/google/android/gms/nearby/messages/internal/zzbe;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/zzau;->zzd:Lcom/google/android/gms/nearby/messages/PublishOptions;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/nearby/messages/internal/zzai;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzau;->zza:Lcom/google/android/gms/nearby/messages/internal/zzbh;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzau;->zzb:Lcom/google/android/gms/nearby/messages/Message;

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzau;->zzc:Lcom/google/android/gms/nearby/messages/internal/zzbe;

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/zzau;->zzd:Lcom/google/android/gms/nearby/messages/PublishOptions;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/nearby/messages/internal/zzbh;->zzb(Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/nearby/messages/internal/zzbe;Lcom/google/android/gms/nearby/messages/PublishOptions;Lcom/google/android/gms/nearby/messages/internal/zzai;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    return-void
.end method
