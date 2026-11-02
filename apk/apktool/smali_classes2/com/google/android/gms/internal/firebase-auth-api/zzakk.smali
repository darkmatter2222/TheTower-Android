.class final Lcom/google/android/gms/internal/firebase-auth-api/zzakk;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

.field private final zzb:[B


# direct methods
.method private constructor <init>(I)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakk;->zzb:[B

    .line 7
    array-length v0, p1

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;-><init>([BII)V

    .line 9
    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/firebase-auth-api/zzako;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakk;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakk;->zzb:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;-><init>([B)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaky;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

    return-object v0
.end method
