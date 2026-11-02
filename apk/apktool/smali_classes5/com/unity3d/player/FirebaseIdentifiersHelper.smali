.class Lcom/unity3d/player/FirebaseIdentifiersHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static bridge synthetic -$$Nest$smnativeOnFirebaseAppInstanceIdResult(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/FirebaseIdentifiersHelper;->nativeOnFirebaseAppInstanceIdResult(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeOnFirebaseAppInstanceIdResult(Ljava/lang/String;)V
.end method

.method public static requestFirebaseIdentifiers(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    .line 17
    :try_start_0
    const-string v1, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 18
    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 19
    invoke-static {v2, v1}, Lcom/unity3d/player/FirebaseIdentifiersHelper;->validateGetInstanceMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 20
    invoke-static {v0}, Lcom/unity3d/player/FirebaseIdentifiersHelper;->nativeOnFirebaseAppInstanceIdResult(Ljava/lang/String;)V

    return-void

    .line 24
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    .line 26
    invoke-static {v0}, Lcom/unity3d/player/FirebaseIdentifiersHelper;->nativeOnFirebaseAppInstanceIdResult(Ljava/lang/String;)V

    return-void

    .line 30
    :cond_1
    const-string v2, "getAppInstanceId"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/unity3d/player/FirebaseIdentifiersHelper;->validateGetAppInstanceIdMethod(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 32
    invoke-static {v0}, Lcom/unity3d/player/FirebaseIdentifiersHelper;->nativeOnFirebaseAppInstanceIdResult(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_2
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/tasks/Task;

    .line 37
    new-instance v1, Lcom/unity3d/player/p;

    invoke-direct {v1}, Lcom/unity3d/player/p;-><init>()V

    .line 48
    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 50
    :catch_0
    invoke-static {v0}, Lcom/unity3d/player/FirebaseIdentifiersHelper;->nativeOnFirebaseAppInstanceIdResult(Ljava/lang/String;)V

    return-void
.end method

.method private static validateGetAppInstanceIdMethod(Ljava/lang/reflect/Method;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 77
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 78
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_2

    goto :goto_0

    .line 82
    :cond_2
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 83
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/tasks/Task;

    if-eq v1, v2, :cond_3

    return v0

    .line 87
    :cond_3
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 88
    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    aget-object p0, p0, v0

    const-class v1, Ljava/lang/String;

    if-eq p0, v1, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v0
.end method

.method private static validateGetInstanceMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    if-eq p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
