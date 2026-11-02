.class final Lcom/unity3d/coherence/Coherence;
.super Ljava/lang/Object;
.source "Coherence.java"


# static fields
.field private static final BLOB_SUBDIR:Ljava/lang/String; = "unity_coherence_blobs"

.field private static final BLOB_TIER_CACHE:I = 0x0

.field private static final BLOB_TIER_DURABLE:I = 0x1

.field static final MAX_EXPR_BYTES:I = 0x1000

.field static final MAX_LETS:I = 0x10

.field static final MAX_LISTING_BYTES:I = 0x8000

.field static final MAX_PATH_SEGMENTS:I = 0x20

.field private static final SETTINGS_GETTERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SETTINGS_ROOTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sGpuModel:Ljava/lang/String;


# instance fields
.field private final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field private volatile batteryIntent:Landroid/content/Intent;

.field private final blobLock:Ljava/lang/Object;

.field private final context:Landroid/content/Context;

.field private final installerPackage:Ljava/lang/String;

.field private final packageInfo:Landroid/content/pm/PackageInfo;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static bridge synthetic -$$Nest$fputbatteryIntent(Lcom/unity3d/coherence/Coherence;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/coherence/Coherence;->batteryIntent:Landroid/content/Intent;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1106
    const-string v1, "android.provider.Settings$Global"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1107
    const-string v1, "android.provider.Settings$Secure"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1108
    const-string v1, "android.provider.Settings$System"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1109
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/unity3d/coherence/Coherence;->SETTINGS_ROOTS:Ljava/util/Set;

    .line 1114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x4

    .line 1115
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "getInt"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "getString"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "getFloat"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "getLong"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1116
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/unity3d/coherence/Coherence;->SETTINGS_GETTERS:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 6

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unity3d/coherence/Coherence;->blobLock:Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/unity3d/coherence/Coherence;->prefs:Landroid/content/SharedPreferences;

    const/4 p2, 0x0

    .line 105
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    :try_start_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_0

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 113
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-object v2, p2

    goto :goto_0

    :catch_1
    move-object v2, p2

    move-object v3, v2

    :catch_2
    :cond_1
    :goto_0
    move-object v0, p2

    .line 116
    :goto_1
    iput-object v3, p0, Lcom/unity3d/coherence/Coherence;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 117
    iput-object v2, p0, Lcom/unity3d/coherence/Coherence;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 118
    iput-object v0, p0, Lcom/unity3d/coherence/Coherence;->installerPackage:Ljava/lang/String;

    .line 125
    :try_start_3
    new-instance v0, Lcom/unity3d/coherence/Coherence$1;

    invoke-direct {v0, p0}, Lcom/unity3d/coherence/Coherence$1;-><init>(Lcom/unity3d/coherence/Coherence;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 131
    :catch_3
    iput-object p2, p0, Lcom/unity3d/coherence/Coherence;->batteryIntent:Landroid/content/Intent;

    return-void
.end method

.method private static appendVarint(Ljava/io/ByteArrayOutputStream;J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x7f

    if-eqz v0, :cond_0

    and-long v0, p1, v1

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    long-to-int v0, v0

    .line 730
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    and-long/2addr p1, v1

    long-to-int p1, p1

    .line 733
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method private static assignabilityScore(Ljava/lang/Class;Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_1

    .line 1543
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 1545
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    const/16 v2, 0x3c

    const/16 v3, 0x28

    const/16 v4, 0x64

    if-eqz v1, :cond_5

    .line 1546
    const-class p1, Ljava/lang/String;

    if-ne p0, p1, :cond_2

    return v4

    .line 1547
    :cond_2
    const-class p1, Ljava/lang/CharSequence;

    if-ne p0, p1, :cond_3

    return v2

    .line 1548
    :cond_3
    const-class p1, Ljava/lang/Object;

    if-ne p0, p1, :cond_4

    return v3

    :cond_4
    return v0

    .line 1551
    :cond_5
    instance-of v1, p1, Ljava/lang/Long;

    const/16 v5, 0x32

    if-eqz v1, :cond_17

    .line 1552
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1553
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_16

    const-class p1, Ljava/lang/Long;

    if-ne p0, p1, :cond_6

    goto/16 :goto_5

    .line 1554
    :cond_6
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_14

    const-class p1, Ljava/lang/Integer;

    if-ne p0, p1, :cond_7

    goto :goto_4

    .line 1557
    :cond_7
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_12

    const-class p1, Ljava/lang/Short;

    if-ne p0, p1, :cond_8

    goto :goto_3

    .line 1560
    :cond_8
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_10

    const-class p1, Ljava/lang/Byte;

    if-ne p0, p1, :cond_9

    goto :goto_2

    .line 1563
    :cond_9
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_f

    const-class p1, Ljava/lang/Double;

    if-ne p0, p1, :cond_a

    goto :goto_1

    .line 1564
    :cond_a
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_e

    const-class p1, Ljava/lang/Float;

    if-ne p0, p1, :cond_b

    goto :goto_0

    .line 1565
    :cond_b
    const-class p1, Ljava/lang/Number;

    if-ne p0, p1, :cond_c

    return v5

    .line 1566
    :cond_c
    const-class p1, Ljava/lang/Object;

    if-ne p0, p1, :cond_d

    return v3

    :cond_d
    return v0

    :cond_e
    :goto_0
    const/16 p0, 0x37

    return p0

    :cond_f
    :goto_1
    return v2

    :cond_10
    :goto_2
    const-wide/16 p0, -0x80

    cmp-long p0, v6, p0

    if-ltz p0, :cond_11

    const-wide/16 p0, 0x7f

    cmp-long p0, v6, p0

    if-gtz p0, :cond_11

    const/16 p0, 0x46

    return p0

    :cond_11
    return v0

    :cond_12
    :goto_3
    const-wide/16 p0, -0x8000

    cmp-long p0, v6, p0

    if-ltz p0, :cond_13

    const-wide/16 p0, 0x7fff

    cmp-long p0, v6, p0

    if-gtz p0, :cond_13

    const/16 p0, 0x50

    return p0

    :cond_13
    return v0

    :cond_14
    :goto_4
    const-wide/32 p0, -0x80000000

    cmp-long p0, v6, p0

    if-ltz p0, :cond_15

    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v6, p0

    if-gtz p0, :cond_15

    const/16 p0, 0x5a

    return p0

    :cond_15
    return v0

    :cond_16
    :goto_5
    return v4

    .line 1569
    :cond_17
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1b

    .line 1570
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_1a

    const-class p1, Ljava/lang/Boolean;

    if-ne p0, p1, :cond_18

    goto :goto_6

    .line 1571
    :cond_18
    const-class p1, Ljava/lang/Object;

    if-ne p0, p1, :cond_19

    return v3

    :cond_19
    return v0

    :cond_1a
    :goto_6
    return v4

    .line 1574
    :cond_1b
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1575
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_1c

    return v4

    :cond_1c
    return v5

    :cond_1d
    return v0
.end method

.method private static atomicReplace(Ljava/io/File;Ljava/io/File;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 940
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v4, v0

    sget-object v5, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v4, v1

    .line 939
    invoke-static {v2, v3, v4}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 949
    :catch_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 953
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 954
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method private blobBaseDir(I)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return-object v0

    .line 854
    :cond_0
    iget-object p1, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 853
    :cond_1
    iget-object p1, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    .line 858
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "unity_coherence_blobs"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 862
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    return-object v1
.end method

.method private blobFile(ILjava/lang/String;)Ljava/io/File;
    .locals 1

    .line 882
    invoke-direct {p0, p1}, Lcom/unity3d/coherence/Coherence;->blobBaseDir(I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 883
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 884
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/unity3d/coherence/Coherence;->blobFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static blobFilenameForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 868
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 869
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 871
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    const-string v4, "%02x"

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 872
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 877
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SHA-256 unavailable"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static coerceArgs([Ljava/lang/Class;Ljava/util/List;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1581
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1582
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_d

    .line 1583
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1584
    aget-object v3, p0, v1

    if-nez v2, :cond_1

    .line 1586
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 1587
    :cond_0
    aput-object v3, v0, v1

    goto/16 :goto_6

    .line 1590
    :cond_1
    instance-of v4, v2, Ljava/lang/Long;

    if-eqz v4, :cond_c

    .line 1591
    move-object v4, v2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1592
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v3, v6, :cond_b

    const-class v6, Ljava/lang/Integer;

    if-ne v3, v6, :cond_2

    goto :goto_5

    .line 1593
    :cond_2
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v3, v6, :cond_a

    const-class v6, Ljava/lang/Short;

    if-ne v3, v6, :cond_3

    goto :goto_4

    .line 1594
    :cond_3
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v3, v6, :cond_9

    const-class v6, Ljava/lang/Byte;

    if-ne v3, v6, :cond_4

    goto :goto_3

    .line 1595
    :cond_4
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v3, v6, :cond_8

    const-class v6, Ljava/lang/Float;

    if-ne v3, v6, :cond_5

    goto :goto_2

    .line 1596
    :cond_5
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v3, v6, :cond_7

    const-class v6, Ljava/lang/Double;

    if-ne v3, v6, :cond_6

    goto :goto_1

    .line 1597
    :cond_6
    aput-object v2, v0, v1

    goto :goto_6

    :cond_7
    :goto_1
    long-to-double v2, v4

    .line 1596
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_6

    :cond_8
    :goto_2
    long-to-float v2, v4

    .line 1595
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_6

    :cond_9
    :goto_3
    long-to-int v2, v4

    int-to-byte v2, v2

    .line 1594
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_6

    :cond_a
    :goto_4
    long-to-int v2, v4

    int-to-short v2, v2

    .line 1593
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_6

    :cond_b
    :goto_5
    long-to-int v2, v4

    .line 1592
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_6

    .line 1599
    :cond_c
    aput-object v2, v0, v1

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    return-object v0
.end method

.method private dispatchSegment(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/16 v0, 0x28

    .line 1190
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1192
    invoke-static {p1, p2}, Lcom/unity3d/coherence/Coherence;->resolveFieldOrZeroArgMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 1194
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1195
    invoke-static {p2}, Lcom/unity3d/coherence/Coherence;->extractStringArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1197
    :cond_1
    invoke-direct {p0, p1, v0, p2}, Lcom/unity3d/coherence/Coherence;->resolveMethodWithStringArg(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private dispatchSegmentV2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/16 v0, 0x28

    .line 1431
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1433
    invoke-static {p1, p2}, Lcom/unity3d/coherence/Coherence;->resolveFieldOrZeroArgMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 1435
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    .line 1436
    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ge v2, v0, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1438
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1439
    invoke-direct {p0, p2, p3}, Lcom/unity3d/coherence/Coherence;->parseAndEvalArgs(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_2

    return-object v3

    .line 1441
    :cond_2
    invoke-direct {p0, p1, v1, p2}, Lcom/unity3d/coherence/Coherence;->resolveMethodWithArgs(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static encodeRepeatedInt32(ILjava/util/List;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .line 756
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 757
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 758
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 759
    invoke-static {v0, v2, v3}, Lcom/unity3d/coherence/Coherence;->appendVarint(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_0

    .line 761
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 762
    array-length v0, p1

    if-nez v0, :cond_2

    return-object v1

    .line 763
    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    int-to-long v1, p0

    const/4 p0, 0x3

    shl-long/2addr v1, p0

    const-wide/16 v3, 0x2

    or-long/2addr v1, v3

    .line 764
    invoke-static {v0, v1, v2}, Lcom/unity3d/coherence/Coherence;->appendVarint(Ljava/io/ByteArrayOutputStream;J)V

    .line 765
    array-length p0, p1

    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/unity3d/coherence/Coherence;->appendVarint(Ljava/io/ByteArrayOutputStream;J)V

    const/4 p0, 0x0

    .line 766
    array-length v1, p1

    invoke-virtual {v0, p1, p0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 767
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static encodeRepeatedString(ILjava/util/List;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 739
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    int-to-long v2, p0

    const/4 p0, 0x3

    shl-long/2addr v2, p0

    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    .line 741
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 742
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 743
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 744
    invoke-static {p0, v2, v3}, Lcom/unity3d/coherence/Coherence;->appendVarint(Ljava/io/ByteArrayOutputStream;J)V

    .line 745
    array-length v4, v0

    int-to-long v4, v4

    invoke-static {p0, v4, v5}, Lcom/unity3d/coherence/Coherence;->appendVarint(Ljava/io/ByteArrayOutputStream;J)V

    const/4 v4, 0x0

    .line 746
    array-length v5, v0

    invoke-virtual {p0, v0, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 748
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 749
    array-length p1, p0

    if-lez p1, :cond_2

    return-object p0

    :cond_2
    return-object v1
.end method

.method private evalSingleArgInside(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/16 v0, 0x28

    .line 1449
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x29

    .line 1450
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1452
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/unity3d/coherence/Coherence;->evaluateExpr(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private evaluateExpr(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1352
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1353
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 1357
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_2

    .line 1358
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    .line 1359
    invoke-static {p1}, Lcom/unity3d/coherence/Coherence;->parseStringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1361
    :cond_2
    const-string v1, "true"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 1362
    :cond_3
    const-string v1, "false"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 1363
    :cond_4
    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    .line 1364
    :cond_5
    invoke-static {p1}, Lcom/unity3d/coherence/Coherence;->looksLikeInt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1365
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0

    .line 1370
    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x29

    if-ne v1, v5, :cond_7

    .line 1371
    invoke-static {p1}, Lcom/unity3d/coherence/Coherence;->isBalancedOuterParen(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1372
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/unity3d/coherence/Coherence;->evaluateExpr(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1375
    :cond_7
    invoke-static {p1}, Lcom/unity3d/coherence/Coherence;->tokenize(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1376
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v5, 0x20

    if-le v1, v5, :cond_8

    goto/16 :goto_4

    .line 1380
    :cond_8
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1385
    invoke-static {v1}, Lcom/unity3d/coherence/Coherence;->isValidIdent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1386
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    .line 1388
    :cond_9
    const-string v5, "context"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1389
    iget-object v1, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    goto :goto_3

    .line 1391
    :cond_a
    const-string v5, "stickyIntent("

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1392
    invoke-direct {p0, v1, p2}, Lcom/unity3d/coherence/Coherence;->evalSingleArgInside(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    .line 1393
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_b

    return-object v0

    .line 1395
    :cond_b
    :try_start_1
    iget-object v2, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_f

    :catchall_0
    return-object v0

    .line 1406
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v5, -0x1

    if-lt v1, v4, :cond_e

    add-int/lit8 v6, v1, -0x1

    .line 1407
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v5, :cond_d

    goto :goto_1

    .line 1408
    :cond_d
    invoke-static {p1, v3, v1}, Lcom/unity3d/coherence/Coherence;->join(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v5

    .line 1410
    :try_start_2
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move v4, v1

    move-object v1, v2

    goto :goto_2

    :catch_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_e
    move-object v1, v0

    move v4, v5

    :goto_2
    if-nez v1, :cond_f

    return-object v0

    .line 1422
    :cond_f
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_11

    if-nez v1, :cond_10

    return-object v0

    .line 1424
    :cond_10
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p2}, Lcom/unity3d/coherence/Coherence;->dispatchSegmentV2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_11
    return-object v1

    :cond_12
    :goto_4
    return-object v0
.end method

.method static extractStringArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x28

    .line 1723
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x29

    .line 1724
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    if-eq v1, v3, :cond_5

    if-ge v1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 1726
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1727
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1728
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 1729
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 1731
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1732
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x5c

    if-ne v2, v4, :cond_3

    add-int/lit8 v5, v1, 0x1

    .line 1733
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1734
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x22

    if-eq v6, v7, :cond_2

    if-ne v6, v4, :cond_3

    .line 1736
    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v5

    goto :goto_1

    .line 1741
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/2addr v1, v3

    goto :goto_0

    .line 1743
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    return-object v2
.end method

.method private httpExecute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/unity3d/coherence/HttpResult;
    .locals 6

    const/4 v0, 0x0

    .line 789
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 790
    :try_start_1
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 p1, 0x7530

    .line 791
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 792
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 795
    const-string v1, "\r\n"

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length v1, p3

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    const/16 v4, 0x3a

    .line 796
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_0

    .line 798
    invoke-virtual {v3, p1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 799
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 800
    invoke-virtual {p2, v5, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_3

    .line 805
    array-length p3, p4

    if-lez p3, :cond_3

    const/4 p3, 0x1

    .line 806
    invoke-virtual {p2, p3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 807
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 808
    :try_start_2
    invoke-virtual {p3, p4}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p3, :cond_3

    .line 809
    :try_start_3
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_2

    .line 807
    :try_start_4
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p3

    :try_start_5
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1

    .line 812
    :cond_3
    :goto_2
    new-instance p3, Lcom/unity3d/coherence/HttpResult;

    invoke-direct {p3}, Lcom/unity3d/coherence/HttpResult;-><init>()V

    .line 813
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p4

    iput p4, p3, Lcom/unity3d/coherence/HttpResult;->status:I

    .line 815
    iget p4, p3, Lcom/unity3d/coherence/HttpResult;->status:I

    const/16 v1, 0x190

    if-lt p4, v1, :cond_4

    .line 816
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :goto_3
    if-eqz p4, :cond_6

    .line 818
    :try_start_6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/16 v2, 0x1000

    .line 819
    :try_start_7
    new-array v2, v2, [B

    .line 821
    :goto_4
    invoke-virtual {p4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 822
    invoke-virtual {v1, v2, p1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .line 824
    :cond_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p3, Lcom/unity3d/coherence/HttpResult;->body:[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 825
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 826
    :try_start_9
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_2
    move-exception p1

    .line 818
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p3

    :try_start_b
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception p1

    .line 826
    :try_start_c
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V

    .line 827
    throw p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_6
    :goto_6
    if-eqz p2, :cond_7

    .line 833
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-object p3

    :catchall_5
    move-exception p1

    move-object v0, p2

    goto :goto_7

    :catchall_6
    move-exception p1

    :goto_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 834
    :cond_8
    throw p1

    :catch_0
    move-object p2, v0

    :catch_1
    if-eqz p2, :cond_9

    .line 833
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    return-object v0
.end method

.method private static invokeBestOverload(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1507
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    move-object v5, v1

    move v4, v3

    move v6, v4

    :goto_0
    if-ge v4, v0, :cond_5

    aget-object v7, p0, v4

    .line 1508
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    .line 1509
    :cond_0
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 1510
    array-length v9, v8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    if-eq v9, v10, :cond_1

    goto :goto_1

    .line 1511
    :cond_1
    invoke-static {v8, p2}, Lcom/unity3d/coherence/Coherence;->matchSpecificity([Ljava/lang/Class;Ljava/util/List;)I

    move-result v8

    if-gez v8, :cond_2

    goto :goto_1

    :cond_2
    if-le v8, v2, :cond_3

    move v6, v3

    move-object v5, v7

    move v2, v8

    goto :goto_1

    :cond_3
    if-ne v8, v2, :cond_4

    const/4 v6, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_8

    if-eqz v6, :cond_6

    goto :goto_2

    .line 1523
    :cond_6
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/unity3d/coherence/Coherence;->coerceArgs([Ljava/lang/Class;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_7

    return-object v1

    .line 1525
    :cond_7
    invoke-virtual {v5, p3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_8
    :goto_2
    return-object v1
.end method

.method private static isBalancedOuterParen(Ljava/lang/String;)Z
    .locals 9

    .line 1698
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    move v1, v0

    move v3, v1

    move v4, v3

    .line 1702
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v0, v5, :cond_7

    .line 1703
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    const/16 v7, 0x22

    if-eqz v4, :cond_3

    const/16 v8, 0x5c

    if-ne v5, v8, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    if-ne v5, v7, :cond_6

    move v4, v2

    goto :goto_1

    :cond_3
    if-ne v5, v7, :cond_4

    move v4, v6

    goto :goto_1

    :cond_4
    const/16 v7, 0x28

    if-ne v5, v7, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/16 v7, 0x29

    if-ne v5, v7, :cond_6

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_6

    .line 1714
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    if-ge v0, v5, :cond_6

    return v2

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    if-nez v1, :cond_8

    return v6

    :cond_8
    return v2
.end method

.method private static isValidIdent(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1651
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1652
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1653
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    const/16 v3, 0x5f

    if-nez v2, :cond_1

    if-eq v1, v3, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    move v2, v1

    .line 1654
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1655
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1656
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    if-eq v4, v3, :cond_2

    const/16 v5, 0x24

    if-eq v4, v5, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method private static join(Ljava/util/List;II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_1

    if-le v1, p1, :cond_0

    const/16 v2, 0x2e

    .line 1749
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1750
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1752
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static looksLikeInt(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 1662
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 1663
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v0

    .line 1664
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_2

    return v0

    .line 1665
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1666
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v3

    :cond_5
    :goto_2
    return v0
.end method

.method private static matchSpecificity([Ljava/lang/Class;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1533
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1534
    aget-object v2, p0, v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unity3d/coherence/Coherence;->assignabilityScore(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static methodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 4

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1091
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1092
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 1093
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_0

    const/16 v3, 0x2c

    .line 1094
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1095
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1097
    :cond_1
    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseAndEvalArgs(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1457
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1458
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x2c

    const/4 v1, 0x0

    .line 1459
    invoke-static {v0, p1, v1}, Lcom/unity3d/coherence/Coherence;->splitOnTopLevel(CLjava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    .line 1460
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1461
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1462
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1464
    invoke-static {v2}, Lcom/unity3d/coherence/Coherence;->topLevelLabelColonIdx(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    .line 1466
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1467
    invoke-static {v4}, Lcom/unity3d/coherence/Coherence;->isValidIdent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 1468
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1471
    :cond_1
    invoke-direct {p0, v2, p2}, Lcom/unity3d/coherence/Coherence;->evaluateExpr(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static parseStringLiteral(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1674
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    .line 1676
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_6

    add-int/lit8 v6, v3, 0x1

    if-ge v6, v1, :cond_6

    .line 1678
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x22

    if-eq v7, v8, :cond_5

    const/16 v8, 0x30

    if-eq v7, v8, :cond_4

    if-eq v7, v5, :cond_3

    const/16 v5, 0x6e

    if-eq v7, v5, :cond_2

    const/16 v5, 0x72

    if-eq v7, v5, :cond_1

    const/16 v5, 0x74

    if-eq v7, v5, :cond_0

    goto :goto_2

    :cond_0
    const/16 v3, 0x9

    .line 1683
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v3, 0xd

    .line 1684
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v3, 0xa

    .line 1682
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1681
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 1685
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1680
    :cond_5
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move v3, v6

    goto :goto_3

    .line 1689
    :cond_6
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/2addr v3, v2

    goto :goto_0

    .line 1691
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static queryGlRenderer()Ljava/lang/String;
    .locals 17

    .line 670
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    .line 671
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v2

    const/16 v0, 0x3059

    .line 672
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v3

    const/16 v0, 0x305a

    .line 673
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v4

    const/4 v0, 0x0

    .line 675
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v5

    .line 676
    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    const-string v13, ""

    if-ne v5, v6, :cond_0

    return-object v13

    :cond_0
    const/4 v14, 0x2

    .line 677
    new-array v6, v14, [I

    const/4 v15, 0x1

    .line 678
    invoke-static {v5, v6, v0, v6, v15}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v6

    if-nez v6, :cond_1

    return-object v13

    :cond_1
    const/16 v6, 0x3038

    const/16 v7, 0x3040

    const/4 v8, 0x4

    const/16 v9, 0x3033

    .line 680
    :try_start_0
    filled-new-array {v7, v8, v9, v15, v6}, [I

    move-result-object v7

    .line 685
    new-array v8, v15, [Landroid/opengl/EGLConfig;

    .line 686
    new-array v11, v15, [I

    const/4 v10, 0x1

    const/4 v12, 0x0

    move v9, v6

    move-object v6, v7

    const/4 v7, 0x0

    move/from16 v16, v9

    const/4 v9, 0x0

    move/from16 v15, v16

    .line 687
    invoke-static/range {v5 .. v12}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v6

    if-eqz v6, :cond_8

    aget v6, v11, v0

    if-nez v6, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v6, 0x3098

    .line 690
    filled-new-array {v6, v14, v15}, [I

    move-result-object v6

    .line 693
    aget-object v7, v8, v0

    sget-object v9, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v5, v7, v9, v6, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v6

    .line 695
    sget-object v7, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ne v6, v7, :cond_3

    .line 722
    invoke-static {v5}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    return-object v13

    :cond_3
    const/16 v7, 0x3057

    const/16 v9, 0x3056

    const/4 v10, 0x1

    .line 697
    :try_start_1
    filled-new-array {v7, v10, v9, v10, v15}, [I

    move-result-object v7

    .line 700
    aget-object v8, v8, v0

    invoke-static {v5, v8, v7, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v7

    .line 702
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v7, v0, :cond_4

    .line 719
    :try_start_2
    invoke-static {v5, v6}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 722
    invoke-static {v5}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    return-object v13

    .line 704
    :cond_4
    :try_start_3
    invoke-static {v5, v7, v7, v6}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    const/16 v0, 0x1f01

    .line 705
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_5

    move-object v13, v0

    .line 708
    :cond_5
    :try_start_4
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v1, v0, :cond_6

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v2, v0, :cond_6

    .line 710
    invoke-static {v2, v3, v4, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    goto :goto_0

    .line 712
    :cond_6
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v5, v0, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 716
    :goto_0
    invoke-static {v5, v7}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 719
    :try_start_5
    invoke-static {v5, v6}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 722
    invoke-static {v5}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    return-object v13

    :catchall_0
    move-exception v0

    .line 708
    :try_start_6
    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v1, v8, :cond_7

    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v2, v8, :cond_7

    .line 710
    invoke-static {v2, v3, v4, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    goto :goto_1

    .line 712
    :cond_7
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v5, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 716
    :goto_1
    invoke-static {v5, v7}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 717
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    .line 719
    :try_start_7
    invoke-static {v5, v6}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 720
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 722
    :cond_8
    :goto_2
    invoke-static {v5}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    return-object v13

    :catchall_2
    move-exception v0

    invoke-static {v5}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 723
    throw v0
.end method

.method private static resolveFieldOrZeroArgMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1201
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object p0, v2

    .line 1205
    :cond_1
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1206
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v2

    :catch_1
    const/4 v0, 0x0

    .line 1213
    :try_start_1
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1214
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    :catch_2
    return-object v2
.end method

.method private resolveMethodWithArgs(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1478
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object p1, v2

    :cond_1
    if-nez p1, :cond_3

    .line 1484
    sget-object v0, Lcom/unity3d/coherence/Coherence;->SETTINGS_ROOTS:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/unity3d/coherence/Coherence;->SETTINGS_GETTERS:Ljava/util/Set;

    .line 1485
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1486
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 1487
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/ContentResolver;

    if-nez v0, :cond_3

    .line 1488
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1489
    iget-object v3, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1490
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1491
    invoke-static {v1, p2, v0, v2}, Lcom/unity3d/coherence/Coherence;->invokeBestOverload(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 1498
    :cond_3
    invoke-static {v1, p2, p3, p1}, Lcom/unity3d/coherence/Coherence;->invokeBestOverload(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private resolveMethodWithStringArg(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 1223
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object p1, v2

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_2

    .line 1228
    sget-object v4, Lcom/unity3d/coherence/Coherence;->SETTINGS_ROOTS:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/unity3d/coherence/Coherence;->SETTINGS_GETTERS:Ljava/util/Set;

    .line 1229
    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p1, 0x2

    .line 1231
    :try_start_0
    new-array p1, p1, [Ljava/lang/Class;

    const-class v4, Landroid/content/ContentResolver;

    aput-object v4, p1, v0

    const-class v0, Ljava/lang/String;

    aput-object v0, p1, v3

    invoke-virtual {v1, p2, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1232
    iget-object p2, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v2

    .line 1241
    :cond_2
    :try_start_1
    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {v1, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 1242
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    return-object v2
.end method

.method static splitOnTopLevel(CLjava/lang/String;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    .line 1269
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_b

    .line 1270
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eqz v4, :cond_0

    .line 1272
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v2

    goto :goto_2

    :cond_0
    const/16 v8, 0x22

    const/4 v9, 0x1

    if-eqz v5, :cond_3

    const/16 v10, 0x5c

    if-ne v7, v10, :cond_1

    move v4, v9

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_2

    move v5, v2

    .line 1282
    :cond_2
    :goto_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-ne v7, v8, :cond_4

    .line 1287
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v9

    goto :goto_2

    :cond_4
    const/16 v8, 0x28

    if-ne v7, v8, :cond_5

    add-int/lit8 v6, v6, 0x1

    .line 1292
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const/16 v8, 0x29

    if-ne v7, v8, :cond_7

    if-lez v6, :cond_6

    add-int/lit8 v6, v6, -0x1

    .line 1297
    :cond_6
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    if-ne v7, p0, :cond_a

    if-nez v6, :cond_a

    if-nez p2, :cond_8

    .line 1301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_9

    .line 1302
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1304
    :cond_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 1307
    :cond_a
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_b
    if-nez p2, :cond_d

    .line 1309
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_c

    goto :goto_3

    :cond_c
    return-object v0

    :cond_d
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static tokenize(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2e

    const/4 v1, 0x0

    .line 1253
    invoke-static {v0, p0, v1}, Lcom/unity3d/coherence/Coherence;->splitOnTopLevel(CLjava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static topLevelEqualsIdx(Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 1609
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 1610
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    const/16 v6, 0x22

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    const/16 v8, 0x5c

    if-ne v5, v8, :cond_1

    move v2, v7

    goto :goto_1

    :cond_1
    if-ne v5, v6, :cond_6

    move v3, v0

    goto :goto_1

    :cond_2
    if-ne v5, v6, :cond_3

    move v3, v7

    goto :goto_1

    :cond_3
    const/16 v6, 0x28

    if-ne v5, v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/16 v6, 0x29

    if-ne v5, v6, :cond_5

    if-lez v4, :cond_6

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_5
    const/16 v6, 0x3d

    if-ne v5, v6, :cond_6

    if-nez v4, :cond_6

    return v1

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    const/4 p0, -0x1

    return p0
.end method

.method private static topLevelLabelColonIdx(Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 1629
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, -0x1

    if-ge v1, v5, :cond_9

    .line 1630
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    const/16 v7, 0x22

    const/4 v8, 0x1

    if-eqz v3, :cond_2

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    if-ne v5, v7, :cond_8

    move v3, v0

    goto :goto_1

    :cond_2
    if-ne v5, v7, :cond_3

    move v3, v8

    goto :goto_1

    :cond_3
    const/16 v7, 0x28

    if-ne v5, v7, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/16 v7, 0x29

    if-ne v5, v7, :cond_5

    if-lez v4, :cond_8

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_5
    if-nez v4, :cond_8

    const/16 v7, 0x3a

    if-ne v5, v7, :cond_6

    return v1

    :cond_6
    const/16 v7, 0x2e

    if-eq v5, v7, :cond_7

    const/16 v7, 0x2c

    if-ne v5, v7, :cond_8

    :cond_7
    return v6

    :cond_8
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    return v6
.end method


# virtual methods
.method blobDelete(ILjava/lang/String;)Z
    .locals 1

    .line 960
    invoke-direct {p0, p1, p2}, Lcom/unity3d/coherence/Coherence;->blobFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 967
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    return v0

    .line 968
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method blobGet(ILjava/lang/String;)[B
    .locals 5

    .line 888
    invoke-direct {p0, p1, p2}, Lcom/unity3d/coherence/Coherence;->blobFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 889
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 890
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/32 v3, 0x7fffffff

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    .line 896
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p2

    :cond_1
    long-to-int p1, v1

    .line 893
    :try_start_3
    new-array p1, p1, [B

    .line 894
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 896
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 890
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-object p2
.end method

.method blobSet(ILjava/lang/String;[B)Z
    .locals 4

    .line 902
    invoke-direct {p0, p1, p2}, Lcom/unity3d/coherence/Coherence;->blobFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    if-nez p3, :cond_1

    .line 904
    new-array p3, p2, [B

    .line 907
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 908
    iget-object v1, p0, Lcom/unity3d/coherence/Coherence;->blobLock:Ljava/lang/Object;

    monitor-enter v1

    .line 909
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 910
    :try_start_1
    array-length v3, p3

    if-lez v3, :cond_2

    invoke-virtual {v2, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 911
    :cond_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 912
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 916
    :try_start_3
    invoke-static {v0, p1}, Lcom/unity3d/coherence/Coherence;->atomicReplace(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 917
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 918
    monitor-exit v1

    return p2

    :cond_3
    const/4 p1, 0x1

    .line 920
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return p1

    :catchall_0
    move-exception p1

    .line 909
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p3

    :try_start_5
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_1

    .line 913
    :catch_0
    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 914
    monitor-exit v1

    return p2

    .line 921
    :goto_1
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method evaluateJvmExpression(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 1322
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 1323
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1000

    if-le v1, v2, :cond_1

    return-object v0

    :cond_1
    const/16 v1, 0x3b

    const/4 v2, 0x1

    .line 1325
    :try_start_0
    invoke-static {v1, p1, v2}, Lcom/unity3d/coherence/Coherence;->splitOnTopLevel(CLjava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    .line 1326
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x11

    if-le v1, v2, :cond_2

    goto :goto_2

    .line 1328
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1330
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1331
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1332
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 1333
    :cond_3
    const-string v4, "let "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "let\t"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 1341
    :cond_4
    invoke-direct {p0, v3, v1}, Lcom/unity3d/coherence/Coherence;->evaluateExpr(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1334
    :cond_5
    :goto_1
    invoke-static {v3}, Lcom/unity3d/coherence/Coherence;->topLevelEqualsIdx(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_6

    return-object v0

    :cond_6
    const/4 v5, 0x3

    .line 1336
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1337
    invoke-static {v5}, Lcom/unity3d/coherence/Coherence;->isValidIdent(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    return-object v0

    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 1338
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1339
    invoke-direct {p0, v3, v1}, Lcom/unity3d/coherence/Coherence;->evaluateExpr(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_8
    return-object v2

    :catch_0
    :cond_9
    :goto_2
    return-object v0
.end method

.method generateUuid()Ljava/lang/String;
    .locals 1

    .line 151
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method httpDownloadToBlob(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 7

    .line 980
    invoke-direct {p0, p3, p4}, Lcom/unity3d/coherence/Coherence;->blobFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p3

    const/4 p4, -0x1

    if-nez p3, :cond_0

    return p4

    .line 983
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 985
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 986
    :try_start_1
    const-string v1, "GET"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x7530

    .line 987
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 988
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 990
    const-string v2, "\r\n"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v2, p2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    const/16 v5, 0x3a

    .line 991
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_1

    .line 993
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 994
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 995
    invoke-virtual {p1, v6, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 999
    :cond_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v2, 0xc8

    if-lt p2, v2, :cond_9

    const/16 v2, 0x12c

    if-lt p2, v2, :cond_3

    goto :goto_3

    .line 1013
    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-nez v2, :cond_5

    if-eqz p1, :cond_4

    .line 1034
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return p4

    .line 1015
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/unity3d/coherence/Coherence;->blobLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 1016
    :try_start_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v5, 0x2000

    .line 1017
    :try_start_4
    new-array v5, v5, [B

    .line 1019
    :goto_1
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, p4, :cond_6

    invoke-virtual {v4, v5, v1, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 1020
    :cond_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1021
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1022
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1024
    invoke-static {v0, p3}, Lcom/unity3d/coherence/Coherence;->atomicReplace(Ljava/io/File;Ljava/io/File;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 1025
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1026
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz p1, :cond_7

    .line 1034
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return p4

    .line 1028
    :cond_8
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz p1, :cond_c

    .line 1034
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return p2

    :catchall_0
    move-exception p2

    .line 1016
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p3

    :try_start_9
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p2

    .line 1022
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1023
    throw p2

    :catchall_3
    move-exception p2

    .line 1028
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw p2

    .line 1004
    :cond_9
    :goto_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz p3, :cond_b

    const/16 v1, 0x1000

    .line 1006
    :try_start_c
    new-array v1, v1, [B

    .line 1007
    :goto_4
    invoke-virtual {p3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eq v2, p4, :cond_a

    goto :goto_4

    .line 1008
    :cond_a
    :try_start_d
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    goto :goto_5

    :catchall_4
    move-exception p2

    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    throw p2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :cond_b
    :goto_5
    if-eqz p1, :cond_c

    .line 1034
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    return p2

    :catchall_5
    move-exception p2

    move-object v1, p1

    goto :goto_7

    :catch_0
    move-object v1, p1

    goto :goto_6

    :catchall_6
    move-exception p2

    goto :goto_7

    .line 1031
    :catch_1
    :goto_6
    :try_start_e
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    if-eqz v1, :cond_d

    .line 1034
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    return p4

    :goto_7
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1035
    :cond_e
    throw p2
.end method

.method httpGet(Ljava/lang/String;Ljava/lang/String;)Lcom/unity3d/coherence/HttpResult;
    .locals 2

    .line 782
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/unity3d/coherence/Coherence;->httpExecute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/unity3d/coherence/HttpResult;

    move-result-object p1

    return-object p1
.end method

.method httpPost(Ljava/lang/String;Ljava/lang/String;[B)Lcom/unity3d/coherence/HttpResult;
    .locals 1

    .line 778
    const-string v0, "POST"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/unity3d/coherence/Coherence;->httpExecute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/unity3d/coherence/HttpResult;

    move-result-object p1

    return-object p1
.end method

.method kvGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/unity3d/coherence/Coherence;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method kvSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/unity3d/coherence/Coherence;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method

.method platformQueryBytes(I)[B
    .locals 6

    const/16 v0, 0x6b

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_7

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x70

    if-eq p1, v0, :cond_0

    return-object v2

    .line 625
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    .line 626
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    .line 627
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 628
    :goto_0
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 629
    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x57

    .line 635
    invoke-static {p1, v0}, Lcom/unity3d/coherence/Coherence;->encodeRepeatedString(ILjava/util/List;)[B

    move-result-object p1

    return-object p1

    .line 609
    :cond_2
    iget-object p1, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    const-string v0, "input_method"

    .line 610
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-nez p1, :cond_3

    return-object v2

    .line 612
    :cond_3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 613
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v4, 0x1

    .line 615
    invoke-virtual {p1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .line 616
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    .line 617
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 620
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v0, 0x56

    invoke-static {v0, p1}, Lcom/unity3d/coherence/Coherence;->encodeRepeatedString(ILjava/util/List;)[B

    move-result-object p1

    return-object p1

    .line 639
    :cond_7
    iget-object p1, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 640
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_8

    return-object v2

    .line 642
    :cond_8
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_9

    return-object v2

    .line 644
    :cond_9
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-nez p1, :cond_a

    return-object v2

    .line 646
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    const/4 v3, 0x6

    if-gt v1, v3, :cond_c

    .line 649
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    const/16 p1, 0x3f

    .line 652
    :try_start_2
    invoke-static {p1, v0}, Lcom/unity3d/coherence/Coherence;->encodeRepeatedInt32(ILjava/util/List;)[B

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    return-object v2
.end method

.method platformQueryInt(I)Ljava/lang/Long;
    .locals 17

    move-object/from16 v0, p0

    const/high16 v1, 0x447a0000    # 1000.0f

    const/4 v2, 0x2

    .line 187
    const-string v3, "plugged"

    const-string v4, "audio"

    const-string v5, "activity"

    const/4 v6, 0x1

    const-wide/16 v7, 0x3e8

    const-string v9, "connectivity"

    const/4 v10, -0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x1

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object v14

    .line 482
    :pswitch_1
    :try_start_0
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    .line 481
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_daltonizer_enabled"

    invoke-static {v1, v2, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v12, v15

    :goto_0
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5

    return-object v1

    .line 484
    :catch_0
    :try_start_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 478
    :pswitch_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 466
    :pswitch_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    .line 468
    :try_start_2
    const-string v1, "android.os.ext.SdkExtensions"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 469
    const-string v3, "getExtensionVersion"

    new-array v4, v6, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v11

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 470
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_5

    return-object v1

    .line 472
    :catch_1
    :try_start_3
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 475
    :cond_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 406
    :pswitch_4
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->batteryIntent:Landroid/content/Intent;

    if-nez v1, :cond_2

    return-object v14

    .line 408
    :cond_2
    const-string v2, "level"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 409
    const-string v3, "scale"

    invoke-virtual {v1, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ltz v2, :cond_4

    if-gtz v1, :cond_3

    goto :goto_1

    :cond_3
    int-to-long v2, v2

    mul-long/2addr v2, v7

    int-to-long v4, v1

    .line 411
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :cond_4
    :goto_1
    return-object v14

    .line 287
    :pswitch_5
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_5

    return-object v14

    :cond_5
    int-to-long v1, v1

    mul-long/2addr v1, v7

    const-wide/16 v3, 0xff

    .line 291
    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 277
    :pswitch_6
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 280
    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_7

    iget v2, v1, Landroid/util/DisplayMetrics;->ydpi:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_6

    goto :goto_2

    .line 281
    :cond_6
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 282
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v4, v1

    float-to-double v4, v4

    mul-double/2addr v2, v2

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    .line 283
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-long v1, v1

    .line 284
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    return-object v1

    :cond_7
    :goto_2
    return-object v14

    .line 308
    :pswitch_7
    :try_start_4
    iget-object v2, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "animator_duration_scale"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    mul-float/2addr v2, v1

    float-to-long v1, v2

    .line 310
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5

    return-object v1

    .line 312
    :catch_2
    :try_start_5
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 302
    :pswitch_8
    iget-object v2, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v2, v1

    float-to-long v1, v2

    .line 303
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    return-object v1

    .line 456
    :pswitch_9
    :try_start_6
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    invoke-static {v1, v2, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    .line 458
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_5

    return-object v1

    .line 460
    :catch_3
    :try_start_7
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 449
    :pswitch_a
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 451
    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 452
    div-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 442
    :pswitch_b
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    .line 443
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-eqz v1, :cond_8

    .line 444
    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    move-wide v12, v15

    :goto_3
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 435
    :pswitch_c
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 437
    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 438
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-gt v1, v2, :cond_9

    goto :goto_4

    :cond_9
    move-wide v12, v15

    :goto_4
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 428
    :pswitch_d
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->batteryIntent:Landroid/content/Intent;

    if-nez v1, :cond_a

    return-object v14

    .line 430
    :cond_a
    invoke-virtual {v1, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    .line 431
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 421
    :pswitch_e
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    const-string v2, "power"

    .line 422
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-eqz v1, :cond_b

    .line 423
    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    move-wide v12, v15

    :goto_5
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 414
    :pswitch_f
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->batteryIntent:Landroid/content/Intent;

    if-nez v1, :cond_c

    return-object v14

    .line 416
    :cond_c
    const-string v2, "status"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    .line 417
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 396
    :pswitch_10
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    .line 397
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-nez v1, :cond_d

    return-object v14

    :cond_d
    const/4 v2, 0x3

    .line 399
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 400
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    if-lez v1, :cond_e

    int-to-long v2, v3

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    int-to-long v4, v1

    .line 401
    div-long v15, v2, v4

    :cond_e
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 394
    :pswitch_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 392
    :pswitch_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 390
    :pswitch_13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 388
    :pswitch_14
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 380
    :pswitch_15
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    .line 381
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-nez v1, :cond_f

    return-object v14

    .line 383
    :cond_f
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 384
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 385
    iget-wide v1, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 372
    :pswitch_16
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    .line 373
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-nez v1, :cond_10

    return-object v14

    .line 375
    :cond_10
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 376
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 377
    iget-wide v1, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 367
    :pswitch_17
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 368
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 362
    :pswitch_18
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 363
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 355
    :pswitch_19
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    .line 357
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 349
    :pswitch_1a
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    .line 350
    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_11

    .line 351
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 352
    :cond_11
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_6

    :cond_12
    move-wide v12, v15

    :goto_6
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 330
    :pswitch_1b
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    .line 331
    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_13

    .line 332
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 334
    :cond_13
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    if-nez v2, :cond_14

    .line 335
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 336
    :cond_14
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-nez v1, :cond_15

    .line 337
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 338
    :cond_15
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 339
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 340
    :cond_16
    invoke-virtual {v1, v11}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 341
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 342
    :cond_17
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 318
    :pswitch_1c
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    .line 319
    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_18

    .line 320
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 322
    :cond_18
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_19

    goto :goto_7

    :cond_19
    move-wide v12, v15

    .line 323
    :goto_7
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 294
    :pswitch_1d
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1a

    const-wide/16 v1, 0x2

    .line 297
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :cond_1a
    const/16 v2, 0x10

    if-ne v1, v2, :cond_1b

    .line 298
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 299
    :cond_1b
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 273
    :pswitch_1e
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 274
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 269
    :pswitch_1f
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 270
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 265
    :pswitch_20
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 266
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 260
    :pswitch_21
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 252
    :pswitch_22
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 253
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "mounted_ro"

    .line 254
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_8

    :cond_1c
    move-wide v12, v15

    .line 255
    :cond_1d
    :goto_8
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 246
    :pswitch_23
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v1, v2, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_9

    :cond_1e
    move-wide v12, v15

    .line 248
    :goto_9
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 239
    :pswitch_24
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->batteryIntent:Landroid/content/Intent;

    if-nez v1, :cond_1f

    .line 240
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 241
    :cond_1f
    invoke-virtual {v1, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_20

    goto :goto_a

    :cond_20
    move-wide v12, v15

    .line 243
    :goto_a
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 234
    :pswitch_25
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    .line 236
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 225
    :pswitch_26
    const-string v1, "PATH"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 227
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_b
    if-ge v11, v2, :cond_22

    aget-object v3, v1, v11

    .line 228
    new-instance v4, Ljava/io/File;

    const-string v5, "su"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :cond_21
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 231
    :cond_22
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 217
    :pswitch_27
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    const-string v2, "phone"

    .line 218
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_23

    .line 219
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    int-to-long v1, v1

    move-wide v15, v1

    :cond_23
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 215
    :pswitch_28
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 213
    :pswitch_29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 203
    :pswitch_2a
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->packageInfo:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_24

    return-object v14

    .line 204
    :cond_24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_25

    .line 205
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 207
    :cond_25
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->packageInfo:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    return-object v1

    .line 196
    :pswitch_2b
    :try_start_8
    const-string v1, "com.unity3d.player.UnityPlayer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 197
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    return-object v1

    .line 199
    :catch_4
    :try_start_9
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 190
    :pswitch_2c
    iget-object v1, v0, Lcom/unity3d/coherence/Coherence;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_26

    return-object v14

    .line 191
    :cond_26
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_27

    goto :goto_c

    :cond_27
    move-wide v12, v15

    .line 192
    :goto_c
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    return-object v1

    :catch_5
    return-object v14

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2c
        :pswitch_2b
        :pswitch_0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_21
        :pswitch_0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method platformQueryString(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object v1

    .line 508
    :pswitch_1
    :try_start_0
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object p1

    .line 506
    :pswitch_2
    iget-object p1, p0, Lcom/unity3d/coherence/Coherence;->packageInfo:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object p1

    :cond_0
    return-object v1

    .line 504
    :pswitch_3
    iget-object p1, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 588
    :pswitch_4
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 585
    :pswitch_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 571
    :pswitch_6
    iget-object p1, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    const-string v0, "phone"

    .line 572
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_1

    return-object v1

    .line 574
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 575
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    return-object p1

    :cond_2
    return-object v1

    .line 564
    :pswitch_7
    iget-object p1, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    const-string v0, "phone"

    .line 565
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_3

    return-object v1

    .line 567
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 568
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    return-object p1

    :cond_4
    return-object v1

    .line 540
    :pswitch_8
    iget-object p1, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 541
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_5

    .line 542
    const-string p1, "none"

    return-object p1

    .line 544
    :cond_5
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    if-nez v2, :cond_6

    .line 545
    const-string p1, "none"

    return-object p1

    .line 546
    :cond_6
    invoke-virtual {p1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-nez p1, :cond_7

    .line 547
    const-string p1, "none"

    return-object p1

    .line 548
    :cond_7
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "wifi"

    return-object p1

    :cond_8
    const/4 v0, 0x0

    .line 549
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "cellular"

    return-object p1

    :cond_9
    const/4 v0, 0x3

    .line 550
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "ethernet"

    return-object p1

    .line 551
    :cond_a
    const-string p1, "other"

    return-object p1

    .line 530
    :pswitch_9
    sget-object p1, Lcom/unity3d/coherence/Coherence;->sGpuModel:Ljava/lang/String;

    if-nez p1, :cond_c

    .line 531
    const-class p1, Lcom/unity3d/coherence/Coherence;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 532
    :try_start_1
    sget-object v0, Lcom/unity3d/coherence/Coherence;->sGpuModel:Ljava/lang/String;

    if-nez v0, :cond_b

    invoke-static {}, Lcom/unity3d/coherence/Coherence;->queryGlRenderer()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unity3d/coherence/Coherence;->sGpuModel:Ljava/lang/String;

    .line 533
    :cond_b
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 535
    :cond_c
    :goto_0
    sget-object p1, Lcom/unity3d/coherence/Coherence;->sGpuModel:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    return-object v1

    :cond_d
    sget-object p1, Lcom/unity3d/coherence/Coherence;->sGpuModel:Ljava/lang/String;

    return-object p1

    .line 514
    :pswitch_a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt p1, v2, :cond_e

    .line 515
    sget-object p1, Landroid/os/Build;->SOC_MODEL:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    .line 518
    :cond_e
    :try_start_3
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/cpuinfo"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 520
    :cond_f
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 521
    const-string v3, "Hardware"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v3, 0x3a

    .line 522
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_f

    add-int/2addr v3, v0

    .line 523
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 526
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    return-object v0

    :cond_10
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 518
    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_0
    :goto_2
    return-object v1

    .line 510
    :pswitch_b
    :try_start_8
    iget-object p1, p0, Lcom/unity3d/coherence/Coherence;->installerPackage:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    return-object p1

    :catch_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method reflectBool(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 172
    invoke-virtual {p0, p1}, Lcom/unity3d/coherence/Coherence;->resolvePath(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 173
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method reflectDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    .line 178
    invoke-virtual {p0, p1}, Lcom/unity3d/coherence/Coherence;->resolvePath(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 179
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method reflectEvalBool(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 1056
    invoke-virtual {p0, p1}, Lcom/unity3d/coherence/Coherence;->evaluateJvmExpression(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1057
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method reflectEvalInt(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 1050
    invoke-virtual {p0, p1}, Lcom/unity3d/coherence/Coherence;->evaluateJvmExpression(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1051
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method reflectEvalString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1045
    invoke-virtual {p0, p1}, Lcom/unity3d/coherence/Coherence;->evaluateJvmExpression(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1046
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method reflectInt(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 166
    invoke-virtual {p0, p1}, Lcom/unity3d/coherence/Coherence;->resolvePath(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 167
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method reflectListJvm(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1068
    invoke-virtual {p0, p1}, Lcom/unity3d/coherence/Coherence;->evaluateJvmExpression(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1070
    :cond_0
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 1071
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1073
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    const v5, 0x8000

    const-string v6, "\n"

    const/4 v7, 0x1

    if-ge v4, v2, :cond_3

    aget-object v8, v1, v4

    .line 1074
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "F\t"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1075
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    if-le v9, v5, :cond_2

    move v1, v7

    goto :goto_2

    .line 1076
    :cond_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_2
    if-nez v1, :cond_5

    .line 1079
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v2, p1

    :goto_3
    if-ge v3, v2, :cond_5

    aget-object v4, p1, v3

    .line 1080
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "M\t"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/unity3d/coherence/Coherence;->methodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1081
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    if-le v8, v5, :cond_4

    goto :goto_4

    .line 1082
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move v7, v1

    :goto_4
    if-eqz v7, :cond_6

    .line 1085
    const-string p1, "...\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method reflectString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 161
    invoke-virtual {p0, p1}, Lcom/unity3d/coherence/Coherence;->resolvePath(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 162
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method resolvePath(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 1136
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 1137
    :cond_0
    invoke-static {p1}, Lcom/unity3d/coherence/Coherence;->tokenize(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1138
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x0

    .line 1143
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1144
    const-string v3, "context"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 1145
    iget-object v1, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    goto :goto_3

    .line 1147
    :cond_2
    const-string v3, "stickyIntent("

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1148
    invoke-static {v2}, Lcom/unity3d/coherence/Coherence;->extractStringArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    .line 1151
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_7

    :catchall_0
    return-object v0

    .line 1166
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    const/4 v3, -0x1

    if-lt v2, v4, :cond_6

    add-int/lit8 v5, v2, -0x1

    .line 1167
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v3, :cond_5

    goto :goto_1

    .line 1168
    :cond_5
    invoke-static {p1, v1, v2}, Lcom/unity3d/coherence/Coherence;->join(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v3

    .line 1170
    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v2

    goto :goto_2

    :catch_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_6
    move-object v1, v0

    move v4, v3

    :goto_2
    if-nez v1, :cond_7

    return-object v0

    .line 1182
    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_9

    if-nez v1, :cond_8

    return-object v0

    .line 1184
    :cond_8
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/unity3d/coherence/Coherence;->dispatchSegment(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    return-object v1

    :cond_a
    :goto_4
    return-object v0
.end method
