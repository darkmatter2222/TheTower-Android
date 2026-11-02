.class public final enum Lcom/google/android/gms/internal/firebase-auth-api/zzwr;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzalv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzwr;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzalv;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

.field public static final enum zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

.field public static final enum zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

.field public static final enum zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

.field public static final enum zze:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

.field public static final enum zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

.field private static final enum zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

.field private static final enum zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

.field private static final enum zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

.field private static final synthetic zzj:[Lcom/google/android/gms/internal/firebase-auth-api/zzwr;


# instance fields
.field private final zzk:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    const-string v1, "KEM_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    .line 24
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    const-string v2, "DHKEM_X25519_HKDF_SHA256"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    .line 25
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    const-string v3, "DHKEM_P256_HKDF_SHA256"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    .line 26
    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    const-string v4, "DHKEM_P384_HKDF_SHA384"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    .line 27
    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    const-string v5, "DHKEM_P521_HKDF_SHA512"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    .line 28
    new-instance v5, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    const-string v6, "X_WING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    .line 29
    new-instance v6, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    const-string v7, "ML_KEM768"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    .line 30
    new-instance v7, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    const-string v8, "ML_KEM1024"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    .line 31
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    const/16 v9, 0x8

    const/4 v10, -0x1

    const-string v11, "UNRECOGNIZED"

    invoke-direct {v8, v11, v9, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    .line 32
    filled-new-array/range {v0 .. v8}, [Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    move-result-object v0

    .line 33
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzj:[Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzk:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase-auth-api/zzwr;
    .locals 1

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzj:[Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzwr;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 12
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    return-object p0

    .line 11
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    return-object p0

    .line 10
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    return-object p0

    .line 9
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    return-object p0

    .line 8
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    return-object p0

    .line 6
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    return-object p0

    .line 5
    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 16
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    if-eq p0, v1, :cond_0

    .line 19
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    :cond_0
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    if-ne p0, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;->zza()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzk:I

    return v0
.end method
