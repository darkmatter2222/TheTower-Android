.class public final synthetic Lcom/google/android/gms/internal/firebase-auth-api/zzpi;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzqr;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzph;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzph;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzon;

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzoj;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzoh;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzoh;)V

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpk;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpk;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzor;

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzps;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzpq;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpq;)V

    return-object v0
.end method
