.class final Lcom/google/android/gms/internal/firebase-auth-api/zzpl;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzpm;
.source "com.google.firebase:firebase-auth@@24.2.0"


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpo;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzpo;)V
    .locals 0

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpl;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpo;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzpm;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzpn;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcx;)Lcom/google/android/gms/internal/firebase-auth-api/zzcs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpl;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcx;)Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object p1

    return-object p1
.end method
