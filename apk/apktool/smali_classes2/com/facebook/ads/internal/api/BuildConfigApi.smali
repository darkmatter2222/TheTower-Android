.class public Lcom/facebook/ads/internal/api/BuildConfigApi;
.super Ljava/lang/Object;
.source "BuildConfigApi.java"


# static fields
.field static final UNITY_SHARED_PREFERENCES_SUFIX:Ljava/lang/String; = ".v2.playerprefs"

.field static final UNITY_TAG:Ljava/lang/String; = "an_isUnitySDK"

.field static final UNITY_VERSION_SUFIX:Ljava/lang/String; = "-unity"

.field private static volatile sVersionOverride:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 35
    sget-object v0, Lcom/facebook/ads/internal/api/BuildConfigApi;->sVersionOverride:Ljava/lang/String;

    .line 36
    const-string v1, "-unity"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 37
    invoke-static {p0}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isUnity(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0

    .line 42
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isUnity(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/BuildConfig;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 45
    :cond_2
    sget-object p0, Lcom/facebook/ads/BuildConfig;->VERSION_NAME:Ljava/lang/String;

    return-object p0
.end method

.method public static getVersionOverride()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/facebook/ads/internal/api/BuildConfigApi;->sVersionOverride:Ljava/lang/String;

    return-object v0
.end method

.method public static isDebug()Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/facebook/ads/BuildConfig;->DEBUG:Z

    return v0
.end method

.method private static isUnity(Landroid/content/Context;)Z
    .locals 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".v2.playerprefs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    const-string v2, "an_isUnitySDK"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 55
    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static setVersionOverride(Ljava/lang/String;)V
    .locals 0

    .line 26
    sput-object p0, Lcom/facebook/ads/internal/api/BuildConfigApi;->sVersionOverride:Ljava/lang/String;

    return-void
.end method
