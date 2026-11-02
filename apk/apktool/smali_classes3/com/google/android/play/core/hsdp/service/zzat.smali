.class final Lcom/google/android/play/core/hsdp/service/zzat;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;


# instance fields
.field final zza:Lcom/google/android/play/core/hsdp/service/zzax;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

.field private final zzd:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

.field private final zze:Z

.field private final zzf:Z

.field private final zzg:Z

.field private zzh:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/playcore_hsdp/zzg;Lcom/google/android/gms/internal/playcore_hsdp/zzg;ZZZ)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 1
    instance-of p6, p1, Landroid/app/Activity;

    if-eqz p6, :cond_0

    const/4 v0, 0x1

    .line 2
    :cond_0
    instance-of p6, p1, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz p6, :cond_1

    move-object p6, p1

    check-cast p6, Landroid/app/Activity;

    new-instance v2, Lcom/google/android/play/core/hsdp/service/zzax;

    invoke-direct {v2, p6}, Lcom/google/android/play/core/hsdp/service/zzax;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzh:Landroid/app/Application$ActivityLifecycleCallbacks;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzc:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    iput-object p3, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzd:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    iput-boolean p4, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zze:Z

    iput-boolean p5, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzf:Z

    iput-boolean v0, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzg:Z

    iput-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zza:Lcom/google/android/play/core/hsdp/service/zzax;

    return-void
.end method

