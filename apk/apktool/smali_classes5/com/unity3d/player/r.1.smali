.class public final Lcom/unity3d/player/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final a:Lcom/unity3d/player/u;

.field public final b:Lcom/unity3d/player/UnityPlayer;

.field public final c:J

.field public final synthetic d:J


# direct methods
.method public constructor <init>(JLcom/unity3d/player/UnityPlayer;)V
    .locals 3

    .line 444
    iput-wide p1, p0, Lcom/unity3d/player/r;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    new-instance v0, Lcom/unity3d/player/u;

    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->-$$Nest$sfgetb()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/unity3d/player/u;-><init>(JJ)V

    iput-object v0, p0, Lcom/unity3d/player/r;->a:Lcom/unity3d/player/u;

    .line 447
    iput-object p3, p0, Lcom/unity3d/player/r;->b:Lcom/unity3d/player/UnityPlayer;

    .line 448
    iput-wide v1, p0, Lcom/unity3d/player/r;->c:J

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/unity3d/player/t;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-nez p2, :cond_0

    .line 455
    :try_start_0
    new-array p2, v0, [Ljava/lang/Object;

    .line 456
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 458
    const-class v4, Ljava/lang/invoke/MethodHandles$Lookup;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Class;

    aput-object v7, v6, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v0, v6, v7

    .line 459
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 460
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 461
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandles$Lookup;

    .line 462
    invoke-virtual {v0, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->in(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectSpecial(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    iget-wide p1, p3, Lcom/unity3d/player/t;->a:J

    cmp-long p3, p1, v1

    if-eqz p3, :cond_1

    .line 473
    invoke-static {p1, p2}, Lcom/unity3d/player/ReflectionHelper;->-$$Nest$smnativeProxyJNIFreeGCHandle(J)V

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 466
    :catch_0
    :try_start_1
    const-string p0, "Java interface default methods are only supported since Android Oreo"

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    .line 545
    iget-wide p0, p3, Lcom/unity3d/player/t;->a:J

    .line 467
    invoke-static {p0, p1}, Lcom/unity3d/player/ReflectionHelper;->-$$Nest$smnativeProxyLogJNIInvokeException(J)V

    .line 550
    iput-wide v1, p3, Lcom/unity3d/player/t;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    return-object p0

    .line 545
    :goto_0
    iget-wide p1, p3, Lcom/unity3d/player/t;->a:J

    cmp-long p3, p1, v1

    if-eqz p3, :cond_2

    .line 473
    invoke-static {p1, p2}, Lcom/unity3d/player/ReflectionHelper;->-$$Nest$smnativeProxyJNIFreeGCHandle(J)V

    .line 474
    :cond_2
    throw p0
.end method


# virtual methods
.method public finalize()V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/unity3d/player/r;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/r;->a:Lcom/unity3d/player/u;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    .line 522
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 483
    iget-wide v0, p0, Lcom/unity3d/player/r;->c:J

    invoke-static {v0, v1}, Lcom/unity3d/player/ReflectionHelper;->beginProxyCall(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x6

    .line 485
    const-string p2, "Scripting proxy object was destroyed, because Unity player was unloaded."

    invoke-static {p1, p2}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return-object v1

    .line 491
    :cond_0
    :try_start_0
    iget-wide v2, p0, Lcom/unity3d/player/r;->d:J

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0, p3}, Lcom/unity3d/player/ReflectionHelper;->-$$Nest$smnativeProxyInvoke(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 492
    instance-of v2, v0, Lcom/unity3d/player/t;

    if-eqz v2, :cond_2

    .line 494
    check-cast v0, Lcom/unity3d/player/t;

    .line 555
    iget-boolean v2, v0, Lcom/unity3d/player/t;->b:Z

    if-eqz v2, :cond_1

    .line 498
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_1

    .line 500
    invoke-static {p1, p2, p3, v0}, Lcom/unity3d/player/r;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/unity3d/player/t;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->endProxyCall()V

    return-object p1

    .line 545
    :cond_1
    :try_start_1
    iget-wide p1, v0, Lcom/unity3d/player/t;->a:J

    .line 504
    invoke-static {p1, p2}, Lcom/unity3d/player/ReflectionHelper;->-$$Nest$smnativeProxyLogJNIInvokeException(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->endProxyCall()V

    return-object v1

    :cond_2
    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->endProxyCall()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->endProxyCall()V

    .line 513
    throw p1
.end method
