.class final Lcom/google/firebase/auth/internal/zzau;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/internal/zzar;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zzar;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzau;->zza:Lcom/google/firebase/auth/internal/zzar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 2
    instance-of p1, p1, Lcom/google/firebase/FirebaseNetworkException;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/firebase/auth/internal/zzas;->zza()Lcom/google/android/gms/common/logging/Logger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failure to refresh token; scheduling refresh after failure"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/logging/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzau;->zza:Lcom/google/firebase/auth/internal/zzar;

    iget-object p1, p1, Lcom/google/firebase/auth/internal/zzar;->zza:Lcom/google/firebase/auth/internal/zzas;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzas;->zzd()V

    :cond_0
    return-void
.end method
