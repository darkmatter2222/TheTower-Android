.class public Lcom/unity3d/player/UnityPermissions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SKIP_DIALOG_METADATA_NAME:Ljava/lang/String; = "unityplayer.SkipPermissionsDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInfoForMetadata(Landroid/content/pm/PackageItemInfo;)Z
    .locals 1

    .line 21
    :try_start_0
    iget-object p0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 22
    const-string v0, "unityplayer.SkipPermissionsDialog"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hasUserAuthorizedPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static requestUserPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/unity3d/player/IPermissionRequestCallbacks;)V
    .locals 1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 60
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    instance-of v0, p0, Lcom/unity3d/player/IUnityPermissionRequestSupport;

    if-eqz v0, :cond_1

    .line 65
    check-cast p0, Lcom/unity3d/player/IUnityPermissionRequestSupport;

    .line 66
    new-instance v0, Lcom/unity3d/player/PermissionRequest;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/player/PermissionRequest;-><init>([Ljava/lang/String;Lcom/unity3d/player/IPermissionRequestCallbacks;)V

    invoke-interface {p0, v0}, Lcom/unity3d/player/IUnityPermissionRequestSupport;->requestPermissions(Lcom/unity3d/player/PermissionRequest;)V

    return-void

    :cond_1
    const p2, 0x178e9

    .line 69
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static skipPermissionsDialog(Landroid/app/Activity;)Z
    .locals 3

    .line 33
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 36
    invoke-static {v1}, Lcom/unity3d/player/UnityPermissions;->checkInfoForMetadata(Landroid/content/pm/PackageItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/unity3d/player/UnityPermissions;->checkInfoForMetadata(Landroid/content/pm/PackageItemInfo;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return p0
.end method
