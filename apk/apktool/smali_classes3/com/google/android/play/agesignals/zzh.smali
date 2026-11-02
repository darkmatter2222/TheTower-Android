.class final Lcom/google/android/play/agesignals/zzh;
.super Lcom/google/android/play/agesignals/AgeSignalsResult$Builder;
.source "com.google.android.play:age-signals@@0.0.3"


# instance fields
.field private zza:Ljava/lang/Integer;

.field private zzb:Ljava/lang/Integer;

.field private zzc:Ljava/lang/Integer;

.field private zzd:Ljava/util/Date;

.field private zze:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/agesignals/AgeSignalsResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/play/agesignals/AgeSignalsResult;
    .locals 7

    new-instance v0, Lcom/google/android/play/agesignals/zzj;

    iget-object v1, p0, Lcom/google/android/play/agesignals/zzh;->zza:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/play/agesignals/zzh;->zzb:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/play/agesignals/zzh;->zzc:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/play/agesignals/zzh;->zzd:Ljava/util/Date;

    iget-object v5, p0, Lcom/google/android/play/agesignals/zzh;->zze:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/play/agesignals/zzj;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Date;Ljava/lang/String;Lcom/google/android/play/agesignals/zzi;)V

    return-object v0
.end method

.method public final setAgeLower(Ljava/lang/Integer;)Lcom/google/android/play/agesignals/AgeSignalsResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/agesignals/zzh;->zzb:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setAgeUpper(Ljava/lang/Integer;)Lcom/google/android/play/agesignals/AgeSignalsResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/agesignals/zzh;->zzc:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setInstallId(Ljava/lang/String;)Lcom/google/android/play/agesignals/AgeSignalsResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/agesignals/zzh;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final setMostRecentApprovalDate(Ljava/util/Date;)Lcom/google/android/play/agesignals/AgeSignalsResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/agesignals/zzh;->zzd:Ljava/util/Date;

    return-object p0
.end method

.method public final setUserStatus(Ljava/lang/Integer;)Lcom/google/android/play/agesignals/AgeSignalsResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/agesignals/zzh;->zza:Ljava/lang/Integer;

    return-object p0
.end method
