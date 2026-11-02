.class public final enum Lcom/google/android/gms/nearby/exposurenotification/zzj;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/nearby/exposurenotification/zzj;

.field public static final enum zzb:Lcom/google/android/gms/nearby/exposurenotification/zzj;

.field public static final enum zzc:Lcom/google/android/gms/nearby/exposurenotification/zzj;

.field private static final zzd:Lcom/google/android/gms/internal/nearby/zzto;

.field private static final synthetic zze:[Lcom/google/android/gms/nearby/exposurenotification/zzj;


# instance fields
.field private final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/nearby/exposurenotification/zzj;

    const-string v1, "INFECTIOUSNESS_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/nearby/exposurenotification/zzj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/nearby/exposurenotification/zzj;->zza:Lcom/google/android/gms/nearby/exposurenotification/zzj;

    new-instance v1, Lcom/google/android/gms/nearby/exposurenotification/zzj;

    const-string v2, "INFECTIOUSNESS_STANDARD"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/nearby/exposurenotification/zzj;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/nearby/exposurenotification/zzj;->zzb:Lcom/google/android/gms/nearby/exposurenotification/zzj;

    new-instance v2, Lcom/google/android/gms/nearby/exposurenotification/zzj;

    const-string v3, "INFECTIOUSNESS_HIGH"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/nearby/exposurenotification/zzj;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/nearby/exposurenotification/zzj;->zzc:Lcom/google/android/gms/nearby/exposurenotification/zzj;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/nearby/exposurenotification/zzj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/nearby/exposurenotification/zzj;->zze:[Lcom/google/android/gms/nearby/exposurenotification/zzj;

    new-instance v0, Lcom/google/android/gms/nearby/exposurenotification/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/exposurenotification/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/exposurenotification/zzj;->zzd:Lcom/google/android/gms/internal/nearby/zzto;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/nearby/exposurenotification/zzj;->zzf:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/nearby/exposurenotification/zzj;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/nearby/exposurenotification/zzj;->zze:[Lcom/google/android/gms/nearby/exposurenotification/zzj;

    invoke-virtual {v0}, [Lcom/google/android/gms/nearby/exposurenotification/zzj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/nearby/exposurenotification/zzj;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/nearby/exposurenotification/zzj;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/nearby/exposurenotification/zzj;->zzc:Lcom/google/android/gms/nearby/exposurenotification/zzj;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/nearby/exposurenotification/zzj;->zzb:Lcom/google/android/gms/nearby/exposurenotification/zzj;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/nearby/exposurenotification/zzj;->zza:Lcom/google/android/gms/nearby/exposurenotification/zzj;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/zzj;->zzf:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
