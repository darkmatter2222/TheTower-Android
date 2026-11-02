.class public final Lcom/unity3d/player/a/L;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final a:Lcom/unity3d/player/OrientationLockListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/unity3d/player/OrientationLockListener;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 23
    iput-object p2, p0, Lcom/unity3d/player/a/L;->a:Lcom/unity3d/player/OrientationLockListener;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 29
    iget-object p1, p0, Lcom/unity3d/player/a/L;->a:Lcom/unity3d/player/OrientationLockListener;

    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p1, Lcom/unity3d/player/OrientationLockListener;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/unity3d/player/OrientationLockListener;->nativeUpdateOrientationLockState(I)V

    :cond_0
    return-void
.end method
