.class public final Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DailySummariesConfigBuilder"
.end annotation


# instance fields
.field zza:I

.field zzb:D

.field private final zzc:[Ljava/lang/Double;

.field private final zzd:[Ljava/lang/Double;

.field private zze:Ljava/util/List;

.field private zzf:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Double;

    iput-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zzc:[Ljava/lang/Double;

    invoke-static {}, Lcom/google/android/gms/nearby/exposurenotification/zzj;->values()[Lcom/google/android/gms/nearby/exposurenotification/zzj;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Double;

    iput-object v1, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zzd:[Ljava/lang/Double;

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zza:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zzb:D

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static zza(Ljava/util/List;ILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s must not be null"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v3, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p2, v3}, [Ljava/lang/Object;

    move-result-object p2

    const-string v3, "%s must must contains %d elements"

    invoke-static {v0, v3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 4
    :goto_1
    invoke-static {v1, p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method private static zzb(DLjava/lang/String;)V
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    cmpg-double p0, p0, v2

    if-gtz p0, :cond_0

    const/4 v1, 0x1

    .line 1
    :cond_0
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Element value of %s must between 0 ~ 2.5"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {v1, p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zze:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Must set attenuationBucketThresholdDb"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zzf:Ljava/util/List;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "Must set attenuationBucketWeights"

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3
    new-instance v2, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;

    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zzc:[Ljava/lang/Double;

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zzd:[Ljava/lang/Double;

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zze:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zzf:Ljava/util/List;

    iget v7, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zza:I

    iget-wide v8, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zzb:D

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ID)V

    return-object v2
.end method

.method public setAttenuationBuckets(Ljava/util/List;Ljava/util/List;)Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/nearby/exposurenotification/zza;->zza()[I

    const/4 v0, 0x3

    const-string v1, "attenuationBucketThresholdDb"

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zza(Ljava/util/List;ILjava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xff

    if-gt v2, v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    const-string v4, "Element of attenuationBucketThreshold must between 0 ~ 255"

    .line 5
    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v1, -0x1

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "attenuationBucketThresholdDb of index %d must be larger than index %d"

    .line 9
    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v3, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zze:Ljava/util/List;

    .line 12
    invoke-static {}, Lcom/google/android/gms/nearby/exposurenotification/zza;->zza()[I

    const/4 p1, 0x4

    .line 13
    const-string v0, "attenuationBucketWeights"

    invoke-static {p2, p1, v0}, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zza(Ljava/util/List;ILjava/lang/String;)V

    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 15
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zzb(DLjava/lang/String;)V

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zzf:Ljava/util/List;

    return-object p0
.end method

.method public setDaysSinceExposureThreshold(I)Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    const-string v1, "daysSinceExposureThreshold must not be negative"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zza:I

    return-object p0
.end method

.method public setInfectiousnessWeight(ID)Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/nearby/exposurenotification/zzj;->zza(I)Lcom/google/android/gms/nearby/exposurenotification/zzj;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/google/android/gms/nearby/exposurenotification/zzj;->zza:Lcom/google/android/gms/nearby/exposurenotification/zzj;

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "Incorrect value of infectiousness"

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-string v0, "infectiousnessWeights"

    .line 3
    invoke-static {p2, p3, v0}, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zzb(DLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zzd:[Ljava/lang/Double;

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v0, p1

    return-object p0
.end method

.method public setMinimumWindowScore(D)Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    const-string v1, "minimumWindowScore must not be negative"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zzb:D

    return-object p0
.end method

.method public setReportTypeWeight(ID)Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;
    .locals 2

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x5

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    .line 1
    :cond_0
    const-string v1, "Incorrect value of reportType"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-string v0, "reportTypeWeights"

    .line 2
    invoke-static {p2, p3, v0}, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zzb(DLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;->zzc:[Ljava/lang/Double;

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v0, p1

    return-object p0
.end method
