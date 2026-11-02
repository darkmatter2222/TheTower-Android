.class final Lcom/google/android/gms/internal/nearby/zzrr;
.super Lcom/google/android/gms/internal/nearby/zzox;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/nearby/zzrs;

.field private final zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field private final zzc:Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzrs;Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzrr;->zza:Lcom/google/android/gms/internal/nearby/zzrs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zzox;-><init>()V

    const-class v0, Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/nearby/zzrs;->registerListener(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzrr;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzrr;->zzc:Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/nearby/zzrr;Lcom/google/android/gms/internal/nearby/zzqa;)Lcom/google/android/gms/nearby/uwb/RangingPosition;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzqa;->zzd()Lcom/google/android/gms/internal/nearby/zzpu;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/nearby/zzrr;->zzi(Lcom/google/android/gms/internal/nearby/zzpu;)Lcom/google/android/gms/nearby/uwb/RangingMeasurement;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzqa;->zzc()Lcom/google/android/gms/internal/nearby/zzpu;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzqa;->zzc()Lcom/google/android/gms/internal/nearby/zzpu;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/nearby/zzrr;->zzi(Lcom/google/android/gms/internal/nearby/zzpu;)Lcom/google/android/gms/nearby/uwb/RangingMeasurement;

    move-result-object p0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzqa;->zze()Lcom/google/android/gms/internal/nearby/zzpu;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzqa;->zze()Lcom/google/android/gms/internal/nearby/zzpu;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/nearby/zzrr;->zzi(Lcom/google/android/gms/internal/nearby/zzpu;)Lcom/google/android/gms/nearby/uwb/RangingMeasurement;

    move-result-object v0

    :cond_1
    move-object v3, v0

    new-instance v0, Lcom/google/android/gms/nearby/uwb/RangingPosition;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzqa;->zzb()J

    move-result-wide v4

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzqa;->zza()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/nearby/uwb/RangingPosition;-><init>(Lcom/google/android/gms/nearby/uwb/RangingMeasurement;Lcom/google/android/gms/nearby/uwb/RangingMeasurement;Lcom/google/android/gms/nearby/uwb/RangingMeasurement;JI)V

    return-object v0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/nearby/zzrr;)Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/nearby/zzrr;->zzc:Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/nearby/zzrr;Lcom/google/android/gms/internal/nearby/zzrv;)Lcom/google/android/gms/nearby/uwb/UwbDevice;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzrv;->zza()Lcom/google/android/gms/internal/nearby/zzqq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzqq;->zzb()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/nearby/uwb/UwbDevice;->createForAddress([B)Lcom/google/android/gms/nearby/uwb/UwbDevice;

    move-result-object p0

    return-object p0
.end method

.method private static final zzi(Lcom/google/android/gms/internal/nearby/zzpu;)Lcom/google/android/gms/nearby/uwb/RangingMeasurement;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/nearby/uwb/RangingMeasurement;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzpu;->zzb()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzpu;->zza()F

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/nearby/uwb/RangingMeasurement;-><init>(IF)V

    return-object v0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/nearby/zzpm;)V
    .locals 4

    .line 1
    sget v0, Lcom/google/android/gms/internal/nearby/zzrs;->zza:I

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzrl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/nearby/zzrl;-><init>(Lcom/google/android/gms/internal/nearby/zzrr;Lcom/google/android/gms/internal/nearby/zzpm;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/nearby/zzrr;->zza:Lcom/google/android/gms/internal/nearby/zzrs;

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/api/internal/RegistrationMethods;->builder()Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/nearby/zzrm;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/nearby/zzrm;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->register(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/nearby/zzrn;->zza:Lcom/google/android/gms/internal/nearby/zzrn;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->unregister(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzrr;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->withHolder(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/nearby/zza;->zzM:Lcom/google/android/gms/common/Feature;

    aput-object v3, v1, v2

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v0

    const/16 v1, 0x518

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->build()Lcom/google/android/gms/common/api/internal/RegistrationMethods;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/nearby/zzrs;->doRegisterEventListener(Lcom/google/android/gms/common/api/internal/RegistrationMethods;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/nearby/zzpo;)V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/nearby/zzrs;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzrr;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/nearby/zzrp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/nearby/zzrp;-><init>(Lcom/google/android/gms/internal/nearby/zzrr;Lcom/google/android/gms/internal/nearby/zzpo;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/nearby/zzpq;)V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/nearby/zzrs;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzrr;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/nearby/zzrq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/nearby/zzrq;-><init>(Lcom/google/android/gms/internal/nearby/zzrr;Lcom/google/android/gms/internal/nearby/zzpq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method

.method final synthetic zzh(Lcom/google/android/gms/internal/nearby/zzpm;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzrr;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzro;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/nearby/zzro;-><init>(Lcom/google/android/gms/internal/nearby/zzrr;Lcom/google/android/gms/internal/nearby/zzpm;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method
