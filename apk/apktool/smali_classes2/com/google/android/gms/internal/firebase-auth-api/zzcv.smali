.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzcv;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

.field public static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

.field public static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

.field public static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

.field public static final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

.field public static final zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;


# instance fields
.field private final zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    const-string v1, "UNKNOWN_PREFIX"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    const-string v1, "RAW"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    const-string v1, "WITH_ID_REQUIREMENT"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzg:Ljava/lang/String;

    return-object v0
.end method
