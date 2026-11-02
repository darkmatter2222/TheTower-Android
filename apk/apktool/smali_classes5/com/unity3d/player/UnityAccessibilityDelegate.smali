.class Lcom/unity3d/player/UnityAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/UnityAccessibilityDelegate$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/unity3d/player/UnityPlayer;

.field private final b:Landroid/view/SurfaceView;

.field private c:Landroid/view/accessibility/AccessibilityManager;

.field private d:Lcom/unity3d/player/P;

.field private e:Landroid/view/accessibility/CaptioningManager;

.field private f:Lcom/unity3d/player/S;

.field private g:I

.field private h:I

.field private i:Z

.field private j:F

.field private final k:Lcom/unity3d/player/N;


# direct methods
.method static bridge synthetic -$$Nest$fgeta(Lcom/unity3d/player/UnityAccessibilityDelegate;)Lcom/unity3d/player/UnityPlayer;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetb(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->b:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetc(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->c:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgete(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/accessibility/CaptioningManager;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->e:Landroid/view/accessibility/CaptioningManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeth(Lcom/unity3d/player/UnityAccessibilityDelegate;)I
    .locals 0

    iget p0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->h:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeti(Lcom/unity3d/player/UnityAccessibilityDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->i:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputd(Lcom/unity3d/player/UnityAccessibilityDelegate;Lcom/unity3d/player/P;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->d:Lcom/unity3d/player/P;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputf(Lcom/unity3d/player/UnityAccessibilityDelegate;Lcom/unity3d/player/S;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->f:Lcom/unity3d/player/S;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputh(Lcom/unity3d/player/UnityAccessibilityDelegate;I)V
    .locals 0

    iput p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->h:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputi(Lcom/unity3d/player/UnityAccessibilityDelegate;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->i:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetRootNodeIds()[I
    .locals 1

    invoke-static {}, Lcom/unity3d/player/UnityAccessibilityDelegate;->getRootNodeIds()[I

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smhitTest(FF)I
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->hitTest(FF)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisNodeDismissable(I)Z
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->isNodeDismissable(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisNodeInvokable(I)Z
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->isNodeInvokable(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisNodeScrollable(I)Z
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->isNodeScrollable(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisNodeSlider(I)Z
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->isNodeSlider(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smonClosedCaptioningStatusChanged(Z)V
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->onClosedCaptioningStatusChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smonFontScaleChanged(F)V
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->onFontScaleChanged(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smonNodeDecremented(I)Z
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->onNodeDecremented(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smonNodeDismissed(I)Z
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->onNodeDismissed(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smonNodeFocusChanged(IZ)V
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->onNodeFocusChanged(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smonNodeIncremented(I)Z
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->onNodeIncremented(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smonNodeInvoked(I)Z
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->onNodeInvoked(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smonNodeScrolled(II)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->onNodeScrolled(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smonScreenReaderStatusChanged(Z)V
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->onScreenReaderStatusChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smpopulateNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/unity3d/player/UnityAccessibilityDelegate;->populateNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->g:I

    .line 38
    iput v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->h:I

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->i:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    iput v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->j:F

    .line 312
    new-instance v0, Lcom/unity3d/player/N;

    invoke-direct {v0, p0}, Lcom/unity3d/player/N;-><init>(Lcom/unity3d/player/UnityAccessibilityDelegate;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->k:Lcom/unity3d/player/N;

    .line 64
    iput-object p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    .line 65
    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->b:Landroid/view/SurfaceView;

    return-void
.end method

.method private static native getRootNodeIds()[I
.end method

.method private static native hitTest(FF)I
.end method

.method protected static init(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/UnityAccessibilityDelegate;
    .locals 3

    .line 71
    new-instance v0, Lcom/unity3d/player/UnityAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    .line 95
    iget-object p0, v0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    iput-object p0, v0, Lcom/unity3d/player/UnityAccessibilityDelegate;->c:Landroid/view/accessibility/AccessibilityManager;

    .line 96
    iget-object p0, v0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "captioning"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    iput-object p0, v0, Lcom/unity3d/player/UnityAccessibilityDelegate;->e:Landroid/view/accessibility/CaptioningManager;

    .line 98
    iget-object v1, v0, Lcom/unity3d/player/UnityAccessibilityDelegate;->c:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_0

    if-eqz p0, :cond_1

    .line 102
    :cond_0
    new-instance p0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 104
    iget-object v1, v0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    new-instance v2, Lcom/unity3d/player/E;

    invoke-direct {v2, v0, p0}, Lcom/unity3d/player/E;-><init>(Lcom/unity3d/player/UnityAccessibilityDelegate;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v1, v2}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 129
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :catch_0
    :cond_1
    iget-object p0, v0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    iput p0, v0, Lcom/unity3d/player/UnityAccessibilityDelegate;->j:F

    .line 136
    iget-object p0, v0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->setAccessibilityDelegate(Lcom/unity3d/player/UnityAccessibilityDelegate;)V

    return-object v0
.end method

.method private static native isNodeDismissable(I)Z
.end method

.method private static native isNodeInvokable(I)Z
.end method

.method private static native isNodeScrollable(I)Z
.end method

.method private static native isNodeSlider(I)Z
.end method

.method private static native onClosedCaptioningStatusChanged(Z)V
.end method

.method private static native onFontScaleChanged(F)V
.end method

.method private static native onNodeDecremented(I)Z
.end method

.method private static native onNodeDismissed(I)Z
.end method

.method private static native onNodeFocusChanged(IZ)V
.end method

.method private static native onNodeIncremented(I)Z
.end method

.method private static native onNodeInvoked(I)Z
.end method

.method private static native onNodeScrolled(II)Z
.end method

.method private static native onScreenReaderStatusChanged(Z)V
.end method

.method private static native populateNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/view/View;)Z
.end method


# virtual methods
.method public final a(Landroid/content/res/Configuration;)V
    .locals 2

    .line 141
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->j:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 143
    iput v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->j:F

    .line 145
    new-instance v0, Lcom/unity3d/player/F;

    iget-object v1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lcom/unity3d/player/F;-><init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/res/Configuration;)V

    .line 153
    iget-object p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, v0}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected cleanup()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->d:Lcom/unity3d/player/P;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/unity3d/player/P;->cleanup()V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->f:Lcom/unity3d/player/S;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0}, Lcom/unity3d/player/S;->cleanup()V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->setAccessibilityDelegate(Lcom/unity3d/player/UnityAccessibilityDelegate;)V

    return-void
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 0

    .line 309
    iget-object p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->k:Lcom/unity3d/player/N;

    return-object p1
.end method

.method protected getFocusedNodeId()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->g:I

    return v0
.end method

.method protected sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->b:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    return v0

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->b:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method protected sendAnnouncementForVirtualViewId(ILjava/lang/String;)Z
    .locals 2

    const/16 v0, 0x4000

    .line 180
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/4 v1, 0x1

    .line 181
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 182
    iget-object v1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 279
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method protected sendEventForVirtualViewId(II)Z
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->c:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 180
    :cond_0
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/4 v2, 0x1

    .line 181
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 182
    iget-object v3, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    const/16 v3, 0x800

    if-ne p2, v3, :cond_1

    .line 212
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    :cond_1
    const v2, 0x8000

    if-ne p2, v2, :cond_3

    .line 220
    iget v2, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->g:I

    if-ne v2, p1, :cond_2

    return v1

    .line 225
    :cond_2
    iput p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->g:I

    .line 229
    iget-object v1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->b:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 232
    new-instance v1, Lcom/unity3d/player/H;

    iget-object v2, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v2, p1}, Lcom/unity3d/player/H;-><init>(Lcom/unity3d/player/UnityPlayer;I)V

    .line 240
    iget-object v2, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v2, v1}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    :cond_3
    const/high16 v1, 0x10000

    if-ne p2, v1, :cond_5

    .line 250
    iget p2, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->g:I

    if-ne p2, p1, :cond_4

    const/4 p2, -0x1

    .line 252
    iput p2, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->g:I

    .line 257
    :cond_4
    iget-object p2, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->b:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 260
    new-instance p2, Lcom/unity3d/player/I;

    iget-object v1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p2, v1, p1}, Lcom/unity3d/player/I;-><init>(Lcom/unity3d/player/UnityPlayer;I)V

    .line 268
    iget-object p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, p2}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    .line 271
    :cond_5
    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method protected sendEventForVirtualViewIdFromNative(II)Z
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    new-instance v1, Lcom/unity3d/player/G;

    invoke-direct {v1, p0, p1, p2}, Lcom/unity3d/player/G;-><init>(Lcom/unity3d/player/UnityAccessibilityDelegate;II)V

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method
