.class public Lcom/google/android/gms/nearby/uwb/RangingCapabilities;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field public static final FIRA_DEFAULT_MIN_SLOT_DURATION_MS:F = 2.0f

.field public static final FIRA_DEFAULT_RANGING_INTERVAL_MS:I = 0xc8

.field public static final FIRA_DEFAULT_SUPPORTED_CHANNEL:I = 0x9

.field public static final FIRA_DEFAULT_SUPPORTED_CONFIG_IDS:Lcom/google/android/gms/internal/nearby/zzsq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nearby/zzsq<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Z

.field private final zzb:Z

.field private final zzc:Z

.field private final zzd:I

.field private final zze:Ljava/util/List;

.field private final zzf:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/nearby/zzsq;->zzo(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/nearby/uwb/RangingCapabilities;->FIRA_DEFAULT_SUPPORTED_CONFIG_IDS:Lcom/google/android/gms/internal/nearby/zzsq;

    return-void
.end method

.method public constructor <init>(ZZZILjava/util/List;Ljava/util/List;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/uwb/RangingCapabilities;->zza:Z

    iput-boolean p2, p0, Lcom/google/android/gms/nearby/uwb/RangingCapabilities;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/nearby/uwb/RangingCapabilities;->zzc:Z

    iput p4, p0, Lcom/google/android/gms/nearby/uwb/RangingCapabilities;->zzd:I

    iput-object p5, p0, Lcom/google/android/gms/nearby/uwb/RangingCapabilities;->zze:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/nearby/uwb/RangingCapabilities;->zzf:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMinRangingInterval()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/uwb/RangingCapabilities;->zzd:I

    return v0
.end method

.method public getSupportedChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/RangingCapabilities;->zze:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedConfigIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/RangingCapabilities;->zzf:Ljava/util/List;

    return-object v0
.end method

.method public supportsAzimuthalAngle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/uwb/RangingCapabilities;->zzb:Z

    return v0
.end method

.method public supportsDistance()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/uwb/RangingCapabilities;->zza:Z

    return v0
.end method

.method public supportsElevationAngle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/uwb/RangingCapabilities;->zzc:Z

    return v0
.end method
