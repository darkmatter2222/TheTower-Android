.class public Lcom/ironsource/unity/androidbridge/LevelPlayBridge;
.super Ljava/lang/Object;
.source "LevelPlayBridge.java"

# interfaces
.implements Lcom/unity3d/mediation/LevelPlayInitListener;
.implements Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;


# static fields
.field private static final mInstance:Lcom/ironsource/unity/androidbridge/LevelPlayBridge;


# instance fields
.field private mUnityImpressionDataListener:Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;

.field private mUnityLevelPlayInitListener:Lcom/ironsource/unity/androidbridge/IUnityLevelPlayInitListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/ironsource/unity/androidbridge/LevelPlayBridge;

    invoke-direct {v0}, Lcom/ironsource/unity/androidbridge/LevelPlayBridge;-><init>()V

    sput-object v0, Lcom/ironsource/unity/androidbridge/LevelPlayBridge;->mInstance:Lcom/ironsource/unity/androidbridge/LevelPlayBridge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/unity/androidbridge/LevelPlayBridge;)Lcom/ironsource/unity/androidbridge/IUnityLevelPlayInitListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/ironsource/unity/androidbridge/LevelPlayBridge;->mUnityLevelPlayInitListener:Lcom/ironsource/unity/androidbridge/IUnityLevelPlayInitListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ironsource/unity/androidbridge/LevelPlayBridge;)Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/ironsource/unity/androidbridge/LevelPlayBridge;->mUnityImpressionDataListener:Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/unity/androidbridge/LevelPlayBridge;
    .locals 2

    const-class v0, Lcom/ironsource/unity/androidbridge/LevelPlayBridge;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/ironsource/unity/androidbridge/LevelPlayBridge;->mInstance:Lcom/ironsource/unity/androidbridge/LevelPlayBridge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public initialize(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/unity/androidbridge/IUnityLevelPlayInitListener;)V
    .locals 1

    .line 37
    new-instance v0, Lcom/unity3d/mediation/LevelPlayInitRequest$Builder;

    invoke-direct {v0, p1}, Lcom/unity3d/mediation/LevelPlayInitRequest$Builder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 38
    const-string p1, ""

    if-eq p2, p1, :cond_0

    .line 39
    invoke-virtual {v0, p2}, Lcom/unity3d/mediation/LevelPlayInitRequest$Builder;->withUserId(Ljava/lang/String;)Lcom/unity3d/mediation/LevelPlayInitRequest$Builder;

    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/unity3d/mediation/LevelPlayInitRequest$Builder;->build()Lcom/unity3d/mediation/LevelPlayInitRequest;

    move-result-object p1

    .line 44
    iput-object p3, p0, Lcom/ironsource/unity/androidbridge/LevelPlayBridge;->mUnityLevelPlayInitListener:Lcom/ironsource/unity/androidbridge/IUnityLevelPlayInitListener;

    .line 45
    sget-object p2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {p2, p1, p0}, Lcom/unity3d/mediation/LevelPlay;->init(Landroid/content/Context;Lcom/unity3d/mediation/LevelPlayInitRequest;Lcom/unity3d/mediation/LevelPlayInitListener;)V

    return-void
.end method

.method public launchTestSuite()V
    .locals 1

    .line 65
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/unity3d/mediation/LevelPlay;->launchTestSuite(Landroid/content/Context;)V

    return-void
.end method

