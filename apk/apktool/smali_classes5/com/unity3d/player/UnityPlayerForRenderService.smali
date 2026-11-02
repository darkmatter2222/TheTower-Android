.class public Lcom/unity3d/player/UnityPlayerForRenderService;
.super Lcom/unity3d/player/UnityPlayerForActivityOrService;
.source "SourceFile"


# instance fields
.field private final a:Lcom/unity3d/player/a/F;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 21
    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/unity3d/player/UnityPlayerForRenderService;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V
    .locals 1

    .line 26
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/unity3d/player/UnityPlayerForRenderService;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;Ljava/lang/String;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/unity3d/player/a/D;

    invoke-direct {v0}, Lcom/unity3d/player/a/D;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;Ljava/lang/String;Lcom/unity3d/player/a/d;)V

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Creating UnityPlayerForRenderService with cmdline: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p2, p1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    .line 33
    new-instance p1, Lcom/unity3d/player/a/F;

    invoke-direct {p1}, Lcom/unity3d/player/a/F;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayerForRenderService;->a:Lcom/unity3d/player/a/F;

    return-void
.end method


# virtual methods
.method public forwardSoftInputArea(Landroid/graphics/Rect;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->reportSoftInputArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public forwardSoftInputIsVisible(Z)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->reportSoftInputIsVisible(Z)V

    return-void
.end method

.method public forwardSoftInputSelection(II)V
    .locals 0

    .line 109
    invoke-super {p0, p1, p2}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->reportSoftInputSelection(II)V

    return-void
.end method

.method public forwardSoftInputStr(Ljava/lang/String;IZ)V
    .locals 0

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->reportSoftInputStr(Ljava/lang/String;IZ)V

    return-void
.end method

.method public getSoftInputListener()Lcom/unity3d/player/ISoftInputListener;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerForRenderService;->a:Lcom/unity3d/player/a/F;

    .line 18
    iget-object v0, v0, Lcom/unity3d/player/a/F;->b:Lcom/unity3d/player/ISoftInputListener;

    return-object v0
.end method

.method final handleFocus(Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 66
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->handleFocus(Z)Z

    move-result p1

    return p1
.end method

.method public mute(Z)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_PhoneCallListener:Lcom/unity3d/player/UnityPlayer$a;

    .line 103
    iget v0, v0, Lcom/unity3d/player/UnityPlayer$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeMuteMasterAudio(Z)V

    return-void
.end method

.method protected resetSoftInput()V
    .locals 0

    return-void
.end method

.method protected saveFocusState(Z)V
    .locals 1

    .line 58
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/a/S;

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p1, Lcom/unity3d/player/a/S;->a:Z

    return-void
.end method

.method public setSoftInputListener(Lcom/unity3d/player/ISoftInputListener;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerForRenderService;->a:Lcom/unity3d/player/a/F;

    .line 23
    iput-object p1, v0, Lcom/unity3d/player/a/F;->b:Lcom/unity3d/player/ISoftInputListener;

    return-void
.end method

.method protected showSoftInput(Ljava/lang/String;IZZZZLjava/lang/String;IZZ)V
    .locals 11

    .line 79
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerForRenderService;->a:Lcom/unity3d/player/a/F;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/unity3d/player/a/F;->a(Ljava/lang/String;IZZZZLjava/lang/String;IZZ)V

    return-void
.end method

.method protected showVideoPlayer(Ljava/lang/String;IIIZII)Z
    .locals 0

    const/4 p1, 0x5

    .line 88
    const-string p2, "VideoPlayer Not Supported"

    invoke-static {p1, p2}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
