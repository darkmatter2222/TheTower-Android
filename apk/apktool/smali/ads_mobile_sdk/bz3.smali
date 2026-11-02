.class public abstract Lads_mobile_sdk/bz3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/webkit/WebView;)V
    .locals 2

    .line 41
    sget-object v0, Lads_mobile_sdk/wh1;->b:Lads_mobile_sdk/wh1;

    .line 42
    iget-object v0, v0, Lads_mobile_sdk/wh1;->a:Landroid/content/Context;

    .line 43
    invoke-static {v0}, Lads_mobile_sdk/do;->a(Landroid/content/Context;)Lads_mobile_sdk/do;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lads_mobile_sdk/do;->a()Ljava/util/List;

    move-result-object v0

    .line 45
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    .line 47
    new-instance v1, Lads_mobile_sdk/cz3;

    invoke-direct {v1, v0}, Lads_mobile_sdk/cz3;-><init>(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 32
    const-string v1, "omid-native"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    invoke-static {p0}, Lads_mobile_sdk/xf2;->a(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method
