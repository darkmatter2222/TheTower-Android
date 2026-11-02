.class abstract Lads_mobile_sdk/hw3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/hw3$e;,
        Lads_mobile_sdk/hw3$c;,
        Lads_mobile_sdk/hw3$b;,
        Lads_mobile_sdk/hw3$d;
    }
.end annotation


# static fields
.field private static final a:Lsun/misc/Unsafe;

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final c:Z

.field private static final d:Z

.field private static final e:Lads_mobile_sdk/hw3$e;

.field private static final f:Z

.field private static final g:Z

.field static final h:J

.field private static final i:J

.field private static final j:J

.field private static final k:J

.field private static final l:J

.field private static final m:J

.field private static final n:J

.field private static final o:J

.field private static final p:J

.field private static final q:J

.field private static final r:J

.field private static final s:J

.field private static final t:J

.field private static final u:J

.field private static final v:I

.field static final w:Z


# direct methods
.method static bridge synthetic -$$Nest$sma()Ljava/lang/reflect/Field;
    .locals 1

    invoke-static {}, Lads_mobile_sdk/hw3;->a()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sma(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lads_mobile_sdk/hw3;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smb(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smb(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smc(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/hw3;->c(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smc(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lads_mobile_sdk/hw3;->c(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lads_mobile_sdk/hw3;->c()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/hw3;->a:Lsun/misc/Unsafe;

    .line 2
    invoke-static {}, Lads_mobile_sdk/gi;->a()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/hw3;->b:Ljava/lang/Class;

    .line 3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lads_mobile_sdk/hw3;->d(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lads_mobile_sdk/hw3;->c:Z

    .line 4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lads_mobile_sdk/hw3;->d(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lads_mobile_sdk/hw3;->d:Z

    .line 5
    invoke-static {}, Lads_mobile_sdk/hw3;->b()Lads_mobile_sdk/hw3$e;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    .line 7
    invoke-static {}, Lads_mobile_sdk/hw3;->e()Z

    move-result v0

    sput-boolean v0, Lads_mobile_sdk/hw3;->f:Z

    .line 8
    invoke-static {}, Lads_mobile_sdk/hw3;->d()Z

    move-result v0

    sput-boolean v0, Lads_mobile_sdk/hw3;->g:Z

    .line 10
    const-class v0, [B

    invoke-static {v0}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lads_mobile_sdk/hw3;->h:J

    .line 14
    const-class v2, [Z

    invoke-static {v2}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lads_mobile_sdk/hw3;->i:J

    .line 15
    invoke-static {v2}, Lads_mobile_sdk/hw3;->c(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lads_mobile_sdk/hw3;->j:J

    .line 17
    const-class v2, [I

    invoke-static {v2}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lads_mobile_sdk/hw3;->k:J

    .line 18
    invoke-static {v2}, Lads_mobile_sdk/hw3;->c(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lads_mobile_sdk/hw3;->l:J

    .line 20
    const-class v2, [J

    invoke-static {v2}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lads_mobile_sdk/hw3;->m:J

    .line 21
    invoke-static {v2}, Lads_mobile_sdk/hw3;->c(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lads_mobile_sdk/hw3;->n:J

    .line 23
    const-class v2, [F

    invoke-static {v2}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lads_mobile_sdk/hw3;->o:J

    .line 24
    invoke-static {v2}, Lads_mobile_sdk/hw3;->c(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lads_mobile_sdk/hw3;->p:J

    .line 26
    const-class v2, [D

    invoke-static {v2}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lads_mobile_sdk/hw3;->q:J

    .line 27
    invoke-static {v2}, Lads_mobile_sdk/hw3;->c(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lads_mobile_sdk/hw3;->r:J

    .line 29
    const-class v2, [Ljava/lang/Object;

    invoke-static {v2}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lads_mobile_sdk/hw3;->s:J

    .line 30
    const-class v2, [Ljava/lang/Object;

    invoke-static {v2}, Lads_mobile_sdk/hw3;->c(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lads_mobile_sdk/hw3;->t:J

    .line 32
    invoke-static {}, Lads_mobile_sdk/hw3;->a()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lads_mobile_sdk/hw3;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lads_mobile_sdk/hw3;->u:J

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 36
    sput v0, Lads_mobile_sdk/hw3;->v:I

    .line 39
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lads_mobile_sdk/hw3;->w:Z

    return-void
.end method

.method private static a(Ljava/lang/reflect/Field;)J
    .locals 2

    if-eqz p0, :cond_1

    .line 949
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2066
    :try_start_0
    sget-object v0, Lads_mobile_sdk/hw3;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2068
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a()Ljava/lang/reflect/Field;
    .locals 3

    .line 2076
    invoke-static {}, Lads_mobile_sdk/gi;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2079
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lads_mobile_sdk/hw3;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2084
    :cond_0
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lads_mobile_sdk/hw3;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2085
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 479
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 2062
    invoke-static {p0, v0, v1}, Lads_mobile_sdk/hw3;->h(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 2065
    invoke-static {p0, v0, v1, p1}, Lads_mobile_sdk/hw3;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static a(Ljava/lang/Object;JD)V
    .locals 6

    .line 2074
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;JD)V

    return-void
.end method

.method public static a(Ljava/lang/Object;JF)V
    .locals 1

    .line 2073
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;JF)V

    return-void
.end method

.method public static a(Ljava/lang/Object;JI)V
    .locals 1

    .line 2069
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static a(Ljava/lang/Object;JJ)V
    .locals 6

    .line 2070
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static a(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 2075
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;JZ)V
    .locals 1

    .line 2072
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;JZ)V

    return-void
.end method

.method private static a(Ljava/lang/Throwable;)V
    .locals 4

    .line 2086
    const-class v0, Lads_mobile_sdk/hw3;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "platform method missing - proto runtime falling back to safer methods: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2087
    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;J)Z
    .locals 1

    .line 2071
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 3386
    sget-boolean v0, Lads_mobile_sdk/hw3;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static b()Lads_mobile_sdk/hw3$e;
    .locals 3

    .line 3387
    sget-object v0, Lads_mobile_sdk/hw3;->a:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3390
    :cond_0
    invoke-static {}, Lads_mobile_sdk/gi;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3391
    sget-boolean v2, Lads_mobile_sdk/hw3;->c:Z

    if-eqz v2, :cond_1

    .line 3392
    new-instance v1, Lads_mobile_sdk/hw3$c;

    invoke-direct {v1, v0}, Lads_mobile_sdk/hw3$c;-><init>(Lsun/misc/Unsafe;)V

    return-object v1

    .line 3393
    :cond_1
    sget-boolean v2, Lads_mobile_sdk/hw3;->d:Z

    if-eqz v2, :cond_2

    .line 3394
    new-instance v1, Lads_mobile_sdk/hw3$b;

    invoke-direct {v1, v0}, Lads_mobile_sdk/hw3$b;-><init>(Lsun/misc/Unsafe;)V

    :cond_2
    return-object v1

    .line 3400
    :cond_3
    new-instance v1, Lads_mobile_sdk/hw3$d;

    invoke-direct {v1, v0}, Lads_mobile_sdk/hw3$d;-><init>(Lsun/misc/Unsafe;)V

    return-object v1
.end method

.method private static b(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 3382
    invoke-static {p0, v0, v1}, Lads_mobile_sdk/hw3;->h(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 3385
    invoke-static {p0, v0, v1, p1}, Lads_mobile_sdk/hw3;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static b(Ljava/lang/Object;JZ)V
    .locals 0

    int-to-byte p3, p3

    .line 2262
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/hw3;->a(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static b(Ljava/lang/Object;J)Z
    .locals 0

    .line 1127
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/hw3;->d(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 2578
    sget-boolean v0, Lads_mobile_sdk/hw3;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0}, Lads_mobile_sdk/hw3$e;->b(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static c()Lsun/misc/Unsafe;
    .locals 4

    const/4 v0, 0x0

    .line 1399
    :try_start_0
    new-instance v1, Lads_mobile_sdk/hw3$a;

    invoke-direct {v1}, Lads_mobile_sdk/hw3$a;-><init>()V

    .line 1400
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    .line 1434
    :cond_0
    :try_start_1
    const-class v2, [B

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 1437
    :catch_0
    const-class v1, Lads_mobile_sdk/hw3;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 1438
    const-string v3, "As part of the planned removal, sun.misc.Unsafe is available in the current environment but configured to throw on use. Protobuf will continue without using it, but with slightly reduced performance. --sun-misc-unsafe-memory-access=allow is likely available to opt back in if desired. A later Protobuf version release will stop using sun.misc.Unsafe entirely."

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Ljava/lang/Object;JZ)V
    .locals 0

    int-to-byte p3, p3

    .line 2577
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static c(Ljava/lang/Object;J)Z
    .locals 0

    .line 1131
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/hw3;->e(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static d(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 1105
    invoke-static {p0, v0, v1}, Lads_mobile_sdk/hw3;->h(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method private static d()Z
    .locals 1

    .line 1106
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1109
    :cond_0
    invoke-virtual {v0}, Lads_mobile_sdk/hw3$e;->a()Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/Class;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1110
    const-class v0, [B

    invoke-static {}, Lads_mobile_sdk/gi;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1114
    :cond_0
    :try_start_0
    sget-object v1, Lads_mobile_sdk/hw3;->b:Ljava/lang/Class;

    .line 1115
    const-string v3, "peekLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1116
    const-string v3, "pokeLong"

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Class;

    aput-object p0, v8, v2

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    aput-object v6, v8, v4

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1117
    const-string v3, "pokeInt"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object p0, v8, v2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    aput-object v6, v8, v4

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1118
    const-string v3, "peekInt"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v6, v8, v7

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1119
    const-string v3, "pokeByte"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1120
    const-string v3, "peekByte"

    new-array v6, v7, [Ljava/lang/Class;

    aput-object p0, v6, v2

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1121
    const-string v3, "pokeByteArray"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v0, v8, v7

    aput-object v9, v8, v4

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1122
    const-string v3, "peekByteArray"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v2

    aput-object v0, v6, v7

    aput-object v9, v6, v4

    aput-object v9, v6, v5

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    :catchall_0
    return v2
.end method

.method private static e(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 1109
    invoke-static {p0, v0, v1}, Lads_mobile_sdk/hw3;->h(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method private static e()Z
    .locals 1

    .line 1110
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1113
    :cond_0
    invoke-virtual {v0}, Lads_mobile_sdk/hw3$e;->b()Z

    move-result v0

    return v0
.end method

.method public static f(Ljava/lang/Object;J)D
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2}, Lads_mobile_sdk/hw3$e;->b(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static g(Ljava/lang/Object;J)F
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2}, Lads_mobile_sdk/hw3$e;->c(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/Object;J)I
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2}, Lads_mobile_sdk/hw3$e;->d(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/Object;J)J
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2}, Lads_mobile_sdk/hw3$e;->e(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static j(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2}, Lads_mobile_sdk/hw3$e;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
