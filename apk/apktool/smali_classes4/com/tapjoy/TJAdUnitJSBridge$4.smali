.class final Lcom/tapjoy/TJAdUnitJSBridge$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitJSBridge;->dismissSplitView(Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/TJAdUnitJSBridge;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V
    .locals 0

    .line 1453
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1456
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJSplitWebView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1457
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1458
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1460
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->splitWebViewCallbackID:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1461
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v2, v0, Lcom/tapjoy/TJAdUnitJSBridge;->splitWebViewCallbackID:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1462
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-object v1, v0, Lcom/tapjoy/TJAdUnitJSBridge;->splitWebViewCallbackID:Ljava/lang/String;

    .line 1465
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJSplitWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJSplitWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1466
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v2}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJSplitWebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1467
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;Lcom/tapjoy/TJSplitWebView;)Lcom/tapjoy/TJSplitWebView;

    return-void

    .line 1470
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1471
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
