.class public final Lcom/unity3d/player/UnityPlayerConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUnityVersion()Ljava/lang/String;
    .locals 1

    .line 7
    const-string v0, "6000.3.15f1"

    return-object v0
.end method

.method public static isDebugMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDevelopmentPlayer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
