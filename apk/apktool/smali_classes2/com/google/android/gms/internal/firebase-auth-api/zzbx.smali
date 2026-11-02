.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzbx;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzch;


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbl;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzbx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcd;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbl;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Ljava/util/List;

    .line 178
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzb:Ljava/util/Map;

    const/4 p1, 0x0

    .line 179
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/firebase-auth-api/zzbx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcd;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbl;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbx;",
            ")V"
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Ljava/util/List;

    .line 183
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzb:Ljava/util/Map;

    .line 184
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/firebase-auth-api/zzci;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;-><init>(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbx;)Lcom/google/android/gms/internal/firebase-auth-api/zzbx;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzbx;)Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    move-result-object p0

    return-object p0
.end method

.method public static final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzby;)Lcom/google/android/gms/internal/firebase-auth-api/zzbx;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzby;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object p0

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcc;-><init>()V

    .line 34
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzcs;Lcom/google/android/gms/internal/firebase-auth-api/zzci;)V

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcc;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    move-result-object p0

    return-object p0
.end method

.method public static final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcm;Lcom/google/android/gms/internal/firebase-auth-api/zzbm;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzbx;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzda;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbq;

    move-result-object v0

    .line 55
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcm;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzwe;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwe;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwe;Lcom/google/android/gms/internal/firebase-auth-api/zzbm;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzxq;

    move-result-object p0

    .line 61
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxq;Lcom/google/android/gms/internal/firebase-auth-api/zzbq;)Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    move-result-object p0

    return-object p0

    .line 58
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "empty keyset"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxq;Lcom/google/android/gms/internal/firebase-auth-api/zzbq;)Lcom/google/android/gms/internal/firebase-auth-api/zzbx;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxq;)V

    .line 14
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzxq;Lcom/google/android/gms/internal/firebase-auth-api/zzbq;)Ljava/util/List;

    move-result-object p0

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbq;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zza()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zza()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zze()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 21
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zza()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is duplicated in the keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_1

    .line 28
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Primary key id not found in keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_4
    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;-><init>(Ljava/util/List;Ljava/util/Map;)V

    return-object p1
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzct;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;->zza()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzyi;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzyi;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzyi;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzf()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v2

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzqk;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

    move-result-object v3

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzyi;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzqk;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyi;)Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    move-result-object p0

    .line 88
    invoke-static {v1, v2, v3, p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzcw;Lcom/google/android/gms/internal/firebase-auth-api/zzcv;Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzct;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwe;Lcom/google/android/gms/internal/firebase-auth-api/zzbm;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzxq;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwe;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzc()[B

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;->zza([B[B)[B

    move-result-object p0

    .line 91
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalf;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzalf;

    move-result-object p1

    .line 92
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzalf;)Lcom/google/android/gms/internal/firebase-auth-api/zzxq;

    move-result-object p0

    .line 93
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxq;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamd; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 96
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid keyset, corrupted key material"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbt;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zzb()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 190
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Wrong ID set for key with ID requirement"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq;->zza()I

    move-result p0

    if-lez p0, :cond_0

    return-void

    .line 187
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbq;)Z
    .locals 1

    .line 218
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzqp;

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbq;->zza(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxh;)Z
    .locals 2

    .line 215
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbz;->zza:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxh;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzbx;)Lcom/google/android/gms/internal/firebase-auth-api/zzbx;
    .locals 10

    .line 3
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzoq;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzbl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzoq;

    if-nez v0, :cond_0

    return-object p0

    .line 7
    :cond_0
    new-instance v7, Lcom/google/android/gms/internal/firebase-auth-api/zzca;

    invoke-direct {v7, p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzca;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbx;Lcom/google/android/gms/internal/firebase-auth-api/zzoq;)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

    move-object v2, v1

    .line 10
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

    move-object v3, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object v2

    move-object v4, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

    move-result-object v3

    move-object v5, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)I

    move-result v4

    move-object v6, v5

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zze(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)Z

    move-result v5

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)Z

    move-result v6

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbt;Lcom/google/android/gms/internal/firebase-auth-api/zzxh;IZZLcom/google/android/gms/internal/firebase-auth-api/zzcf;Lcom/google/android/gms/internal/firebase-auth-api/zzci;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzb:Ljava/util/Map;

    invoke-direct {v1, v0, v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/firebase-auth-api/zzbx;)V

    return-object v1
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzxq;Lcom/google/android/gms/internal/firebase-auth-api/zzbq;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxq;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbq;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcd;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq;->zza()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq;->zze()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;

    .line 148
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;->zza()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 150
    :try_start_0
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzct;

    move-result-object v0

    .line 151
    const-class v6, Lcom/google/android/gms/internal/firebase-auth-api/zzcy;

    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzbq;->zza(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/zzcy;

    if-eqz v6, :cond_0

    .line 155
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzdd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object v8

    .line 156
    invoke-interface {v6, v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzcy;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzct;Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object v0

    move v9, v4

    goto :goto_1

    .line 153
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v6, "Passed in configuration cannot be used to serialize into proto keyset format."

    invoke-direct {v0, v6}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 161
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbq;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 163
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzon;

    .line 164
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzct;

    move-result-object v6

    .line 165
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzdd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object v8

    .line 166
    invoke-direct {v0, v6, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzon;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzct;Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)V

    move v9, v5

    .line 168
    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbq;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxh;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 169
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing of a single key failed (wrong status) and Tink is configured via validateKeysetsOnParsing to reject such keysets."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    move v6, v4

    .line 170
    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

    .line 171
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

    move-result-object v3

    .line 172
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq;->zzb()I

    move-result v8

    if-ne v7, v8, :cond_3

    move v8, v5

    goto :goto_3

    :cond_3
    move v8, v6

    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzcf;

    move-result-object v10

    const/4 v11, 0x0

    move-object v5, v0

    move-object v6, v3

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbt;Lcom/google/android/gms/internal/firebase-auth-api/zzxh;IZZLcom/google/android/gms/internal/firebase-auth-api/zzcf;Lcom/google/android/gms/internal/firebase-auth-api/zzci;)V

    .line 173
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_4
    throw v0

    .line 175
    :cond_5
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final zze()Lcom/google/android/gms/internal/firebase-auth-api/zzbx;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzxq;

    move-result-object v0

    .line 144
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxq;)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzbl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbl;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;

    return-object p1
