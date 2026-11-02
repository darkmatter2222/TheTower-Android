.class public final Lcom/unity3d/player/k0;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;I)V
    .locals 0

    .line 1436
    iput-object p1, p0, Lcom/unity3d/player/k0;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 2

    .line 1440
    iget-object v0, p0, Lcom/unity3d/player/k0;->a:Lcom/unity3d/player/UnityPlayer;

    iget v1, v0, Lcom/unity3d/player/UnityPlayer;->mNaturalOrientation:I

    invoke-virtual {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->onOrientationChanged(II)V

    return-void
.end method
