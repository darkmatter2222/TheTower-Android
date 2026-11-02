.class final Lcom/google/android/gms/internal/firebase-auth-api/zzik;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzbm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzpu<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzih;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

.field private final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzot;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzih;Lcom/google/android/gms/internal/firebase-auth-api/zzpu;Lcom/google/android/gms/internal/firebase-auth-api/zzot;Lcom/google/android/gms/internal/firebase-auth-api/zzot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzih;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzpu<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzih;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzot;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzot;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzik;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzik;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpu;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzik;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzik;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzih;Lcom/google/android/gms/internal/firebase-auth-api/zzpu;Lcom/google/android/gms/internal/firebase-auth-api/zzot;Lcom/google/android/gms/internal/firebase-auth-api/zzot;Lcom/google/android/gms/internal/firebase-auth-api/zzij;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzik;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzih;Lcom/google/android/gms/internal/firebase-auth-api/zzpu;Lcom/google/android/gms/internal/firebase-auth-api/zzot;Lcom/google/android/gms/internal/firebase-auth-api/zzot;)V

    return-void
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzik;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpu;

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

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    .line 8
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;->zza([B[B)[B

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzik;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zzb:I

    array-length v4, p1

    int-to-long v4, v4

    invoke-interface {v3, v1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzot;->zza(IJ)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzik;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzot;->zza()V

    .line 14
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "decryption failed"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzik;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;->zzb([B[B)[B

    move-result-object p2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzik;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzik;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zzb:I

    array-length p1, p1

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzot;->zza(IJ)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 19
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzik;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzot;->zza()V

    .line 20
    throw p1
.end method
