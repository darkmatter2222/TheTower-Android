.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzcw;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

.field public static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

.field public static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

.field public static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

.field public static final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzcw;


# instance fields
.field private final zzf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

    const-string v1, "UNKNOWN_KEYMATERIAL"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

    const-string v1, "SYMMETRIC"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

    const-string v1, "ASYMMETRIC_PRIVATE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

    const-string v1, "ASYMMETRIC_PUBLIC"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

    const-string v1, "REMOTE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;->zzf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;->zzf:Ljava/lang/String;

    return-object v0
.end method
