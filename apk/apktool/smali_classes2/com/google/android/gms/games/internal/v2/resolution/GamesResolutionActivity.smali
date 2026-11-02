.class public final Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;
.super Landroid/app/Activity;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field private zza:Landroid/os/ResultReceiver;

.field private zzb:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final zza(ILandroid/content/Intent;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;->zzb:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;->zza:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    .line 2
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "resultData"

    .line 3
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p2, v1

    .line 4
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x19

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unexpected request code: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ResultActivity"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzfu;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;->zza(ILandroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;->finish()V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;->zza(ILandroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;->finish()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "resultReceiver"

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;->zza:Landroid/os/ResultReceiver;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;->zza:Landroid/os/ResultReceiver;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pendingIntent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    .line 6
    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, p0

    :goto_0
    move-object p1, v0

    const-string v0, "ResultActivity"

    const-string v2, "Failed to launch"

    .line 7
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/games_v2/zzfu;->zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;->zza(ILandroid/content/Intent;)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;->finish()V

    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;->zza(ILandroid/content/Intent;)V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "resultReceiver"

    iget-object v1, p0, Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;->zza:Landroid/os/ResultReceiver;

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
