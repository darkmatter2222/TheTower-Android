.class Lcom/unity3d/player/AndroidAppSetIdHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static bridge synthetic -$$Nest$smnativeOnAndroidAppSetIdResult(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/AndroidAppSetIdHelper;->nativeOnAndroidAppSetIdResult(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeOnAndroidAppSetIdResult(Ljava/lang/String;)V
.end method

.method public static requestAppSetId(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    .line 22
    :try_start_0
    const-string v1, "com.google.android.gms.appset.AppSet"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 25
    const-string v2, "getClient"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 28
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 31
    invoke-static {v0}, Lcom/unity3d/player/AndroidAppSetIdHelper;->nativeOnAndroidAppSetIdResult(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAppSetIdInfo"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 39
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    .line 42
    invoke-static {v0}, Lcom/unity3d/player/AndroidAppSetIdHelper;->nativeOnAndroidAppSetIdResult(Ljava/lang/String;)V

    return-void

    .line 47
    :cond_1
    const-class v1, Lcom/google/android/gms/tasks/OnSuccessListener;

    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v1, v4, v6

    new-instance v5, Lcom/unity3d/player/a;

    invoke-direct {v5}, Lcom/unity3d/player/a;-><init>()V

    invoke-static {v2, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "addOnSuccessListener"

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v1, v3, v6

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 78
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 82
    :catch_0
    invoke-static {v0}, Lcom/unity3d/player/AndroidAppSetIdHelper;->nativeOnAndroidAppSetIdResult(Ljava/lang/String;)V

    return-void
.end method
