.class public final enum Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVATED:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

.field public static final enum BLUETOOTH_DISABLED:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

.field public static final enum BLUETOOTH_SUPPORT_UNKNOWN:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

.field public static final enum EN_NOT_SUPPORT:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

.field public static final enum FOCUS_LOST:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

.field public static final enum HW_NOT_SUPPORT:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

.field public static final enum INACTIVATED:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

.field public static final enum LOCATION_DISABLED:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

.field public static final enum LOW_STORAGE:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

.field public static final enum NOT_IN_ALLOWLIST:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

.field public static final enum NO_CONSENT:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

.field public static final enum UNKNOWN:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

.field public static final enum USER_PROFILE_NOT_SUPPORT:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

.field private static final synthetic zza:[Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;


# instance fields
.field private final zzb:J


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-string v4, "ACTIVATED"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->ACTIVATED:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    new-instance v1, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    const/4 v2, 0x1

    const-wide/16 v3, 0x2

    .line 2
    const-string v5, "INACTIVATED"

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->INACTIVATED:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    new-instance v2, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    const/4 v3, 0x2

    const-wide/16 v4, 0x4

    .line 3
    const-string v6, "BLUETOOTH_DISABLED"

    invoke-direct {v2, v6, v3, v4, v5}, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->BLUETOOTH_DISABLED:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    new-instance v3, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    const/4 v4, 0x3

    const-wide/16 v5, 0x8

    .line 4
    const-string v7, "LOCATION_DISABLED"

    invoke-direct {v3, v7, v4, v5, v6}, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->LOCATION_DISABLED:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    new-instance v4, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    const/4 v5, 0x4

    const-wide/16 v6, 0x10

    .line 5
    const-string v8, "NO_CONSENT"

    invoke-direct {v4, v8, v5, v6, v7}, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v4, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->NO_CONSENT:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    new-instance v5, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    const/4 v6, 0x5

    const-wide/16 v7, 0x20

    .line 6
    const-string v9, "NOT_IN_ALLOWLIST"

    invoke-direct {v5, v9, v6, v7, v8}, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v5, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->NOT_IN_ALLOWLIST:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    new-instance v6, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    const/4 v7, 0x6

    const-wide/16 v8, 0x40

    .line 7
    const-string v10, "BLUETOOTH_SUPPORT_UNKNOWN"

    invoke-direct {v6, v10, v7, v8, v9}, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v6, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->BLUETOOTH_SUPPORT_UNKNOWN:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    new-instance v7, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    const/4 v8, 0x7

    const-wide/16 v9, 0x80

    .line 8
    const-string v11, "HW_NOT_SUPPORT"

    invoke-direct {v7, v11, v8, v9, v10}, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v7, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->HW_NOT_SUPPORT:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    new-instance v8, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    const/16 v9, 0x8

    const-wide/16 v10, 0x100

    .line 9
    const-string v12, "FOCUS_LOST"

    invoke-direct {v8, v12, v9, v10, v11}, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v8, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->FOCUS_LOST:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    new-instance v9, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    const/16 v10, 0x9

    const-wide/16 v11, 0x200

    .line 10
    const-string v13, "LOW_STORAGE"

    invoke-direct {v9, v13, v10, v11, v12}, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v9, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->LOW_STORAGE:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    new-instance v10, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    const/16 v11, 0xa

    const-wide/16 v12, 0x400

    .line 11
    const-string v14, "UNKNOWN"

    invoke-direct {v10, v14, v11, v12, v13}, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v10, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->UNKNOWN:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    new-instance v11, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    const/16 v12, 0xb

    const-wide/16 v13, 0x800

    .line 12
    const-string v15, "EN_NOT_SUPPORT"

    invoke-direct {v11, v15, v12, v13, v14}, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v11, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->EN_NOT_SUPPORT:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    new-instance v12, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    const/16 v13, 0xc

    const-wide/16 v14, 0x1000

    move-object/from16 v16, v0

    .line 13
    const-string v0, "USER_PROFILE_NOT_SUPPORT"

    invoke-direct {v12, v0, v13, v14, v15}, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v12, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->USER_PROFILE_NOT_SUPPORT:Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    move-object/from16 v0, v16

    filled-new-array/range {v0 .. v12}, [Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->zza:[Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->zzb:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->zza:[Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    invoke-virtual {v0}, [Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    return-object v0
.end method

.method public static zza(J)Lcom/google/android/gms/internal/nearby/zzss;
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzsr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzsr;-><init>()V

    invoke-static {}, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->values()[Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 2
    iget-wide v5, v4, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->zzb:J

    and-long/2addr v5, p0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 3
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/nearby/zzsr;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsr;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zzsr;->zzc()Lcom/google/android/gms/internal/nearby/zzss;

    move-result-object p0

    return-object p0
.end method
