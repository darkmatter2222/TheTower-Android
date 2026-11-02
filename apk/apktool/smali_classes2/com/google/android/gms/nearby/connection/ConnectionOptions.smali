.class public final Lcom/google/android/gms/nearby/connection/ConnectionOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/nearby/connection/ConnectionOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Z

.field private zzb:Z

.field private zzc:Z

.field private zzd:Z

.field private zze:Z

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:[B

.field private zzj:Z

.field private zzk:Z

.field private zzl:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzm:I

.field private zzn:I

.field private zzo:[I

.field private zzp:[I

.field private zzq:[B

.field private zzr:Lcom/google/android/gms/nearby/connection/Strategy;

.field private zzs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/connection/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/connection/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zza:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzb:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzc:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzd:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zze:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzf:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzg:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzj:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzk:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzl:Z

    iput v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzm:I

    iput v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzn:I

    iput v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzs:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/nearby/connection/zzi;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zza:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzd:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zze:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzf:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzh:Z

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzk:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzl:Z

    iput p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzm:I

    iput p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzn:I

    iput p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzs:I

    return-void
.end method

.method constructor <init>(ZZZZZZZZ[BZZZII[I[I[BLcom/google/android/gms/nearby/connection/Strategy;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zza:Z

    iput-boolean p2, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzc:Z

    iput-boolean p4, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzd:Z

    iput-boolean p5, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zze:Z

    iput-boolean p6, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzf:Z

    iput-boolean p7, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzg:Z

    iput-boolean p8, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzh:Z

    iput-object p9, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzi:[B

    iput-boolean p10, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzj:Z

    iput-boolean p11, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzk:Z

    iput-boolean p12, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzl:Z

    iput p13, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzm:I

    iput p14, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzn:I

    iput-object p15, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzo:[I

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzp:[I

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzq:[B

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzr:Lcom/google/android/gms/nearby/connection/Strategy;

    move/from16 p1, p19

    iput p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzs:I

    return-void
.end method

.method static bridge synthetic zzA(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zze:Z

    return p0
.end method

.method static bridge synthetic zzB(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzj:Z

    return p0
.end method

.method static bridge synthetic zzC(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzf:Z

    return p0
.end method

.method static bridge synthetic zzD(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzh:Z

    return p0
.end method

.method static bridge synthetic zzE(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzg:Z

    return p0
.end method

.method static bridge synthetic zzF(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzd:Z

    return p0
.end method

.method static bridge synthetic zzG(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzk:Z

    return p0
.end method

.method static bridge synthetic zzH(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zza:Z

    return p0
.end method

.method static bridge synthetic zzI(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzq:[B

    return-object p0
.end method

.method static bridge synthetic zzJ(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzi:[B

    return-object p0
.end method

.method static bridge synthetic zzK(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzp:[I

    return-object p0
.end method

.method static bridge synthetic zzL(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzo:[I

    return-object p0
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzs:I

    return p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzm:I

    return p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzn:I

    return p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Lcom/google/android/gms/nearby/connection/Strategy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzr:Lcom/google/android/gms/nearby/connection/Strategy;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/nearby/connection/ConnectionOptions;[I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzp:[I

    return-void
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/nearby/connection/ConnectionOptions;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzs:I

    return-void
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/nearby/connection/ConnectionOptions;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzq:[B

    return-void
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzl:Z

    return-void
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzc:Z

    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzb:Z

    return-void
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zze:Z

    return-void
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzj:Z

    return-void
.end method

.method static bridge synthetic zzm(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzf:Z

    return-void
.end method

.method static bridge synthetic zzn(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzh:Z

    return-void
.end method

.method static bridge synthetic zzo(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzg:Z

    return-void
.end method

.method static bridge synthetic zzp(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzd:Z

    return-void
.end method

.method static bridge synthetic zzq(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzk:Z

    return-void
.end method

.method static bridge synthetic zzr(Lcom/google/android/gms/nearby/connection/ConnectionOptions;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzm:I

    return-void
.end method

.method static bridge synthetic zzs(Lcom/google/android/gms/nearby/connection/ConnectionOptions;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzn:I

    return-void
.end method

.method static bridge synthetic zzt(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zza:Z

    return-void
.end method

.method static bridge synthetic zzu(Lcom/google/android/gms/nearby/connection/ConnectionOptions;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzi:[B

    return-void
.end method

.method static bridge synthetic zzv(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Lcom/google/android/gms/nearby/connection/Strategy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzr:Lcom/google/android/gms/nearby/connection/Strategy;

    return-void
.end method

.method static bridge synthetic zzw(Lcom/google/android/gms/nearby/connection/ConnectionOptions;[I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzo:[I

    return-void
.end method

.method static bridge synthetic zzx(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzl:Z

    return p0
.end method

.method static bridge synthetic zzy(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzc:Z

    return p0
.end method

.method static bridge synthetic zzz(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzb:Z

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zza:Z

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zza:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzb:Z

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzb:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzc:Z

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzc:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzd:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzd:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zze:Z

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zze:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzf:Z

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzf:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzg:Z

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzg:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzh:Z

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzh:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzi:[B

    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzi:[B

    .line 11
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzj:Z

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzj:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzk:Z

    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzk:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzl:Z

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzl:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzm:I

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzm:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzn:I

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzn:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzo:[I

    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzo:[I

    .line 17
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzp:[I

    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzp:[I

    .line 18
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzq:[B

    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzq:[B

    .line 19
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzr:Lcom/google/android/gms/nearby/connection/Strategy;

    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzr:Lcom/google/android/gms/nearby/connection/Strategy;

    .line 20
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzs:I

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p1, p1, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzs:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getConnectionType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzs:I

    return v0
.end method

.method public getDisruptiveUpgrade()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzl:Z

    return v0
.end method

.method public getLowPower()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zza:Z

    return v0
.end method

.method public hashCode()I
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zza:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v1, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzb:Z

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v1, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzc:Z

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v1, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzd:Z

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v1, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zze:Z

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v1, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzf:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v1, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzg:Z

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v1, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzh:Z

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-object v1, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzi:[B

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-boolean v1, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzj:Z

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v1, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzk:Z

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v1, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzl:Z

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget v1, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzm:I

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzn:I

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v1, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzo:[I

    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v1, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzp:[I

    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-object v1, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzq:[B

    .line 17
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-object v1, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzr:Lcom/google/android/gms/nearby/connection/Strategy;

    move-object/from16 v19, v1

    iget v1, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzs:I

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    filled-new-array/range {v2 .. v20}, [Ljava/lang/Object;

    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-boolean v2, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zza:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v2, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzb:Z

    .line 2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v2, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzc:Z

    .line 3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v2, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzd:Z

    .line 4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v2, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zze:Z

    .line 5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v2, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzf:Z

    .line 6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v2, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzg:Z

    .line 7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v2, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzh:Z

    .line 8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v2, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzi:[B

    const/4 v11, 0x0

    if-nez v2, :cond_0

    move-object v2, v11

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v2}, Lcom/google/android/gms/nearby/messages/internal/zzc;->zzb([B)Ljava/lang/String;

    move-result-object v2

    .line 8
    :goto_0
    iget-boolean v12, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzj:Z

    .line 10
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v13, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzk:Z

    .line 11
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-boolean v14, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzl:Z

    .line 12
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-object v15, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzq:[B

    if-nez v15, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {v15}, Lcom/google/android/gms/nearby/messages/internal/zzc;->zzb([B)Ljava/lang/String;

    move-result-object v11

    :goto_1
    move-object v15, v11

    .line 12
    iget-object v11, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzr:Lcom/google/android/gms/nearby/connection/Strategy;

    move-object/from16 v16, v2

    iget v2, v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzs:I

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v18, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v18

    filled-new-array/range {v3 .. v17}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ConnectionOptions{lowPower: %s, enableBluetooth: %s, enableBle: %s, enableWifiLan: %s, enableNfc: %s, enableWifiAware: %s, enableWifiHotspot: %s, enableWifiDirect: %s, remoteBluetoothMacAddress: %s, enableWebRtc: %s, enforceTopologyConstraints: %s, disruptiveUpgrade: %s,deviceInfo: %s,strategy: %s,connectionType: %d}"

    .line 15
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->getLowPower()Z

    move-result v2

    .line 2
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzb:Z

    .line 3
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzc:Z

    .line 4
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzd:Z

    .line 5
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zze:Z

    .line 6
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzf:Z

    .line 7
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzg:Z

    .line 8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzh:Z

    .line 9
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzi:[B

    const/16 v2, 0x9

    const/4 v3, 0x0

    .line 10
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzj:Z

    .line 11
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzk:Z

    .line 12
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->getDisruptiveUpgrade()Z

    move-result v2

    .line 13
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xd

    iget v2, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzm:I

    .line 14
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0xe

    iget v2, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzn:I

    .line 15
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzo:[I

    .line 16
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntArray(Landroid/os/Parcel;I[IZ)V

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzp:[I

    .line 17
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntArray(Landroid/os/Parcel;I[IZ)V

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzq:[B

    .line 18
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzr:Lcom/google/android/gms/nearby/connection/Strategy;

    .line 19
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x13

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->getConnectionType()I

    move-result v1

    .line 20
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 21
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