.method public onImpressionSuccess(Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V
    .locals 1

    .line 153
    new-instance v0, Lcom/ironsource/unity/androidbridge/LevelPlayBridge$3;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/unity/androidbridge/LevelPlayBridge$3;-><init>(Lcom/ironsource/unity/androidbridge/LevelPlayBridge;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V

    invoke-static {v0}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInitFailed(Lcom/unity3d/mediation/LevelPlayInitError;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/LevelPlayBridge;->mUnityLevelPlayInitListener:Lcom/ironsource/unity/androidbridge/IUnityLevelPlayInitListener;

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Lcom/ironsource/unity/androidbridge/LevelPlayBridge$1;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/unity/androidbridge/LevelPlayBridge$1;-><init>(Lcom/ironsource/unity/androidbridge/LevelPlayBridge;Lcom/unity3d/mediation/LevelPlayInitError;)V

    invoke-static {v0}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onInitSuccess(Lcom/unity3d/mediation/LevelPlayConfiguration;)V
    .locals 1

    .line 139
    invoke-static {p0}, Lcom/unity3d/mediation/LevelPlay;->addImpressionDataListener(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V

    .line 140
    new-instance v0, Lcom/ironsource/unity/androidbridge/LevelPlayBridge$2;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/unity/androidbridge/LevelPlayBridge$2;-><init>(Lcom/ironsource/unity/androidbridge/LevelPlayBridge;Lcom/unity3d/mediation/LevelPlayConfiguration;)V

    invoke-static {v0}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAdaptersDebug(Z)V
    .locals 0

    .line 77
    invoke-static {p1}, Lcom/unity3d/mediation/LevelPlay;->setAdaptersDebug(Z)V

    return-void
.end method

.method public setCCPA(Z)V
    .locals 0

    .line 169
    invoke-static {p1}, Lcom/unity3d/mediation/LevelPlayPrivacySettings;->setCCPA(Z)V

    return-void
.end method

.method public setCOPPA(Z)V
    .locals 0

    .line 173
    invoke-static {p1}, Lcom/unity3d/mediation/LevelPlayPrivacySettings;->setCOPPA(Z)V

    return-void
.end method

.method public setConsent(Z)V
    .locals 0

    .line 92
    invoke-static {p1}, Lcom/unity3d/mediation/LevelPlay;->setConsent(Z)V

    return-void
.end method

.method public setDynamicUserId(Ljava/lang/String;)Z
    .locals 0

    .line 53
    invoke-static {p1}, Lcom/unity3d/mediation/LevelPlay;->setDynamicUserId(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setGDPRConsents(Ljava/lang/String;)V
    .locals 0

    .line 164
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->jsonToBooleanMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 165
    invoke-static {p1}, Lcom/unity3d/mediation/LevelPlayPrivacySettings;->setGDPRConsents(Ljava/util/Map;)V

    return-void
.end method

.method public setMetaData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-static {p1, p2}, Lcom/unity3d/mediation/LevelPlay;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMetaData(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 86
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {p1, v0}, Lcom/unity3d/mediation/LevelPlay;->setMetaData(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public setNetworkData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 70
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-static {p1, v0}, Lcom/unity3d/mediation/LevelPlay;->setNetworkData(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setPluginData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/config/ConfigFile;->setPluginData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSegment(Ljava/lang/String;)V
    .locals 4

    .line 97
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 98
    new-instance p1, Lcom/unity3d/mediation/segment/LevelPlaySegment;

    invoke-direct {p1}, Lcom/unity3d/mediation/segment/LevelPlaySegment;-><init>()V

    .line 100
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 101
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 103
    const-string v3, "level"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/unity3d/mediation/segment/LevelPlaySegment;->setLevel(I)V

    goto :goto_0

    .line 105
    :cond_0
    const-string v3, "isPaying"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v2}, Lcom/unity3d/mediation/segment/LevelPlaySegment;->setPaying(Z)V

    goto :goto_0

    .line 107
    :cond_2
    const-string v3, "userCreationDate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/mediation/segment/LevelPlaySegment;->setUserCreationDate(J)V

    goto :goto_0

    .line 109
    :cond_3
    const-string v3, "segmentName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 110
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/unity3d/mediation/segment/LevelPlaySegment;->setSegmentName(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_4
    const-string v3, "iapt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 112
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/mediation/segment/LevelPlaySegment;->setIapTotal(D)V

    goto :goto_0

    .line 115
    :cond_5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/mediation/segment/LevelPlaySegment;->setCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_6
    invoke-static {p1}, Lcom/unity3d/mediation/LevelPlay;->setSegment(Lcom/unity3d/mediation/segment/LevelPlaySegment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setUnityImpressionDataListener(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/LevelPlayBridge;->mUnityImpressionDataListener:Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;

    return-void
.end method

.method public validateIntegration()V
    .locals 1

    .line 61
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/unity3d/mediation/LevelPlay;->validateIntegration(Landroid/content/Context;)V

    return-void
.end method
