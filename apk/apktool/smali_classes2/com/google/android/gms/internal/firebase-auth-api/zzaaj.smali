.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaaj;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzsz;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzsz;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzsz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzsz;Lcom/google/android/gms/internal/firebase-auth-api/zzsz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaaj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzsz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaaj;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzsz;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzsz;Lcom/google/android/gms/internal/firebase-auth-api/zzsz;Lcom/google/android/gms/internal/firebase-auth-api/zzaam;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzsz;Lcom/google/android/gms/internal/firebase-auth-api/zzsz;)V

    return-void
.end method


# virtual methods
.method public final zza([BI)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 5
    array-length v0, p1

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaaj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzsz;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzsz;->zza([BI)[B

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaaj;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzsz;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzsz;->zza([BI)[B

    move-result-object p1

    return-object p1
.end method
