.class public final Lcom/tapjoy/internal/es;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Ljava/lang/String; = ""


# instance fields
.field public a:Lcom/tapjoy/TJAdUnitJSBridge;

.field private c:Lcom/tapjoy/internal/cl;

.field private d:Lcom/tapjoy/internal/cm;

.field private e:Lcom/tapjoy/internal/cv;

.field private f:Lcom/tapjoy/internal/cz;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2000
    const-string v0, "Name is null or empty"

    const-string v1, "Tapjoy"

    invoke-static {v1, v0}, Lcom/tapjoy/internal/dq;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Version is null or empty"

    const-string v2, "12.10.0"

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dq;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tapjoy/internal/cv;

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/cv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object v0, p0, Lcom/tapjoy/internal/es;->e:Lcom/tapjoy/internal/cv;

    .line 46
    iput-object p1, p0, Lcom/tapjoy/internal/es;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/es;)Lcom/tapjoy/TJAdUnitJSBridge;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tapjoy/internal/es;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    return-object p0
.end method

.method static synthetic a(Lcom/tapjoy/internal/es;Lcom/tapjoy/internal/cl;)Lcom/tapjoy/internal/cl;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tapjoy/internal/es;->c:Lcom/tapjoy/internal/cl;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/es;Lcom/tapjoy/internal/cm;)Lcom/tapjoy/internal/cm;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tapjoy/internal/es;->d:Lcom/tapjoy/internal/cm;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/es;Lcom/tapjoy/internal/cz;)Lcom/tapjoy/internal/cz;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tapjoy/internal/es;->f:Lcom/tapjoy/internal/cz;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/tapjoy/internal/es;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/tapjoy/internal/es;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cv;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tapjoy/internal/es;->e:Lcom/tapjoy/internal/cv;

    return-object p0
.end method

.method private static b(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/cw;",
            ">;"
        }
    .end annotation

    .line 246
    const-string v0, "TJOMViewabilityAgent"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 248
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 251
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    const-string v4, "vendorJSResource"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 259
    const-string v3, "Vendor JS URL not found. Skipping."

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 265
    :cond_0
    :try_start_1
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    const-string v4, "vendorName"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 272
    const-string v7, "vendorParameters"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 276
    const-string v7, "ResourceURL is null"

    if-eqz v3, :cond_2

    if-nez v4, :cond_1

    goto :goto_1

    .line 6000
    :cond_1
    const-string v5, "VendorKey is null or empty"

    invoke-static {v4, v5}, Lcom/tapjoy/internal/dq;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/tapjoy/internal/dq;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "VerificationParameters is null or empty"

    invoke-static {v3, v5}, Lcom/tapjoy/internal/dq;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/tapjoy/internal/cw;

    invoke-direct {v5, v4, v6, v3}, Lcom/tapjoy/internal/cw;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_2

    .line 5000
    :cond_2
    :goto_1
    invoke-static {v6, v7}, Lcom/tapjoy/internal/dq;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/tapjoy/internal/cw;

    invoke-direct {v3, v5, v6, v5}, Lcom/tapjoy/internal/cw;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    move-object v5, v3

    .line 282
    :goto_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 267
    :catch_0
    const-string v3, "Malformed vendor JS URL. Skipping "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 253
    :catch_1
    const-string v3, "Malformed vendor object. Skipping."

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static b(Lorg/json/JSONObject;)V
    .locals 5

    .line 289
    sget-object v0, Lcom/tapjoy/internal/es;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    const-string v0, "omJavaScriptURL"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 294
    const-string v0, "TJOMViewabilityAgent"

    if-nez p0, :cond_1

    .line 295
    const-string p0, "Open Mediation JavaScript name not found in json."

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6307
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tapjoy/TapjoyCache;->getCachedDataForURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6310
    const-string v2, ""

    if-nez v1, :cond_2

    .line 6311
    :try_start_1
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v1

    const-wide/16 v3, 0x1e

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/tapjoy/TapjoyCache;->cacheAssetFromURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 6312
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 6313
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tapjoy/TapjoyCache;->getCachedDataForURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_0

    .line 6321
    :cond_3
    new-instance p0, Ljava/io/File;

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6323
    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->getFileContents(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 300
    :goto_0
    sput-object v2, Lcom/tapjoy/internal/es;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 302
    :catch_0
    const-string p0, "Failed downloading Open Mediation JavaScript"

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cm;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tapjoy/internal/es;->d:Lcom/tapjoy/internal/cm;

    return-object p0
.end method

.method static synthetic d(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cl;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tapjoy/internal/es;->c:Lcom/tapjoy/internal/cl;

    return-object p0
.end method

.method static synthetic e(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cz;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tapjoy/internal/es;->f:Lcom/tapjoy/internal/cz;

    return-object p0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Z
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/tapjoy/internal/es;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    .line 2525
    iget-object v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    .line 210
    const-string v2, "TJOMViewabilityAgent"

    if-nez v0, :cond_0

    .line 211
    const-string p1, "Can not init -- WebView is null"

    invoke-static {v2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/es;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    .line 3521
    iget-object v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    if-nez v0, :cond_1

    .line 216
    const-string p1, "Can not init -- TJAdUnit is null"

    invoke-static {v2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/es;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    .line 4521
    iget-object v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    .line 220
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getVideoView()Landroid/widget/VideoView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 221
    const-string p1, "Can not init -- VideoView is null"

    invoke-static {v2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    if-nez p1, :cond_3

    .line 226
    const-string p1, "Can not init -- json parameter is null"

    invoke-static {v2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 230
    :cond_3
    const-string v0, "omJavaScriptURL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 231
    const-string p1, "Can not init -- unable to parse om javascript url from json"

    invoke-static {v2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 236
    :cond_4
    :try_start_0
    const-string v0, "vendors"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 238
    :catch_0
    const-string p1, "Can not init -- unable to parse vendors from json"

    invoke-static {v2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
