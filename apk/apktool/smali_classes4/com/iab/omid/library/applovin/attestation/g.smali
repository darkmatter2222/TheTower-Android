.class public Lcom/iab/omid/library/applovin/attestation/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/webkit/WebView;)Z
    .locals 1

    :try_start_0
    const-string v0, "WEB_MESSAGE_LISTENER"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iab/omid/library/applovin/internal/g;->b()Lcom/iab/omid/library/applovin/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/applovin/internal/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iab/omid/library/applovin/attestation/c;->a(Landroid/content/Context;)Lcom/iab/omid/library/applovin/attestation/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/applovin/attestation/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/iab/omid/library/applovin/attestation/f;->a(Landroid/webkit/WebView;)Lcom/iab/omid/library/applovin/attestation/f;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Error during initialization of AttestationMessageListener"

    invoke-static {v0, p0}, Lcom/iab/omid/library/applovin/utils/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    const-string p0, "androidx.webkit not available, skipping attestation listener initialization"

    invoke-static {p0}, Lcom/iab/omid/library/applovin/utils/d;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
