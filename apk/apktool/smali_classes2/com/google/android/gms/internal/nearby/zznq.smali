.class final Lcom/google/android/gms/internal/nearby/zznq;
.super Lcom/google/android/gms/internal/nearby/zznp;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zznr;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/nearby/zznq;->zza:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zznp;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic notifyListener(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/nearby/messages/StatusCallback;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/nearby/zznq;->zza:Z

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/nearby/messages/StatusCallback;->onPermissionChanged(Z)V

    return-void
.end method
