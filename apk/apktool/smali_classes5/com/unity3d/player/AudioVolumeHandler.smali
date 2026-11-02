.class public Lcom/unity3d/player/AudioVolumeHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/player/a/i;


# instance fields
.field public a:Lcom/unity3d/player/a/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/unity3d/player/a/j;

    invoke-direct {v0, p1}, Lcom/unity3d/player/a/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/AudioVolumeHandler;->a:Lcom/unity3d/player/a/j;

    .line 66
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    new-instance v2, Lcom/unity3d/player/a/h;

    iget-object v3, v0, Lcom/unity3d/player/a/j;->b:Landroid/media/AudioManager;

    invoke-direct {v2, v1, v3, p0}, Lcom/unity3d/player/a/h;-><init>(Landroid/os/Handler;Landroid/media/AudioManager;Lcom/unity3d/player/AudioVolumeHandler;)V

    iput-object v2, v0, Lcom/unity3d/player/a/j;->c:Lcom/unity3d/player/a/h;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, v0, Lcom/unity3d/player/a/j;->c:Lcom/unity3d/player/a/h;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public final native onAudioVolumeChanged(I)V
.end method
