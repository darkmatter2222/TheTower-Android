.class Lcom/ironsource/p8$d;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/p8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/p8;


# direct methods
.method private constructor <init>(Lcom/ironsource/p8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/p8$d;->a:Lcom/ironsource/p8;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/p8;Lcom/ironsource/p8-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/p8$d;-><init>(Lcom/ironsource/p8;)V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    .line 1
    new-instance p2, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/ironsource/p8$d;

    iget-object p3, p0, Lcom/ironsource/p8$d;->a:Lcom/ironsource/p8;

    invoke-direct {p1, p3}, Lcom/ironsource/p8$d;-><init>(Lcom/ironsource/p8;)V

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 3
    new-instance p1, Lcom/ironsource/p8$e;

    iget-object p3, p0, Lcom/ironsource/p8$d;->a:Lcom/ironsource/p8;

    const/4 v0, 0x0

    invoke-direct {p1, p3, v0}, Lcom/ironsource/p8$e;-><init>(Lcom/ironsource/p8;Lcom/ironsource/p8-IA;)V

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 4
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 5
    invoke-virtual {p1, p2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 6
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 8
    const-string p1, "onCreateWindow"

    invoke-static {p1, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
