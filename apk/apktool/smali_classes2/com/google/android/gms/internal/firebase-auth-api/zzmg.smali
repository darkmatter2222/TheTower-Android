.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzmg;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzbr;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:[B

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

.field private final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzmj;

.field private final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzmf;

.field private final zzf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zza:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaau;Lcom/google/android/gms/internal/firebase-auth-api/zzmi;Lcom/google/android/gms/internal/firebase-auth-api/zzmj;Lcom/google/android/gms/internal/firebase-auth-api/zzmf;Lcom/google/android/gms/internal/firebase-auth-api/zzaau;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaau;->zzb()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zzb:[B

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzmj;

    .line 16
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzmf;

    .line 17
    invoke-virtual {p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaau;->zzb()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zzf:[B

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzla;)Lcom/google/android/gms/internal/firebase-auth-api/zzbr;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne v1, v2, :cond_0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zznj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzla;)Lcom/google/android/gms/internal/firebase-auth-api/zzbr;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v1, v0

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;

    move-object v2, v1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object v1

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzmn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzmn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzmj;

    move-result-object v4

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzmf;

    move-result-object v2

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlp;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object v5

    move-object v6, v4

    move-object v4, v2

    move-object v2, v3

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaau;Lcom/google/android/gms/internal/firebase-auth-api/zzmi;Lcom/google/android/gms/internal/firebase-auth-api/zzmj;Lcom/google/android/gms/internal/firebase-auth-api/zzmf;Lcom/google/android/gms/internal/firebase-auth-api/zzaau;)V

    return-object v0
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 21
    new-array p2, v0, [B

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zzb:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzmj;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzmf;

    invoke-static {v1, v2, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzmi;Lcom/google/android/gms/internal/firebase-auth-api/zzmj;Lcom/google/android/gms/internal/firebase-auth-api/zzmf;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzme;

    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zza()[B

    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zzf:[B

    array-length v2, v2

    array-length v3, v1

    add-int/2addr v2, v3

    .line 25
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zza:[B

    invoke-virtual {p2, p1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zzb([BI[B)[B

    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zzf:[B

    array-length v2, p2

    invoke-static {p2, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zzf:[B

    array-length p2, p2

    array-length v2, v1

    invoke-static {v1, v0, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
