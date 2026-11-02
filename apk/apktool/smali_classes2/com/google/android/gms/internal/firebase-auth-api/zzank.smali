.class final Lcom/google/android/gms/internal/firebase-auth-api/zzank;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzank;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaml;

.field private final zzc:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzanl<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzank;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzank;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzank;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzank;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzank;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaml;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaml;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzank;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaml;

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzank;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzank;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzank;

    return-object v0
.end method

.method private final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalt<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzanl<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzank;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaml;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaml;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v0

    .line 3
    const-string v1, "schema"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzank;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object v0
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalt;)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalt<",
            "**>;>(TT;)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzanl<",
            "TT;>;"
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzank;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object p1

    return-object p1
.end method

.method final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalt<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzanl<",
            "TT;>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzank;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzank;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    return-object v0
.end method