.end method

.method public final synthetic zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzck;
    .locals 4

    if-ltz p1, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

    .line 67
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxh;)Z

    move-result v1

    const-string v2, "Keyset-Entry at position "

    if-eqz v1, :cond_1

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

    return-object p1

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " didn\'t parse correctly"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " has wrong status"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " for keyset of size "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbq;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbq;",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzxq;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdf;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzxq;)V

    const/4 v0, 0x0

    .line 131
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxh;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object p1

    .line 135
    instance-of p2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzon;

    if-eqz p2, :cond_2

    .line 136
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzon;

    .line 137
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzdd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object p2

    .line 138
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzon;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzct;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zze()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 135
    :cond_2
    const-string p1, "(unknown)"

    .line 139
    :goto_2
    new-instance p2, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key parsing of key with index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and type_url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " failed, unable to get primitive"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 141
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzxq;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq;->zze()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;

    .line 196
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;

    if-eq v3, v4, :cond_0

    .line 197
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;

    if-eq v3, v4, :cond_0

    .line 198
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 200
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzf()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 201
    const-string v1, "keyset contains key material of type %s for type url %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_1
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxq;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcl;Lcom/google/android/gms/internal/firebase-auth-api/zzbm;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzxq;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;->zzk()[B

    move-result-object v1

    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;->zzb([B[B)[B

    move-result-object p2

    .line 208
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzwe;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzwe$zza;

    move-result-object p3

    .line 209
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzwe$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzwe$zza;

    move-result-object p2

    .line 210
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxq;)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzwe$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxt;)Lcom/google/android/gms/internal/firebase-auth-api/zzwe$zza;

    move-result-object p2

    .line 211
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzwe;

    .line 213
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwe;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbx;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/gms/internal/firebase-auth-api/zzcr;

    if-eqz v3, :cond_0

    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzcr;

    invoke-interface {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzcr;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object v3

    :goto_1
    move-object v5, v3

    goto :goto_2

    .line 42
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/gms/internal/firebase-auth-api/zzon;

    if-eqz v3, :cond_1

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzon;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzon;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object v3

    goto :goto_1

    .line 46
    :goto_2
    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

    move-result-object v6

    .line 47
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zza()I

    move-result v7

    .line 48
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zze()Z

    move-result v8

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzcf;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbt;Lcom/google/android/gms/internal/firebase-auth-api/zzxh;IZZLcom/google/android/gms/internal/firebase-auth-api/zzcf;Lcom/google/android/gms/internal/firebase-auth-api/zzci;)V

    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zza()I

    move-result v2

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbt;I)V

    .line 50
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot get Public Key for key of type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzb:Ljava/util/Map;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;-><init>(Ljava/util/List;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzbx;)Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzck;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zze()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    if-ne v0, v2, :cond_1

    return-object v1

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Keyset has primary which isn\'t enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Keyset has no valid primary"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzxq;
    .locals 10

    .line 97
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzda;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbq;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zzb;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

    .line 101
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zza()I

    move-result v6

    .line 102
    const-class v7, Lcom/google/android/gms/internal/firebase-auth-api/zzcy;

    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzbq;->zza(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/firebase-auth-api/zzcy;

    if-eqz v7, :cond_1

    .line 106
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzdd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object v8

    .line 107
    invoke-interface {v7, v4, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzcy;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbt;Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzct;

    move-result-object v7

    .line 108
    invoke-static {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbt;I)V

    .line 110
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza$zza;

    move-result-object v4

    .line 111
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zzb;

    move-result-object v8

    .line 112
    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zze()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zzb;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zzb;

    move-result-object v8

    .line 113
    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zzb;

    move-result-object v8

    .line 114
    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzqk;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcw;)Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;

    move-result-object v9

    .line 115
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zzb;

    move-result-object v8

    .line 116
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza$zza;

    move-result-object v4

    .line 117
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxh;)Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza$zza;

    move-result-object v4

    .line 118
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza$zza;

    move-result-object v4

    .line 119
    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzqk;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcv;)Lcom/google/android/gms/internal/firebase-auth-api/zzyi;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyi;)Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza$zza;

    move-result-object v4

    .line 120
    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;

    .line 122
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zzb;

    .line 123
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zze()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zza()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zzb;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zzb;

    goto/16 :goto_0

    .line 104
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Passed in configuration cannot be used to parse and serialize proto keysets."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzxq;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 128
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzqs;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzqs;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
