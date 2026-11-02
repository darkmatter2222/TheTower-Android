.class final Lcom/google/android/gms/internal/firebase-auth-api/zzbk;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzbc;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbf;


# instance fields
.field private final zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbk;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbf;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbk;

    sget v1, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;->zza:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbk;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbc;-><init>()V

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbk;->zzb:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 9
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzbk;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzbk;

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbk;->zzb:I

    iget p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzbk;->zzb:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbk;->zzb:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbk;->zzb:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hashing.murmur3_128("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbi;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbk;->zzb:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;-><init>(I)V

    return-object v0
.end method
