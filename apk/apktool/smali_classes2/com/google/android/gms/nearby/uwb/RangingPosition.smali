.class public Lcom/google/android/gms/nearby/uwb/RangingPosition;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field public static final RSSI_MAX:I = -0x1

.field public static final RSSI_MIN:I = -0x7f

.field public static final RSSI_UNKNOWN:I = -0x80


# instance fields
.field private final zza:Lcom/google/android/gms/nearby/uwb/RangingMeasurement;

.field private final zzb:Lcom/google/android/gms/nearby/uwb/RangingMeasurement;

.field private final zzc:Lcom/google/android/gms/nearby/uwb/RangingMeasurement;

.field private final zzd:J

.field private final zze:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/nearby/uwb/RangingMeasurement;Lcom/google/android/gms/nearby/uwb/RangingMeasurement;Lcom/google/android/gms/nearby/uwb/RangingMeasurement;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/uwb/RangingPosition;->zza:Lcom/google/android/gms/nearby/uwb/RangingMeasurement;

    iput-object p2, p0, Lcom/google/android/gms/nearby/uwb/RangingPosition;->zzb:Lcom/google/android/gms/nearby/uwb/RangingMeasurement;

    iput-object p3, p0, Lcom/google/android/gms/nearby/uwb/RangingPosition;->zzc:Lcom/google/android/gms/nearby/uwb/RangingMeasurement;

    iput-wide p4, p0, Lcom/google/android/gms/nearby/uwb/RangingPosition;->zzd:J

    iput p6, p0, Lcom/google/android/gms/nearby/uwb/RangingPosition;->zze:I

    return-void
.end method


# virtual methods
.method public getAzimuth()Lcom/google/android/gms/nearby/uwb/RangingMeasurement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/RangingPosition;->zzb:Lcom/google/android/gms/nearby/uwb/RangingMeasurement;

    return-object v0
.end method

.method public getDistance()Lcom/google/android/gms/nearby/uwb/RangingMeasurement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/RangingPosition;->zza:Lcom/google/android/gms/nearby/uwb/RangingMeasurement;

    return-object v0
.end method

.method public getElapsedRealtimeNanos()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/uwb/RangingPosition;->zzd:J

    return-wide v0
.end method

.method public getElevation()Lcom/google/android/gms/nearby/uwb/RangingMeasurement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/RangingPosition;->zzc:Lcom/google/android/gms/nearby/uwb/RangingMeasurement;

    return-object v0
.end method

.method public getRssiDbm()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/uwb/RangingPosition;->zze:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v1, p0, Lcom/google/android/gms/nearby/uwb/RangingPosition;->zzd:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/nearby/uwb/RangingPosition;->zza:Lcom/google/android/gms/nearby/uwb/RangingMeasurement;

    invoke-virtual {v2}, Lcom/google/android/gms/nearby/uwb/RangingMeasurement;->getValue()F

    move-result v2

    .line 2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "elapsedRealtime (ms) %d | distance (m) %f"

    .line 3
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/nearby/uwb/RangingPosition;->zzb:Lcom/google/android/gms/nearby/uwb/RangingMeasurement;

    if-eqz v1, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/google/android/gms/nearby/uwb/RangingPosition;->zzb:Lcom/google/android/gms/nearby/uwb/RangingMeasurement;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/nearby/uwb/RangingMeasurement;->getValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, " | azimuth: %f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/nearby/uwb/RangingPosition;->zzc:Lcom/google/android/gms/nearby/uwb/RangingMeasurement;

    if-eqz v1, :cond_1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/google/android/gms/nearby/uwb/RangingPosition;->zzc:Lcom/google/android/gms/nearby/uwb/RangingMeasurement;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/nearby/uwb/RangingMeasurement;->getValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, " | elevation: %f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v2, p0, Lcom/google/android/gms/nearby/uwb/RangingPosition;->zze:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, " | rssi: %d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
