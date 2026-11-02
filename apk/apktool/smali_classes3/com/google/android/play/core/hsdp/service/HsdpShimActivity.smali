.class public Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;
.super Landroid/app/Activity;
.source "com.google.android.play:hsdp@@2.0.1"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;->zzb:Z

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;->zza:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;->zzb:Z

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;->zzb:Z

    return p0
.end method

.method private final zzd(Z)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 3
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "target_package_name"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 6
    invoke-static {}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkServiceFactory;->createHsdpServiceIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/google/android/play/core/hsdp/service/zzs;->zza(Landroid/content/Intent;Landroid/content/Context;)Lcom/google/android/play/core/hsdp/service/zzr;

    move-result-object v1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;->zza:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {v1, v2}, Lcom/google/android/play/core/hsdp/service/zzr;->zzg(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 8
    const-string v0, "HsdpShimActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "HSDP is already showing for "

    .line 9
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ignore."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iput-object v2, p0, Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;->zza:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;->zzb:Z

    const-string v3, "referrer"

    .line 10
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 11
    const-string v5, "deeplink_url"

    .line 12
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 13
    const-string v6, "auto_trigger"

    .line 14
    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string p1, "extra_query_params_bundle"

    .line 15
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Ljava/util/HashMap;

    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    const-string v9, ""

    .line 19
    :cond_2
    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    move-object p1, v3

    move-object v3, v5

    .line 20
    invoke-static {p0}, Lcom/google/android/play/core/hsdp/service/zza;->zzc(Landroid/app/Activity;)I

    move-result v5

    .line 21
    invoke-static {p0}, Lcom/google/android/play/core/hsdp/service/zza;->zzb(Landroid/app/Activity;)I

    move-result v6

    new-instance v8, Lcom/google/android/play/core/hsdp/service/zzaz;

    invoke-direct {v8, p0, v2, p1, v0}, Lcom/google/android/play/core/hsdp/service/zzaz;-><init>(Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 22
    invoke-interface/range {v1 .. v8}, Lcom/google/android/play/core/hsdp/service/zzr;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;IIZLcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;)V

    return-void

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "deeplinkUrl is null"

    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "referrer is null"

    .line 11
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "targetPackageName is null"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "windowToken is null"

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    const-string v0, "HsdpShimActivity"

    const-string v1, "shim activity onAttachedToWindow"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;->zzd(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "HsdpShimActivity"

    const-string v0, "shim activity onConfigurationChanged"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;->zzd(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/google/android/play/core/hsdp/R$layout;->hsdp_shim_activity:I

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "HsdpShimActivity"

    const-string v1, "shim activity onDestroy"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "HsdpShimActivity"

    const-string v1, "shim activity onNewIntent"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;->setIntent(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/play/core/hsdp/service/HsdpShimActivity;->zzd(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "HsdpShimActivity"

    const-string v1, "shim activity onPause"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "HsdpShimActivity"

    const-string v1, "shim activity onResume"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "HsdpShimActivity"

    const-string v1, "shim activity onStart"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "HsdpShimActivity"

    const-string v1, "shim activity onStop"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
