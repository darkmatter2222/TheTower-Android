.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzjv;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;-><init>()V

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzqs;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzqr;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjp;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjp;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/firebase-auth-api/zzjp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjp;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzjp$zza;

    move-result-object v0

    const/16 v1, 0x40

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjp$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzjp$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzjp$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjp$zzb;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjp$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjp$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzjp$zza;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjp$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzjp;

    move-result-object v0

    return-object v0
.end method
