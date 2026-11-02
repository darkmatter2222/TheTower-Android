.class public Lorg/fmod/FmodAndroidAudioManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Lorg/fmod/FmodAndroidAudioManager;


# instance fields
.field private volatile a:Landroid/app/Activity;

.field private volatile b:Landroid/media/AudioManager;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lorg/fmod/FmodAndroidAudioManager;->a:Landroid/app/Activity;

    .line 18
    iput-object v0, p0, Lorg/fmod/FmodAndroidAudioManager;->b:Landroid/media/AudioManager;

    .line 19
    iput-object v0, p0, Lorg/fmod/FmodAndroidAudioManager;->c:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lorg/fmod/FmodAndroidAudioManager;->d:Z

    .line 22
    iput-boolean v0, p0, Lorg/fmod/FmodAndroidAudioManager;->e:Z

    return-void
.end method

.method static synthetic access$002(Lorg/fmod/FmodAndroidAudioManager;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lorg/fmod/FmodAndroidAudioManager;->e:Z

    return p1
.end method

.method public static getInstance()Lorg/fmod/FmodAndroidAudioManager;
    .locals 1

    .line 31
    sget-object v0, Lorg/fmod/FmodAndroidAudioManager;->f:Lorg/fmod/FmodAndroidAudioManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lorg/fmod/FmodAndroidAudioManager;

    invoke-direct {v0}, Lorg/fmod/FmodAndroidAudioManager;-><init>()V

    sput-object v0, Lorg/fmod/FmodAndroidAudioManager;->f:Lorg/fmod/FmodAndroidAudioManager;

    .line 34
    :cond_0
    sget-object v0, Lorg/fmod/FmodAndroidAudioManager;->f:Lorg/fmod/FmodAndroidAudioManager;

    return-object v0
.end method


# virtual methods
.method public getBluetoothInputDeviceId()I
    .locals 6

    .line 133
    iget-object v0, p0, Lorg/fmod/FmodAndroidAudioManager;->b:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 134
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 136
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 137
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public isBluetoothInputDeviceAvailable()Z
    .locals 7

    .line 118
    iget-object v0, p0, Lorg/fmod/FmodAndroidAudioManager;->b:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 119
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 121
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public isBluetoothScoConnected()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lorg/fmod/FmodAndroidAudioManager;->e:Z

    return v0
.end method

.method public isBuiltinInputDeviceAvailable()Z
    .locals 7

    .line 103
    iget-object v0, p0, Lorg/fmod/FmodAndroidAudioManager;->b:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 104
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 106
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/16 v6, 0xf

    if-ne v5, v6, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public isBuiltinSpeakerDevice(I)Z
    .locals 7

    .line 173
    iget-object v0, p0, Lorg/fmod/FmodAndroidAudioManager;->b:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 174
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 176
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v6

    if-ne v6, p1, :cond_0

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    if-ne v5, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public isInputSampleRateAvailable(I)Z
    .locals 9

    .line 148
    iget-object v0, p0, Lorg/fmod/FmodAndroidAudioManager;->b:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 149
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 151
    iget-boolean v6, p0, Lorg/fmod/FmodAndroidAudioManager;->d:Z

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    iget-boolean v6, p0, Lorg/fmod/FmodAndroidAudioManager;->d:Z

    if-nez v6, :cond_2

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_2

    .line 156
    :goto_1
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getSampleRates()[I

    move-result-object v5

    .line 157
    array-length v6, v5

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_2

    aget v8, v5, v7

    if-ne v8, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3

    .line 39
    iget-object v0, p0, Lorg/fmod/FmodAndroidAudioManager;->a:Landroid/app/Activity;

    if-eq v0, p1, :cond_2

    .line 41
    iget-object v0, p0, Lorg/fmod/FmodAndroidAudioManager;->c:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/fmod/FmodAndroidAudioManager;->a:Landroid/app/Activity;

    iget-object v2, p0, Lorg/fmod/FmodAndroidAudioManager;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 44
    iput-object v1, p0, Lorg/fmod/FmodAndroidAudioManager;->c:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lorg/fmod/FmodAndroidAudioManager;->e:Z

    .line 49
    :cond_0
    iput-object p1, p0, Lorg/fmod/FmodAndroidAudioManager;->a:Landroid/app/Activity;

    .line 50
    iget-object p1, p0, Lorg/fmod/FmodAndroidAudioManager;->a:Landroid/app/Activity;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/fmod/FmodAndroidAudioManager;->a:Landroid/app/Activity;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/media/AudioManager;

    :cond_1
    iput-object v1, p0, Lorg/fmod/FmodAndroidAudioManager;->b:Landroid/media/AudioManager;

    :cond_2
    return-void
.end method

.method public setUseBluetooth(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lorg/fmod/FmodAndroidAudioManager;->d:Z

    return-void
.end method

.method public startBluetoothSco()V
    .locals 4

    .line 61
    iget-object v0, p0, Lorg/fmod/FmodAndroidAudioManager;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lorg/fmod/FmodAndroidAudioManager$1;

    invoke-direct {v0, p0}, Lorg/fmod/FmodAndroidAudioManager$1;-><init>(Lorg/fmod/FmodAndroidAudioManager;)V

    iput-object v0, p0, Lorg/fmod/FmodAndroidAudioManager;->c:Landroid/content/BroadcastReceiver;

    .line 83
    iget-object v0, p0, Lorg/fmod/FmodAndroidAudioManager;->a:Landroid/app/Activity;

    iget-object v1, p0, Lorg/fmod/FmodAndroidAudioManager;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/fmod/FmodAndroidAudioManager;->b:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    return-void
.end method

.method public stopBluetoothSco()V
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/fmod/FmodAndroidAudioManager;->b:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    return-void
.end method
