.class final Lcom/google/android/gms/internal/firebase-auth-api/zzsv;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzcp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzss;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzpu<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzss;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

.field private final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzot;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzss;Lcom/google/android/gms/internal/firebase-auth-api/zzpu;Lcom/google/android/gms/internal/firebase-auth-api/zzot;Lcom/google/android/gms/internal/firebase-auth-api/zzot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzss;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzpu<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzss;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzot;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzot;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzss;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpu;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzss;Lcom/google/android/gms/internal/firebase-auth-api/zzpu;Lcom/google/android/gms/internal/firebase-auth-api/zzot;Lcom/google/android/gms/internal/firebase-auth-api/zzot;Lcom/google/android/gms/internal/firebase-auth-api/zzsu;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzsv;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzss;Lcom/google/android/gms/internal/firebase-auth-api/zzpu;Lcom/google/android/gms/internal/firebase-auth-api/zzot;Lcom/google/android/gms/internal/firebase-auth-api/zzot;)V

    return-void
.end method


# virtual methods
.method public final zza([B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpu;->zza([B)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzss;

    .line 8
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzss;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcp;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcp;->zza([B[B)V

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzss;->zzb:I

    array-length v3, p2

    int-to-long v3, v3

    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzot;->zza(IJ)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzot;->zza()V

    .line 14
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid MAC"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzss;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzss;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcp;->zza([B)[B

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzss;

    iget v2, v2, Lcom/google/android/gms/internal/firebase-auth-api/zzss;->zzb:I

    array-length p1, p1

    int-to-long v3, p1

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzot;->zza(IJ)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzot;->zza()V

    .line 20
    throw p1
.end method
