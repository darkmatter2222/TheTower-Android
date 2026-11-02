.class final Lcom/google/android/play/core/hsdp/service/zzp;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Lcom/google/android/play/core/hsdp/service/zze;


# instance fields
.field final zza:Lcom/google/android/play/core/hsdp/service/zzbc;

.field private final zzb:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzp;->zzb:Landroid/app/Activity;

    invoke-static {p2}, Lcom/google/android/gms/internal/playcore_hsdp/zzf;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzbn;

    .line 2
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v1, Lcom/google/android/play/core/hsdp/service/zzg;

    invoke-direct {v1}, Lcom/google/android/play/core/hsdp/service/zzg;-><init>()V

    const-string v2, "HpoaService"

    invoke-direct {v0, p2, v2, p1, v1}, Lcom/google/android/play/core/hsdp/service/zzbn;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/hsdp/service/zzba;)V

    iput-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzp;->zza:Lcom/google/android/play/core/hsdp/service/zzbc;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzp;->zza:Lcom/google/android/play/core/hsdp/service/zzbc;

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/play/core/hsdp/service/zzp;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/google/android/play/core/hsdp/service/zzp;->zzb:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1, p2, v0, p3}, Lcom/google/android/play/core/hsdp/service/zzq;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x20000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 6
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/play/core/hsdp/service/zzq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzp;->zza:Lcom/google/android/play/core/hsdp/service/zzbc;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/play/core/hsdp/service/zzbc;->zze()V

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/String;IILcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Ljava/util/Map;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzp;->zzb:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3
    new-instance v1, Lcom/google/android/play/core/hsdp/service/zzk;

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    .line 4
    invoke-direct/range {v1 .. v9}, Lcom/google/android/play/core/hsdp/service/zzk;-><init>(Lcom/google/android/play/core/hsdp/service/zzp;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;IILcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Ljava/util/Map;)V

    iget-object p1, v2, Lcom/google/android/play/core/hsdp/service/zzp;->zza:Lcom/google/android/play/core/hsdp/service/zzbc;

    if-nez p1, :cond_0

    const-string p1, "HpoaClientImpl"

    const-string p2, "HPOA service is not available"

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p2, Landroid/os/Bundle;

    .line 6
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "appId"

    .line 7
    invoke-virtual {p2, p3, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "callerId"

    .line 8
    invoke-virtual {p2, p3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "windowToken"

    .line 9
    invoke-virtual {p2, p3, v5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance p3, Lcom/google/android/play/core/hsdp/service/zzh;

    invoke-direct {p3, p0, p2, v1}, Lcom/google/android/play/core/hsdp/service/zzh;-><init>(Lcom/google/android/play/core/hsdp/service/zzp;Landroid/os/Bundle;Lcom/google/android/play/core/hsdp/protocol/zzd;)V

    .line 10
    invoke-interface {p1, p3}, Lcom/google/android/play/core/hsdp/service/zzbc;->zzd(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    move-object v2, p0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Window token is null, cannot open HPOA service."

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$AffordanceListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzp;->zzb:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/hsdp/service/zzl;

    .line 2
    invoke-direct {v1, p0, p2}, Lcom/google/android/play/core/hsdp/service/zzl;-><init>(Lcom/google/android/play/core/hsdp/service/zzp;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$AffordanceListener;)V

    iget-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzp;->zza:Lcom/google/android/play/core/hsdp/service/zzbc;

    if-nez p2, :cond_0

    const-string p1, "HpoaClientImpl"

    const-string p2, "HPOA service is not available"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    .line 4
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "callerId"

    .line 5
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appId"

    .line 6
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/play/core/hsdp/service/zzf;

    invoke-direct {p1, p0, v2, v1}, Lcom/google/android/play/core/hsdp/service/zzf;-><init>(Lcom/google/android/play/core/hsdp/service/zzp;Landroid/os/Bundle;Lcom/google/android/play/core/hsdp/protocol/zzd;)V

    .line 7
    invoke-interface {p2, p1}, Lcom/google/android/play/core/hsdp/service/zzbc;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method