.method private static zzc(Ljava/lang/String;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Ljava/util/Map;Lcom/google/android/play/core/hsdp/service/zze;Landroid/app/Activity;)V
    .locals 6

    .line 1
    invoke-static {p4}, Lcom/google/android/play/core/hsdp/service/zza;->zzc(Landroid/app/Activity;)I

    move-result v2

    .line 2
    invoke-static {p4}, Lcom/google/android/play/core/hsdp/service/zza;->zzb(Landroid/app/Activity;)I

    move-result v3

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v0, p3

    .line 3
    invoke-interface/range {v0 .. v5}, Lcom/google/android/play/core/hsdp/service/zze;->zzb(Ljava/lang/String;IILcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final detach()V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzd:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/playcore_hsdp/zzg;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/hsdp/service/zzr;

    invoke-interface {v0}, Lcom/google/android/play/core/hsdp/service/zzr;->zza()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzc:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/playcore_hsdp/zzg;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/hsdp/service/zze;

    invoke-interface {v0}, Lcom/google/android/play/core/hsdp/service/zze;->zza()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "HsdpDeepLinkServiceImpl"

    const-string v2, "Failed to detach HsdpDeepLinkService"

    .line 3
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzat;->zza()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzat;->zza()V

    .line 5
    throw v0
.end method

.method public final dismiss(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzd:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/playcore_hsdp/zzg;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/hsdp/service/zzr;

    invoke-interface {v0, p1}, Lcom/google/android/play/core/hsdp/service/zzr;->zzb(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzat;->zza()V

    return-void
.end method

.method public final endSession(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzd:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/playcore_hsdp/zzg;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/hsdp/service/zzr;

    invoke-interface {v0, p1}, Lcom/google/android/play/core/hsdp/service/zzr;->zzc(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzat;->zza()V

    return-void
.end method

.method public final open(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/hsdp/service/zzat;->open(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Ljava/util/Map;Z)V

    return-void
.end method

.method public final open(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/hsdp/service/zzat;->open(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Ljava/util/Map;Z)V

    return-void
.end method

.method public final open(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Ljava/util/Map;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v2, p3

    move-object/from16 v6, p4

    .line 3
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzb:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {p1, p2, v1, v6}, Lcom/google/android/play/core/hsdp/service/zzq;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v1

    iget-boolean v3, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzf:Z

    const/high16 v4, 0x40000

    const-string v5, "HsdpDeepLinkServiceImpl"

    if-eqz v3, :cond_6

    .line 5
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    .line 6
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "errorMessage"

    const-string v0, "Deeplink URL is null."

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {v2, p1}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;->onError(Landroid/os/Bundle;)V

    return-void

    .line 9
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 10
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_3

    const-class v1, Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;

    new-instance v2, Landroid/content/Intent;

    .line 11
    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "target_package_name"

    .line 12
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "referrer"

    .line 13
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "auto_trigger"

    move/from16 v8, p5

    .line 14
    invoke-virtual {v2, p1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "deeplink_url"

    .line 15
    invoke-virtual {v2, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v6, :cond_2

    new-instance p1, Landroid/os/Bundle;

    .line 16
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 17
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "extra_query_params_bundle"

    .line 19
    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 20
    :cond_2
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 21
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "Starting HSDP Shim Activity."

    .line 22
    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_3
    move/from16 v8, p5

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzd:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    .line 24
    move-object v3, v0

    check-cast v3, Landroid/app/Activity;

    .line 25
    invoke-interface {v1}, Lcom/google/android/gms/internal/playcore_hsdp/zzg;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/hsdp/service/zzr;

    invoke-interface {v0}, Lcom/google/android/play/core/hsdp/service/zzr;->zzf()Z

    move-result v0

    if-nez v0, :cond_4

    .line 26
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzat;->zzb()V

    .line 27
    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/playcore_hsdp/zzg;->zza()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/play/core/hsdp/service/zzr;

    .line 28
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    .line 29
    invoke-static {v3}, Lcom/google/android/play/core/hsdp/service/zza;->zzc(Landroid/app/Activity;)I

    move-result v11

    .line 30
    invoke-static {v3}, Lcom/google/android/play/core/hsdp/service/zza;->zzb(Landroid/app/Activity;)I

    move-result v12

    iget-boolean v0, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzg:Z

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzan;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 31
    invoke-direct/range {v0 .. v6}, Lcom/google/android/play/core/hsdp/service/zzan;-><init>(Lcom/google/android/play/core/hsdp/service/zzat;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 33
    :cond_5
    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzar;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v2, p3

    move-object/from16 v6, p4

    .line 32
    invoke-direct/range {v0 .. v6}, Lcom/google/android/play/core/hsdp/service/zzar;-><init>(Lcom/google/android/play/core/hsdp/service/zzat;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_1
    move-object v2, p1

    move-object v3, v7

    move v7, v8

    move-object v1, v9

    move-object v4, v10

    move v5, v11

    move v6, v12

    move-object v8, v0

    .line 33
    invoke-interface/range {v1 .. v8}, Lcom/google/android/play/core/hsdp/service/zzr;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;IIZLcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;)V

    return-void

    :cond_6
    move-object v3, p2

    move-object v7, v6

    move-object v6, v2

    .line 32
    iget-object v8, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zza:Lcom/google/android/play/core/hsdp/service/zzax;

    .line 34
    check-cast v0, Landroid/app/Activity;

    if-eqz v8, :cond_9

    const/high16 v8, 0x20000000

    .line 36
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v8, 0x10000

    .line 39
    invoke-virtual {v4, v1, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    const/4 v8, 0x0

    if-eqz v4, :cond_7

    .line 40
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzat;->zzb()V

    const-string p2, "HSDP Activity found."

    .line 41
    invoke-static {v5, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {v0, v1, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 43
    invoke-interface {v6}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;->onDeepLinkStarted()V

    iget-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzc:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    .line 44
    invoke-interface {p2}, Lcom/google/android/gms/internal/playcore_hsdp/zzg;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/play/core/hsdp/service/zze;

    .line 45
    invoke-static {p1, v6, v7, p2, v0}, Lcom/google/android/play/core/hsdp/service/zzat;->zzc(Ljava/lang/String;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Ljava/util/Map;Lcom/google/android/play/core/hsdp/service/zze;Landroid/app/Activity;)V

    return-void

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zze:Z

    if-eqz v1, :cond_8

    const-string p2, "HSDP Activity not found. Ignoring error and still showing HPOA affordance."

    .line 46
    invoke-static {v5, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzc:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    .line 47
    invoke-interface {p2}, Lcom/google/android/gms/internal/playcore_hsdp/zzg;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/play/core/hsdp/service/zze;

    .line 48
    invoke-static {p1, v6, v7, p2, v0}, Lcom/google/android/play/core/hsdp/service/zzat;->zzc(Ljava/lang/String;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Ljava/util/Map;Lcom/google/android/play/core/hsdp/service/zze;Landroid/app/Activity;)V

    return-void

    .line 49
    :cond_8
    invoke-static {p1, p2, v7}, Lcom/google/android/play/core/hsdp/service/zzq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p1

    .line 50
    invoke-virtual {v0, p1, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 34
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "hsdpLoadingPanel cannot be null when using activity-based HSDP."

    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final prewarm(Ljava/util/List;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;",
            ">;",
            "Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzd:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/playcore_hsdp/zzg;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/hsdp/service/zzr;

    invoke-interface {v0, p1, p2}, Lcom/google/android/play/core/hsdp/service/zzr;->zzd(Ljava/util/List;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;)V

    return-void
.end method

.method public final stopAffordance(Ljava/lang/String;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$AffordanceListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzc:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/playcore_hsdp/zzg;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/hsdp/service/zze;

    invoke-interface {v0, p1, p2}, Lcom/google/android/play/core/hsdp/service/zze;->zzc(Ljava/lang/String;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$AffordanceListener;)V

    return-void
.end method

.method final zza()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzg:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzb:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zza:Lcom/google/android/play/core/hsdp/service/zzax;

    check-cast v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Lcom/google/android/play/core/hsdp/service/zzax;->zzb()V

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzh:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzh:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzh:Landroid/app/Application$ActivityLifecycleCallbacks;

    :cond_1
    :goto_0
    return-void

    .line 1
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "hsdpLoadingPanel cannot be null when loading panel is enabled."

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzb()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzg:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzb:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zza:Lcom/google/android/play/core/hsdp/service/zzax;

    check-cast v0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 2
    iget-object v2, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zza:Landroid/view/View;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzh:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzh:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v2, v3}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 4
    :cond_1
    new-instance v2, Lcom/google/android/play/core/hsdp/service/zzal;

    invoke-direct {v2, p0, v0}, Lcom/google/android/play/core/hsdp/service/zzal;-><init>(Lcom/google/android/play/core/hsdp/service/zzat;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzh:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzat;->zzh:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/play/core/hsdp/service/zzax;->zzc()V

    :cond_2
    :goto_0
    return-void

    .line 1
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "hsdpLoadingPanel cannot be null when enabling loading panel."

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
