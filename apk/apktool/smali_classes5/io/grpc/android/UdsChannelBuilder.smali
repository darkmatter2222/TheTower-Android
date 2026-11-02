.class public final Lio/grpc/android/UdsChannelBuilder;
.super Ljava/lang/Object;
.source "UdsChannelBuilder.java"


# static fields
.field private static final OKHTTP_CHANNEL_BUILDER_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lio/grpc/ManagedChannelBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    invoke-static {}, Lio/grpc/android/UdsChannelBuilder;->findOkHttp()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lio/grpc/android/UdsChannelBuilder;->OKHTTP_CHANNEL_BUILDER_CLASS:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findOkHttp()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lio/grpc/ManagedChannelBuilder;",
            ">;"
        }
    .end annotation

    .line 53
    :try_start_0
    const-string v0, "io.grpc.okhttp.OkHttpChannelBuilder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/grpc/ManagedChannelBuilder;

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static forPath(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)Lio/grpc/ManagedChannelBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/LocalSocketAddress$Namespace;",
            ")",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 67
    const-string v0, "Failed to create OkHttpChannelBuilder"

    sget-object v1, Lio/grpc/android/UdsChannelBuilder;->OKHTTP_CHANNEL_BUILDER_CLASS:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 74
    :try_start_0
    const-string v2, "forTarget"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lio/grpc/ChannelCredentials;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 75
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "dns:///localhost"

    .line 76
    invoke-static {}, Lio/grpc/InsecureChannelCredentials;->create()Lio/grpc/ChannelCredentials;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/ManagedChannelBuilder;

    .line 78
    const-string v3, "socketFactory"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v6, Ljavax/net/SocketFactory;

    aput-object v6, v4, v5

    .line 79
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v3, Lio/grpc/android/UdsSocketFactory;

    invoke-direct {v3, p0, p1}, Lio/grpc/android/UdsSocketFactory;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object p0

    .line 80
    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 87
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 85
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 83
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 68
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "OkHttpChannelBuilder not found on the classpath"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
