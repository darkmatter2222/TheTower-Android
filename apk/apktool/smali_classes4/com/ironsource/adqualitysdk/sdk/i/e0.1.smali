.class public final Lcom/ironsource/adqualitysdk/sdk/i/e0;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/f0;
.implements Lcom/ironsource/adqualitysdk/sdk/i/ใ;


# static fields
.field public static final ﻐ:Ljava/lang/String;

.field public static final ﻛ:Ljava/lang/String;

.field public static final ｋ:Ljava/lang/String;


# instance fields
.field public final ﾇ:Landroid/webkit/WebViewClient;

.field public final ﾒ:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "g58L2w16+c+4kwzjEFvr77uICPkLbQ==\n"

    const-string v1, "1PppjWQfjow=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v0, "RiAAnAru/whEISOuGtnmHVYGGKId4fs=\n"

    const-string v1, "IUV0y3iPj3g=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﻛ:Ljava/lang/String;

    const-string v0, "82R4E+dXG8HCaGkwxmwXxvp1\n"

    const-string v1, "lAEMR4UAfqM=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﻐ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewClient;Landroid/webkit/WebViewClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    .line 3
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    return-void
.end method


# virtual methods
.method public final doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "pasXXjZRF/nAtDFTCBgN44W3AENkFRHCkL0ERSEnF+SJrQBVDBgN44+rHA==\n"

    const-string v3, "4NllMURxfpc=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public final onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v3, "hork7pYjhz/jlcLjqGqdJaaW8/PEbIAXrIr704FwmzOukeXyjWyA\n"

    const-string v4, "w/iWgeQD7lE=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 7
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    sget-object p2, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string p3, "AzpY801nh8RmJ0TaUDWD+CM7X/5SLp3ZLydE\n"

    const-string v1, "RkgqnD9H7qo=\n"

    invoke-static {p3, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_1
    return-void
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "74g4E9lRwBiKlx4e5xjaAs+ULw6LHsc6xZsuLs4CxgPYmS8=\n"

    const-string v3, "qvpKfKtxqXY=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "h5mP+yXl22fihqn2G6zBfaeFmOZ3qtxZo4yYxyOkwH2njw==\n"

    const-string v3, "wuv9lFfFsgk=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "+1oOnwRP0iueRSiSOgbIMdtGGYJWANUV308Zth8B0jbWTRg=\n"

    const-string v3, "vih88HZvu0U=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "qlbiSrB1YfDPScRHjjx76opK9VfiOmbOjkP1drY0euqKQA==\n"

    const-string v3, "7ySQJcJVCJ4=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_1
    return-void
.end method

.method public final onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v3, "p87ELpigwRHC0eIjpunbC4fS0zPK78Yth9/TKJzlzDyO1dMvnsPNDZbu0zCf5dsL\n"

    const-string v4, "4ry2QeqAqH8=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 6
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 12
    sget-object p2, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v1, "/idUpyrFeUWbNkekNIx+TJs6VKE/jH4L1Dt0rTuAeV3eMWWkMYB+X/gwVLwKgGFe3iZS\n"

    const-string v2, "u1UmyFjlECs=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_1
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "EyQa0xPeyXV2OzzeLZfTbzM4Dc5Bkc5JMzUN1RebxF4kJAfO\n"

    const-string v3, "VlZovGH+oBs=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 4

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "tL0tGJCXvE3RogsVrt6mV5ShOgXC2LtxlKw6HpTSsWaDvTAF\n"

    const-string v3, "8c9fd+K31SM=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    goto :goto_1

    .line 18
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    :goto_1
    return-void
.end method

.method public final onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "sqp9x6Ahg7fXtVvKnmiZrZK2atryboSLkrtqwaRkjpGDrH/pp3WCi5Kpes2hdQ==\n"

    const-string v3, "99gPqNIB6tk=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "HxEZZu/J3w16Dj9r0YDFFz8NDnu9htgxPwAOYOuM0isuFxtM75vZEQ==\n"

    const-string v3, "WmNrCZ3ptmM=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    :goto_1
    return-void
.end method

.method public final onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "RP0eP+pMdQ8h4jgy1AVvFWThCSK4A3IzZOwJOe4JeC1u6AU+ygltFGT8GA==\n"

    const-string v3, "AY9sUJhsHGE=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "p1sFzOzM6/vCRCPB0oXx4YdHEtG+g+zHh0oSyuiJ5saRRTLR7IPw\n"

    const-string v3, "4il3o57sgpU=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    :goto_1
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "3DILCswejUm5LS0H8leXU/wuHBeeUYp1/C4dAMxulkj6JQoW+VGKQg==\n"

    const-string v3, "mUB5Zb4+5Cc=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "NIm0wJiq3D5RlpLNpuPGJBSVo93K5dsDEpqqyqni1D4WnqI=\n"

    const-string v3, "cfvGr+qKtVA=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    :goto_1
    return-void
.end method

.method public final onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "kwyPuZHWYML2E6m0r5962LMQmKTDmWf4uRGwt42PW8myF4+zgIJ6\n"

    const-string v3, "1n791uP2Caw=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    :goto_1
    return-void
.end method

.method public final onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "uHcGQ1vSTwndaCBOZZtVE5hrEV4JnUgyk20VQk2eQwO2YA1pX5dIEw==\n"

    const-string v3, "/QV0LCnyJmc=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    :goto_1
    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 4

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "LYIf9VhW+l1InTn4Zh/gRw2eCOgKBftcHZwJ00QC9kELlR3ueBPiRg2DGQ==\n"

    const-string v3, "aPBtmip2kzM=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 18
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "GFToa0FqGl59S85mfyMARDhI/3YTORtfKEr+TV0+FkI+Q+pwYS8CRThV7g==\n"

    const-string v3, "XSaaBDNKczA=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "kAbhpS0AI071GceoE0k5VLAa9rh/UyJPoBj3hSlFOFK8EPaBOlkPVrAa5w==\n"

    const-string v3, "1XSTyl8gSiA=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Z)Z

    move-result p1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/lang/String;Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;)Ljava/lang/Object;
    .locals 2

    const/4 p3, 0x0

    .line 44
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const v0, 0x15f0af40

    const/4 v1, 0x1

    if-eq p4, v0, :cond_1

    const v0, 0x16be0135

    if-eq p4, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﻛ:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    sget-object p4, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﻐ:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    move p4, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p4, -0x1

    :goto_1
    if-eqz p4, :cond_4

    if-eq p4, v1, :cond_3

    .line 50
    new-instance p4, Lcom/ironsource/adqualitysdk/sdk/i/q;

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    invoke-direct {p4, p1, p5, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/q;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/İ;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾇ()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;->ﾒ(Ljava/lang/String;)V

    goto :goto_2

    .line 51
    :cond_3
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    return-object p1

    .line 52
    :cond_4
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p4

    .line 53
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾇ()Ljava/lang/String;

    move-result-object p1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    const-string v0, "XOiRtjSPzOBw9ob5I9fe62zuirchj+zte8yKvDHs1+F89JedI8zU+njujKtmwdr8cOyG+SvKz+B2\n/sP+\n"

    const-string v1, "GZrj2Uavu4g=\n"

    invoke-static {v0, v1, p5, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᖟ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p5, "gg==\n"

    const-string v0, "pT4FLzogyjc=\n"

    invoke-static {p5, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-static {p1, p2, p4, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ﹻ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;)V

    :goto_2
    return-object p3
.end method

.method public final ﾒ(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Z)Z
    .locals 4

    const/4 v0, 0x0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_2

    .line 27
    :cond_0
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    instance-of v1, p3, Lcom/ironsource/adqualitysdk/sdk/i/e0;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 28
    check-cast p3, Lcom/ironsource/adqualitysdk/sdk/i/e0;

    invoke-virtual {p3, p1, p2, v2}, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v2

    :catchall_0
    move-exception p3

    .line 33
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "aSFOYqhMQ6IMPmhvlgVZuEk9WX/6H0KjWT9YQqwJWL5FN1lYqABmo003VWO9RFipXSZZfq5F\n"

    const-string v3, "LFM8DdpsKsw=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 36
    :cond_2
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz p3, :cond_3

    .line 38
    :try_start_1
    invoke-virtual {p3, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p1

    :catchall_1
    move-exception p3

    .line 40
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "BlIxW6p9FKZjTQxGsToUpgBMKlG2KV27K082WLwSC60xUipQvQgPpA9PIlCxMxrgMUUyQb0uCeE=\n"

    const-string v3, "QyBDNNhdfcg=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 43
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method

.method public final ﾒ(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾇ:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_2

    .line 7
    :cond_0
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    instance-of v1, p3, Lcom/ironsource/adqualitysdk/sdk/i/e0;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 8
    check-cast p3, Lcom/ironsource/adqualitysdk/sdk/i/e0;

    invoke-virtual {p3, p1, p2, v2}, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v2

    :catchall_0
    move-exception p3

    .line 13
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "ByncrHIn93ZiNvqhTG7tbCc1y7EgdPZ3NzfKjHZi7GorP8uWcmvSdyM/x61nL+tqLnI=\n"

    const-string v3, "QluuwwAHnhg=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 14
    :cond_2
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-class v1, Landroid/webkit/WebViewClient;

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 15
    :try_start_1
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ﾒ:Landroid/webkit/WebViewClient;

    invoke-virtual {p3, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p1

    :catchall_1
    move-exception p3

    .line 17
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;->ｋ:Ljava/lang/String;

    const-string v2, "jju1mWaMFCbrJIiEfcsUJoglrpN62F07oyaymnDjCy25O66ScfkPJIcmppJ9whpgvjur3w==\n"

    const-string v3, "y0nH9hSsfUg=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 20
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
