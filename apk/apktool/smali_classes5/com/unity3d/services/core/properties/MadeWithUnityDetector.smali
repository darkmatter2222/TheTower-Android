.class public Lcom/unity3d/services/core/properties/MadeWithUnityDetector;
.super Ljava/lang/Object;
.source "MadeWithUnityDetector.java"


# static fields
.field private static final MADE_WITH_UNITY:Z

.field public static final UNITY_PLAYER_CLASS_NAME:Ljava/lang/String; = "com.unity3d.player.UnityPlayer"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    invoke-static {}, Lcom/unity3d/services/core/properties/MadeWithUnityDetector;->detect()Z

    move-result v0

    sput-boolean v0, Lcom/unity3d/services/core/properties/MadeWithUnityDetector;->MADE_WITH_UNITY:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static detect()Z
    .locals 1

    .line 18
    :try_start_0
    const-string v0, "com.unity3d.player.UnityPlayer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isMadeWithUnity()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/unity3d/services/core/properties/MadeWithUnityDetector;->MADE_WITH_UNITY:Z

    return v0
.end method
