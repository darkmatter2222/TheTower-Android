.class final Lcom/android/billingclient/api/zzcd;
.super Lcom/google/android/gms/internal/play_billing/zzaj;
.source "com.android.billingclient:billing@@9.0.0"


# instance fields
.field final zza:Lcom/android/billingclient/api/zzbw;

.field final zzb:Ljava/lang/Boolean;

.field final zzc:I

.field final synthetic zzd:Lcom/android/billingclient/api/BillingClientImpl;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/zzbw;Ljava/lang/Boolean;ILcom/android/billingclient/api/zzci;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/billingclient/api/zzcd;->zzd:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzaj;-><init>()V

    iput-object p2, p0, Lcom/android/billingclient/api/zzcd;->zza:Lcom/android/billingclient/api/zzbw;

    iput-object p3, p0, Lcom/android/billingclient/api/zzcd;->zzb:Ljava/lang/Boolean;

    iput p4, p0, Lcom/android/billingclient/api/zzcd;->zzc:I

    return-void
.end method

.method private final zzb(Lcom/android/billingclient/api/zzbw;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjn;ZLjava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzcd;->zzd:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzap(Lcom/android/billingclient/api/BillingClientImpl;I)V

    move-object v2, p5

    move p5, p4

    move-object p4, v2

    .line 2
    invoke-static/range {p1 .. p6}, Lcom/android/billingclient/api/zzbw;->zzc(Lcom/android/billingclient/api/zzbw;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjn;Ljava/lang/String;ZI)V

    .line 3
    invoke-static {p1, p2}, Lcom/android/billingclient/api/zzbw;->zze(Lcom/android/billingclient/api/zzbw;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)V
    .locals 10

    if-nez p1, :cond_0

    .line 1
    const-string v0, "BillingClient"

    const-string v2, "Response bundle is null."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/billingclient/api/zzcd;->zza:Lcom/android/billingclient/api/zzbw;

    iget-object v0, p0, Lcom/android/billingclient/api/zzcd;->zzb:Ljava/lang/Boolean;

    iget v7, p0, Lcom/android/billingclient/api/zzcd;->zzc:I

    .line 2
    sget-object v3, Lcom/android/billingclient/api/zzdc;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjn;->zzbr:Lcom/google/android/gms/internal/play_billing/zzjn;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 2
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/zzcd;->zzb(Lcom/android/billingclient/api/zzbw;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjn;ZLjava/lang/String;I)V

    return-void

    :cond_0
    const-string v0, "RESPONSE_CODE"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BillingClient"

    const-string v2, "Response bundle doesn\'t contain a response code"

    .line 5
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/billingclient/api/zzcd;->zza:Lcom/android/billingclient/api/zzbw;

    iget-object v0, p0, Lcom/android/billingclient/api/zzcd;->zzb:Ljava/lang/Boolean;

    iget v7, p0, Lcom/android/billingclient/api/zzcd;->zzc:I

    .line 6
    sget-object v3, Lcom/android/billingclient/api/zzdc;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjn;->zzby:Lcom/google/android/gms/internal/play_billing/zzjn;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 6
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/zzcd;->zzb(Lcom/android/billingclient/api/zzbw;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjn;ZLjava/lang/String;I)V

    return-void

    :cond_1
    const-string v0, "RESPONSE_CODE"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/billingclient/api/zzcd;->zza:Lcom/android/billingclient/api/zzbw;

    const-string v3, "RESPONSE_CODE"

    .line 9
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "DEBUG_MESSAGE"

    const-string v5, ""

    .line 10
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v3, v4}, Lcom/android/billingclient/api/zzdc;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v3

    iget-object v4, p0, Lcom/android/billingclient/api/zzcd;->zzb:Ljava/lang/Boolean;

    const-string v5, "RESPONSE_CODE"

    move-object v6, v4

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjn;->zzbz:Lcom/google/android/gms/internal/play_billing/zzjn;

    .line 12
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 13
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Response code from Phonesky: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v7, p0, Lcom/android/billingclient/api/zzcd;->zzc:I

    move-object v1, p0

    move v5, v6

    move-object v6, v2

    move-object v2, v0

    .line 14
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/zzcd;->zzb(Lcom/android/billingclient/api/zzbw;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjn;ZLjava/lang/String;I)V

    return-void

    :cond_2
    const-string v0, "BILLING_API_VERSION_KEY"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BillingClient"

    const-string v2, "Billing API version not found in response bundle."

    .line 16
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/billingclient/api/zzcd;->zza:Lcom/android/billingclient/api/zzbw;

    iget-object v0, p0, Lcom/android/billingclient/api/zzcd;->zzb:Ljava/lang/Boolean;

    iget v7, p0, Lcom/android/billingclient/api/zzcd;->zzc:I

    .line 17
    sget-object v3, Lcom/android/billingclient/api/zzdc;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjn;->zzbx:Lcom/google/android/gms/internal/play_billing/zzjn;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 17
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/zzcd;->zzb(Lcom/android/billingclient/api/zzbw;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjn;ZLjava/lang/String;I)V

    return-void

    :cond_3
    const-string v0, "BILLING_API_VERSION_KEY"

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/billingclient/api/zzcd;->zzd:Lcom/android/billingclient/api/BillingClientImpl;

    .line 20
    invoke-static {v3, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzao(Lcom/android/billingclient/api/BillingClientImpl;I)V

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v0, v4, :cond_4

    move v4, v5

    goto :goto_0

    :cond_4
    move v4, v6

    .line 21
    :goto_0
    invoke-static {v3, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzaf(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    const/4 v4, 0x3

    if-lt v0, v4, :cond_5

    goto :goto_1

    :cond_5
    move v5, v6

    .line 22
    :goto_1
    invoke-static {v3, v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzag(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    const-string v0, "EXPERIMENT_VALUES_KEY"

    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_6

    :try_start_0
    const-string v0, "DELEGATION_API_ENABLED_KEY"

    .line 24
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 25
    invoke-static {v0}, Lcom/android/billingclient/api/zzdl;->zzg(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Error reading EnableDelegationApi experiment flag: "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "BillingClient"

    invoke-static {v7, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :goto_2
    :try_start_1
    const-string v0, "AUTO_SERVICE_RECONNECTION_SYNCHRONOUS_TIMEOUT_MS_KEY"

    .line 27
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 28
    invoke-static {v7, v8}, Lcom/android/billingclient/api/zzdl;->zzf(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Error reading AutoServiceReconnectionSynchronousTimeoutMs experiment flag: "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "BillingClient"

    invoke-static {v7, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    :goto_3
    :try_start_2
    const-string v0, "AUTO_SERVICE_RECONNECTION_ASYNCHRONOUS_TIMEOUT_MS_KEY"

    .line 30
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 31
    invoke-static {v7, v8}, Lcom/android/billingclient/api/zzdl;->zzd(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Error reading AutoServiceReconnectionAsynchronousTimeoutMs experiment flag: "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "BillingClient"

    invoke-static {v7, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    :goto_4
    :try_start_3
    const-string v0, "AUTO_SERVICE_RECONNECTION_MAX_NUM_RETRIES_KEY"

    .line 33
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 34
    invoke-static {v0}, Lcom/android/billingclient/api/zzdl;->zze(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Error reading AutoServiceReconnectionMaxNumRetries experiment flag: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "BillingClient"

    invoke-static {v5, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :cond_6
    :goto_5
    const-string v0, "ENABLED_SUBSCRIPTION_CLIENT_ACTIONS_KEY"

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_7

    .line 52
    :cond_7
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzce;

    invoke-direct {v2}, Lcom/google/android/gms/internal/play_billing/zzce;-><init>()V

    .line 37
    invoke-static {}, Lcom/android/billingclient/api/zzeo;->values()[Lcom/android/billingclient/api/zzeo;

    move-result-object v3

    array-length v5, v3

    move v7, v6

    :goto_6
    if-ge v7, v5, :cond_9

    aget-object v8, v3, v7

    .line 38
    invoke-virtual {v8}, Lcom/android/billingclient/api/zzeo;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 39
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/play_billing/zzce;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzce;

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/android/billingclient/api/zzcd;->zzd:Lcom/android/billingclient/api/BillingClientImpl;

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzce;->zzc()Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzah(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzcf;)V

    .line 41
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzh(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzab;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 42
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzh(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzab;

    move-result-object v2

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzs(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/billingclient/api/zzab;->zzk(Lcom/google/android/gms/internal/play_billing/zzcf;)V

    .line 36
    :cond_a
    :goto_7
    iget-object v0, p0, Lcom/android/billingclient/api/zzcd;->zzd:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzb(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v2

    if-ge v2, v4, :cond_b

    const-string v0, "BillingClient"

    const-string v2, "In-app billing API version 3 is not supported on this device."

    .line 43
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/billingclient/api/zzcd;->zza:Lcom/android/billingclient/api/zzbw;

    iget-object v0, p0, Lcom/android/billingclient/api/zzcd;->zzb:Ljava/lang/Boolean;

    iget v7, p0, Lcom/android/billingclient/api/zzcd;->zzc:I

    .line 44
    sget-object v3, Lcom/android/billingclient/api/zzdc;->zzb:Lcom/android/billingclient/api/BillingResult;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjn;->zzJ:Lcom/google/android/gms/internal/play_billing/zzjn;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 44
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/zzcd;->zzb(Lcom/android/billingclient/api/zzbw;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjn;ZLjava/lang/String;I)V

    return-void

    :cond_b
    iget-object v2, p0, Lcom/android/billingclient/api/zzcd;->zza:Lcom/android/billingclient/api/zzbw;

    iget-object v3, p0, Lcom/android/billingclient/api/zzcd;->zzb:Ljava/lang/Boolean;

    iget v5, p0, Lcom/android/billingclient/api/zzcd;->zzc:I

    .line 46
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 47
    invoke-static {v0, v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzaq(Lcom/android/billingclient/api/BillingClientImpl;I)V

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzA(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 48
    :try_start_4
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v0

    if-ne v0, v4, :cond_c

    .line 49
    monitor-exit v6

    return-void

    .line 50
    :cond_c
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 51
    invoke-static {v2, v3, v5}, Lcom/android/billingclient/api/zzbw;->zzd(Lcom/android/billingclient/api/zzbw;ZI)V

    .line 52
    sget-object v0, Lcom/android/billingclient/api/zzdc;->zzi:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v2, v0}, Lcom/android/billingclient/api/zzbw;->zze(Lcom/android/billingclient/api/zzbw;Lcom/android/billingclient/api/BillingResult;)V

    return-void

    :catchall_4
    move-exception v0

    .line 50
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0
.end method
