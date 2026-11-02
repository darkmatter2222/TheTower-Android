.class final Lcom/google/firebase/auth/internal/zzar;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/firebase/auth/internal/zzas;

.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zzas;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzar;->zza:Lcom/google/firebase/auth/internal/zzas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzar;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzar;->zzb:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/firebase/auth/zzad;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/zzad;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/auth/zzad;->zzb()Lcom/google/firebase/auth/zzat;

    move-result-object v1

    if-nez v1, :cond_0

    .line 10
    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/zzat;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 12
    :goto_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzi()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->getAccessToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 14
    invoke-static {}, Lcom/google/firebase/auth/internal/zzas;->zza()Lcom/google/android/gms/common/logging/Logger;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Token refreshing started"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/common/logging/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    new-instance v1, Lcom/google/firebase/auth/internal/zzau;

    invoke-direct {v1, p0}, Lcom/google/firebase/auth/internal/zzau;-><init>(Lcom/google/firebase/auth/internal/zzar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :cond_1
    return-void
.end method
