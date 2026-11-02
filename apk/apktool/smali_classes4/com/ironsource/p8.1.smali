.class public Lcom/ironsource/p8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/L8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/p8$d;,
        Lcom/ironsource/p8$e;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "loadWithUrl | webView is not null"

.field private static final h:Ljava/lang/String; = "p8"

.field private static final i:Ljava/lang/String; = "file://"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/webkit/WebView;

.field private d:Lcom/ironsource/n8;

.field private e:Lcom/ironsource/i8;

.field private f:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$fgeta(Lcom/ironsource/p8;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/p8;->a:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetc(Lcom/ironsource/p8;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/p8;->c:Landroid/webkit/WebView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetd(Lcom/ironsource/p8;)Lcom/ironsource/n8;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputd(Lcom/ironsource/p8;Lcom/ironsource/n8;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputf(Lcom/ironsource/p8;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/p8;->f:Landroid/content/Context;

    return-void
.end method

.method static bridge synthetic -$$Nest$ma(Lcom/ironsource/p8;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/p8;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mb(Lcom/ironsource/p8;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/p8;->b(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$md(Lcom/ironsource/p8;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/p8;->d()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgeth()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ironsource/p8;->h:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/l8;Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/i8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ironsource/p8;->f:Landroid/content/Context;

    .line 3
    new-instance p2, Lcom/ironsource/n8;

    invoke-direct {p2}, Lcom/ironsource/n8;-><init>()V

    iput-object p2, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    .line 4
    invoke-virtual {p2, p3}, Lcom/ironsource/n8;->g(Ljava/lang/String;)V

    .line 5
    iput-object p3, p0, Lcom/ironsource/p8;->a:Ljava/lang/String;

    .line 6
    iget-object p2, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    invoke-virtual {p2, p1}, Lcom/ironsource/n8;->a(Lcom/ironsource/l8;)V

    .line 7
    iput-object p4, p0, Lcom/ironsource/p8;->e:Lcom/ironsource/i8;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 33
    invoke-direct {p0, p1}, Lcom/ironsource/p8;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/p8;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/ironsource/p8;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 3
    sget-object v0, Lcom/ironsource/p8;->h:Ljava/lang/String;

    const-string v1, "ISNAdViewWebPresenter | createWebView"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ironsource/p8;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ironsource/p8;->c:Landroid/webkit/WebView;

    .line 5
    new-instance v1, Lcom/ironsource/m8;

    invoke-direct {v1, p0}, Lcom/ironsource/m8;-><init>(Lcom/ironsource/p8;)V

    const-string v2, "containerMsgHandler"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/ironsource/p8;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/ironsource/o8;

    new-instance v2, Lcom/ironsource/p8$c;

    invoke-direct {v2, p0, p1}, Lcom/ironsource/p8$c;-><init>(Lcom/ironsource/p8;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/ironsource/o8;-><init>(Lcom/ironsource/L8$a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 32
    iget-object p1, p0, Lcom/ironsource/p8;->c:Landroid/webkit/WebView;

    new-instance v0, Lcom/ironsource/p8$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ironsource/p8$d;-><init>(Lcom/ironsource/p8;Lcom/ironsource/p8-IA;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 33
    iget-object p1, p0, Lcom/ironsource/p8;->c:Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/ironsource/eh;->a(Landroid/webkit/WebView;)V

    .line 34
    iget-object p1, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    iget-object v0, p0, Lcom/ironsource/p8;->c:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Lcom/ironsource/n8;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    .line 10
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/p8;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p8;->a:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/p8;->f:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 9
    :cond_0
    :try_start_1
    sget-object v0, Lcom/ironsource/p8;->h:Ljava/lang/String;

    const-string v1, "performCleanup"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/ironsource/V7;->a:Lcom/ironsource/V7;

    new-instance v1, Lcom/ironsource/p8$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/p8$b;-><init>(Lcom/ironsource/p8;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/V7;->d(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    const-string p1, "action parameter empty"

    invoke-virtual {p0, p3, p1}, Lcom/ironsource/p8;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_0
    sget-object v0, Lcom/ironsource/p8;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trying to perform WebView Action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :try_start_0
    const-string v0, "onPause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    iget-object p1, p0, Lcom/ironsource/p8;->c:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    .line 22
    iget-object p1, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    invoke-virtual {p1, p2}, Lcom/ironsource/n8;->f(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_1
    const-string v0, "onResume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 24
    iget-object p1, p0, Lcom/ironsource/p8;->c:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->onResume()V

    .line 25
    iget-object p1, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    invoke-virtual {p1, p2}, Lcom/ironsource/n8;->f(Ljava/lang/String;)V

    return-void

    .line 27
    :cond_2
    const-string p1, "action not supported"

    invoke-virtual {p0, p3, p1}, Lcom/ironsource/p8;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 31
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 32
    const-string p1, "failed to perform action"

    invoke-virtual {p0, p3, p1}, Lcom/ironsource/p8;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    invoke-virtual {p1, p2}, Lcom/ironsource/n8;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 5
    sget-object p2, Lcom/ironsource/p8;->h:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "sendHandleGetViewVisibility fail with reason: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/ironsource/n8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p1, p2}, Lcom/ironsource/n8;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/ironsource/V7;->a:Lcom/ironsource/V7;

    new-instance v1, Lcom/ironsource/p8$a;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/ironsource/p8$a;-><init>(Lcom/ironsource/p8;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/V7;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Lcom/ironsource/i8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p8;->e:Lcom/ironsource/i8;

    return-object v0
.end method

.method public c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    const-string v1, "params"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/n8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 8
    sget-object p2, Lcom/ironsource/p8;->h:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "sendMessageToAd fail message: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    throw p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/p8;->b:Ljava/lang/String;

    return-void
.end method

.method public getPresentingView()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p8;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method public handleMessageFromAd(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    invoke-virtual {v0, p1}, Lcom/ironsource/n8;->c(Ljava/lang/String;)V

    return-void
.end method
