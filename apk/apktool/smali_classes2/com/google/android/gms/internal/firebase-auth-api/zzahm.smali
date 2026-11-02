.class public final enum Lcom/google/android/gms/internal/firebase-auth-api/zzahm;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@24.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzahm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahm;

.field private static final enum zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzahm;

.field private static final synthetic zzc:[Lcom/google/android/gms/internal/firebase-auth-api/zzahm;


# instance fields
.field private final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahm;

    const/4 v1, 0x0

    const-string v2, "refresh_token"

    const-string v3, "REFRESH_TOKEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahm;

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzahm;

    const/4 v2, 0x1

    const-string v3, "authorization_code"

    const-string v4, "AUTHORIZATION_CODE"

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzahm;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzahm;

    .line 4
    filled-new-array {v0, v1}, [Lcom/google/android/gms/internal/firebase-auth-api/zzahm;

    move-result-object v0

    .line 5
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahm;->zzc:[Lcom/google/android/gms/internal/firebase-auth-api/zzahm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahm;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase-auth-api/zzahm;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahm;->zzc:[Lcom/google/android/gms/internal/firebase-auth-api/zzahm;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase-auth-api/zzahm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase-auth-api/zzahm;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahm;->zzd:Ljava/lang/String;

    return-object v0
.end method
