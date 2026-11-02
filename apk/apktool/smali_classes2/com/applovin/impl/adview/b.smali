.class public Lcom/applovin/impl/adview/b;
.super Lcom/applovin/impl/l0;
.source "SourceFile"


# static fields
.field private static final j:Ljava/util/Set;

.field private static final k:Ljava/lang/Object;


# instance fields
.field private final c:Lcom/applovin/impl/sdk/p;

.field private final d:Lcom/applovin/impl/sdk/l;

.field private e:Lcom/applovin/impl/sdk/ad/b;

.field private f:Z

.field private g:Z

.field private final h:Ljava/util/List;

.field private final i:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$5mWQgsX1mfOva83yRqWZGY1jPf8(Lcom/applovin/impl/adview/b;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/b;->a(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$B6TRLJ3cUuAoH45MbOPylSm29Ks(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/applovin/impl/adview/b;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/adview/b;->j:Ljava/util/Set;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/impl/adview/b;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/adview/c;Lcom/applovin/impl/sdk/l;Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p3}, Lcom/applovin/impl/l0;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/applovin/impl/adview/b;->h:Ljava/util/List;

    .line 3
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/applovin/impl/adview/b;->i:Ljava/lang/Object;

    if-eqz p2, :cond_4

    .line 12
    iput-object p2, p0, Lcom/applovin/impl/adview/b;->d:Lcom/applovin/impl/sdk/l;

    .line 13
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p3

    iput-object p3, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    .line 15
    sget-object p3, Lcom/applovin/impl/c5;->R6:Lcom/applovin/impl/c5;

    invoke-virtual {p2, p3}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 16
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 18
    sget-object v0, Lcom/applovin/impl/adview/b;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/applovin/impl/adview/b;->j:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    const-string v2, "AdWebView"

    .line 22
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 23
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 24
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object v3

    .line 25
    invoke-static {v2, v1, p3, v3}, Lcom/applovin/impl/u7;->a(Ljava/lang/String;IILcom/applovin/impl/s1;)V

    .line 29
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    const/4 p3, 0x0

    .line 32
    invoke-virtual {p0, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 34
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_1

    .line 40
    :cond_1
    new-instance v0, Lcom/applovin/impl/adview/b$a;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/b$a;-><init>(Lcom/applovin/impl/adview/b;)V

    .line 48
    :goto_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p1}, Lcom/applovin/impl/adview/c;->d()Lcom/applovin/impl/adview/a;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 51
    :goto_2
    new-instance v0, Lcom/applovin/impl/t;

    invoke-direct {v0, p1, p2}, Lcom/applovin/impl/t;-><init>(Lcom/applovin/impl/adview/a;Lcom/applovin/impl/sdk/l;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 53
    invoke-virtual {p0, p3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 54
    invoke-virtual {p0, p3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    const/high16 p1, 0x2000000

    .line 55
    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 57
    invoke-static {}, Lcom/applovin/impl/p0;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/applovin/impl/c5;->m6:Lcom/applovin/impl/c5;

    invoke-virtual {p2, p1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 59
    new-instance p1, Lcom/applovin/impl/adview/d;

    invoke-direct {p1, p2}, Lcom/applovin/impl/adview/d;-><init>(Lcom/applovin/impl/sdk/l;)V

    invoke-virtual {p1}, Lcom/applovin/impl/adview/d;->a()Landroid/webkit/WebViewRenderProcessClient;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewRenderProcessClient(Landroid/webkit/WebViewRenderProcessClient;)V

    .line 62
    :cond_3
    new-instance p1, Lcom/applovin/impl/adview/b$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/applovin/impl/adview/b$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    new-instance p1, Lcom/applovin/impl/adview/b$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/applovin/impl/adview/b$$ExternalSyntheticLambda1;-><init>(Lcom/applovin/impl/adview/b;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 72
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 233
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "{SOURCE}"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/v7;)V
    .locals 7

    .line 205
    invoke-direct {p0, p3, p1}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "Rendering webview for VAST ad with resourceContents : "

    const-string v5, "AdWebView"

    if-eqz v3, :cond_1

    .line 208
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    .line 209
    const-string v5, ""

    const-string v3, "text/html"

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 214
    :cond_1
    sget-object v2, Lcom/applovin/impl/c5;->b5:Lcom/applovin/impl/c5;

    invoke-virtual {p4, v2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 216
    invoke-direct {p0, v2, p1}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 219
    invoke-virtual {p5}, Lcom/applovin/impl/v7;->x1()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p5}, Lcom/applovin/impl/v7;->isOpenMeasurementEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    invoke-static {p5}, Lcom/applovin/impl/j2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object v1

    .line 223
    invoke-virtual {p4}, Lcom/applovin/impl/sdk/l;->g0()Lcom/applovin/impl/o4;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/applovin/impl/o4;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 226
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v4, 0x0

    .line 227
    const-string v5, ""

    const-string v3, "text/html"

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 231
    :cond_4
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Rendering webview for VAST ad with resourceURL : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_5
    invoke-virtual/range {p0 .. p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)Z
    .locals 2

    .line 4
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    const-string v0, "AdWebView"

    const-string v1, "Received a LongClick event."

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/adview/b;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    const-string v3, "AdWebView"

    iget-object v4, p0, Lcom/applovin/impl/adview/b;->d:Lcom/applovin/impl/sdk/l;

    invoke-static {p0, v2, v3, v4}, Lcom/applovin/impl/t8;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/adview/b;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/ad/b;)V
    .locals 11

    const-string v0, "Rendering WebView for iFrame VAST ad with resourceContents: "

    const-string v2, "Rendering WebView for HTML VAST ad with resourceContents: "

    .line 5
    iget-boolean v3, p0, Lcom/applovin/impl/adview/b;->f:Z

    const-string v7, "AdWebView"

    if-nez v3, :cond_15

    .line 7
    iput-object p1, p0, Lcom/applovin/impl/adview/b;->e:Lcom/applovin/impl/sdk/ad/b;

    .line 11
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/applovin/impl/adview/AppLovinWebViewBase;->applySettings(Lcom/applovin/impl/sdk/ad/b;)V

    .line 14
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v3

    invoke-static {v3}, Lcom/applovin/impl/u7;->a(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 16
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/applovin/impl/sdk/ad/b;->a(J)V

    .line 22
    instance-of v3, p1, Lcom/applovin/impl/sdk/ad/a;

    if-eqz v3, :cond_1

    .line 24
    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/ad/a;

    .line 28
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->h1()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->l()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const-string v6, ""

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    const-string v2, "AppLovinAd rendered"

    invoke-virtual {v0, v7, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 33
    :cond_1
    instance-of v3, p1, Lcom/applovin/impl/v7;

    if-eqz v3, :cond_13

    .line 35
    move-object v6, p1

    check-cast v6, Lcom/applovin/impl/v7;

    .line 36
    invoke-virtual {v6}, Lcom/applovin/impl/v7;->g1()Lcom/applovin/impl/y7;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 40
    invoke-virtual {v3}, Lcom/applovin/impl/y7;->e()Lcom/applovin/impl/d8;

    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/applovin/impl/d8;->c()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 43
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 44
    :cond_2
    const-string v4, ""

    .line 45
    :goto_0
    invoke-virtual {v3}, Lcom/applovin/impl/d8;->b()Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-virtual {v6}, Lcom/applovin/impl/v7;->i1()Ljava/lang/String;

    move-result-object v8

    .line 48
    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    .line 109
    :cond_3
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    const-string v2, "Unable to load companion ad. No resources provided."

    invoke-virtual {v0, v7, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_4
    :goto_1
    invoke-virtual {v3}, Lcom/applovin/impl/d8;->d()Lcom/applovin/impl/d8$a;

    move-result-object v9

    sget-object v10, Lcom/applovin/impl/d8$a;->b:Lcom/applovin/impl/d8$a;

    if-ne v9, v10, :cond_7

    .line 112
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    const-string v2, "Rendering WebView for static VAST ad"

    invoke-virtual {v0, v7, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->d:Lcom/applovin/impl/sdk/l;

    sget-object v2, Lcom/applovin/impl/c5;->a5:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    invoke-direct {p0, v0, v4}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {v6}, Lcom/applovin/impl/v7;->x1()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v6}, Lcom/applovin/impl/v7;->isOpenMeasurementEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v6}, Lcom/applovin/impl/v7;->y1()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 120
    invoke-static {p1}, Lcom/applovin/impl/j2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object v2

    .line 121
    iget-object v3, p0, Lcom/applovin/impl/adview/b;->d:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/l;->g0()Lcom/applovin/impl/o4;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/applovin/impl/o4;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    move-object v3, v0

    .line 124
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->l()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const-string v6, ""

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 126
    :cond_7
    invoke-virtual {v3}, Lcom/applovin/impl/d8;->d()Lcom/applovin/impl/d8$a;

    move-result-object v9

    sget-object v10, Lcom/applovin/impl/d8$a;->d:Lcom/applovin/impl/d8$a;

    if-ne v9, v10, :cond_c

    .line 129
    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 131
    invoke-direct {p0, v8, v5}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v3, v0

    goto :goto_2

    :cond_8
    move-object v3, v5

    .line 134
    :goto_2
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_9
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->l()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const-string v6, ""

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 138
    :cond_a
    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 140
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    const-string v2, "Preparing to load HTML VAST ad resourceUri"

    invoke-virtual {v0, v7, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_b
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/applovin/impl/adview/b;->d:Lcom/applovin/impl/sdk/l;

    move-object v1, p0

    move-object v2, v4

    move-object v4, v8

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/v7;)V

    return-void

    :cond_c
    move-object v2, v4

    move-object v4, v8

    .line 144
    invoke-virtual {v3}, Lcom/applovin/impl/d8;->d()Lcom/applovin/impl/d8$a;

    move-result-object v3

    sget-object v8, Lcom/applovin/impl/d8$a;->c:Lcom/applovin/impl/d8$a;

    if-ne v3, v8, :cond_11

    .line 147
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 149
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    const-string v3, "Preparing to load iFrame VAST ad resourceUri"

    invoke-virtual {v0, v7, v3}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_d
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/applovin/impl/adview/b;->d:Lcom/applovin/impl/sdk/l;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/v7;)V

    return-void

    .line 153
    :cond_e
    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 155
    invoke-direct {p0, v4, v5}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object v3, v2

    goto :goto_3

    :cond_f
    move-object v3, v5

    .line 158
    :goto_3
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_10
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->l()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const-string v6, ""

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 164
    :cond_11
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    const-string v2, "Failed to render VAST companion ad of invalid type"

    invoke-virtual {v0, v7, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 174
    :cond_12
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    const-string v2, "No companion ad provided."

    invoke-virtual {v0, v7, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_13
    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_14

    .line 180
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_14
    const-string v2, "null"

    .line 181
    :goto_4
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to render AppLovin ad ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 186
    :cond_15
    const-string v0, "Ad can not be loaded in a destroyed webview"

    invoke-static {v7, v0}, Lcom/applovin/impl/sdk/p;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->d:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->J6:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-boolean v0, p0, Lcom/applovin/impl/adview/b;->g:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->d:Lcom/applovin/impl/sdk/l;

    const-string v1, "AdWebView"

    invoke-static {p0, p1, v1, v0}, Lcom/applovin/impl/t8;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->h:Ljava/util/List;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/adview/b;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 199
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->d:Lcom/applovin/impl/sdk/l;

    const-string v1, "AdWebView"

    invoke-static {p0, p1, v1, v0}, Lcom/applovin/impl/t8;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method

.method public computeScroll()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/applovin/impl/adview/b;->f:Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/applovin/impl/adview/b;->g:Z

    .line 3
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public getCurrentAd()Lcom/applovin/impl/sdk/ad/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->e:Lcom/applovin/impl/sdk/ad/b;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    return-void
.end method

.method public setAdHtmlLoaded(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/applovin/impl/adview/b;->g:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/applovin/impl/adview/b;->d:Lcom/applovin/impl/sdk/l;

    sget-object v0, Lcom/applovin/impl/c5;->J6:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/applovin/impl/adview/b;->b()V

    :cond_0
    return-void
.end method
