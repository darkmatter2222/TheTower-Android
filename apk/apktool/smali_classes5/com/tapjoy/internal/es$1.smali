.class public final Lcom/tapjoy/internal/es$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tapjoy/internal/es;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/es;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/tapjoy/internal/es$1;->c:Lcom/tapjoy/internal/es;

    iput-object p2, p0, Lcom/tapjoy/internal/es$1;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/tapjoy/internal/es$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 67
    const-string v0, "AdSession is null"

    const-string v1, "TJOMViewabilityAgent"

    :try_start_0
    invoke-static {}, Lcom/tapjoy/internal/ce;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/tapjoy/internal/es$1;->c:Lcom/tapjoy/internal/es;

    invoke-static {v2}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/internal/es;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v2

    .line 2525
    iget-object v2, v2, Lcom/tapjoy/TJAdUnitJSBridge;->b:Landroid/webkit/WebView;

    .line 68
    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/ce;->a(Landroid/content/Context;)V

    .line 71
    :cond_0
    invoke-static {}, Lcom/tapjoy/internal/ce;->b()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 72
    const-string v2, "initialized"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/tapjoy/internal/es$1;->a:Lorg/json/JSONObject;

    const-string v3, "vendors"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 74
    invoke-static {v2}, Lcom/tapjoy/internal/es;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v6

    .line 77
    const-string v8, ""

    .line 78
    const-string v7, ""

    .line 79
    iget-object v2, p0, Lcom/tapjoy/internal/es$1;->c:Lcom/tapjoy/internal/es;

    invoke-static {v2}, Lcom/tapjoy/internal/es;->b(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cv;

    move-result-object v4

    invoke-static {}, Lcom/tapjoy/internal/es;->a()Ljava/lang/String;

    move-result-object v5

    .line 3000
    const-string v2, "Partner is null"

    invoke-static {v4, v2}, Lcom/tapjoy/internal/dq;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "OM SDK JS script content is null"

    invoke-static {v5, v2}, Lcom/tapjoy/internal/dq;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "VerificationScriptResources is null"

    invoke-static {v6, v2}, Lcom/tapjoy/internal/dq;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "CustomReferenceData is greater than 256 characters"

    .line 4000
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v9, 0x100

    if-gt v3, v9, :cond_b

    .line 3000
    new-instance v3, Lcom/tapjoy/internal/co;

    sget-object v9, Lcom/tapjoy/internal/cp;->b:Lcom/tapjoy/internal/cp;

    invoke-direct/range {v3 .. v9}, Lcom/tapjoy/internal/co;-><init>(Lcom/tapjoy/internal/cv;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/cp;)V

    .line 80
    sget-object v2, Lcom/tapjoy/internal/cq;->d:Lcom/tapjoy/internal/cq;

    sget-object v4, Lcom/tapjoy/internal/ct;->d:Lcom/tapjoy/internal/ct;

    sget-object v5, Lcom/tapjoy/internal/cu;->a:Lcom/tapjoy/internal/cu;

    .line 5000
    const-string v6, "CreativeType is null"

    invoke-static {v2, v6}, Lcom/tapjoy/internal/dq;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "ImpressionType is null"

    invoke-static {v4, v6}, Lcom/tapjoy/internal/dq;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "Impression owner is null"

    invoke-static {v5, v6}, Lcom/tapjoy/internal/dq;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6000
    sget-object v6, Lcom/tapjoy/internal/cu;->c:Lcom/tapjoy/internal/cu;

    if-eq v5, v6, :cond_a

    sget-object v6, Lcom/tapjoy/internal/cq;->a:Lcom/tapjoy/internal/cq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript"

    if-ne v2, v6, :cond_2

    :try_start_1
    sget-object v6, Lcom/tapjoy/internal/cu;->a:Lcom/tapjoy/internal/cu;

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    sget-object v6, Lcom/tapjoy/internal/ct;->a:Lcom/tapjoy/internal/ct;

    if-ne v4, v6, :cond_4

    sget-object v6, Lcom/tapjoy/internal/cu;->a:Lcom/tapjoy/internal/cu;

    if-eq v5, v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5000
    :cond_4
    :goto_1
    new-instance v6, Lcom/tapjoy/internal/cn;

    invoke-direct {v6, v2, v4, v5, v5}, Lcom/tapjoy/internal/cn;-><init>(Lcom/tapjoy/internal/cq;Lcom/tapjoy/internal/ct;Lcom/tapjoy/internal/cu;Lcom/tapjoy/internal/cu;)V

    .line 82
    iget-object v2, p0, Lcom/tapjoy/internal/es$1;->c:Lcom/tapjoy/internal/es;

    .line 8000
    invoke-static {}, Lcom/tapjoy/internal/ce;->b()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 7000
    const-string v4, "AdSessionConfiguration is null"

    invoke-static {v6, v4}, Lcom/tapjoy/internal/dq;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "AdSessionContext is null"

    invoke-static {v3, v4}, Lcom/tapjoy/internal/dq;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/tapjoy/internal/cx;

    invoke-direct {v4, v6, v3}, Lcom/tapjoy/internal/cx;-><init>(Lcom/tapjoy/internal/cn;Lcom/tapjoy/internal/co;)V

    .line 82
    invoke-static {v2, v4}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/internal/es;Lcom/tapjoy/internal/cm;)Lcom/tapjoy/internal/cm;

    .line 83
    iget-object v2, p0, Lcom/tapjoy/internal/es$1;->c:Lcom/tapjoy/internal/es;

    invoke-static {v2}, Lcom/tapjoy/internal/es;->c(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cm;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/internal/es$1;->c:Lcom/tapjoy/internal/es;

    invoke-static {v3}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/internal/es;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v3

    .line 8521
    iget-object v3, v3, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    .line 83
    invoke-virtual {v3}, Lcom/tapjoy/TJAdUnit;->getWebView()Lcom/tapjoy/TJWebView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/cm;->a(Landroid/view/View;)V

    .line 86
    iget-object v2, p0, Lcom/tapjoy/internal/es$1;->c:Lcom/tapjoy/internal/es;

    invoke-static {v2}, Lcom/tapjoy/internal/es;->c(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cm;

    move-result-object v3

    .line 9000
    move-object v4, v3

    check-cast v4, Lcom/tapjoy/internal/cx;

    invoke-static {v3, v0}, Lcom/tapjoy/internal/dq;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11000
    iget-object v3, v4, Lcom/tapjoy/internal/cx;->a:Lcom/tapjoy/internal/cn;

    .line 12000
    sget-object v5, Lcom/tapjoy/internal/cu;->a:Lcom/tapjoy/internal/cu;

    iget-object v3, v3, Lcom/tapjoy/internal/cn;->b:Lcom/tapjoy/internal/cu;

    if-ne v5, v3, :cond_8

    .line 14000
    iget-boolean v3, v4, Lcom/tapjoy/internal/cx;->d:Z

    if-nez v3, :cond_7

    .line 9000
    invoke-static {v4}, Lcom/tapjoy/internal/dq;->a(Lcom/tapjoy/internal/cx;)V

    .line 16000
    iget-object v3, v4, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/du;

    .line 17000
    iget-object v3, v3, Lcom/tapjoy/internal/du;->b:Lcom/tapjoy/internal/cz;

    if-nez v3, :cond_6

    .line 9000
    new-instance v3, Lcom/tapjoy/internal/cz;

    invoke-direct {v3, v4}, Lcom/tapjoy/internal/cz;-><init>(Lcom/tapjoy/internal/cx;)V

    .line 18000
    iget-object v4, v4, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/du;

    .line 19000
    iput-object v3, v4, Lcom/tapjoy/internal/du;->b:Lcom/tapjoy/internal/cz;

    .line 86
    invoke-static {v2, v3}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/internal/es;Lcom/tapjoy/internal/cz;)Lcom/tapjoy/internal/cz;

    .line 87
    iget-object v2, p0, Lcom/tapjoy/internal/es$1;->c:Lcom/tapjoy/internal/es;

    invoke-static {v2}, Lcom/tapjoy/internal/es;->c(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cm;

    move-result-object v3

    .line 20000
    move-object v4, v3

    check-cast v4, Lcom/tapjoy/internal/cx;

    invoke-static {v3, v0}, Lcom/tapjoy/internal/dq;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22000
    iget-object v0, v4, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/du;

    .line 23000
    iget-object v0, v0, Lcom/tapjoy/internal/du;->a:Lcom/tapjoy/internal/cl;

    if-nez v0, :cond_5

    .line 20000
    invoke-static {v4}, Lcom/tapjoy/internal/dq;->a(Lcom/tapjoy/internal/cx;)V

    new-instance v0, Lcom/tapjoy/internal/cl;

    invoke-direct {v0, v4}, Lcom/tapjoy/internal/cl;-><init>(Lcom/tapjoy/internal/cx;)V

    .line 24000
    iget-object v3, v4, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/du;

    .line 25000
    iput-object v0, v3, Lcom/tapjoy/internal/du;->a:Lcom/tapjoy/internal/cl;

    .line 87
    invoke-static {v2, v0}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/internal/es;Lcom/tapjoy/internal/cl;)Lcom/tapjoy/internal/cl;

    .line 89
    iget-object v0, p0, Lcom/tapjoy/internal/es$1;->c:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/internal/es;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/es$1;->b:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 21000
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "AdEvents already exists for AdSession"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15000
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "MediaEvents already exists for AdSession"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13000
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "AdSession is started"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10000
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot create MediaEvents for JavaScript AdSession"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8000
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Method called before OM SDK activation"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6000
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Impression owner is none"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4000
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_c
    const-string v0, "Failed to initialize"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/tapjoy/internal/es$1;->c:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/internal/es;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/es$1;->b:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to init with exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/tapjoy/internal/es$1;->c:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/internal/es;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/es$1;->b:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
