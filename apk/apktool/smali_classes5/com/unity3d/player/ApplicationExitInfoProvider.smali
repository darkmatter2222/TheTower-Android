.class public Lcom/unity3d/player/ApplicationExitInfoProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getANRRecordsJson(I)Ljava/lang/String;
    .locals 4

    .line 50
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 55
    :cond_0
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 58
    invoke-static {v0, v2, v3, p0}, Lcom/unity3d/player/ApplicationExitInfoProvider;->getHistoricalProcessExitReasons(Landroid/app/Activity;Ljava/lang/String;II)[Lcom/unity3d/player/ApplicationExitInfoBase;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 62
    :cond_1
    invoke-static {p0}, Lcom/unity3d/player/ApplicationExitInfoProvider;->toJson([Lcom/unity3d/player/ApplicationExitInfoBase;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHistoricalProcessExitReasons(Landroid/app/Activity;Ljava/lang/String;II)[Lcom/unity3d/player/ApplicationExitInfoBase;
    .locals 2

    .line 16
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 18
    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->RED_VELVET_CAKE_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    .line 22
    new-array p2, p1, [Lcom/unity3d/player/ApplicationExitInfoBase;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    .line 25
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 26
    new-instance v1, Lcom/unity3d/player/ApplicationExitInfoWrapper;

    invoke-direct {v1, v0}, Lcom/unity3d/player/ApplicationExitInfoWrapper;-><init>(Landroid/app/ApplicationExitInfo;)V

    .line 27
    aput-object v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object p2

    :cond_1
    const/4 p0, 0x5

    .line 32
    const-string p1, "ApplicationExitInfoProvider: ApplicationExitInfo is only available from api 30 (Android 11)"

    invoke-static {p0, p1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setProcessStateSummary(Landroid/app/Activity;[B)V
    .locals 1

    .line 40
    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->RED_VELVET_CAKE_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 42
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 43
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->setProcessStateSummary([B)V

    :cond_0
    return-void
.end method

.method public static toJson([Lcom/unity3d/player/ApplicationExitInfoBase;)Lorg/json/JSONArray;
    .locals 10

    .line 68
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 71
    array-length v1, p0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    add-int/lit8 v2, v2, 0x1

    .line 74
    invoke-virtual {v4}, Lcom/unity3d/player/ApplicationExitInfoBase;->getReason()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 80
    invoke-virtual {v4}, Lcom/unity3d/player/ApplicationExitInfoBase;->getDescription()Ljava/lang/String;

    move-result-object v6

    const-string v7, "description"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    invoke-virtual {v4}, Lcom/unity3d/player/ApplicationExitInfoBase;->getTraceString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "trace"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    invoke-virtual {v4}, Lcom/unity3d/player/ApplicationExitInfoBase;->getTimestamp()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    const-string v4, "timestamp"

    invoke-virtual {v5, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 83
    const-string v4, "index"

    invoke-virtual {v5, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
