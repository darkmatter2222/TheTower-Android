.class public final Lcom/google/android/gms/nearby/connection/DiscoveryOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/connection/DiscoveryOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/nearby/connection/DiscoveryOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lcom/google/android/gms/nearby/connection/Strategy;

.field private zzb:Z

.field private zzc:Z

.field private zzd:Z

.field private zze:Z

.field private zzf:Landroid/os/ParcelUuid;

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z

.field private zzj:Z

.field private zzk:I

.field private zzl:I

.field private zzm:[B

.field private zzn:J

.field private zzo:[I

.field private zzp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/connection/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/connection/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzb:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzc:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzd:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zze:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzg:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzh:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzi:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzj:Z

    iput v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzk:I

    iput v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzl:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzn:J

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzp:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/nearby/connection/Strategy;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzb:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzc:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzd:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zze:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzg:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzh:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzi:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzj:Z

    iput v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzk:I

    iput v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzl:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzn:J

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzp:Z

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zza:Lcom/google/android/gms/nearby/connection/Strategy;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/nearby/connection/Strategy;ZZZZLandroid/os/ParcelUuid;ZZZZII[BJ[IZ)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzp:Z

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zza:Lcom/google/android/gms/nearby/connection/Strategy;

    iput-boolean p2, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzc:Z

    iput-boolean p4, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzd:Z

    iput-boolean p5, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zze:Z

    iput-object p6, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzf:Landroid/os/ParcelUuid;

    iput-boolean p7, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzg:Z

    iput-boolean p8, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzh:Z

    iput-boolean p9, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzi:Z

    iput-boolean p10, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzj:Z

    iput p11, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzk:I

    iput p12, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzl:I

    iput-object p13, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzm:[B

    move-wide p1, p14

    iput-wide p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzn:J

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzo:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/nearby/connection/zzp;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzb:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzd:Z

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zze:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzi:Z

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzj:Z

    iput p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzk:I

    iput p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzl:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzn:J

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzp:Z

    return-void
.end method

.method static bridge synthetic zzA(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzi:Z

    return p0
.end method

.method static bridge synthetic zzB(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzg:Z

    return p0
.end method

.method static bridge synthetic zzC(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzb:Z

    return p0
.end method

.method static bridge synthetic zzD(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zze:Z

    return p0
.end method

.method static bridge synthetic zzF(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzm:[B

    return-object p0
.end method

.method static bridge synthetic zzG(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzo:[I

    return-object p0
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzk:I

    return p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzl:I

    return p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzn:J

    return-wide v0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)Landroid/os/ParcelUuid;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzf:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)Lcom/google/android/gms/nearby/connection/Strategy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zza:Lcom/google/android/gms/nearby/connection/Strategy;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzp:Z

    return-void
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;[I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzo:[I

    return-void
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzd:Z

    return-void
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzc:Z

    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzh:Z

    return-void
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzj:Z

    return-void
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzi:Z

    return-void
.end method

.method static bridge synthetic zzm(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzg:Z

    return-void
.end method

.method static bridge synthetic zzn(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;Landroid/os/ParcelUuid;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzf:Landroid/os/ParcelUuid;

    return-void
.end method

.method static bridge synthetic zzo(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzn:J

    return-void
.end method

.method static bridge synthetic zzp(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzb:Z

    return-void
.end method

.method static bridge synthetic zzq(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zze:Z

    return-void
.end method

.method static bridge synthetic zzr(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;Lcom/google/android/gms/nearby/connection/Strategy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zza:Lcom/google/android/gms/nearby/connection/Strategy;

    return-void
.end method

.method static bridge synthetic zzs(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzm:[B

    return-void
.end method

.method static bridge synthetic zzt(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzk:I

    return-void
.end method

.method static bridge synthetic zzu(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzl:I

    return-void
.end method

.method static bridge synthetic zzv(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzp:Z

    return p0
.end method

.method static bridge synthetic zzw(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzd:Z

    return p0
.end method

.method static bridge synthetic zzx(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzc:Z

    return p0
.end method

.method static bridge synthetic zzy(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzh:Z

    return p0
.end method

.method static bridge synthetic zzz(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzj:Z

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zza:Lcom/google/android/gms/nearby/connection/Strategy;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zza:Lcom/google/android/gms/nearby/connection/Strategy;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzb:Z

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzb:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzc:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzc:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzd:Z

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzd:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zze:Z

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zze:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzf:Landroid/os/ParcelUuid;

    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzf:Landroid/os/ParcelUuid;

    .line 9
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzg:Z

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzg:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzh:Z

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzh:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzi:Z

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzi:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzj:Z

    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzj:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzk:I

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzk:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzl:I

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzm:[B

    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzm:[B

    .line 16
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzn:J

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzn:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzo:[I

    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzo:[I

    .line 18
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzp:Z

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean p1, p1, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzp:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getLowPower()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zze:Z

    return v0
.end method

.method public getStrategy()Lcom/google/android/gms/nearby/connection/Strategy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zza:Lcom/google/android/gms/nearby/connection/Strategy;

    return-object v0
.end method

.method public hashCode()I
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zza:Lcom/google/android/gms/nearby/connection/Strategy;

    iget-boolean v2, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzb:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzc:Z

    .line 2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzd:Z

    .line 3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zze:Z

    .line 4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzf:Landroid/os/ParcelUuid;

    iget-boolean v7, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzg:Z

    .line 5
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v8, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzh:Z

    .line 6
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzi:Z

    .line 7
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v10, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzj:Z

    .line 8
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget v11, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzk:I

    .line 9
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzl:I

    .line 10
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzm:[B

    .line 11
    invoke-static {v13}, Ljava/util/Arrays;->hashCode([B)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-wide v14, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzn:J

    .line 12
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iget-object v15, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzo:[I

    .line 13
    invoke-static {v15}, Ljava/util/Arrays;->hashCode([I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v1

    iget-boolean v1, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzp:Z

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v17, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    filled-new-array/range {v1 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zza:Lcom/google/android/gms/nearby/connection/Strategy;

    iget-boolean v3, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzb:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzc:Z

    .line 2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzd:Z

    .line 3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zze:Z

    .line 4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzf:Landroid/os/ParcelUuid;

    iget-boolean v8, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzg:Z

    .line 5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzh:Z

    .line 6
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v10, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzi:Z

    .line 7
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v11, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzj:Z

    .line 8
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget v12, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzk:I

    .line 9
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzl:I

    .line 10
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzm:[B

    if-nez v14, :cond_0

    const-string v14, "null"

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v14}, Lcom/google/android/gms/nearby/messages/internal/zzc;->zzb([B)Ljava/lang/String;

    move-result-object v14

    :goto_0
    move-object v15, v2

    move-object/from16 v16, v3

    .line 10
    iget-wide v2, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzn:J

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-boolean v3, v0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzp:Z

    .line 13
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v17, v15

    move-object v15, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v3

    move-object/from16 v3, v17

    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "DiscoveryOptions{strategy: %s, forwardUnrecognizedBluetoothDevices: %s, enableBluetooth: %s, enableBle: %s, lowPower: %s, fastAdvertisementServiceUuid: %s, enableWifiLan: %s, enableNfc: %s, enableWifiAware: %s, enableUwbRanging: %s, uwbChannel: %d, uwbPreambleIndex: %d, uwbAddress: %s, flowId: %d, allowGattConnections: %s}"

    .line 14
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->getStrategy()Lcom/google/android/gms/nearby/connection/Strategy;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzb:Z

    .line 3
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzc:Z

    .line 4
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzd:Z

    .line 5
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->getLowPower()Z

    move-result v2

    .line 6
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzf:Landroid/os/ParcelUuid;

    .line 7
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x8

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzg:Z

    .line 8
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x9

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzh:Z

    .line 9
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xa

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzi:Z

    .line 10
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xb

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzj:Z

    .line 11
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xc

    iget v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzk:I

    .line 12
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 p2, 0xd

    iget v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzl:I

    .line 13
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 p2, 0xe

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzm:[B

    .line 14
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    const/16 p2, 0xf

    iget-wide v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzn:J

    .line 15
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 p2, 0x10

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzo:[I

    .line 16
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntArray(Landroid/os/Parcel;I[IZ)V

    const/16 p2, 0x11

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzp:Z

    .line 17
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 18
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzE()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;->zzh:Z

    return v0
.end method
