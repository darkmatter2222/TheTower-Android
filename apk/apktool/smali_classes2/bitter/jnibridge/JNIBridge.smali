.class public Lbitter/jnibridge/JNIBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static disableInterfaceProxy(Ljava/lang/Object;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 18
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    check-cast p0, Lbitter/jnibridge/a;

    .line 83
    iget-object v0, p0, Lbitter/jnibridge/a;->a:[Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 85
    :try_start_0
    iput-wide v1, p0, Lbitter/jnibridge/a;->b:J

    .line 86
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method static native invoke(JLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method static newInterfaceProxy(J[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 12
    const-class v0, Lbitter/jnibridge/JNIBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lbitter/jnibridge/a;

    invoke-direct {v1, p0, p1}, Lbitter/jnibridge/a;-><init>(J)V

    invoke-static {v0, p2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
