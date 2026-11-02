.class public final Lcom/google/android/gms/internal/nearby/zznr;
.super Lcom/google/android/gms/nearby/messages/internal/zzx;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zznr;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-void
.end method


# virtual methods
.method public final zzd(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznr;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zznq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/nearby/zznq;-><init>(Lcom/google/android/gms/internal/nearby/zznr;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method
