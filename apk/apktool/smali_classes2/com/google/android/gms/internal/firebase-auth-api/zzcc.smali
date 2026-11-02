.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzcc;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcb;",
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

.field private zzc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcc;->zza:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcc;->zzb:Ljava/util/Map;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcc;->zzc:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcc;->zzb()V

    return-void
.end method

.method private final zzb()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcc;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    const/4 v2, 0x0

    .line 69
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbx;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 8
    iget-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcc;->zzc:Z

    if-nez v1, :cond_12

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcc;->zzc:Z

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcc;->zza:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    iget-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcc;->zza:Ljava/util/List;

    const/4 v4, 0x0

    move v5, v4

    .line 14
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    if-ge v5, v6, :cond_2

    .line 15
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzce;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    move-result-object v7

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 16
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzce;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    move-result-object v7

    if-ne v6, v7, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Entries with \'withRandomId()\' may only be followed by other entries with \'withRandomId()\'."

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 19
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 20
    iget-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcc;->zza:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    move-object v6, v5

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    .line 21
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 24
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 26
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    move-result-object v8

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzce;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    move-result-object v9

    if-ne v8, v9, :cond_4

    move v8, v4

    :goto_3
    if-eqz v8, :cond_3

    .line 29
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 30
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzqu;->zza()I

    move-result v8

    goto :goto_3

    .line 33
    :cond_4
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzce;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzce;)I

    move-result v8

    :cond_5
    move v12, v8

    .line 36
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 38
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzcs;->zza()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_4

    :cond_6
    move-object v8, v5

    .line 40
    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzoy;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzoy;

    move-result-object v9

    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v10

    .line 41
    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzoy;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcs;Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object v10

    .line 42
    new-instance v9, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    move-result-object v8

    .line 44
    sget-object v11, Lcom/google/android/gms/internal/firebase-auth-api/zzbv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 45
    sget-object v8, Lcom/google/android/gms/internal/firebase-auth-api/zzxh;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

    :goto_5
    move-object v11, v8

    goto :goto_6

    .line 46
    :cond_7
    sget-object v11, Lcom/google/android/gms/internal/firebase-auth-api/zzbv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 47
    sget-object v8, Lcom/google/android/gms/internal/firebase-auth-api/zzxh;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

    goto :goto_5

    .line 48
    :cond_8
    sget-object v11, Lcom/google/android/gms/internal/firebase-auth-api/zzbv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 49
    sget-object v8, Lcom/google/android/gms/internal/firebase-auth-api/zzxh;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

    goto :goto_5

    .line 51
    :goto_6
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zze(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Z

    move-result v13

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzcf;

    move-result-object v15

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbt;Lcom/google/android/gms/internal/firebase-auth-api/zzxh;IZZLcom/google/android/gms/internal/firebase-auth-api/zzcf;Lcom/google/android/gms/internal/firebase-auth-api/zzci;)V

    .line 52
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zze(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Z

    move-result v8

    if-eqz v8, :cond_b

    if-nez v6, :cond_a

    .line 55
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 56
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/firebase-auth-api/zzbv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    if-ne v7, v8, :cond_9

    goto :goto_7

    .line 57
    :cond_9
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Primary key is not enabled"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_a
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Two primaries were set"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_b
    :goto_7
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 50
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown key status"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_d
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is used twice in the keyset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_e
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "No ID was set (with withFixedId or withRandomId)"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_f
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Key Status not set."

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    if-eqz v6, :cond_11

    .line 62
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    iget-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcc;->zzb:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/firebase-auth-api/zzci;)V

    .line 63
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbx;)Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    move-result-object v1

    return-object v1

    .line 61
    :cond_11
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "No primary was set"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_12
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "KeysetHandle.Builder#build must only be called once"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcc;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcc;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zze(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcc;->zzb()V

    .line 5
    :cond_0
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcb;Lcom/google/android/gms/internal/firebase-auth-api/zzcc;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcc;->zza:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Entry has already been added to a KeysetHandle.Builder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
