.class public final Lads_mobile_sdk/zn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/x9;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, ".*\\.so$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/zn;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/x9;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lads_mobile_sdk/zn;->a:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lads_mobile_sdk/zn;->b:Lads_mobile_sdk/x9;

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/yn;
    .locals 12

    .line 32
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lads_mobile_sdk/zn;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_1

    .line 34
    iget-object v0, p0, Lads_mobile_sdk/zn;->b:Lads_mobile_sdk/x9;

    if-eqz v0, :cond_0

    .line 35
    check-cast v0, Lads_mobile_sdk/y9;

    .line 36
    iget-object v0, v0, Lads_mobile_sdk/y9;->a:Lads_mobile_sdk/qt1;

    move-object v6, v0

    check-cast v6, Lads_mobile_sdk/st1;

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/16 v7, 0x1399

    const-string v11, "No lib/"

    invoke-virtual/range {v6 .. v11}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 38
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 40
    :cond_0
    sget-object v0, Lads_mobile_sdk/yn;->h:Lads_mobile_sdk/yn;

    goto/16 :goto_4

    .line 42
    :cond_1
    new-instance v1, Lcom/google/common/io/PatternFilenameFilter;

    sget-object v6, Lads_mobile_sdk/zn;->c:Ljava/util/regex/Pattern;

    invoke-direct {v1, v6}, Lcom/google/common/io/PatternFilenameFilter;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 43
    array-length v1, v0

    if-nez v1, :cond_2

    goto/16 :goto_3

    .line 49
    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    aget-object v0, v0, v5

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x14

    .line 50
    :try_start_1
    new-array v6, v0, [B

    .line 51
    invoke-virtual {v1, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-ne v7, v0, :cond_9

    .line 52
    new-array v0, v3, [B

    aput-byte v5, v0, v5

    aput-byte v5, v0, v2

    const/4 v7, 0x5

    .line 54
    aget-byte v7, v6, v7

    if-ne v7, v3, :cond_3

    .line 55
    invoke-virtual {p0, v4, v6}, Lads_mobile_sdk/zn;->a(Ljava/lang/String;[B)V

    .line 56
    sget-object v0, Lads_mobile_sdk/yn;->b:Lads_mobile_sdk/yn;

    goto :goto_0

    :cond_3
    const/16 v7, 0x13

    .line 80
    aget-byte v7, v6, v7

    aput-byte v7, v0, v5

    const/16 v7, 0x12

    .line 81
    aget-byte v7, v6, v7

    aput-byte v7, v0, v2

    .line 83
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/4 v7, 0x3

    if-eq v0, v7, :cond_8

    const/16 v7, 0x28

    if-eq v0, v7, :cond_7

    const/16 v7, 0x3e

    if-eq v0, v7, :cond_6

    const/16 v7, 0xb7

    if-eq v0, v7, :cond_5

    const/16 v7, 0xf3

    if-eq v0, v7, :cond_4

    .line 97
    invoke-virtual {p0, v4, v6}, Lads_mobile_sdk/zn;->a(Ljava/lang/String;[B)V

    .line 98
    sget-object v0, Lads_mobile_sdk/yn;->b:Lads_mobile_sdk/yn;

    goto :goto_0

    .line 99
    :cond_4
    sget-object v0, Lads_mobile_sdk/yn;->g:Lads_mobile_sdk/yn;

    goto :goto_0

    .line 100
    :cond_5
    sget-object v0, Lads_mobile_sdk/yn;->e:Lads_mobile_sdk/yn;

    goto :goto_0

    .line 101
    :cond_6
    sget-object v0, Lads_mobile_sdk/yn;->f:Lads_mobile_sdk/yn;

    goto :goto_0

    .line 103
    :cond_7
    sget-object v0, Lads_mobile_sdk/yn;->c:Lads_mobile_sdk/yn;

    goto :goto_0

    .line 104
    :cond_8
    sget-object v0, Lads_mobile_sdk/yn;->d:Lads_mobile_sdk/yn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_4

    .line 118
    :cond_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v6, v0

    .line 119
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lads_mobile_sdk/zn;->a(Ljava/lang/String;[B)V

    .line 152
    :goto_2
    sget-object v0, Lads_mobile_sdk/yn;->b:Lads_mobile_sdk/yn;

    goto :goto_4

    .line 153
    :cond_a
    :goto_3
    iget-object v0, p0, Lads_mobile_sdk/zn;->b:Lads_mobile_sdk/x9;

    if-eqz v0, :cond_b

    .line 154
    check-cast v0, Lads_mobile_sdk/y9;

    .line 155
    iget-object v0, v0, Lads_mobile_sdk/y9;->a:Lads_mobile_sdk/qt1;

    move-object v6, v0

    check-cast v6, Lads_mobile_sdk/st1;

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/16 v7, 0x1399

    const-string v11, "No .so"

    invoke-virtual/range {v6 .. v11}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    .line 156
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 157
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 159
    :cond_b
    sget-object v0, Lads_mobile_sdk/yn;->h:Lads_mobile_sdk/yn;

    .line 160
    :goto_4
    sget-object v1, Lads_mobile_sdk/yn;->h:Lads_mobile_sdk/yn;

    if-ne v0, v1, :cond_17

    .line 161
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "i686"

    aput-object v3, v1, v5

    const-string v6, "armv71"

    aput-object v6, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 162
    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->OS_ARCH:Lcom/google/common/base/StandardSystemProperty;

    invoke-virtual {v1}, Lcom/google/common/base/StandardSystemProperty;->value()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    const-wide/16 v1, 0x0

    const/16 v7, 0x7e8

    .line 167
    :try_start_5
    const-class v0, Landroid/os/Build;

    const-string v8, "SUPPORTED_ABIS"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 169
    array-length v8, v0

    if-lez v8, :cond_d

    .line 170
    aget-object v1, v0, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 177
    iget-object v5, p0, Lads_mobile_sdk/zn;->b:Lads_mobile_sdk/x9;

    if-eqz v5, :cond_d

    .line 178
    invoke-virtual {v5, v7, v1, v2, v0}, Lads_mobile_sdk/x9;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    goto :goto_5

    :catch_2
    move-exception v0

    .line 179
    iget-object v5, p0, Lads_mobile_sdk/zn;->b:Lads_mobile_sdk/x9;

    if-eqz v5, :cond_d

    .line 180
    invoke-virtual {v5, v7, v1, v2, v0}, Lads_mobile_sdk/x9;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 187
    :cond_d
    :goto_5
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz v1, :cond_e

    goto :goto_6

    .line 190
    :cond_e
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 191
    :goto_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 192
    const-string v0, "Empty dev arch"

    invoke-virtual {p0, v0, v4}, Lads_mobile_sdk/zn;->a(Ljava/lang/String;[B)V

    .line 193
    sget-object v0, Lads_mobile_sdk/yn;->b:Lads_mobile_sdk/yn;

    goto :goto_9

    .line 194
    :cond_f
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "x86"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_8

    .line 196
    :cond_10
    const-string v0, "x86_64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 197
    sget-object v0, Lads_mobile_sdk/yn;->f:Lads_mobile_sdk/yn;

    goto :goto_9

    .line 198
    :cond_11
    const-string v0, "arm64-v8a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 199
    sget-object v0, Lads_mobile_sdk/yn;->e:Lads_mobile_sdk/yn;

    goto :goto_9

    .line 200
    :cond_12
    const-string v0, "armeabi-v7a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_7

    .line 202
    :cond_13
    const-string v0, "riscv64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 203
    sget-object v0, Lads_mobile_sdk/yn;->g:Lads_mobile_sdk/yn;

    goto :goto_9

    .line 205
    :cond_14
    invoke-virtual {p0, v1, v4}, Lads_mobile_sdk/zn;->a(Ljava/lang/String;[B)V

    .line 206
    sget-object v0, Lads_mobile_sdk/yn;->b:Lads_mobile_sdk/yn;

    goto :goto_9

    .line 207
    :cond_15
    :goto_7
    sget-object v0, Lads_mobile_sdk/yn;->c:Lads_mobile_sdk/yn;

    goto :goto_9

    .line 208
    :cond_16
    :goto_8
    sget-object v0, Lads_mobile_sdk/yn;->d:Lads_mobile_sdk/yn;

    .line 209
    :cond_17
    :goto_9
    iget-object v1, p0, Lads_mobile_sdk/zn;->b:Lads_mobile_sdk/x9;

    if-eqz v1, :cond_18

    .line 210
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    check-cast v1, Lads_mobile_sdk/y9;

    .line 211
    iget-object v1, v1, Lads_mobile_sdk/y9;->a:Lads_mobile_sdk/qt1;

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/st1;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/16 v3, 0x139a

    invoke-virtual/range {v2 .. v7}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    .line 212
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 213
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    :cond_18
    return-object v0
.end method

.method public final a(Ljava/lang/String;[B)V
    .locals 7

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/zn;->b:Lads_mobile_sdk/x9;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "os.arch:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->OS_ARCH:Lcom/google/common/base/StandardSystemProperty;

    invoke-virtual {v1}, Lcom/google/common/base/StandardSystemProperty;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :try_start_0
    const-class v1, Landroid/os/Build;

    const-string v3, "SUPPORTED_ABIS"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 11
    const-string v3, "supported_abis:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :catch_0
    :cond_1
    const-string v1, "CPU_ABI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";CPU_ABI2:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    .line 21
    const-string v1, "ELF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p1, :cond_3

    .line 24
    const-string p2, "dbg:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_3
    iget-object p1, p0, Lads_mobile_sdk/zn;->b:Lads_mobile_sdk/x9;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast p1, Lads_mobile_sdk/y9;

    .line 27
    iget-object p1, p1, Lads_mobile_sdk/y9;->a:Lads_mobile_sdk/qt1;

    .line 28
    move-object v1, p1

    check-cast v1, Lads_mobile_sdk/st1;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/16 v2, 0xfa7

    invoke-virtual/range {v1 .. v6}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    .line 29
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 30
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    return-void
.end method
