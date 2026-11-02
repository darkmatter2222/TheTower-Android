.class final enum Lcom/google/android/gms/internal/firebase-auth-api/zzalp;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@24.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzalp;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

.field public static final enum zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

.field public static final enum zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

.field public static final enum zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/firebase-auth-api/zzalp;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    .line 4
    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    const-string v5, "MAP"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    .line 5
    filled-new-array {v0, v1, v3, v4}, [Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    move-result-object v0

    .line 6
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;->zze:[Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase-auth-api/zzalp;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;->zze:[Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase-auth-api/zzalp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    return-object v0
.end method
