.class final Lcom/unity3d/player/ReflectionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static LOG:Z = false

.field protected static final LOGV:Z = false

.field private static final a:[Lcom/unity3d/player/s;

.field private static b:J = 0x0L

.field private static c:J = 0x0L

.field private static d:Z = false


# direct methods
.method static bridge synthetic -$$Nest$sfgetb()J
    .locals 2

    sget-wide v0, Lcom/unity3d/player/ReflectionHelper;->b:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smnativeProxyFinalize(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/player/ReflectionHelper;->nativeProxyFinalize(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeProxyInvoke(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/player/ReflectionHelper;->nativeProxyInvoke(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnativeProxyJNIFreeGCHandle(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/player/ReflectionHelper;->nativeProxyJNIFreeGCHandle(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeProxyLogJNIInvokeException(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/player/ReflectionHelper;->nativeProxyLogJNIInvokeException(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1000

    .line 22
    new-array v0, v0, [Lcom/unity3d/player/s;

    sput-object v0, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/s;

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Class;)F
    .locals 1

    .line 260
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 266
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 269
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    .line 270
    :catch_0
    :cond_1
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p0, :cond_2

    const p0, 0x3dcccccd    # 0.1f

    return p0

    :catch_1
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)F
    .locals 6

    .line 278
    array-length v0, p2

    if-nez v0, :cond_0

    const p0, 0x3dcccccd    # 0.1f

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    move v1, v0

    goto :goto_0

    .line 280
    :cond_1
    array-length v1, p1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 281
    array-length v2, p2

    if-eq v1, v2, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    .line 291
    array-length v2, p1

    move v3, v1

    move v1, v0

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v4, p1, v0

    add-int/lit8 v5, v1, 0x1

    .line 293
    aget-object v1, p2, v1

    invoke-static {v4, v1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v1

    mul-float/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v5

    goto :goto_1

    :cond_3
    move v1, v3

    .line 297
    :cond_4
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p2, p1

    invoke-static {p0, p1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result p0

    mul-float/2addr v1, p0

    return v1
.end method

.method private static a(Ljava/lang/String;[I)Ljava/lang/Class;
    .locals 3

    :goto_0
    const/4 v0, 0x0

    .line 330
    aget v1, p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 332
    aget v1, p1, v0

    add-int/lit8 v2, v1, 0x1

    aput v2, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x29

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x4c

    if-ne v1, v2, :cond_3

    .line 340
    aget v1, p1, v0

    const/16 v2, 0x3b

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    goto/16 :goto_1

    .line 344
    :cond_2
    aget v2, p1, v0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    .line 345
    aput v1, p1, v0

    const/16 p1, 0x2f

    const/16 v0, 0x2e

    .line 347
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 352
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_3
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_4

    .line 361
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_4
    const/16 v2, 0x49

    if-ne v1, v2, :cond_5

    .line 363
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_5
    const/16 v2, 0x46

    if-ne v1, v2, :cond_6

    .line 365
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_6
    const/16 v2, 0x56

    if-ne v1, v2, :cond_7

    .line 367
    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_7
    const/16 v2, 0x42

    if-ne v1, v2, :cond_8

    .line 369
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_8
    const/16 v2, 0x43

    if-ne v1, v2, :cond_9

    .line 371
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_9
    const/16 v2, 0x53

    if-ne v1, v2, :cond_a

    .line 373
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_a
    const/16 v2, 0x4a

    if-ne v1, v2, :cond_b

    .line 375
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_b
    const/16 v2, 0x44

    if-ne v1, v2, :cond_c

    .line 377
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_c
    const/16 v2, 0x5b

    if-ne v1, v2, :cond_d

    .line 382
    invoke-static {p0, p1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;[I)Ljava/lang/Class;

    move-result-object p0

    .line 383
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 386
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "! parseType; "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is not known!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p1, p0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    :catch_0
    :cond_e
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static declared-synchronized a(Lcom/unity3d/player/s;)Z
    .locals 3

    const-class v0, Lcom/unity3d/player/ReflectionHelper;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/s;

    .line 48
    iget v2, p0, Lcom/unity3d/player/s;->d:I

    and-int/lit16 v2, v2, 0xfff

    .line 70
    aget-object v1, v1, v2

    .line 71
    invoke-virtual {p0, v1}, Lcom/unity3d/player/s;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 73
    :cond_0
    :try_start_1
    iget-object v1, v1, Lcom/unity3d/player/s;->e:Ljava/lang/reflect/AccessibleObject;

    iput-object v1, p0, Lcom/unity3d/player/s;->e:Ljava/lang/reflect/AccessibleObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/Class;
    .locals 6

    const/4 v0, 0x0

    .line 304
    filled-new-array {v0}, [I

    move-result-object v1

    .line 305
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 307
    :goto_0
    aget v3, v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 309
    invoke-static {p0, v1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;[I)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 313
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 317
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Class;

    .line 318
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v0

    :goto_2
    if-ge v0, v1, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    check-cast v4, Ljava/lang/Class;

    add-int/lit8 v5, v3, 0x1

    .line 320
    aput-object v4, p0, v3

    move v3, v5

    goto :goto_2

    :cond_2
    return-object p0
.end method

.method protected static declared-synchronized beginProxyCall(J)Z
    .locals 3

    const-class v0, Lcom/unity3d/player/ReflectionHelper;

    monitor-enter v0

    .line 403
    :try_start_0
    sget-wide v1, Lcom/unity3d/player/ReflectionHelper;->b:J

    cmp-long p0, p0, v1

    if-nez p0, :cond_0

    .line 405
    sget-wide p0, Lcom/unity3d/player/ReflectionHelper;->c:J

    const-wide/16 v1, 0x1

    add-long/2addr p0, v1

    sput-wide p0, Lcom/unity3d/player/ReflectionHelper;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected static createInvocationError(JZ)Ljava/lang/Object;
    .locals 1

    .line 529
    new-instance v0, Lcom/unity3d/player/t;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/player/t;-><init>(JZ)V

    return-object v0
.end method

.method protected static declared-synchronized endProxyCall()V
    .locals 5

    const-class v0, Lcom/unity3d/player/ReflectionHelper;

    monitor-enter v0

    .line 414
    :try_start_0
    sget-wide v1, Lcom/unity3d/player/ReflectionHelper;->c:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/unity3d/player/ReflectionHelper;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/unity3d/player/ReflectionHelper;->d:Z

    if-eqz v1, :cond_0

    .line 415
    const-class v1, Lcom/unity3d/player/ReflectionHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected static declared-synchronized endUnityLaunch()V
    .locals 5

    const-class v0, Lcom/unity3d/player/ReflectionHelper;

    monitor-enter v0

    .line 422
    :try_start_0
    sget-wide v1, Lcom/unity3d/player/ReflectionHelper;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/unity3d/player/ReflectionHelper;->b:J

    const/4 v1, 0x1

    .line 423
    sput-boolean v1, Lcom/unity3d/player/ReflectionHelper;->d:Z

    .line 424
    :goto_0
    sget-wide v1, Lcom/unity3d/player/ReflectionHelper;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 425
    const-class v1, Lcom/unity3d/player/ReflectionHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 429
    :catch_0
    :try_start_1
    const-string v1, "Interrupted while waiting for all proxies to exit."

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 432
    sput-boolean v1, Lcom/unity3d/player/ReflectionHelper;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected static getConstructorID(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .locals 10

    .line 87
    new-instance v0, Lcom/unity3d/player/s;

    const-string v1, ""

    invoke-direct {v0, p0, v1, p1}, Lcom/unity3d/player/s;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {v0}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/s;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v0, v0, Lcom/unity3d/player/s;->e:Ljava/lang/reflect/AccessibleObject;

    check-cast v0, Ljava/lang/reflect/Constructor;

    goto :goto_2

    .line 92
    :cond_0
    invoke-static {p1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v1

    .line 95
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_3

    aget-object v7, v2, v6

    .line 97
    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v8

    cmpl-float v9, v8, v5

    if-lez v9, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v8, v4

    if-nez v4, :cond_1

    move-object v4, v7

    goto :goto_1

    :cond_1
    move-object v4, v7

    move v5, v8

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 106
    :cond_3
    :goto_1
    const-class v1, Lcom/unity3d/player/ReflectionHelper;

    monitor-enter v1

    .line 79
    :try_start_0
    iput-object v4, v0, Lcom/unity3d/player/s;->e:Ljava/lang/reflect/AccessibleObject;

    .line 80
    sget-object v2, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/s;

    .line 48
    iget v3, v0, Lcom/unity3d/player/s;->d:I

    and-int/lit16 v3, v3, 0xfff

    .line 80
    aput-object v0, v2, v3

    .line 81
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    :goto_2
    if-eqz v0, :cond_4

    return-object v0

    .line 109
    :cond_4
    new-instance v0, Ljava/lang/NoSuchMethodError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<init>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " in class "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method protected static getFieldID(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    .locals 12

    .line 187
    new-instance v0, Lcom/unity3d/player/s;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/player/s;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {v0}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/s;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v0, v0, Lcom/unity3d/player/s;->e:Ljava/lang/reflect/AccessibleObject;

    check-cast v0, Ljava/lang/reflect/Field;

    goto/16 :goto_5

    .line 192
    :cond_0
    invoke-static {p2}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-eqz p0, :cond_8

    .line 196
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    const/high16 v8, 0x3f800000    # 1.0f

    if-ge v7, v6, :cond_5

    aget-object v9, v5, v7

    .line 198
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-eq p3, v10, :cond_1

    goto :goto_2

    .line 200
    :cond_1
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    .line 202
    :cond_2
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10, v2, v1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v10

    cmpl-float v11, v10, v3

    if-lez v11, :cond_4

    cmpl-float v3, v10, v8

    move-object v4, v9

    if-nez v3, :cond_3

    move v3, v10

    goto :goto_3

    :cond_3
    move v3, v10

    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    cmpl-float v5, v3, v8

    if-nez v5, :cond_6

    goto :goto_4

    .line 214
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_8

    const-class v5, Ljava/lang/Object;

    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    .line 194
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 217
    :cond_8
    :goto_4
    const-class v1, Lcom/unity3d/player/ReflectionHelper;

    monitor-enter v1

    .line 79
    :try_start_0
    iput-object v4, v0, Lcom/unity3d/player/s;->e:Ljava/lang/reflect/AccessibleObject;

    .line 80
    sget-object v2, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/s;

    .line 48
    iget v3, v0, Lcom/unity3d/player/s;->d:I

    and-int/lit16 v3, v3, 0xfff

    .line 80
    aput-object v0, v2, v3

    .line 81
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    :goto_5
    if-nez v0, :cond_a

    .line 220
    new-instance v0, Ljava/lang/NoSuchFieldError;

    if-eqz p3, :cond_9

    const-string p3, "static"

    goto :goto_6

    :cond_9
    const-string p3, "non-static"

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " field with name=\'"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' signature=\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in class L"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-object v0

    :catchall_0
    move-exception p0

    .line 224
    monitor-exit v1

    throw p0
.end method

.method protected static getFieldSignature(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 4

    .line 229
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 232
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 233
    const-string v0, "boolean"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const-string p0, "Z"

    return-object p0

    .line 235
    :cond_0
    const-string v0, "byte"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    const-string p0, "B"

    return-object p0

    .line 237
    :cond_1
    const-string v0, "char"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    const-string p0, "C"

    return-object p0

    .line 239
    :cond_2
    const-string v0, "double"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    const-string p0, "D"

    return-object p0

    .line 241
    :cond_3
    const-string v0, "float"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    const-string p0, "F"

    return-object p0

    .line 243
    :cond_4
    const-string v0, "int"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    const-string p0, "I"

    return-object p0

    .line 245
    :cond_5
    const-string v0, "long"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 246
    const-string p0, "J"

    return-object p0

    .line 247
    :cond_6
    const-string v0, "short"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 248
    const-string p0, "S"

    :cond_7
    return-object p0

    .line 251
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    if-eqz v0, :cond_9

    .line 252
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 253
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "L"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getMethodID(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Method;
    .locals 11

    .line 130
    new-instance v0, Lcom/unity3d/player/s;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/player/s;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {v0}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/s;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v0, v0, Lcom/unity3d/player/s;->e:Ljava/lang/reflect/AccessibleObject;

    check-cast v0, Ljava/lang/reflect/Method;

    goto/16 :goto_5

    .line 135
    :cond_0
    invoke-static {p2}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz p0, :cond_8

    .line 142
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    const/high16 v7, 0x3f800000    # 1.0f

    if-ge v6, v5, :cond_5

    aget-object v8, v4, v6

    .line 144
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-eq p3, v9, :cond_1

    goto :goto_2

    .line 146
    :cond_1
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    .line 148
    :cond_2
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    invoke-static {v9, v10, v1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v9

    cmpl-float v10, v9, v3

    if-lez v10, :cond_4

    cmpl-float v2, v9, v7

    if-nez v2, :cond_3

    move-object v2, v8

    move v3, v9

    goto :goto_3

    :cond_3
    move-object v2, v8

    move v3, v9

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    cmpl-float v4, v3, v7

    if-nez v4, :cond_6

    goto :goto_4

    .line 160
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_8

    const-class v4, Ljava/lang/Object;

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    .line 139
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 163
    :cond_8
    :goto_4
    const-class v1, Lcom/unity3d/player/ReflectionHelper;

    monitor-enter v1

    .line 79
    :try_start_0
    iput-object v2, v0, Lcom/unity3d/player/s;->e:Ljava/lang/reflect/AccessibleObject;

    .line 80
    sget-object v3, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/s;

    .line 48
    iget v4, v0, Lcom/unity3d/player/s;->d:I

    and-int/lit16 v4, v4, 0xfff

    .line 80
    aput-object v0, v3, v4

    .line 81
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    :goto_5
    if-nez v0, :cond_a

    .line 166
    new-instance v0, Ljava/lang/NoSuchMethodError;

    if-eqz p3, :cond_9

    const-string p3, "static"

    goto :goto_6

    :cond_9
    const-string p3, "non-static"

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " method with name=\'"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' signature=\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in class L"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-object v0

    :catchall_0
    move-exception p0

    .line 180
    monitor-exit v1

    throw p0
.end method

.method private static native nativeProxyFinalize(J)V
.end method

.method private static native nativeProxyInvoke(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method private static native nativeProxyJNIFreeGCHandle(J)V
.end method

.method private static native nativeProxyLogJNIInvokeException(J)V
.end method

.method protected static newProxyInstance(Lcom/unity3d/player/UnityPlayer;JLjava/lang/Class;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    .line 437
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/unity3d/player/ReflectionHelper;->newProxyInstance(Lcom/unity3d/player/UnityPlayer;J[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected static newProxyInstance(Lcom/unity3d/player/UnityPlayer;J[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 443
    const-class v0, Lcom/unity3d/player/ReflectionHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lcom/unity3d/player/r;

    invoke-direct {v1, p1, p2, p0}, Lcom/unity3d/player/r;-><init>(JLcom/unity3d/player/UnityPlayer;)V

    invoke-static {v0, p3, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
