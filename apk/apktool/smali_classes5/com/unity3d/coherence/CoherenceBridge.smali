.class final Lcom/unity3d/coherence/CoherenceBridge;
.super Ljava/lang/Object;
.source "CoherenceBridge.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-string v0, "unitycoherencenative"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native getCommonAttributes(JII)[B
.end method

.method static native getVersions(J)[B
.end method

.method static native init(Lcom/unity3d/coherence/Coherence;Landroid/content/Context;Ljava/lang/String;I)J
.end method

.method static native isInitialized(J)Z
.end method

.method static native setExternalUserId(JLjava/lang/String;)V
.end method

.method static native setLogHandler(Lcom/unity3d/coherence/LogHandler;)V
.end method

.method static native vmCreate(J[B)J
.end method

.method static native vmDrop(JJ)V
.end method

.method static native vmInvokeMain(JJ[B)Lcom/unity3d/coherence/VmInvokeResult;
.end method

.method static native vmLastError(J)Ljava/lang/String;
.end method

.method static native warmPlugins(J)V
.end method
