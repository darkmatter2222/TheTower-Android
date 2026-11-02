.class public final Lcom/ironsource/adqualitysdk/sdk/i/m0;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/n0;

.field public ﾒ:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/m0;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/n0;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/m0;->ﾒ:Z

    return-void
.end method


# virtual methods
.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/m0;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/n0;

    invoke-virtual {p2, p1, p3}, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ﾒ(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 1
    iget-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/m0;->ﾒ:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/m0;->ﾒ:Z

    .line 3
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/m0;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/n0;

    invoke-virtual {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ﾒ(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method
