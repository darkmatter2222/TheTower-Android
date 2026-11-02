.class public final Lcom/google/android/play/agesignals/zzg;
.super Ljava/lang/Object;
.source "com.google.android.play:age-signals@@0.0.3"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/playcore_age_signals/zzd;


# instance fields
.field final zza:Lcom/google/android/gms/internal/playcore_age_signals/zzo;

.field private final zzc:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/playcore_age_signals/zzd;

    const-string v1, "AgeSignalsService"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/playcore_age_signals/zzd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/agesignals/zzg;->zzb:Lcom/google/android/gms/internal/playcore_age_signals/zzd;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/agesignals/zzg;->zzc:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/playcore_age_signals/zzr;->zzb(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/playcore_age_signals/zzo;

    sget-object v3, Lcom/google/android/play/agesignals/zzg;->zzb:Lcom/google/android/gms/internal/playcore_age_signals/zzd;

    sget-object v5, Lcom/google/android/play/agesignals/zza;->zza:Landroid/content/Intent;

    new-instance v6, Lcom/google/android/play/agesignals/zzd;

    invoke-direct {v6}, Lcom/google/android/play/agesignals/zzd;-><init>()V

    const-string v4, "AgeSignalsService"

    const/4 v7, 0x0

    move-object v2, p1

    .line 3
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/playcore_age_signals/zzo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/playcore_age_signals/zzd;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/agesignals/zzd;Lcom/google/android/gms/internal/playcore_age_signals/zzj;)V

    iput-object v1, p0, Lcom/google/android/play/agesignals/zzg;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzo;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/play/agesignals/zzg;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzo;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/play/agesignals/zzg;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/agesignals/zzg;->zzc:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zzc()Lcom/google/android/gms/internal/playcore_age_signals/zzd;
    .locals 1

    sget-object v0, Lcom/google/android/play/agesignals/zzg;->zzb:Lcom/google/android/gms/internal/playcore_age_signals/zzd;

    return-object v0
.end method

.method private static zzd(I)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/play/agesignals/zzg;->zzb:Lcom/google/android/gms/internal/playcore_age_signals/zzd;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onError(%d)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/playcore_age_signals/zzd;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2
    new-instance v0, Lcom/google/android/play/agesignals/AgeSignalsException;

    invoke-direct {v0, p0}, Lcom/google/android/play/agesignals/AgeSignalsException;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/play/agesignals/AgeSignalsRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/agesignals/zzg;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzo;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/play/agesignals/zzg;->zzc:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/playcore_age_signals/zzr;->zza(Landroid/content/Context;)I

    move-result v1

    const v2, 0x4e904e0

    if-ge v1, v2, :cond_0

    const/4 p1, -0x6

    .line 5
    invoke-static {p1}, Lcom/google/android/play/agesignals/zzg;->zzd(I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v2, Lcom/google/android/play/agesignals/zze;

    .line 3
    invoke-direct {v2, p0, v1, v1, p1}, Lcom/google/android/play/agesignals/zze;-><init>(Lcom/google/android/play/agesignals/zzg;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/agesignals/AgeSignalsRequest;)V

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/playcore_age_signals/zzo;->zzt(Lcom/google/android/gms/internal/playcore_age_signals/zze;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, -0x2

    .line 6
    invoke-static {p1}, Lcom/google/android/play/agesignals/zzg;->zzd(I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
