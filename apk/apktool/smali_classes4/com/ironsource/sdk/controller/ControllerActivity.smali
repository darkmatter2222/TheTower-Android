.class public Lcom/ironsource/sdk/controller/ControllerActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Xc;
.implements Lcom/ironsource/Ag;


# static fields
.field private static final o:Ljava/lang/String; = "ControllerActivity"

.field private static final p:I = 0x1

.field private static q:Ljava/lang/String; = "removeWebViewContainerView | mContainer is null"

.field private static r:Ljava/lang/String; = "removeWebViewContainerView | view is null"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/ironsource/sdk/controller/v;

.field private c:Landroid/widget/RelativeLayout;

.field public currentRequestedRotation:I

.field private d:Landroid/widget/FrameLayout;

.field private e:Lcom/ironsource/B7;

.field private f:Landroid/window/OnBackInvokedCallback;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Handler;

.field private final j:Ljava/lang/Runnable;

.field final k:Landroid/widget/RelativeLayout$LayoutParams;

.field private l:Lcom/ironsource/a1;

.field private m:Z

.field private n:Z


# direct methods
.method public static synthetic $r8$lambda$3oukINOjiaN7o5Iltzc6vhTdwlU(Lcom/ironsource/sdk/controller/ControllerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->g()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetg(Lcom/ironsource/sdk/controller/ControllerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->g:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeti(Lcom/ironsource/sdk/controller/ControllerActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->i:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetj(Lcom/ironsource/sdk/controller/ControllerActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->g:Z

    .line 28
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->i:Landroid/os/Handler;

    .line 31
    new-instance v1, Lcom/ironsource/sdk/controller/ControllerActivity$a;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$a;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    iput-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->j:Ljava/lang/Runnable;

    .line 38
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->k:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    invoke-static {}, Lcom/ironsource/q8;->a()Lcom/ironsource/q8;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ironsource/q8;->a(Ljava/lang/String;)Lcom/ironsource/L8;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/L8;->getPresentingView()Landroid/webkit/WebView;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;)Landroid/widget/FrameLayout;
    .locals 2

    .line 16
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/ControllerActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/v;->s()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/ironsource/q8;->a()Lcom/ironsource/q8;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/q8;->a(Ljava/lang/String;)Lcom/ironsource/L8;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/L8;->getPresentingView()Landroid/webkit/WebView;

    move-result-object p1

    .line 23
    invoke-static {v0, p1}, Lcom/ironsource/eh;->a(Landroid/content/Context;Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->f:Landroid/window/OnBackInvokedCallback;

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->f:Landroid/window/OnBackInvokedCallback;

    const/4 v2, 0x0

    .line 15
    invoke-interface {v0, v2, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ironsource/sdk/controller/ControllerActivity;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 0

    if-eqz p1, :cond_3

    .line 24
    const-string p2, "landscape"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->j()V

    return-void

    .line 28
    :cond_0
    const-string p2, "portrait"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 30
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->k()V

    return-void

    .line 32
    :cond_1
    const-string p2, "device"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 34
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->e:Lcom/ironsource/B7;

    invoke-interface {p1, p0}, Lcom/ironsource/B7;->x(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    return-void

    .line 39
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    const/4 p1, 0x4

    .line 40
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    :cond_3
    return-void
.end method

.method private b()V
    .locals 1

    .line 2
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerActivity$d;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$d;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->o:Ljava/lang/String;

    const-string v1, "clearWebviewController"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    if-nez v1, :cond_0

    .line 3
    const-string v1, "clearWebviewController, null"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/controller/v$v;->b:Lcom/ironsource/sdk/controller/v$v;

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/controller/v;->a(Lcom/ironsource/sdk/controller/v$v;)V

    .line 8
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/v;->F()V

    .line 9
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/v;->G()V

    .line 10
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->h:Ljava/lang/String;

    const-string v2, "onDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/v;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3
    const-string v1, "orientation_set_flag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    const-string v2, "rotation_set_flag"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 8
    invoke-direct {p0, v1, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private f()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerActivity$c;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$c;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic g()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->o:Ljava/lang/String;

    const-string v1, "OnBackInvokedCallback"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/ironsource/G2;->a()Lcom/ironsource/G2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/G2;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-static {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->a(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->f:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->f:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 4
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->o:Ljava/lang/String;

    const-string v1, "OnBackInvokedCallback unregistered"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->f:Landroid/window/OnBackInvokedCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 8
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to unregister OnBackInvokedCallback: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 6
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->r:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->q:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 42
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 43
    sget-object v1, Lcom/ironsource/le;->s:Lcom/ironsource/le$a;

    new-instance v2, Lcom/ironsource/v8;

    invoke-direct {v2}, Lcom/ironsource/v8;-><init>()V

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "callfailreason"

    invoke-virtual {v2, v4, v3}, Lcom/ironsource/v8;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/v8;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/v8;->a()Ljava/util/HashMap;

    move-result-object v2

    .line 46
    invoke-static {v1, v2}, Lcom/ironsource/A8;->a(Lcom/ironsource/le$a;Ljava/util/Map;)V

    .line 49
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeWebViewContainerView fail "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->e:Lcom/ironsource/B7;

    invoke-interface {v0, p0}, Lcom/ironsource/B7;->K(Landroid/content/Context;)I

    move-result v0

    .line 3
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->o:Ljava/lang/String;

    const-string v2, "setInitiateLandscapeOrientation"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 6
    const-string v0, "ROTATION_0"

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v2}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    return-void

    :cond_0
    const/4 v3, 0x2

    const/16 v4, 0x8

    if-ne v0, v3, :cond_1

    .line 9
    const-string v0, "ROTATION_180"

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v4}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    return-void

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 12
    const-string v0, "ROTATION_270 Right Landscape"

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v4}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    return-void

    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 15
    const-string v0, "ROTATION_90 Left Landscape"

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v2}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    return-void

    .line 18
    :cond_3
    const-string v0, "No Rotation"

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->e:Lcom/ironsource/B7;

    invoke-interface {v0, p0}, Lcom/ironsource/B7;->K(Landroid/content/Context;)I

    move-result v0

    .line 3
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->o:Ljava/lang/String;

    const-string v2, "setInitiatePortraitOrientation"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 6
    const-string v0, "ROTATION_0"

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v2}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    return-void

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 9
    const-string v0, "ROTATION_180"

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 10
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    return-void

    :cond_1
    if-ne v0, v2, :cond_2

    .line 12
    const-string v0, "ROTATION_270 Right Landscape"

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v2}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    return-void

    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 15
    const-string v0, "ROTATION_90 Left Landscape"

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v2}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    return-void

    .line 18
    :cond_3
    const-string v0, "No Rotation"

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackButtonPressed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->o:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/ironsource/G2;->a()Lcom/ironsource/G2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/G2;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCloseRequested()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/M7;->a()Lcom/ironsource/B7;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->e:Lcom/ironsource/B7;

    .line 9
    :try_start_0
    new-instance p1, Lcom/ironsource/l;

    invoke-direct {p1, p0}, Lcom/ironsource/l;-><init>(Landroid/app/Activity;)V

    .line 10
    invoke-virtual {p1}, Lcom/ironsource/l;->a()V

    .line 13
    new-instance p1, Lcom/ironsource/k;

    invoke-direct {p1, p0}, Lcom/ironsource/k;-><init>(Landroid/app/Activity;)V

    .line 14
    invoke-virtual {p1}, Lcom/ironsource/k;->a()V

    .line 17
    invoke-static {p0}, Lcom/ironsource/W9;->b(Landroid/content/Context;)Lcom/ironsource/W9;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/ironsource/W9;->a()Lcom/ironsource/sdk/controller/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/e;->k()Lcom/ironsource/sdk/controller/l;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/controller/v;

    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    .line 20
    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/v;->s()Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 23
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    invoke-virtual {p1, p0}, Lcom/ironsource/sdk/controller/v;->a(Lcom/ironsource/Xc;)V

    .line 24
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    invoke-virtual {p1, p0}, Lcom/ironsource/sdk/controller/v;->a(Lcom/ironsource/Ag;)V

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 27
    const-string v1, "productType"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->h:Ljava/lang/String;

    .line 28
    const-string v1, "immersive"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->g:Z

    .line 29
    const-string v1, "adViewId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->a:Ljava/lang/String;

    .line 30
    iput-boolean v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->m:Z

    .line 32
    const-string v1, "ctrWVPauseResume"

    .line 33
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->n:Z

    .line 35
    iget-boolean p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->g:Z

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/ironsource/sdk/controller/ControllerActivity$b;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$b;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    .line 39
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 53
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 56
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->c:Landroid/widget/RelativeLayout;

    .line 57
    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->k:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/ControllerActivity;->a(Ljava/lang/String;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->d:Landroid/widget/FrameLayout;

    .line 63
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->d()V

    .line 74
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->k:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 77
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 78
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 82
    :goto_0
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->o:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->h()V

    .line 5
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->i()V

    .line 7
    iget-boolean v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->m:Z

    if-nez v1, :cond_0

    .line 10
    const-string v1, "onDestroy | destroyedFromBackground"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->c()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/v;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/v;->x()V

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->g:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOrientationChanged(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/ControllerActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPause, isFinishing="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/ironsource/sdk/controller/t;->a(Landroid/app/Activity;)V

    .line 5
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p0}, Lcom/ironsource/sdk/controller/v;->a(Landroid/content/Context;)V

    .line 8
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->n:Z

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/v;->E()V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    const/4 v1, 0x0

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/v;->b(ZLjava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->h:Ljava/lang/String;

    const-string v2, "onPause"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/v;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->m:Z

    .line 21
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->c()V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->o:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p0}, Lcom/ironsource/sdk/controller/v;->b(Landroid/content/Context;)V

    .line 6
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->n:Z

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/v;->I()V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    const/4 v2, 0x1

    const-string v3, "main"

    invoke-virtual {v0, v2, v3}, Lcom/ironsource/sdk/controller/v;->b(ZLjava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/sdk/controller/v;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_1
    invoke-static {p0}, Lcom/ironsource/sdk/controller/t;->b(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->o:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/sdk/controller/v;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->o:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/sdk/controller/v;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 2
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->o:Ljava/lang/String;

    const-string v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->b:Lcom/ironsource/sdk/controller/v;

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/sdk/controller/v;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVideoEnded()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    return-void
.end method

.method public onVideoPaused()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    return-void
.end method

.method public onVideoResumed()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    return-void
.end method

.method public onVideoStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    return-void
.end method

.method public onVideoStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 3
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->g:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    if-eq v0, p1, :cond_0

    .line 2
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rotation: Req = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Curr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    .line 5
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public toggleKeepScreen(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->f()V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->b()V

    return-void
.end method
