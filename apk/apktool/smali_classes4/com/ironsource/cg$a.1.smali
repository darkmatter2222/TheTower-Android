.class public final Lcom/ironsource/cg$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/cg;->a(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;Lcom/ironsource/W8;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/cg;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/cg;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/cg$a;->a:Lcom/ironsource/cg;

    iput-object p2, p0, Lcom/ironsource/cg$a;->b:Ljava/lang/String;

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/cg$a;->a:Lcom/ironsource/cg;

    invoke-static {v0}, Lcom/ironsource/cg;->b(Lcom/ironsource/cg;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/ironsource/cg$a;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ironsource/cg$a;->a:Lcom/ironsource/cg;

    .line 4
    invoke-static {v0}, Lcom/ironsource/cg;->c(Lcom/ironsource/cg;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    const-string v2, "onDataReady"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/cg;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/ironsource/cg;->a(Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/ironsource/Nf;->a:Lcom/ironsource/Nf;

    invoke-virtual {v0}, Lcom/ironsource/Nf;->d()V

    .line 10
    iget-object v0, p0, Lcom/ironsource/cg$a;->a:Lcom/ironsource/cg;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ironsource/cg;->a(Lcom/ironsource/cg;Z)V

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/Nf;->a:Lcom/ironsource/Nf;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/Nf;->a(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/ironsource/Wf;->a:Lcom/ironsource/Wf;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "got error during TestSuite web controller loading "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/ironsource/Wf;->b(Ljava/lang/String;)V

    .line 6
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method
