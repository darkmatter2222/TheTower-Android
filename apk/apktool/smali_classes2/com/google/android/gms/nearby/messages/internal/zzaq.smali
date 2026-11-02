.class public final synthetic Lcom/google/android/gms/nearby/messages/internal/zzaq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/nearby/messages/internal/zzbh;

.field public final synthetic zzb:Lcom/google/android/gms/nearby/messages/internal/zzbc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzbh;Lcom/google/android/gms/nearby/messages/internal/zzbc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzaq;->zza:Lcom/google/android/gms/nearby/messages/internal/zzbh;

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/zzaq;->zzb:Lcom/google/android/gms/nearby/messages/internal/zzbc;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzaq;->zza:Lcom/google/android/gms/nearby/messages/internal/zzbh;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzaq;->zzb:Lcom/google/android/gms/nearby/messages/internal/zzbc;

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzai;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzbh;->zzd(Lcom/google/android/gms/nearby/messages/internal/zzbc;Lcom/google/android/gms/nearby/messages/internal/zzai;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
