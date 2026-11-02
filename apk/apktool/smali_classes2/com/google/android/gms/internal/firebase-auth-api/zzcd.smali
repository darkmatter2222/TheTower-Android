.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzcd;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzck;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcf;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

.field private final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

.field private final zze:I

.field private final zzf:Z

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzcf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcf;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbt;Lcom/google/android/gms/internal/firebase-auth-api/zzxh;IZZLcom/google/android/gms/internal/firebase-auth-api/zzcf;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

    .line 11
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzbz;->zza:[I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzxh;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 14
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzbv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    goto :goto_0

    .line 13
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzbv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    goto :goto_0

    .line 12
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzbv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    .line 15
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    .line 16
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zze:I

    .line 17
    iput-boolean p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzf:Z

    .line 18
    iput-boolean p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzg:Z

    .line 19
    iput-object p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzcf;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbt;Lcom/google/android/gms/internal/firebase-auth-api/zzxh;IZZLcom/google/android/gms/internal/firebase-auth-api/zzcf;Lcom/google/android/gms/internal/firebase-auth-api/zzci;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbt;Lcom/google/android/gms/internal/firebase-auth-api/zzxh;IZZLcom/google/android/gms/internal/firebase-auth-api/zzcf;)V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zze:I

    return p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)Lcom/google/android/gms/internal/firebase-auth-api/zzbt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)Lcom/google/android/gms/internal/firebase-auth-api/zzxh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

    return-object p0
.end method

.method static bridge synthetic zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzcf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcf;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)V
    .locals 0

    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzf:Z

    return p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzg:Z

    return p0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zze:I

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbt;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzcf;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzbv;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    return-object v0
.end method

.method public final zze()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzf:Z

    return v0
.end method
