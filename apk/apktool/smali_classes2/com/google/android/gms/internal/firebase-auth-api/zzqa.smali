.class final Lcom/google/android/gms/internal/firebase-auth-api/zzqa;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzpx;
.source "com.google.firebase:firebase-auth@@24.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzpx<",
        "TKeyT;TPrimitiveT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpz;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzpz;)V
    .locals 0

    .line 2
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpz;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzpx;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzqc;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbt;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyT;)TPrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpz;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbt;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
