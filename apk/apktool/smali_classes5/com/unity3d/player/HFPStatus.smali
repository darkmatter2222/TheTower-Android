.class public Lcom/unity3d/player/HFPStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/content/BroadcastReceiver;

.field public c:Z

.field public final d:Landroid/media/AudioManager;

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/unity3d/player/HFPStatus;->b:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lcom/unity3d/player/HFPStatus;->c:Z

    .line 15
    iput-object v0, p0, Lcom/unity3d/player/HFPStatus;->d:Landroid/media/AudioManager;

    .line 16
    iput-boolean v1, p0, Lcom/unity3d/player/HFPStatus;->e:Z

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/unity3d/player/HFPStatus;->f:I

    .line 30
    iput-object p1, p0, Lcom/unity3d/player/HFPStatus;->a:Landroid/content/Context;

    .line 31
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/unity3d/player/HFPStatus;->d:Landroid/media/AudioManager;

    .line 32
    invoke-direct {p0}, Lcom/unity3d/player/HFPStatus;->initHFPStatusJni()V

    return-void
.end method

.method private final native deinitHFPStatusJni()V
.end method

.method private final native initHFPStatusJni()V
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/unity3d/player/HFPStatus;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/unity3d/player/HFPStatus;->e:Z

    .line 116
    iget-object v0, p0, Lcom/unity3d/player/HFPStatus;->d:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/unity3d/player/HFPStatus;->clearHFPStat()V

    .line 38
    invoke-direct {p0}, Lcom/unity3d/player/HFPStatus;->deinitHFPStatusJni()V

    return-void
.end method

.method public clearHFPStat()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/unity3d/player/HFPStatus;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/unity3d/player/HFPStatus;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/unity3d/player/HFPStatus;->b:Landroid/content/BroadcastReceiver;

    :cond_0
    const/4 v0, 0x1

    .line 108
    iput v0, p0, Lcom/unity3d/player/HFPStatus;->f:I

    .line 88
    invoke-virtual {p0}, Lcom/unity3d/player/HFPStatus;->a()V

    return-void
.end method

.method public getHFPStat()Z
    .locals 2

    .line 82
    iget v0, p0, Lcom/unity3d/player/HFPStatus;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public requestHFPStat()V
    .locals 4

    .line 43
    invoke-virtual {p0}, Lcom/unity3d/player/HFPStatus;->clearHFPStat()V

    .line 45
    new-instance v0, Lcom/unity3d/player/HFPStatus$1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/HFPStatus$1;-><init>(Lcom/unity3d/player/HFPStatus;)V

    iput-object v0, p0, Lcom/unity3d/player/HFPStatus;->b:Landroid/content/BroadcastReceiver;

    .line 65
    iget-object v1, p0, Lcom/unity3d/player/HFPStatus;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 69
    :try_start_0
    iput-boolean v0, p0, Lcom/unity3d/player/HFPStatus;->e:Z

    .line 70
    iget-object v0, p0, Lcom/unity3d/player/HFPStatus;->d:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x5

    .line 76
    const-string v1, "startBluetoothSco() failed. no bluetooth device connected."

    invoke-static {v0, v1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return-void
.end method

.method public setHFPRecordingStat(Z)V
    .locals 1

    .line 93
    iput-boolean p1, p0, Lcom/unity3d/player/HFPStatus;->c:Z

    if-nez p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/unity3d/player/HFPStatus;->d:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    :cond_0
    return-void
.end method
