.class public final synthetic Lcom/google/android/gms/nearby/messages/internal/zzat;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/nearby/messages/internal/zzbc;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzat;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/nearby/messages/internal/zzai;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzat;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    sget v1, Lcom/google/android/gms/nearby/messages/internal/zzbh;->zza:I

    .line 1
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzC(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    return-void
.end method
